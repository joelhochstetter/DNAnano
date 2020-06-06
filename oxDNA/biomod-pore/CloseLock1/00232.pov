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
	<24.266634, 35.090275, 35.353706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252958, 34.804058, 35.074612>,  <24.244753, 34.632328, 34.907154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.252958, 34.804058, 35.074612>,  <24.266634, 35.090275, 35.353706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.252958, 34.804058, 35.074612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867222, 0.325764, -0.376568,
		0.496746, -0.617965, 0.609395,
		-0.034187, -0.715540, -0.697735,
		24.242702, 34.589397, 34.865292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.709499, 34.527874, 35.589359>,  <24.266634, 35.090275, 35.353706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.709499, 34.527874, 35.589359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642836, 34.599442, 35.201500>,  <24.602837, 34.642384, 34.968784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642836, 34.599442, 35.201500>,  <24.709499, 34.527874, 35.589359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642836, 34.599442, 35.201500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983057, 0.106257, -0.149358,
		0.076309, -0.978109, -0.193595,
		-0.166659, 0.178917, -0.969646,
		24.592838, 34.653118, 34.910606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927624, 34.047874, 35.135567>,  <24.709499, 34.527874, 35.589359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927624, 34.047874, 35.135567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939503, 34.406418, 34.958630>,  <24.946630, 34.621544, 34.852467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939503, 34.406418, 34.958630>,  <24.927624, 34.047874, 35.135567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939503, 34.406418, 34.958630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992227, -0.079939, -0.095372,
		-0.120848, -0.436072, -0.891760,
		0.029697, 0.896354, -0.442343,
		24.948412, 34.675323, 34.825928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371319, 33.994453, 34.648907>,  <24.927624, 34.047874, 35.135567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371319, 33.994453, 34.648907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334940, 34.389671, 34.698704>,  <25.313112, 34.626801, 34.728580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334940, 34.389671, 34.698704>,  <25.371319, 33.994453, 34.648907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334940, 34.389671, 34.698704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968234, 0.116971, -0.220997,
		-0.232917, 0.100438, -0.967296,
		-0.090949, 0.988043, 0.124492,
		25.307655, 34.686085, 34.736050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302416, 33.228966, 34.799824>,  <25.371319, 33.994453, 34.648907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302416, 33.228966, 34.799824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520132, 32.938023, 34.967010>,  <25.650763, 32.763458, 35.067322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.520132, 32.938023, 34.967010>,  <25.302416, 33.228966, 34.799824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.520132, 32.938023, 34.967010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029085, 0.514300, 0.857117,
		-0.838392, -0.454364, 0.301084,
		0.544291, -0.727357, 0.417970,
		25.683420, 32.719814, 35.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115229, 32.790501, 35.397835>,  <25.302416, 33.228966, 34.799824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115229, 32.790501, 35.397835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511185, 32.822014, 35.445015>,  <25.748758, 32.840923, 35.473324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511185, 32.822014, 35.445015>,  <25.115229, 32.790501, 35.397835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511185, 32.822014, 35.445015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140765, 0.443485, 0.885159,
		0.017431, -0.892813, 0.450091,
		0.989889, 0.078786, 0.117947,
		25.808151, 32.845650, 35.480400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295591, 32.457649, 36.106445>,  <25.115229, 32.790501, 35.397835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295591, 32.457649, 36.106445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601181, 32.694885, 36.004787>,  <25.784534, 32.837227, 35.943790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601181, 32.694885, 36.004787>,  <25.295591, 32.457649, 36.106445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601181, 32.694885, 36.004787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065362, 0.320715, 0.944918,
		0.641931, -0.738502, 0.206251,
		0.763972, 0.593091, -0.254147,
		25.830372, 32.872814, 35.928543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781761, 32.317146, 36.529541>,  <25.295591, 32.457649, 36.106445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781761, 32.317146, 36.529541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908573, 32.675499, 36.405033>,  <25.984661, 32.890511, 36.330330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908573, 32.675499, 36.405033>,  <25.781761, 32.317146, 36.529541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908573, 32.675499, 36.405033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130906, 0.283720, 0.949930,
		0.939337, -0.341905, -0.027328,
		0.317032, 0.895881, -0.311267,
		26.003683, 32.944263, 36.311653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429565, 32.489815, 36.828217>,  <25.781761, 32.317146, 36.529541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429565, 32.489815, 36.828217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293381, 32.844116, 36.702023>,  <26.211670, 33.056698, 36.626305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293381, 32.844116, 36.702023>,  <26.429565, 32.489815, 36.828217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293381, 32.844116, 36.702023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292502, 0.418659, 0.859749,
		0.893604, 0.200431, -0.401621,
		-0.340463, 0.885749, -0.315488,
		26.191242, 33.109840, 36.607376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993214, 32.990303, 36.849110>,  <26.429565, 32.489815, 36.828217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993214, 32.990303, 36.849110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662277, 33.214817, 36.857738>,  <26.463715, 33.349525, 36.862915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662277, 33.214817, 36.857738>,  <26.993214, 32.990303, 36.849110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662277, 33.214817, 36.857738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320935, 0.440849, 0.838244,
		0.460987, 0.700435, -0.544869,
		-0.827340, 0.561287, 0.021569,
		26.414076, 33.383202, 36.864208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226618, 33.614410, 37.060299>,  <26.993214, 32.990303, 36.849110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226618, 33.614410, 37.060299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832102, 33.650043, 37.115856>,  <26.595392, 33.671425, 37.149193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832102, 33.650043, 37.115856>,  <27.226618, 33.614410, 37.060299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832102, 33.650043, 37.115856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164800, 0.574152, 0.801992,
		-0.008305, 0.813888, -0.580962,
		-0.986292, 0.089082, 0.138898,
		26.536215, 33.676769, 37.157524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105337, 34.317863, 37.014629>,  <27.226618, 33.614410, 37.060299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105337, 34.317863, 37.014629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817810, 34.142517, 37.230457>,  <26.645294, 34.037312, 37.359955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817810, 34.142517, 37.230457>,  <27.105337, 34.317863, 37.014629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817810, 34.142517, 37.230457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153860, 0.656580, 0.738397,
		-0.677959, 0.613792, -0.404514,
		-0.718818, -0.438364, 0.539572,
		26.602165, 34.011009, 37.392330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720879, 34.896355, 37.369675>,  <27.105337, 34.317863, 37.014629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720879, 34.896355, 37.369675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618076, 34.577648, 37.588440>,  <26.556395, 34.386425, 37.719700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618076, 34.577648, 37.588440>,  <26.720879, 34.896355, 37.369675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618076, 34.577648, 37.588440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173199, 0.518784, 0.837177,
		-0.950763, 0.309882, 0.004669,
		-0.257004, -0.796766, 0.546912,
		26.540976, 34.338619, 37.752514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256413, 35.074833, 37.950527>,  <26.720879, 34.896355, 37.369675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256413, 35.074833, 37.950527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409721, 34.724510, 38.067871>,  <26.501707, 34.514317, 38.138275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409721, 34.724510, 38.067871>,  <26.256413, 35.074833, 37.950527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409721, 34.724510, 38.067871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090884, 0.351830, 0.931642,
		-0.919152, -0.330413, 0.214444,
		0.383274, -0.875810, 0.293356,
		26.524704, 34.461769, 38.155876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873549, 34.936695, 38.582630>,  <26.256413, 35.074833, 37.950527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873549, 34.936695, 38.582630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195259, 34.698997, 38.583614>,  <26.388287, 34.556377, 38.584206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195259, 34.698997, 38.583614>,  <25.873549, 34.936695, 38.582630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195259, 34.698997, 38.583614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181963, 0.250220, 0.950936,
		-0.565708, -0.764369, 0.309378,
		0.804278, -0.594248, 0.002465,
		26.436543, 34.520721, 38.584354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771217, 34.384918, 39.097210>,  <25.873549, 34.936695, 38.582630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771217, 34.384918, 39.097210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167477, 34.402130, 39.045414>,  <26.405231, 34.412457, 39.014336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167477, 34.402130, 39.045414>,  <25.771217, 34.384918, 39.097210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167477, 34.402130, 39.045414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117060, 0.219618, 0.968538,
		0.070116, -0.974637, 0.212527,
		0.990647, 0.043031, -0.129489,
		26.464670, 34.415039, 39.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965218, 34.051804, 39.656342>,  <25.771217, 34.384918, 39.097210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965218, 34.051804, 39.656342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307089, 34.223652, 39.539757>,  <26.512211, 34.326763, 39.469807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307089, 34.223652, 39.539757>,  <25.965218, 34.051804, 39.656342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307089, 34.223652, 39.539757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174771, 0.290536, 0.940768,
		0.488857, -0.854991, 0.173229,
		0.854677, 0.429626, -0.291458,
		26.563492, 34.352539, 39.452320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443354, 33.938213, 40.236752>,  <25.965218, 34.051804, 39.656342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443354, 33.938213, 40.236752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569830, 34.260208, 40.035946>,  <26.645716, 34.453403, 39.915462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569830, 34.260208, 40.035946>,  <26.443354, 33.938213, 40.236752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569830, 34.260208, 40.035946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083347, 0.503549, 0.859937,
		0.945027, -0.313746, 0.092124,
		0.316190, 0.804986, -0.502017,
		26.664686, 34.501705, 39.885342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056910, 34.067459, 40.451866>,  <26.443354, 33.938213, 40.236752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056910, 34.067459, 40.451866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945320, 34.423321, 40.307266>,  <26.878366, 34.636841, 40.220505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945320, 34.423321, 40.307266>,  <27.056910, 34.067459, 40.451866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945320, 34.423321, 40.307266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059131, 0.391645, 0.918215,
		0.958477, 0.234780, -0.161864,
		-0.278971, 0.889659, -0.361500,
		26.861629, 34.690220, 40.198818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606035, 34.521202, 40.696728>,  <27.056910, 34.067459, 40.451866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606035, 34.521202, 40.696728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293320, 34.752071, 40.602345>,  <27.105690, 34.890594, 40.545715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293320, 34.752071, 40.602345>,  <27.606035, 34.521202, 40.696728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293320, 34.752071, 40.602345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022261, 0.352344, 0.935606,
		0.623145, 0.736700, -0.262610,
		-0.781790, 0.577172, -0.235961,
		27.058783, 34.925224, 40.531555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723700, 35.231457, 41.030605>,  <27.606035, 34.521202, 40.696728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723700, 35.231457, 41.030605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328995, 35.228561, 40.965797>,  <27.092173, 35.226826, 40.926914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328995, 35.228561, 40.965797>,  <27.723700, 35.231457, 41.030605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328995, 35.228561, 40.965797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150444, 0.413960, 0.897777,
		0.060575, 0.910266, -0.409568,
		-0.986761, -0.007234, -0.162019,
		27.032967, 35.226391, 40.917191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548782, 35.778450, 41.323124>,  <27.723700, 35.231457, 41.030605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548782, 35.778450, 41.323124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191668, 35.604885, 41.274715>,  <26.977398, 35.500744, 41.245670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.191668, 35.604885, 41.274715>,  <27.548782, 35.778450, 41.323124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191668, 35.604885, 41.274715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170812, 0.077495, 0.982252,
		-0.416836, 0.897614, -0.143305,
		-0.892788, -0.433916, -0.121020,
		26.923832, 35.474709, 41.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076662, 36.204819, 41.651527>,  <27.548782, 35.778450, 41.323124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076662, 36.204819, 41.651527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939587, 35.829052, 41.648453>,  <26.857342, 35.603592, 41.646606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939587, 35.829052, 41.648453>,  <27.076662, 36.204819, 41.651527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939587, 35.829052, 41.648453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195165, 0.063183, 0.978733,
		-0.918953, 0.336901, -0.204993,
		-0.342688, -0.939418, -0.007689,
		26.836781, 35.547226, 41.646145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451912, 36.200016, 41.907364>,  <27.076662, 36.204819, 41.651527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451912, 36.200016, 41.907364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.607258, 35.838219, 41.977859>,  <26.700464, 35.621140, 42.020157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.607258, 35.838219, 41.977859>,  <26.451912, 36.200016, 41.907364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.607258, 35.838219, 41.977859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348569, 0.032847, 0.936707,
		-0.853038, -0.425213, -0.302523,
		0.388363, -0.904498, 0.176236,
		26.723766, 35.566868, 42.030731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160315, 36.064510, 42.514687>,  <26.451912, 36.200016, 41.907364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160315, 36.064510, 42.514687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336027, 35.711987, 42.445038>,  <26.441454, 35.500473, 42.403248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336027, 35.711987, 42.445038>,  <26.160315, 36.064510, 42.514687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336027, 35.711987, 42.445038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457420, -0.386244, 0.800988,
		-0.773174, -0.272215, -0.572801,
		0.439282, -0.881314, -0.174118,
		26.467812, 35.447594, 42.392803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581470, 35.537571, 42.473183>,  <26.160315, 36.064510, 42.514687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581470, 35.537571, 42.473183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923841, 35.384785, 42.612602>,  <26.129265, 35.293114, 42.696255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923841, 35.384785, 42.612602>,  <25.581470, 35.537571, 42.473183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923841, 35.384785, 42.612602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444927, -0.200547, 0.872823,
		-0.263489, -0.902154, -0.341601,
		0.855929, -0.381967, 0.348551,
		26.180620, 35.270195, 42.717167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343559, 35.139187, 42.955719>,  <25.581470, 35.537571, 42.473183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343559, 35.139187, 42.955719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732193, 35.141296, 43.050377>,  <25.965372, 35.142563, 43.107170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732193, 35.141296, 43.050377>,  <25.343559, 35.139187, 42.955719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732193, 35.141296, 43.050377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224844, -0.291869, 0.929655,
		0.073975, -0.956444, -0.282388,
		0.971583, 0.005278, 0.236642,
		26.023668, 35.142879, 43.121368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561069, 34.441372, 42.982502>,  <25.343559, 35.139187, 42.955719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561069, 34.441372, 42.982502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781086, 34.693085, 43.202126>,  <25.913095, 34.844112, 43.333900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781086, 34.693085, 43.202126>,  <25.561069, 34.441372, 42.982502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781086, 34.693085, 43.202126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002237, -0.658555, 0.752529,
		0.835136, -0.412692, -0.363639,
		0.550039, 0.629278, 0.549060,
		25.946098, 34.881866, 43.366844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247850, 34.122856, 43.104256>,  <25.561069, 34.441372, 42.982502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247850, 34.122856, 43.104256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073656, 34.349201, 43.384300>,  <25.969139, 34.485008, 43.552326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073656, 34.349201, 43.384300>,  <26.247850, 34.122856, 43.104256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073656, 34.349201, 43.384300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033884, -0.787483, 0.615405,
		0.899557, 0.244278, 0.362112,
		-0.435487, 0.565862, 0.700108,
		25.943010, 34.518959, 43.594334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607246, 34.147732, 43.772240>,  <26.247850, 34.122856, 43.104256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607246, 34.147732, 43.772240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209242, 34.176666, 43.799709>,  <25.970438, 34.194027, 43.816193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209242, 34.176666, 43.799709>,  <26.607246, 34.147732, 43.772240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209242, 34.176666, 43.799709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023203, -0.837470, 0.545991,
		0.097010, 0.541674, 0.834972,
		-0.995013, 0.072340, 0.068674,
		25.910738, 34.198368, 43.820312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474916, 33.877453, 44.434170>,  <26.607246, 34.147732, 43.772240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474916, 33.877453, 44.434170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091314, 33.890873, 44.321609>,  <25.861153, 33.898926, 44.254074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091314, 33.890873, 44.321609>,  <26.474916, 33.877453, 44.434170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091314, 33.890873, 44.321609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199372, -0.785559, 0.585788,
		-0.201401, 0.617876, 0.760044,
		-0.959004, 0.033554, -0.281400,
		25.803614, 33.900940, 44.237190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932526, 33.422989, 44.488968>,  <26.474916, 33.877453, 44.434170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932526, 33.422989, 44.488968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188438, 33.730305, 44.497051>,  <27.341986, 33.914696, 44.501904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188438, 33.730305, 44.497051>,  <26.932526, 33.422989, 44.488968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188438, 33.730305, 44.497051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330839, -0.299050, 0.895050,
		0.693701, -0.565952, -0.445507,
		0.639784, 0.768289, 0.020213,
		27.380373, 33.960793, 44.503117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430029, 33.061588, 44.006573>,  <26.932526, 33.422989, 44.488968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430029, 33.061588, 44.006573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656494, 32.763851, 44.148228>,  <27.792374, 32.585209, 44.233219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656494, 32.763851, 44.148228>,  <27.430029, 33.061588, 44.006573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656494, 32.763851, 44.148228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483137, -0.048432, -0.874204,
		0.667859, 0.666038, 0.332200,
		0.566164, -0.744344, 0.354134,
		27.826344, 32.540546, 44.254467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186567, 33.181789, 44.064404>,  <27.430029, 33.061588, 44.006573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186567, 33.181789, 44.064404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120913, 32.792374, 44.000801>,  <28.081520, 32.558723, 43.962639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.120913, 32.792374, 44.000801>,  <28.186567, 33.181789, 44.064404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120913, 32.792374, 44.000801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500562, 0.056698, -0.863842,
		0.849998, -0.221383, 0.478010,
		-0.164138, -0.973538, -0.159009,
		28.071671, 32.500313, 43.953098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852030, 32.743343, 44.129375>,  <28.186567, 33.181789, 44.064404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852030, 32.743343, 44.129375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551903, 32.664448, 43.876991>,  <28.371826, 32.617111, 43.725559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.551903, 32.664448, 43.876991>,  <28.852030, 32.743343, 44.129375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551903, 32.664448, 43.876991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601147, 0.193515, -0.775355,
		0.275034, -0.961066, -0.026626,
		-0.750320, -0.197243, -0.630965,
		28.326807, 32.605274, 43.687702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122463, 32.489353, 43.584862>,  <28.852030, 32.743343, 44.129375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122463, 32.489353, 43.584862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753571, 32.544651, 43.440430>,  <28.532236, 32.577831, 43.353771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.753571, 32.544651, 43.440430>,  <29.122463, 32.489353, 43.584862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753571, 32.544651, 43.440430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338464, -0.162790, -0.926791,
		-0.186909, -0.976927, 0.103337,
		-0.922229, 0.138250, -0.361082,
		28.476902, 32.586124, 43.332104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850588, 31.928286, 43.183887>,  <29.122463, 32.489353, 43.584862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850588, 31.928286, 43.183887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664682, 32.257538, 43.053383>,  <28.553139, 32.455090, 42.975079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664682, 32.257538, 43.053383>,  <28.850588, 31.928286, 43.183887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664682, 32.257538, 43.053383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376571, -0.149739, -0.914206,
		-0.801367, -0.547750, -0.240375,
		-0.464763, 0.823133, -0.326263,
		28.525253, 32.504478, 42.955505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399458, 31.748564, 42.625706>,  <28.850588, 31.928286, 43.183887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399458, 31.748564, 42.625706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453009, 32.143070, 42.587013>,  <28.485138, 32.379772, 42.563797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453009, 32.143070, 42.587013>,  <28.399458, 31.748564, 42.625706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453009, 32.143070, 42.587013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068966, -0.106650, -0.991902,
		-0.988596, 0.126119, -0.082297,
		0.133874, 0.986266, -0.096735,
		28.493172, 32.438950, 42.557991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.997032, 31.960964, 42.099785>,  <28.399458, 31.748564, 42.625706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.997032, 31.960964, 42.099785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250689, 32.268295, 42.134514>,  <28.402882, 32.452694, 42.155350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250689, 32.268295, 42.134514>,  <27.997032, 31.960964, 42.099785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250689, 32.268295, 42.134514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278505, -0.122215, -0.952627,
		-0.721320, 0.628279, -0.291484,
		0.634139, 0.768329, 0.086823,
		28.440929, 32.498795, 42.160561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874908, 32.374748, 41.520237>,  <27.997032, 31.960964, 42.099785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874908, 32.374748, 41.520237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235540, 32.510460, 41.627598>,  <28.451920, 32.591888, 41.692017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235540, 32.510460, 41.627598>,  <27.874908, 32.374748, 41.520237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235540, 32.510460, 41.627598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275314, 0.028590, -0.960929,
		-0.333696, 0.940251, -0.067631,
		0.901581, 0.339278, 0.268405,
		28.506016, 32.612244, 41.708118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976767, 32.826523, 41.124859>,  <27.874908, 32.374748, 41.520237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976767, 32.826523, 41.124859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355846, 32.750973, 41.227768>,  <28.583294, 32.705643, 41.289513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355846, 32.750973, 41.227768>,  <27.976767, 32.826523, 41.124859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355846, 32.750973, 41.227768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301067, 0.261506, -0.917046,
		0.105929, 0.946542, 0.304693,
		0.947701, -0.188874, 0.257272,
		28.640158, 32.694309, 41.304951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399239, 33.458755, 41.035473>,  <27.976767, 32.826523, 41.124859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399239, 33.458755, 41.035473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645098, 33.144199, 41.010811>,  <28.792614, 32.955467, 40.996014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645098, 33.144199, 41.010811>,  <28.399239, 33.458755, 41.035473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645098, 33.144199, 41.010811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333576, 0.329958, -0.883094,
		0.714797, 0.522227, 0.465128,
		0.614648, -0.786388, -0.061651,
		28.829493, 32.908283, 40.992317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811775, 33.647766, 40.542183>,  <28.399239, 33.458755, 41.035473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811775, 33.647766, 40.542183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947590, 33.273827, 40.583687>,  <29.029079, 33.049461, 40.608589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947590, 33.273827, 40.583687>,  <28.811775, 33.647766, 40.542183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947590, 33.273827, 40.583687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281433, -0.004287, -0.959571,
		0.897502, 0.355013, 0.261643,
		0.339539, -0.934852, 0.103761,
		29.049452, 32.993370, 40.614815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545324, 33.577858, 40.381256>,  <28.811775, 33.647766, 40.542183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545324, 33.577858, 40.381256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398401, 33.212864, 40.309189>,  <29.310247, 32.993870, 40.265949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398401, 33.212864, 40.309189>,  <29.545324, 33.577858, 40.381256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398401, 33.212864, 40.309189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339116, 0.048988, -0.939468,
		0.866074, -0.406173, 0.291443,
		-0.367310, -0.912482, -0.180167,
		29.288208, 32.939117, 40.255138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044395, 33.346523, 39.825706>,  <29.545324, 33.577858, 40.381256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044395, 33.346523, 39.825706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733046, 33.095406, 39.825783>,  <29.546236, 32.944733, 39.825829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733046, 33.095406, 39.825783>,  <30.044395, 33.346523, 39.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733046, 33.095406, 39.825783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016327, -0.020550, -0.999656,
		0.627587, -0.778104, 0.026246,
		-0.778375, -0.627799, 0.000193,
		29.499533, 32.907066, 39.825840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234962, 32.830383, 39.344673>,  <30.044395, 33.346523, 39.825706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234962, 32.830383, 39.344673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836197, 32.831928, 39.376045>,  <29.596937, 32.832855, 39.394867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836197, 32.831928, 39.376045>,  <30.234962, 32.830383, 39.344673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836197, 32.831928, 39.376045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078261, 0.032293, -0.996410,
		-0.006392, -0.999471, -0.031890,
		-0.996912, 0.003873, 0.078426,
		29.537123, 32.833088, 39.399574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926651, 32.332973, 38.684410>,  <30.234962, 32.830383, 39.344673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926651, 32.332973, 38.684410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604643, 32.528759, 38.818493>,  <29.411438, 32.646229, 38.898945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604643, 32.528759, 38.818493>,  <29.926651, 32.332973, 38.684410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604643, 32.528759, 38.818493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339614, 0.083068, -0.936890,
		-0.486417, -0.868059, 0.099357,
		-0.805022, 0.489462, 0.335211,
		29.363136, 32.675598, 38.919056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415874, 32.112141, 38.211250>,  <29.926651, 32.332973, 38.684410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415874, 32.112141, 38.211250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300411, 32.449635, 38.392265>,  <29.231133, 32.652130, 38.500874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300411, 32.449635, 38.392265>,  <29.415874, 32.112141, 38.211250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300411, 32.449635, 38.392265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417936, 0.314210, -0.852409,
		-0.861397, -0.435190, 0.261926,
		-0.288660, 0.843731, 0.452541,
		29.213814, 32.702755, 38.528027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661936, 32.214928, 38.137829>,  <29.415874, 32.112141, 38.211250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661936, 32.214928, 38.137829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796114, 32.581745, 38.224087>,  <28.876621, 32.801834, 38.275841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796114, 32.581745, 38.224087>,  <28.661936, 32.214928, 38.137829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796114, 32.581745, 38.224087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554972, 0.377339, -0.741365,
		-0.761237, 0.129009, 0.635511,
		0.335446, 0.917045, 0.215648,
		28.896748, 32.856857, 38.288780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056845, 32.628365, 37.947952>,  <28.661936, 32.214928, 38.137829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056845, 32.628365, 37.947952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389835, 32.849827, 37.939484>,  <28.589630, 32.982704, 37.934402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389835, 32.849827, 37.939484>,  <28.056845, 32.628365, 37.947952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389835, 32.849827, 37.939484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233425, 0.315810, -0.919661,
		-0.502491, 0.770537, 0.392142,
		0.832475, 0.553658, -0.021171,
		28.639578, 33.015923, 37.933132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932495, 33.367817, 37.641232>,  <28.056845, 32.628365, 37.947952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932495, 33.367817, 37.641232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314592, 33.263420, 37.585522>,  <28.543850, 33.200783, 37.552097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314592, 33.263420, 37.585522>,  <27.932495, 33.367817, 37.641232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314592, 33.263420, 37.585522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086222, 0.204712, -0.975017,
		0.282983, 0.943385, 0.173046,
		0.955242, -0.260993, -0.139271,
		28.601166, 33.185123, 37.543739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232502, 33.862801, 37.173328>,  <27.932495, 33.367817, 37.641232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232502, 33.862801, 37.173328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469971, 33.541527, 37.153507>,  <28.612452, 33.348763, 37.141617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469971, 33.541527, 37.153507>,  <28.232502, 33.862801, 37.173328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469971, 33.541527, 37.153507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018668, 0.075303, -0.996986,
		0.804490, 0.590958, 0.059699,
		0.593672, -0.803180, -0.049548,
		28.648073, 33.300571, 37.138641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803083, 33.998653, 36.662334>,  <28.232502, 33.862801, 37.173328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803083, 33.998653, 36.662334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813564, 33.600101, 36.694702>,  <28.819853, 33.360970, 36.714123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813564, 33.600101, 36.694702>,  <28.803083, 33.998653, 36.662334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813564, 33.600101, 36.694702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086166, -0.078390, -0.993192,
		0.995936, 0.032998, 0.083799,
		0.026204, -0.996376, 0.080915,
		28.821426, 33.301189, 36.718975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227730, 33.833416, 36.068378>,  <28.803083, 33.998653, 36.662334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227730, 33.833416, 36.068378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062885, 33.491299, 36.194004>,  <28.963978, 33.286030, 36.269379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062885, 33.491299, 36.194004>,  <29.227730, 33.833416, 36.068378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062885, 33.491299, 36.194004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114183, -0.293502, -0.949115,
		0.903950, -0.427003, 0.023296,
		-0.412112, -0.855292, 0.314068,
		28.939251, 33.234711, 36.288223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594299, 33.245949, 35.762283>,  <29.227730, 33.833416, 36.068378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594299, 33.245949, 35.762283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233589, 33.095352, 35.847191>,  <29.017162, 33.004993, 35.898136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233589, 33.095352, 35.847191>,  <29.594299, 33.245949, 35.762283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233589, 33.095352, 35.847191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113505, -0.267596, -0.956822,
		0.417034, -0.886932, 0.198578,
		-0.901776, -0.376488, 0.212268,
		28.963057, 32.982407, 35.910870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516840, 32.971249, 35.098606>,  <29.594299, 33.245949, 35.762283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516840, 32.971249, 35.098606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170950, 32.899670, 35.286320>,  <28.963415, 32.856720, 35.398949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170950, 32.899670, 35.286320>,  <29.516840, 32.971249, 35.098606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170950, 32.899670, 35.286320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406811, -0.298394, -0.863404,
		0.294538, -0.937517, 0.185229,
		-0.864727, -0.178952, 0.469280,
		28.911531, 32.845985, 35.427105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323084, 32.250496, 34.940674>,  <29.516840, 32.971249, 35.098606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323084, 32.250496, 34.940674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997982, 32.441742, 35.073841>,  <28.802921, 32.556488, 35.153744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997982, 32.441742, 35.073841>,  <29.323084, 32.250496, 34.940674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997982, 32.441742, 35.073841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521774, -0.343123, -0.781037,
		-0.259192, -0.808501, 0.528343,
		-0.812755, 0.478114, 0.332920,
		28.754156, 32.585175, 35.173717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796741, 32.022778, 34.482510>,  <29.323084, 32.250496, 34.940674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796741, 32.022778, 34.482510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554646, 31.749683, 34.318775>,  <29.409388, 31.585827, 34.220535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554646, 31.749683, 34.318775>,  <29.796741, 32.022778, 34.482510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554646, 31.749683, 34.318775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650262, 0.127418, 0.748948,
		-0.459178, 0.719469, -0.521077,
		-0.605240, -0.682737, -0.409336,
		29.373074, 31.544863, 34.195976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544718, 32.076149, 34.650154>,  <29.796741, 32.022778, 34.482510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544718, 32.076149, 34.650154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883448, 31.937077, 34.811153>,  <31.086685, 31.853632, 34.907753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883448, 31.937077, 34.811153>,  <30.544718, 32.076149, 34.650154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883448, 31.937077, 34.811153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355211, 0.932950, 0.058565,
		-0.395873, 0.093378, 0.913545,
		0.846823, -0.347685, 0.402499,
		31.137495, 31.832771, 34.931904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703781, 32.410080, 35.279736>,  <30.544718, 32.076149, 34.650154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703781, 32.410080, 35.279736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034483, 32.286224, 35.091862>,  <31.232904, 32.211910, 34.979137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034483, 32.286224, 35.091862>,  <30.703781, 32.410080, 35.279736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034483, 32.286224, 35.091862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412111, 0.901668, 0.130989,
		0.382941, -0.301859, 0.873062,
		0.826753, -0.309638, -0.469685,
		31.282509, 32.193333, 34.950954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298742, 32.667351, 35.608051>,  <30.703781, 32.410080, 35.279736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298742, 32.667351, 35.608051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458008, 32.617840, 35.244480>,  <31.553568, 32.588131, 35.026337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458008, 32.617840, 35.244480>,  <31.298742, 32.667351, 35.608051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458008, 32.617840, 35.244480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496253, 0.862406, 0.099942,
		0.771491, -0.490850, 0.404806,
		0.398163, -0.123782, -0.908925,
		31.577457, 32.580704, 34.971802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035709, 32.573212, 35.704124>,  <31.298742, 32.667351, 35.608051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035709, 32.573212, 35.704124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877123, 32.761292, 35.388725>,  <31.781971, 32.874142, 35.199486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877123, 32.761292, 35.388725>,  <32.035709, 32.573212, 35.704124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877123, 32.761292, 35.388725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289436, 0.879097, 0.378701,
		0.871231, -0.078077, -0.484625,
		-0.396465, 0.470204, -0.788495,
		31.758183, 32.902351, 35.152176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555424, 33.096657, 35.425213>,  <32.035709, 32.573212, 35.704124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555424, 33.096657, 35.425213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182571, 33.201504, 35.325279>,  <31.958858, 33.264412, 35.265320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182571, 33.201504, 35.325279>,  <32.555424, 33.096657, 35.425213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182571, 33.201504, 35.325279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163334, 0.920115, 0.355964,
		0.323181, 0.291000, -0.900485,
		-0.932135, 0.262120, -0.249833,
		31.902931, 33.280140, 35.250328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747185, 33.686058, 35.093750>,  <32.555424, 33.096657, 35.425213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747185, 33.686058, 35.093750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358921, 33.703255, 35.188389>,  <32.125965, 33.713573, 35.245174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358921, 33.703255, 35.188389>,  <32.747185, 33.686058, 35.093750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358921, 33.703255, 35.188389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122388, 0.935247, 0.332165,
		-0.206999, 0.351375, -0.913065,
		-0.970656, 0.042991, 0.236600,
		32.067726, 33.716152, 35.259369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185688, 33.010059, 35.035706>,  <32.747185, 33.686058, 35.093750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185688, 33.010059, 35.035706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560261, 33.004158, 35.175926>,  <33.785004, 33.000618, 35.260059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560261, 33.004158, 35.175926>,  <33.185688, 33.010059, 35.035706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560261, 33.004158, 35.175926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267442, 0.616703, 0.740373,
		-0.227108, -0.787058, 0.573552,
		0.936428, -0.014753, 0.350551,
		33.841190, 32.999733, 35.281090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170685, 32.729038, 35.779610>,  <33.185688, 33.010059, 35.035706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170685, 32.729038, 35.779610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508121, 32.940792, 35.743599>,  <33.710583, 33.067844, 35.721992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508121, 32.940792, 35.743599>,  <33.170685, 32.729038, 35.779610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508121, 32.940792, 35.743599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241109, 0.523223, 0.817376,
		0.479813, -0.667824, 0.569026,
		0.843591, 0.529385, -0.090031,
		33.761200, 33.099606, 35.716591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585106, 32.736298, 36.468060>,  <33.170685, 32.729038, 35.779610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585106, 32.736298, 36.468060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743900, 33.052162, 36.280941>,  <33.839176, 33.241680, 36.168671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743900, 33.052162, 36.280941>,  <33.585106, 32.736298, 36.468060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743900, 33.052162, 36.280941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133625, 0.454520, 0.880656,
		0.908046, -0.412115, 0.074918,
		0.396984, 0.789666, -0.467794,
		33.862995, 33.289062, 36.140602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039471, 33.034016, 36.979866>,  <33.585106, 32.736298, 36.468060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039471, 33.034016, 36.979866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039600, 33.327740, 36.708340>,  <34.039677, 33.503975, 36.545425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039600, 33.327740, 36.708340>,  <34.039471, 33.034016, 36.979866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039600, 33.327740, 36.708340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282844, 0.651031, 0.704384,
		0.959166, -0.192227, -0.207485,
		0.000322, 0.734307, -0.678817,
		34.039696, 33.548031, 36.504696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631054, 33.435047, 37.023270>,  <34.039471, 33.034016, 36.979866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631054, 33.435047, 37.023270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387314, 33.710217, 36.865559>,  <34.241070, 33.875320, 36.770931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387314, 33.710217, 36.865559>,  <34.631054, 33.435047, 37.023270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387314, 33.710217, 36.865559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398752, 0.695669, 0.597529,
		0.685339, 0.206887, -0.698218,
		-0.609349, 0.687926, -0.394273,
		34.204510, 33.916595, 36.747276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981552, 34.007484, 37.085773>,  <34.631054, 33.435047, 37.023270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981552, 34.007484, 37.085773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623913, 34.162918, 36.996700>,  <34.409328, 34.256180, 36.943256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623913, 34.162918, 36.996700>,  <34.981552, 34.007484, 37.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623913, 34.162918, 36.996700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289091, 0.880484, 0.375732,
		0.342078, 0.271564, -0.899575,
		-0.894097, 0.388588, -0.222687,
		34.355682, 34.279495, 36.929893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059406, 34.675388, 36.659904>,  <34.981552, 34.007484, 37.085773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059406, 34.675388, 36.659904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715321, 34.677410, 36.863869>,  <34.508869, 34.678623, 36.986248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715321, 34.677410, 36.863869>,  <35.059406, 34.675388, 36.659904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715321, 34.677410, 36.863869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242970, 0.883208, 0.401135,
		-0.448329, 0.468955, -0.760975,
		-0.860213, 0.005053, 0.509910,
		34.457256, 34.678925, 37.016842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812332, 35.383564, 36.607166>,  <35.059406, 34.675388, 36.659904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812332, 35.383564, 36.607166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642262, 35.206707, 36.923073>,  <34.540218, 35.100594, 37.112617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642262, 35.206707, 36.923073>,  <34.812332, 35.383564, 36.607166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642262, 35.206707, 36.923073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150478, 0.825892, 0.543377,
		-0.892514, 0.349874, -0.284619,
		-0.425178, -0.442143, 0.789768,
		34.514709, 35.074062, 37.160004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563488, 35.880527, 37.045757>,  <34.812332, 35.383564, 36.607166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563488, 35.880527, 37.045757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564392, 35.569027, 37.296692>,  <34.564934, 35.382126, 37.447250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564392, 35.569027, 37.296692>,  <34.563488, 35.880527, 37.045757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564392, 35.569027, 37.296692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047029, 0.626557, 0.777955,
		-0.998891, -0.031259, -0.035210,
		0.002257, -0.778749, 0.627332,
		34.565071, 35.335403, 37.484890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063297, 35.948238, 37.494415>,  <34.563488, 35.880527, 37.045757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063297, 35.948238, 37.494415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315079, 35.701454, 37.683369>,  <34.466148, 35.553383, 37.796741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315079, 35.701454, 37.683369>,  <34.063297, 35.948238, 37.494415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315079, 35.701454, 37.683369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059333, 0.567995, 0.820891,
		-0.774766, -0.544744, 0.320923,
		0.629457, -0.616957, 0.472384,
		34.503918, 35.516365, 37.825085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798241, 35.920094, 38.150108>,  <34.063297, 35.948238, 37.494415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798241, 35.920094, 38.150108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167641, 35.768417, 38.173283>,  <34.389282, 35.677414, 38.187187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167641, 35.768417, 38.173283>,  <33.798241, 35.920094, 38.150108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167641, 35.768417, 38.173283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117513, 0.423449, 0.898266,
		-0.365145, -0.822744, 0.435617,
		0.923504, -0.379188, 0.057937,
		34.444691, 35.654659, 38.190662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837799, 35.756390, 38.886246>,  <33.798241, 35.920094, 38.150108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837799, 35.756390, 38.886246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207417, 35.763435, 38.733490>,  <34.429188, 35.767662, 38.641838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207417, 35.763435, 38.733490>,  <33.837799, 35.756390, 38.886246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207417, 35.763435, 38.733490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355087, 0.330547, 0.874443,
		0.141636, -0.943625, 0.299184,
		0.924041, 0.017616, -0.381887,
		34.484631, 35.768719, 38.618923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306221, 35.378025, 39.380775>,  <33.837799, 35.756390, 38.886246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306221, 35.378025, 39.380775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508236, 35.637302, 39.152817>,  <34.629444, 35.792870, 39.016041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508236, 35.637302, 39.152817>,  <34.306221, 35.378025, 39.380775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508236, 35.637302, 39.152817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415419, 0.396226, 0.818799,
		0.756550, -0.650268, -0.069165,
		0.505034, 0.648195, -0.569899,
		34.659744, 35.831760, 38.981846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983128, 35.342319, 39.676933>,  <34.306221, 35.378025, 39.380775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983128, 35.342319, 39.676933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977760, 35.665665, 39.441521>,  <34.974541, 35.859673, 39.300274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977760, 35.665665, 39.441521>,  <34.983128, 35.342319, 39.676933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977760, 35.665665, 39.441521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527316, 0.505804, 0.682715,
		0.849563, -0.301176, -0.433054,
		-0.013423, 0.808366, -0.588528,
		34.973732, 35.908173, 39.264961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667110, 35.623646, 39.592728>,  <34.983128, 35.342319, 39.676933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667110, 35.623646, 39.592728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414368, 35.925343, 39.521309>,  <35.262722, 36.106361, 39.478458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414368, 35.925343, 39.521309>,  <35.667110, 35.623646, 39.592728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414368, 35.925343, 39.521309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364170, 0.492231, 0.790625,
		0.684209, 0.434539, -0.585691,
		-0.631853, 0.754244, -0.178543,
		35.224812, 36.151615, 39.467747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130592, 36.137833, 39.863106>,  <35.667110, 35.623646, 39.592728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130592, 36.137833, 39.863106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764942, 36.295967, 39.827145>,  <35.545551, 36.390850, 39.805569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764942, 36.295967, 39.827145>,  <36.130592, 36.137833, 39.863106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764942, 36.295967, 39.827145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181211, 0.596762, 0.781689,
		0.362682, 0.698271, -0.617155,
		-0.914125, 0.395340, -0.089900,
		35.490704, 36.414570, 39.800175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279388, 36.873493, 39.921635>,  <36.130592, 36.137833, 39.863106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279388, 36.873493, 39.921635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905766, 36.784630, 40.033482>,  <35.681591, 36.731312, 40.100590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905766, 36.784630, 40.033482>,  <36.279388, 36.873493, 39.921635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905766, 36.784630, 40.033482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052011, 0.689994, 0.721944,
		-0.353324, 0.688878, -0.632937,
		-0.934054, -0.222161, 0.279621,
		35.625549, 36.717983, 40.117367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875546, 37.515106, 39.983730>,  <36.279388, 36.873493, 39.921635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875546, 37.515106, 39.983730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687092, 37.236801, 40.200600>,  <35.574020, 37.069817, 40.330719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687092, 37.236801, 40.200600>,  <35.875546, 37.515106, 39.983730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687092, 37.236801, 40.200600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067483, 0.584428, 0.808635,
		-0.879479, 0.417559, -0.228389,
		-0.471130, -0.695764, 0.542170,
		35.545753, 37.028072, 40.363251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402470, 37.915756, 40.335217>,  <35.875546, 37.515106, 39.983730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402470, 37.915756, 40.335217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418335, 37.568161, 40.532513>,  <35.427853, 37.359604, 40.650890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418335, 37.568161, 40.532513>,  <35.402470, 37.915756, 40.335217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418335, 37.568161, 40.532513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028441, 0.494406, 0.868766,
		-0.998808, -0.020430, 0.044324,
		0.039663, -0.868991, 0.493236,
		35.430233, 37.307465, 40.680485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837780, 37.999470, 40.859337>,  <35.402470, 37.915756, 40.335217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837780, 37.999470, 40.859337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081150, 37.706436, 40.981415>,  <35.227173, 37.530617, 41.054661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081150, 37.706436, 40.981415>,  <34.837780, 37.999470, 40.859337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081150, 37.706436, 40.981415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032563, 0.361191, 0.931923,
		-0.792941, -0.576945, 0.195904,
		0.608428, -0.732581, 0.305190,
		35.263680, 37.486660, 41.072971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582161, 37.825680, 41.517704>,  <34.837780, 37.999470, 40.859337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582161, 37.825680, 41.517704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956779, 37.685528, 41.522064>,  <35.181549, 37.601437, 41.524681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956779, 37.685528, 41.522064>,  <34.582161, 37.825680, 41.517704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956779, 37.685528, 41.522064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083109, 0.252142, 0.964115,
		-0.340559, -0.902029, 0.265262,
		0.936543, -0.350384, 0.010903,
		35.237743, 37.580414, 41.525333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655102, 37.307419, 42.040833>,  <34.582161, 37.825680, 41.517704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655102, 37.307419, 42.040833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023071, 37.452694, 41.981720>,  <35.243851, 37.539860, 41.946251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023071, 37.452694, 41.981720>,  <34.655102, 37.307419, 42.040833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023071, 37.452694, 41.981720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118400, 0.102005, 0.987713,
		0.373801, -0.926115, 0.050835,
		0.919921, 0.363189, -0.147782,
		35.299049, 37.561649, 41.937386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969761, 37.054386, 42.570522>,  <34.655102, 37.307419, 42.040833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969761, 37.054386, 42.570522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239777, 37.325878, 42.454838>,  <35.401787, 37.488773, 42.385426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239777, 37.325878, 42.454838>,  <34.969761, 37.054386, 42.570522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239777, 37.325878, 42.454838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246401, 0.162090, 0.955517,
		0.695417, -0.716277, -0.057822,
		0.675043, 0.678730, -0.289212,
		35.442291, 37.529495, 42.368073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481365, 36.862652, 43.000908>,  <34.969761, 37.054386, 42.570522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481365, 36.862652, 43.000908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561981, 37.233143, 42.873486>,  <35.610352, 37.455437, 42.797031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561981, 37.233143, 42.873486>,  <35.481365, 36.862652, 43.000908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561981, 37.233143, 42.873486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305310, 0.249617, 0.918954,
		0.930681, -0.282465, -0.232479,
		0.201541, 0.926232, -0.318553,
		35.622444, 37.511013, 42.777920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033466, 37.094284, 43.418919>,  <35.481365, 36.862652, 43.000908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033466, 37.094284, 43.418919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863525, 37.426979, 43.275974>,  <35.761562, 37.626598, 43.190208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863525, 37.426979, 43.275974>,  <36.033466, 37.094284, 43.418919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863525, 37.426979, 43.275974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179812, 0.464429, 0.867164,
		0.887226, 0.304157, -0.346870,
		-0.424851, 0.831742, -0.357362,
		35.736069, 37.676502, 43.168766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426479, 37.659657, 43.733044>,  <36.033466, 37.094284, 43.418919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426479, 37.659657, 43.733044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075928, 37.818668, 43.624279>,  <35.865597, 37.914074, 43.559021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075928, 37.818668, 43.624279>,  <36.426479, 37.659657, 43.733044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075928, 37.818668, 43.624279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013386, 0.544246, 0.838819,
		0.481440, 0.738761, -0.471644,
		-0.876377, 0.397527, -0.271911,
		35.813015, 37.937927, 43.542706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444965, 38.353909, 43.921062>,  <36.426479, 37.659657, 43.733044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444965, 38.353909, 43.921062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060673, 38.246140, 43.894505>,  <35.830097, 38.181480, 43.878571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060673, 38.246140, 43.894505>,  <36.444965, 38.353909, 43.921062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060673, 38.246140, 43.894505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183825, 0.438750, 0.879606,
		-0.207852, 0.857270, -0.471047,
		-0.960732, -0.269418, -0.066393,
		35.772453, 38.165314, 43.874588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023983, 38.959373, 44.010792>,  <36.444965, 38.353909, 43.921062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023983, 38.959373, 44.010792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776676, 38.656853, 44.096359>,  <35.628292, 38.475342, 44.147701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776676, 38.656853, 44.096359>,  <36.023983, 38.959373, 44.010792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776676, 38.656853, 44.096359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251390, 0.448161, 0.857878,
		-0.744682, 0.476619, -0.467208,
		-0.618266, -0.756297, 0.213920,
		35.591198, 38.429962, 44.160534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396187, 39.253990, 44.222416>,  <36.023983, 38.959373, 44.010792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396187, 39.253990, 44.222416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365322, 38.878441, 44.356617>,  <35.346802, 38.653111, 44.437138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365322, 38.878441, 44.356617>,  <35.396187, 39.253990, 44.222416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365322, 38.878441, 44.356617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380841, 0.338747, 0.860355,
		-0.921415, -0.061389, -0.383699,
		-0.077161, -0.938873, 0.335506,
		35.342175, 38.596779, 44.457268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595097, 39.032433, 44.490284>,  <35.396187, 39.253990, 44.222416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595097, 39.032433, 44.490284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882778, 38.816452, 44.665188>,  <35.055389, 38.686863, 44.770130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882778, 38.816452, 44.665188>,  <34.595097, 39.032433, 44.490284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882778, 38.816452, 44.665188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335005, 0.281858, 0.899071,
		-0.608698, -0.793101, 0.021828,
		0.719207, -0.539950, 0.437259,
		35.098541, 38.654469, 44.796364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287163, 38.547165, 44.977001>,  <34.595097, 39.032433, 44.490284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287163, 38.547165, 44.977001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665359, 38.554474, 45.107059>,  <34.892277, 38.558861, 45.185093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665359, 38.554474, 45.107059>,  <34.287163, 38.547165, 44.977001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665359, 38.554474, 45.107059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325656, 0.055784, 0.943841,
		-0.000885, -0.998276, 0.058695,
		0.945488, 0.018279, 0.325144,
		34.949005, 38.559956, 45.204601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334255, 38.127583, 45.586193>,  <34.287163, 38.547165, 44.977001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334255, 38.127583, 45.586193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665264, 38.348152, 45.628395>,  <34.863869, 38.480495, 45.653717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665264, 38.348152, 45.628395>,  <34.334255, 38.127583, 45.586193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665264, 38.348152, 45.628395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138315, 0.018111, 0.990223,
		0.544123, -0.834028, 0.091258,
		0.827526, 0.551425, 0.105503,
		34.913521, 38.513580, 45.660046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515446, 37.941330, 46.215000>,  <34.334255, 38.127583, 45.586193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515446, 37.941330, 46.215000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735619, 38.268509, 46.148083>,  <34.867722, 38.464817, 46.107933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735619, 38.268509, 46.148083>,  <34.515446, 37.941330, 46.215000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735619, 38.268509, 46.148083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051430, 0.166776, 0.984653,
		0.833293, -0.550591, 0.049733,
		0.550435, 0.817946, -0.167290,
		34.900749, 38.513893, 46.097897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219681, 37.913013, 46.496750>,  <34.515446, 37.941330, 46.215000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219681, 37.913013, 46.496750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134964, 38.303547, 46.514263>,  <35.084133, 38.537868, 46.524769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134964, 38.303547, 46.514263>,  <35.219681, 37.913013, 46.496750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134964, 38.303547, 46.514263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034155, -0.037375, 0.998717,
		0.976718, 0.213015, -0.025431,
		-0.211791, 0.976334, 0.043780,
		35.071426, 38.596447, 46.527397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719414, 38.356731, 46.881565>,  <35.219681, 37.913013, 46.496750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719414, 38.356731, 46.881565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374214, 38.558815, 46.881073>,  <35.167095, 38.680065, 46.880779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374214, 38.558815, 46.881073>,  <35.719414, 38.356731, 46.881565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374214, 38.558815, 46.881073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089887, 0.155941, 0.983668,
		0.497153, 0.848789, -0.179988,
		-0.862994, 0.505212, -0.001231,
		35.115314, 38.710381, 46.880703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862034, 38.818417, 47.388752>,  <35.719414, 38.356731, 46.881565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862034, 38.818417, 47.388752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462605, 38.831024, 47.371525>,  <35.222946, 38.838589, 47.361191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462605, 38.831024, 47.371525>,  <35.862034, 38.818417, 47.388752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462605, 38.831024, 47.371525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042224, 0.026854, 0.998747,
		0.032634, 0.999143, -0.025485,
		-0.998575, 0.031517, -0.043064,
		35.163033, 38.840481, 47.358604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755859, 39.182961, 47.921444>,  <35.862034, 38.818417, 47.388752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755859, 39.182961, 47.921444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401066, 39.016983, 47.840374>,  <35.188190, 38.917397, 47.791733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401066, 39.016983, 47.840374>,  <35.755859, 39.182961, 47.921444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401066, 39.016983, 47.840374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303173, 0.192176, 0.933357,
		-0.348345, 0.889318, -0.296258,
		-0.886985, -0.414947, -0.202674,
		35.134972, 38.892498, 47.779572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318794, 39.636570, 48.205276>,  <35.755859, 39.182961, 47.921444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318794, 39.636570, 48.205276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101421, 39.302933, 48.167404>,  <34.970997, 39.102749, 48.144680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101421, 39.302933, 48.167404>,  <35.318794, 39.636570, 48.205276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101421, 39.302933, 48.167404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394020, 0.153853, 0.906133,
		-0.741233, 0.529732, -0.412259,
		-0.543435, -0.834094, -0.094684,
		34.938389, 39.052704, 48.139000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579182, 39.764973, 48.450928>,  <35.318794, 39.636570, 48.205276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579182, 39.764973, 48.450928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638092, 39.369644, 48.466568>,  <34.673439, 39.132446, 48.475952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638092, 39.369644, 48.466568>,  <34.579182, 39.764973, 48.450928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638092, 39.369644, 48.466568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494651, -0.039362, 0.868200,
		-0.856522, -0.147208, -0.494671,
		0.147278, -0.988322, 0.039102,
		34.682274, 39.073147, 48.478298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976036, 39.391609, 48.518650>,  <34.579182, 39.764973, 48.450928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976036, 39.391609, 48.518650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259922, 39.153496, 48.669353>,  <34.430252, 39.010628, 48.759777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259922, 39.153496, 48.669353>,  <33.976036, 39.391609, 48.518650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259922, 39.153496, 48.669353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517608, -0.077822, 0.852071,
		-0.477905, -0.799737, -0.363355,
		0.709710, -0.595285, 0.376759,
		34.472836, 38.974911, 48.782383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641830, 38.847530, 48.959770>,  <33.976036, 39.391609, 48.518650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641830, 38.847530, 48.959770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018265, 38.847179, 49.095036>,  <34.244125, 38.846970, 49.176193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018265, 38.847179, 49.095036>,  <33.641830, 38.847530, 48.959770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018265, 38.847179, 49.095036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338146, 0.008040, 0.941059,
		-0.003558, -0.999967, 0.007265,
		0.941087, -0.000892, 0.338163,
		34.300591, 38.846916, 49.196484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590588, 38.410191, 49.555145>,  <33.641830, 38.847530, 48.959770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590588, 38.410191, 49.555145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915592, 38.637661, 49.606422>,  <34.110596, 38.774143, 49.637188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915592, 38.637661, 49.606422>,  <33.590588, 38.410191, 49.555145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915592, 38.637661, 49.606422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217124, 0.091138, 0.971880,
		0.541005, -0.817495, 0.197525,
		0.812509, 0.568680, 0.128191,
		34.159344, 38.808266, 49.644878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278313, 38.129723, 49.922844>,  <33.590588, 38.410191, 49.555145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278313, 38.129723, 49.922844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141689, 38.502197, 49.973801>,  <34.059715, 38.725681, 50.004375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141689, 38.502197, 49.973801>,  <34.278313, 38.129723, 49.922844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141689, 38.502197, 49.973801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328925, -0.245401, 0.911914,
		0.880425, 0.269566, 0.390109,
		-0.341554, 0.931189, 0.127391,
		34.039223, 38.781555, 50.012016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553436, 38.669277, 50.466442>,  <34.278313, 38.129723, 49.922844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553436, 38.669277, 50.466442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169804, 38.620617, 50.364185>,  <33.939625, 38.591419, 50.302830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169804, 38.620617, 50.364185>,  <34.553436, 38.669277, 50.466442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169804, 38.620617, 50.364185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138171, -0.587005, 0.797706,
		-0.247109, 0.800391, 0.546179,
		-0.959086, -0.121654, -0.255645,
		33.882076, 38.584122, 50.287491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031139, 38.815933, 51.037247>,  <34.553436, 38.669277, 50.466442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031139, 38.815933, 51.037247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915108, 38.520458, 50.793873>,  <33.845490, 38.343174, 50.647850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915108, 38.520458, 50.793873>,  <34.031139, 38.815933, 51.037247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915108, 38.520458, 50.793873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209723, -0.571248, 0.793531,
		-0.933739, 0.357791, 0.010788,
		-0.290081, -0.738689, -0.608434,
		33.828083, 38.298851, 50.611343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386074, 39.278107, 51.593151>,  <34.031139, 38.815933, 51.037247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386074, 39.278107, 51.593151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562847, 39.092445, 51.286098>,  <34.668911, 38.981049, 51.101868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562847, 39.092445, 51.286098>,  <34.386074, 39.278107, 51.593151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562847, 39.092445, 51.286098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894737, 0.166714, 0.414310,
		-0.064330, -0.869924, 0.488973,
		0.441936, -0.464155, -0.767628,
		34.695427, 38.953197, 51.055809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929482, 38.747265, 51.736828>,  <34.386074, 39.278107, 51.593151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929482, 38.747265, 51.736828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007446, 38.921421, 51.385273>,  <35.054226, 39.025917, 51.174339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007446, 38.921421, 51.385273>,  <34.929482, 38.747265, 51.736828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007446, 38.921421, 51.385273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901628, 0.273204, 0.335302,
		0.386103, -0.857783, -0.339312,
		0.194915, 0.435394, -0.878886,
		35.065922, 39.052040, 51.121609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670502, 38.639492, 51.343826>,  <34.929482, 38.747265, 51.736828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670502, 38.639492, 51.343826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685558, 38.331593, 51.598721>,  <35.694592, 38.146854, 51.751656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685558, 38.331593, 51.598721>,  <35.670502, 38.639492, 51.343826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685558, 38.331593, 51.598721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122118, -0.636452, -0.761588,
		0.991801, -0.049148, -0.117959,
		0.037644, -0.769749, 0.637236,
		35.696850, 38.100670, 51.789890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211479, 38.089710, 51.107136>,  <35.670502, 38.639492, 51.343826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211479, 38.089710, 51.107136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908932, 37.932198, 51.316074>,  <35.727402, 37.837692, 51.441437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908932, 37.932198, 51.316074>,  <36.211479, 38.089710, 51.107136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908932, 37.932198, 51.316074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205166, -0.615418, -0.761031,
		0.621138, -0.682788, 0.384694,
		-0.756370, -0.393779, 0.522344,
		35.682022, 37.814064, 51.472778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404343, 37.429825, 51.034164>,  <36.211479, 38.089710, 51.107136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404343, 37.429825, 51.034164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024624, 37.386070, 51.152058>,  <35.796791, 37.359818, 51.222794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024624, 37.386070, 51.152058>,  <36.404343, 37.429825, 51.034164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024624, 37.386070, 51.152058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154337, -0.654605, -0.740049,
		0.273889, -0.748015, 0.604531,
		-0.949297, -0.109390, 0.294736,
		35.739834, 37.353252, 51.240479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134491, 36.687550, 51.214043>,  <36.404343, 37.429825, 51.034164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134491, 36.687550, 51.214043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823914, 36.890377, 51.064369>,  <35.637566, 37.012074, 50.974564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823914, 36.890377, 51.064369>,  <36.134491, 36.687550, 51.214043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823914, 36.890377, 51.064369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036671, -0.629121, -0.776442,
		-0.629121, -0.589141, 0.507070,
		0.776442, -0.507070, 0.374188,
		35.590981, 37.042500, 50.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663578, 36.133503, 51.126190>,  <36.134491, 36.687550, 51.214043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663578, 36.133503, 51.126190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607761, 36.448589, 50.886181>,  <35.574272, 36.637642, 50.742176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607761, 36.448589, 50.886181>,  <35.663578, 36.133503, 51.126190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607761, 36.448589, 50.886181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073805, -0.612545, -0.786983,
		-0.987462, -0.065533, 0.143613,
		-0.139543, 0.787715, -0.600028,
		35.565899, 36.684902, 50.706173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134151, 35.947372, 50.666691>,  <35.663578, 36.133503, 51.126190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134151, 35.947372, 50.666691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239021, 36.290306, 50.489498>,  <35.301945, 36.496067, 50.383183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239021, 36.290306, 50.489498>,  <35.134151, 35.947372, 50.666691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239021, 36.290306, 50.489498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087644, -0.435988, -0.895674,
		-0.961031, 0.273652, -0.039166,
		0.262179, 0.857338, -0.442982,
		35.317677, 36.547508, 50.356602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587524, 36.128857, 50.278915>,  <35.134151, 35.947372, 50.666691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587524, 36.128857, 50.278915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923134, 36.275097, 50.117729>,  <35.124500, 36.362839, 50.021019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923134, 36.275097, 50.117729>,  <34.587524, 36.128857, 50.278915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923134, 36.275097, 50.117729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171932, -0.524519, -0.833858,
		-0.516219, 0.768908, -0.377225,
		0.839021, 0.365597, -0.402966,
		35.174839, 36.384777, 49.996838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369759, 36.223415, 49.655869>,  <34.587524, 36.128857, 50.278915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369759, 36.223415, 49.655869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769634, 36.232956, 49.652843>,  <35.009560, 36.238682, 49.651028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769634, 36.232956, 49.652843>,  <34.369759, 36.223415, 49.655869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769634, 36.232956, 49.652843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009118, -0.628716, -0.777582,
		-0.023303, 0.777270, -0.628736,
		0.999687, 0.023853, -0.007564,
		35.069542, 36.240112, 49.650574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444180, 36.269421, 48.965137>,  <34.369759, 36.223415, 49.655869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444180, 36.269421, 48.965137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799759, 36.140289, 49.095097>,  <35.013107, 36.062809, 49.173073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799759, 36.140289, 49.095097>,  <34.444180, 36.269421, 48.965137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799759, 36.140289, 49.095097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063198, -0.616117, -0.785115,
		0.453634, 0.718457, -0.527291,
		0.888945, -0.322831, 0.324897,
		35.066441, 36.043442, 49.192566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957214, 36.312492, 48.354462>,  <34.444180, 36.269421, 48.965137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957214, 36.312492, 48.354462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061245, 36.041698, 48.629868>,  <35.123661, 35.879223, 48.795113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061245, 36.041698, 48.629868>,  <34.957214, 36.312492, 48.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061245, 36.041698, 48.629868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263894, -0.636072, -0.725101,
		0.928828, 0.370276, 0.013226,
		0.260075, -0.676985, 0.688515,
		35.139267, 35.838604, 48.836422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657455, 36.081791, 48.099926>,  <34.957214, 36.312492, 48.354462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657455, 36.081791, 48.099926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513237, 35.826477, 48.371983>,  <35.426704, 35.673286, 48.535217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513237, 35.826477, 48.371983>,  <35.657455, 36.081791, 48.099926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513237, 35.826477, 48.371983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309216, -0.769746, -0.558458,
		0.879995, 0.008962, 0.474898,
		-0.360546, -0.638287, 0.680144,
		35.405071, 35.634991, 48.576027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210503, 35.629219, 48.301979>,  <35.657455, 36.081791, 48.099926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210503, 35.629219, 48.301979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852734, 35.452827, 48.331738>,  <35.638073, 35.346992, 48.349594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852734, 35.452827, 48.331738>,  <36.210503, 35.629219, 48.301979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852734, 35.452827, 48.331738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328218, -0.760282, -0.560575,
		0.303766, -0.476975, 0.824755,
		-0.894427, -0.440983, 0.074396,
		35.584404, 35.320534, 48.354057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449928, 35.025551, 48.152363>,  <36.210503, 35.629219, 48.301979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449928, 35.025551, 48.152363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055122, 34.961750, 48.159931>,  <35.818237, 34.923470, 48.164474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055122, 34.961750, 48.159931>,  <36.449928, 35.025551, 48.152363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055122, 34.961750, 48.159931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097326, -0.687638, -0.719501,
		0.127774, -0.708318, 0.694233,
		-0.987016, -0.159500, 0.018924,
		35.759018, 34.913898, 48.165607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310051, 34.266590, 48.015961>,  <36.449928, 35.025551, 48.152363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310051, 34.266590, 48.015961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957584, 34.433960, 47.927895>,  <35.746105, 34.534382, 47.875053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957584, 34.433960, 47.927895>,  <36.310051, 34.266590, 48.015961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957584, 34.433960, 47.927895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026102, -0.507991, -0.860967,
		-0.472088, -0.752907, 0.458545,
		-0.881165, 0.418422, -0.220164,
		35.693233, 34.559486, 47.861847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793419, 33.715763, 47.761402>,  <36.310051, 34.266590, 48.015961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793419, 33.715763, 47.761402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665146, 34.062332, 47.608315>,  <35.588181, 34.270275, 47.516464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665146, 34.062332, 47.608315>,  <35.793419, 33.715763, 47.761402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665146, 34.062332, 47.608315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165933, -0.449194, -0.877890,
		-0.932539, -0.218019, 0.287817,
		-0.320683, 0.866425, -0.382715,
		35.568939, 34.322258, 47.493500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252075, 33.478649, 47.355217>,  <35.793419, 33.715763, 47.761402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252075, 33.478649, 47.355217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355106, 33.838341, 47.213768>,  <35.416927, 34.054153, 47.128899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355106, 33.838341, 47.213768>,  <35.252075, 33.478649, 47.355217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355106, 33.838341, 47.213768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096151, -0.340298, -0.935389,
		-0.961461, 0.274939, -0.001193,
		0.257581, 0.899225, -0.353619,
		35.432381, 34.108109, 47.107681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815815, 33.611809, 46.699951>,  <35.252075, 33.478649, 47.355217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815815, 33.611809, 46.699951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065514, 33.919506, 46.645409>,  <35.215332, 34.104122, 46.612682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065514, 33.919506, 46.645409>,  <34.815815, 33.611809, 46.699951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065514, 33.919506, 46.645409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104874, -0.090443, -0.990364,
		-0.774159, 0.632528, 0.024215,
		0.624243, 0.769239, -0.136353,
		35.252785, 34.150276, 46.604504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575356, 33.984192, 46.184509>,  <34.815815, 33.611809, 46.699951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575356, 33.984192, 46.184509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961906, 34.083401, 46.157372>,  <35.193836, 34.142925, 46.141087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961906, 34.083401, 46.157372>,  <34.575356, 33.984192, 46.184509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961906, 34.083401, 46.157372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036504, -0.128860, -0.990991,
		-0.254532, 0.960145, -0.115474,
		0.966375, 0.248023, -0.067848,
		35.251820, 34.157806, 46.137016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687218, 34.456863, 45.619106>,  <34.575356, 33.984192, 46.184509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687218, 34.456863, 45.619106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047352, 34.290432, 45.670151>,  <35.263432, 34.190575, 45.700775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047352, 34.290432, 45.670151>,  <34.687218, 34.456863, 45.619106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047352, 34.290432, 45.670151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047822, -0.196851, -0.979266,
		0.432571, 0.887766, -0.157333,
		0.900331, -0.416078, 0.127607,
		35.317451, 34.165607, 45.708431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132359, 34.679230, 45.123909>,  <34.687218, 34.456863, 45.619106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132359, 34.679230, 45.123909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307442, 34.345135, 45.257053>,  <35.412491, 34.144680, 45.336941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307442, 34.345135, 45.257053>,  <35.132359, 34.679230, 45.123909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307442, 34.345135, 45.257053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195878, -0.272729, -0.941940,
		0.877521, 0.477494, 0.044228,
		0.437709, -0.835235, 0.332856,
		35.438755, 34.094563, 45.356911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915096, 34.645275, 44.775932>,  <35.132359, 34.679230, 45.123909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915096, 34.645275, 44.775932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801136, 34.270237, 44.855675>,  <35.732758, 34.045212, 44.903519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801136, 34.270237, 44.855675>,  <35.915096, 34.645275, 44.775932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801136, 34.270237, 44.855675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175381, -0.255448, -0.950783,
		0.942375, -0.235920, 0.237215,
		-0.284904, -0.937597, 0.199352,
		35.715664, 33.988956, 44.915482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404449, 34.223236, 44.475445>,  <35.915096, 34.645275, 44.775932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404449, 34.223236, 44.475445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147030, 33.924465, 44.542320>,  <35.992577, 33.745205, 44.582447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147030, 33.924465, 44.542320>,  <36.404449, 34.223236, 44.475445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147030, 33.924465, 44.542320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075115, -0.279007, -0.957347,
		0.761711, -0.603540, 0.235659,
		-0.643548, -0.746923, 0.167188,
		35.953964, 33.700390, 44.592476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704113, 33.616459, 44.145096>,  <36.404449, 34.223236, 44.475445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704113, 33.616459, 44.145096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317993, 33.524811, 44.195232>,  <36.086323, 33.469822, 44.225315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317993, 33.524811, 44.195232>,  <36.704113, 33.616459, 44.145096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317993, 33.524811, 44.195232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010600, -0.445159, -0.895389,
		0.260945, -0.865643, 0.427281,
		-0.965296, -0.229118, 0.125337,
		36.028404, 33.456074, 44.232834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634525, 32.991859, 43.725883>,  <36.704113, 33.616459, 44.145096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634525, 32.991859, 43.725883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250679, 33.091076, 43.778980>,  <36.020370, 33.150604, 43.810837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250679, 33.091076, 43.778980>,  <36.634525, 32.991859, 43.725883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250679, 33.091076, 43.778980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199306, -0.266386, -0.943036,
		-0.198548, -0.931405, 0.305062,
		-0.959613, 0.248038, 0.132744,
		35.962795, 33.165489, 43.818802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213776, 32.416668, 43.740814>,  <36.634525, 32.991859, 43.725883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213776, 32.416668, 43.740814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036152, 32.747272, 43.602428>,  <35.929577, 32.945637, 43.519398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036152, 32.747272, 43.602428>,  <36.213776, 32.416668, 43.740814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036152, 32.747272, 43.602428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076009, -0.419481, -0.904576,
		-0.892769, -0.375387, 0.249096,
		-0.444057, 0.826511, -0.345967,
		35.902935, 32.995224, 43.498638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627781, 32.146301, 43.417847>,  <36.213776, 32.416668, 43.740814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627781, 32.146301, 43.417847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678528, 32.517536, 43.277817>,  <35.708977, 32.740276, 43.193798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678528, 32.517536, 43.277817>,  <35.627781, 32.146301, 43.417847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678528, 32.517536, 43.277817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110044, -0.337577, -0.934843,
		-0.985796, 0.157128, 0.059301,
		0.126872, 0.928091, -0.350073,
		35.716591, 32.795963, 43.172794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107952, 32.189587, 43.031124>,  <35.627781, 32.146301, 43.417847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107952, 32.189587, 43.031124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380314, 32.454285, 42.905613>,  <35.543732, 32.613106, 42.830307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380314, 32.454285, 42.905613>,  <35.107952, 32.189587, 43.031124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380314, 32.454285, 42.905613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163312, -0.280456, -0.945872,
		-0.713928, 0.695295, -0.082894,
		0.680908, 0.661747, -0.313776,
		35.584587, 32.652809, 42.811481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775101, 32.667969, 42.622066>,  <35.107952, 32.189587, 43.031124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775101, 32.667969, 42.622066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161720, 32.682228, 42.520470>,  <35.393692, 32.690784, 42.459511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161720, 32.682228, 42.520470>,  <34.775101, 32.667969, 42.622066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161720, 32.682228, 42.520470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241163, -0.210759, -0.947323,
		-0.087305, 0.976888, -0.195111,
		0.966550, 0.035652, -0.253989,
		35.451687, 32.692924, 42.444271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742348, 32.824867, 41.935757>,  <34.775101, 32.667969, 42.622066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742348, 32.824867, 41.935757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127781, 32.718689, 41.948666>,  <35.359043, 32.654980, 41.956413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127781, 32.718689, 41.948666>,  <34.742348, 32.824867, 41.935757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127781, 32.718689, 41.948666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054434, -0.312888, -0.948229,
		0.261804, 0.911942, -0.315944,
		0.963585, -0.265448, 0.032275,
		35.416855, 32.639053, 41.958347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038609, 33.056499, 41.359715>,  <34.742348, 32.824867, 41.935757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038609, 33.056499, 41.359715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320538, 32.784538, 41.440670>,  <35.489697, 32.621361, 41.489243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320538, 32.784538, 41.440670>,  <35.038609, 33.056499, 41.359715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320538, 32.784538, 41.440670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027648, -0.311419, -0.949870,
		0.708846, 0.663893, -0.238293,
		0.704821, -0.679900, 0.202393,
		35.531982, 32.580566, 41.501389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445362, 33.109169, 40.835060>,  <35.038609, 33.056499, 41.359715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445362, 33.109169, 40.835060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557426, 32.749352, 40.969124>,  <35.624664, 32.533463, 41.049564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557426, 32.749352, 40.969124>,  <35.445362, 33.109169, 40.835060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557426, 32.749352, 40.969124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085721, -0.324305, -0.942060,
		0.956119, 0.292656, -0.013747,
		0.280158, -0.899543, 0.335161,
		35.641476, 32.479488, 41.069672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996140, 32.962276, 40.500931>,  <35.445362, 33.109169, 40.835060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996140, 32.962276, 40.500931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867687, 32.606876, 40.632042>,  <35.790615, 32.393635, 40.710709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867687, 32.606876, 40.632042>,  <35.996140, 32.962276, 40.500931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867687, 32.606876, 40.632042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013521, -0.341772, -0.939685,
		0.946939, -0.306191, 0.097739,
		-0.321128, -0.888503, 0.327778,
		35.771347, 32.340324, 40.730377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453278, 32.346363, 40.210533>,  <35.996140, 32.962276, 40.500931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453278, 32.346363, 40.210533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091137, 32.204308, 40.303669>,  <35.873852, 32.119072, 40.359550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091137, 32.204308, 40.303669>,  <36.453278, 32.346363, 40.210533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091137, 32.204308, 40.303669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038991, -0.476456, -0.878333,
		0.422870, -0.804279, 0.417512,
		-0.905351, -0.355142, 0.232839,
		35.819530, 32.097767, 40.373520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549431, 31.689140, 39.991043>,  <36.453278, 32.346363, 40.210533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549431, 31.689140, 39.991043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159206, 31.762085, 40.040070>,  <35.925072, 31.805851, 40.069485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159206, 31.762085, 40.040070>,  <36.549431, 31.689140, 39.991043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159206, 31.762085, 40.040070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182044, -0.358468, -0.915620,
		-0.123036, -0.915557, 0.382905,
		-0.975563, 0.182360, 0.122567,
		35.866539, 31.816793, 40.076839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134590, 31.061638, 39.736153>,  <36.549431, 31.689140, 39.991043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134590, 31.061638, 39.736153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883209, 31.372744, 39.731644>,  <35.732380, 31.559408, 39.728939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883209, 31.372744, 39.731644>,  <36.134590, 31.061638, 39.736153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883209, 31.372744, 39.731644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322481, -0.273709, -0.906140,
		-0.707851, -0.565830, 0.422828,
		-0.628453, 0.777766, -0.011276,
		35.694672, 31.606073, 39.728260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578049, 30.796066, 39.459614>,  <36.134590, 31.061638, 39.736153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578049, 30.796066, 39.459614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523037, 31.186953, 39.394951>,  <35.490032, 31.421484, 39.356152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523037, 31.186953, 39.394951>,  <35.578049, 30.796066, 39.459614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523037, 31.186953, 39.394951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378946, -0.202700, -0.902946,
		-0.915143, -0.062919, 0.398189,
		-0.137525, 0.977218, -0.161656,
		35.481781, 31.480118, 39.346455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895847, 30.853939, 39.159687>,  <35.578049, 30.796066, 39.459614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895847, 30.853939, 39.159687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131588, 31.156002, 39.044865>,  <35.273033, 31.337240, 38.975971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131588, 31.156002, 39.044865>,  <34.895847, 30.853939, 39.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131588, 31.156002, 39.044865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196705, -0.210491, -0.957601,
		-0.783560, 0.620833, 0.024488,
		0.589356, 0.755155, -0.287054,
		35.308395, 31.382549, 38.958748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528595, 31.224882, 38.623356>,  <34.895847, 30.853939, 39.159687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528595, 31.224882, 38.623356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900227, 31.360458, 38.564125>,  <35.123207, 31.441805, 38.528587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900227, 31.360458, 38.564125>,  <34.528595, 31.224882, 38.623356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900227, 31.360458, 38.564125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058378, -0.260957, -0.963584,
		-0.365240, 0.903892, -0.222664,
		0.929081, 0.338941, -0.148079,
		35.178951, 31.462141, 38.519703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510643, 31.683302, 38.046436>,  <34.528595, 31.224882, 38.623356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510643, 31.683302, 38.046436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902534, 31.605934, 38.067303>,  <35.137669, 31.559513, 38.079823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902534, 31.605934, 38.067303>,  <34.510643, 31.683302, 38.046436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902534, 31.605934, 38.067303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029728, -0.117154, -0.992669,
		0.198115, 0.974096, -0.109029,
		0.979728, -0.193422, 0.052168,
		35.196453, 31.547907, 38.082954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722717, 31.849688, 37.337715>,  <34.510643, 31.683302, 38.046436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722717, 31.849688, 37.337715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017914, 31.621498, 37.481895>,  <35.195034, 31.484585, 37.568401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017914, 31.621498, 37.481895>,  <34.722717, 31.849688, 37.337715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017914, 31.621498, 37.481895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078321, -0.458127, -0.885429,
		0.670245, 0.681673, -0.293416,
		0.737996, -0.570474, 0.360447,
		35.239311, 31.450356, 37.590031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357174, 31.968145, 36.977825>,  <34.722717, 31.849688, 37.337715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357174, 31.968145, 36.977825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447926, 31.598566, 37.101017>,  <35.502377, 31.376820, 37.174931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447926, 31.598566, 37.101017>,  <35.357174, 31.968145, 36.977825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447926, 31.598566, 37.101017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197379, -0.266040, -0.943538,
		0.953713, 0.274854, 0.122010,
		0.226876, -0.923947, 0.307977,
		35.515987, 31.321383, 37.193409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034161, 31.789490, 36.669380>,  <35.357174, 31.968145, 36.977825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034161, 31.789490, 36.669380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901314, 31.428545, 36.779251>,  <35.821606, 31.211979, 36.845173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901314, 31.428545, 36.779251>,  <36.034161, 31.789490, 36.669380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901314, 31.428545, 36.779251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418470, -0.401936, -0.814451,
		0.845330, -0.155545, 0.511099,
		-0.332113, -0.902360, 0.274678,
		35.801682, 31.157837, 36.861656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627266, 31.270569, 36.557747>,  <36.034161, 31.789490, 36.669380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627266, 31.270569, 36.557747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300007, 31.042038, 36.583721>,  <36.103653, 30.904919, 36.599304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300007, 31.042038, 36.583721>,  <36.627266, 31.270569, 36.557747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300007, 31.042038, 36.583721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241162, -0.443457, -0.863242,
		0.521991, -0.690600, 0.500597,
		-0.818148, -0.571330, 0.064934,
		36.054562, 30.870640, 36.603203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914749, 30.558874, 36.435730>,  <36.627266, 31.270569, 36.557747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914749, 30.558874, 36.435730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520336, 30.560152, 36.369114>,  <36.283688, 30.560919, 36.329144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520336, 30.560152, 36.369114>,  <36.914749, 30.558874, 36.435730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520336, 30.560152, 36.369114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143006, -0.496461, -0.856198,
		-0.085415, -0.868053, 0.489069,
		-0.986029, 0.003193, -0.166542,
		36.224529, 30.561110, 36.319153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476181, 30.873743, 36.804245>,  <36.914749, 30.558874, 36.435730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476181, 30.873743, 36.804245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868023, 30.862303, 36.724686>,  <38.103127, 30.855438, 36.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868023, 30.862303, 36.724686>,  <37.476181, 30.873743, 36.804245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868023, 30.862303, 36.724686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184917, 0.515702, 0.836575,
		0.078644, -0.856291, 0.510472,
		0.979603, -0.028603, -0.198899,
		38.161903, 30.853722, 36.665016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863277, 30.566378, 37.356792>,  <37.476181, 30.873743, 36.804245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863277, 30.566378, 37.356792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087315, 30.830742, 37.156994>,  <38.221737, 30.989361, 37.037117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087315, 30.830742, 37.156994>,  <37.863277, 30.566378, 37.356792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087315, 30.830742, 37.156994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061938, 0.567845, 0.820802,
		0.826112, -0.490662, 0.277110,
		0.560092, 0.660910, -0.499494,
		38.255341, 31.029015, 37.007145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530750, 30.587828, 37.662807>,  <37.863277, 30.566378, 37.356792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530750, 30.587828, 37.662807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532982, 30.928984, 37.453983>,  <38.534321, 31.133677, 37.328690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532982, 30.928984, 37.453983>,  <38.530750, 30.587828, 37.662807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532982, 30.928984, 37.453983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255112, 0.503579, 0.825425,
		0.966895, -0.137790, -0.214773,
		0.005581, 0.852890, -0.522061,
		38.534657, 31.184851, 37.297363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078579, 31.006815, 37.846794>,  <38.530750, 30.587828, 37.662807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078579, 31.006815, 37.846794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837982, 31.283278, 37.686543>,  <38.693623, 31.449156, 37.590389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837982, 31.283278, 37.686543>,  <39.078579, 31.006815, 37.846794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837982, 31.283278, 37.686543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262306, 0.644557, 0.718152,
		0.754586, 0.326876, -0.568992,
		-0.601495, 0.691157, -0.400632,
		38.657536, 31.490625, 37.566353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455292, 31.655676, 37.729027>,  <39.078579, 31.006815, 37.846794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455292, 31.655676, 37.729027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072857, 31.772886, 37.731312>,  <38.843395, 31.843212, 37.732685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072857, 31.772886, 37.731312>,  <39.455292, 31.655676, 37.729027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072857, 31.772886, 37.731312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190597, 0.606831, 0.771640,
		0.222640, 0.738846, -0.636033,
		-0.956088, 0.293024, 0.005717,
		38.786030, 31.860794, 37.733028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461124, 32.415325, 37.665775>,  <39.455292, 31.655676, 37.729027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461124, 32.415325, 37.665775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126820, 32.272411, 37.832558>,  <38.926239, 32.186661, 37.932629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126820, 32.272411, 37.832558>,  <39.461124, 32.415325, 37.665775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126820, 32.272411, 37.832558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195363, 0.516183, 0.833899,
		-0.513169, 0.778396, -0.361603,
		-0.835757, -0.357287, 0.416959,
		38.876091, 32.165226, 37.957645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220402, 32.987759, 37.974808>,  <39.461124, 32.415325, 37.665775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220402, 32.987759, 37.974808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000916, 32.705433, 38.154022>,  <38.869225, 32.536037, 38.261551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000916, 32.705433, 38.154022>,  <39.220402, 32.987759, 37.974808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000916, 32.705433, 38.154022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120150, 0.463780, 0.877765,
		-0.827331, 0.535474, -0.169679,
		-0.548714, -0.705816, 0.448037,
		38.836300, 32.493687, 38.288433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653385, 33.260609, 38.503780>,  <39.220402, 32.987759, 37.974808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653385, 33.260609, 38.503780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701702, 32.881855, 38.622993>,  <38.730694, 32.654602, 38.694523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701702, 32.881855, 38.622993>,  <38.653385, 33.260609, 38.503780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701702, 32.881855, 38.622993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084964, 0.289271, 0.953469,
		-0.989035, -0.140498, -0.045508,
		0.120796, -0.946881, 0.298036,
		38.737942, 32.597790, 38.712406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184788, 33.256535, 39.019016>,  <38.653385, 33.260609, 38.503780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184788, 33.256535, 39.019016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474571, 32.987190, 39.078003>,  <38.648441, 32.825584, 39.113396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474571, 32.987190, 39.078003>,  <38.184788, 33.256535, 39.019016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474571, 32.987190, 39.078003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129185, 0.077511, 0.988587,
		-0.677105, -0.735240, -0.030835,
		0.724459, -0.673360, 0.147465,
		38.691910, 32.785183, 39.122242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986439, 32.724274, 39.533356>,  <38.184788, 33.256535, 39.019016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986439, 32.724274, 39.533356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380257, 32.655693, 39.547646>,  <38.616547, 32.614544, 39.556221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380257, 32.655693, 39.547646>,  <37.986439, 32.724274, 39.533356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380257, 32.655693, 39.547646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040513, -0.024512, 0.998878,
		-0.170384, -0.984887, -0.031080,
		0.984544, -0.171452, 0.035724,
		38.675621, 32.604259, 39.558361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084919, 32.246464, 40.070770>,  <37.986439, 32.724274, 39.533356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084919, 32.246464, 40.070770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448666, 32.399952, 40.006512>,  <38.666916, 32.492043, 39.967957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448666, 32.399952, 40.006512>,  <38.084919, 32.246464, 40.070770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448666, 32.399952, 40.006512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117181, 0.134240, 0.983996,
		0.399141, -0.913641, 0.077110,
		0.909371, 0.383717, -0.160642,
		38.721478, 32.515068, 39.958321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594433, 31.826416, 40.538700>,  <38.084919, 32.246464, 40.070770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594433, 31.826416, 40.538700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750095, 32.181232, 40.439323>,  <38.843491, 32.394123, 40.379700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750095, 32.181232, 40.439323>,  <38.594433, 31.826416, 40.538700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750095, 32.181232, 40.439323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128382, 0.319292, 0.938920,
		0.912183, -0.333489, 0.238133,
		0.389153, 0.887039, -0.248438,
		38.866840, 32.447346, 40.364792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217789, 31.881620, 41.006161>,  <38.594433, 31.826416, 40.538700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217789, 31.881620, 41.006161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127079, 32.244049, 40.863274>,  <39.072651, 32.461506, 40.777542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127079, 32.244049, 40.863274>,  <39.217789, 31.881620, 41.006161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127079, 32.244049, 40.863274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047808, 0.355980, 0.933270,
		0.972773, 0.228722, -0.037410,
		-0.226776, 0.906071, -0.357222,
		39.059048, 32.515869, 40.756107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657143, 32.383198, 41.336060>,  <39.217789, 31.881620, 41.006161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657143, 32.383198, 41.336060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340420, 32.591713, 41.208755>,  <39.150387, 32.716824, 41.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340420, 32.591713, 41.208755>,  <39.657143, 32.383198, 41.336060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340420, 32.591713, 41.208755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202503, 0.267537, 0.942028,
		0.576218, 0.810357, -0.106275,
		-0.791811, 0.521292, -0.318260,
		39.102875, 32.748100, 41.113277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698967, 32.887054, 41.701431>,  <39.657143, 32.383198, 41.336060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698967, 32.887054, 41.701431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323059, 32.935169, 41.573452>,  <39.097515, 32.964039, 41.496662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323059, 32.935169, 41.573452>,  <39.698967, 32.887054, 41.701431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323059, 32.935169, 41.573452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234944, 0.452565, 0.860224,
		0.248268, 0.883582, -0.397047,
		-0.939768, 0.120283, -0.319950,
		39.041130, 32.971252, 41.477467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464233, 33.556866, 41.694206>,  <39.698967, 32.887054, 41.701431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464233, 33.556866, 41.694206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104717, 33.384789, 41.727947>,  <38.889008, 33.281544, 41.748192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104717, 33.384789, 41.727947>,  <39.464233, 33.556866, 41.694206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104717, 33.384789, 41.727947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191664, 0.558667, 0.806942,
		-0.394264, 0.709103, -0.584576,
		-0.898789, -0.430190, 0.084353,
		38.835079, 33.255730, 41.753254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086426, 34.046043, 42.002895>,  <39.464233, 33.556866, 41.694206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086426, 34.046043, 42.002895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852707, 33.725945, 42.056854>,  <38.712475, 33.533886, 42.089230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852707, 33.725945, 42.056854>,  <39.086426, 34.046043, 42.002895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852707, 33.725945, 42.056854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328238, 0.385062, 0.862547,
		-0.742197, 0.459705, -0.487663,
		-0.584297, -0.800249, 0.134900,
		38.677418, 33.485870, 42.097324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522518, 34.381081, 42.175350>,  <39.086426, 34.046043, 42.002895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522518, 34.381081, 42.175350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524399, 34.005600, 42.313225>,  <38.525528, 33.780312, 42.395950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524399, 34.005600, 42.313225>,  <38.522518, 34.381081, 42.175350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524399, 34.005600, 42.313225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363153, 0.319556, 0.875216,
		-0.931718, -0.129291, -0.339391,
		0.004703, -0.938705, 0.344689,
		38.525810, 33.723988, 42.416630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834801, 34.278973, 42.334362>,  <38.522518, 34.381081, 42.175350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834801, 34.278973, 42.334362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034290, 34.007751, 42.550327>,  <38.153984, 33.845016, 42.679909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.034290, 34.007751, 42.550327>,  <37.834801, 34.278973, 42.334362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034290, 34.007751, 42.550327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558342, 0.225133, 0.798479,
		-0.662968, -0.699681, -0.266308,
		0.498726, -0.678057, 0.539918,
		38.183907, 33.804333, 42.712303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407074, 34.013432, 42.796700>,  <37.834801, 34.278973, 42.334362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407074, 34.013432, 42.796700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730923, 33.897491, 43.000858>,  <37.925232, 33.827927, 43.123352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730923, 33.897491, 43.000858>,  <37.407074, 34.013432, 42.796700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730923, 33.897491, 43.000858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387170, 0.389841, 0.835538,
		-0.441152, -0.874078, 0.203402,
		0.809620, -0.289848, 0.510396,
		37.973808, 33.810535, 43.153976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161320, 33.741795, 43.478226>,  <37.407074, 34.013432, 42.796700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161320, 33.741795, 43.478226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548904, 33.828613, 43.525570>,  <37.781456, 33.880707, 43.553978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548904, 33.828613, 43.525570>,  <37.161320, 33.741795, 43.478226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548904, 33.828613, 43.525570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186007, 0.324678, 0.927354,
		0.162853, -0.920583, 0.354972,
		0.968958, 0.217050, 0.118360,
		37.839592, 33.893726, 43.561077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479908, 33.302971, 44.032829>,  <37.161320, 33.741795, 43.478226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479908, 33.302971, 44.032829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681061, 33.645466, 43.985558>,  <37.801750, 33.850964, 43.957195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681061, 33.645466, 43.985558>,  <37.479908, 33.302971, 44.032829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681061, 33.645466, 43.985558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157013, 0.224939, 0.961639,
		0.849976, -0.465033, 0.247558,
		0.502879, 0.856240, -0.118177,
		37.831924, 33.902336, 43.950104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893639, 33.330914, 44.634499>,  <37.479908, 33.302971, 44.032829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893639, 33.330914, 44.634499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890011, 33.716682, 44.528816>,  <37.887836, 33.948143, 44.465408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890011, 33.716682, 44.528816>,  <37.893639, 33.330914, 44.634499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890011, 33.716682, 44.528816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090030, 0.262352, 0.960763,
		0.995898, 0.032496, 0.084449,
		-0.009065, 0.964425, -0.264201,
		37.887291, 34.006008, 44.449554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351719, 33.660728, 45.080486>,  <37.893639, 33.330914, 44.634499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351719, 33.660728, 45.080486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131214, 33.964951, 44.943279>,  <37.998909, 34.147484, 44.860954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131214, 33.964951, 44.943279>,  <38.351719, 33.660728, 45.080486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131214, 33.964951, 44.943279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033033, 0.430707, 0.901887,
		0.833676, 0.485848, -0.262557,
		-0.551265, 0.760555, -0.343021,
		37.965836, 34.193115, 44.840374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684715, 34.240891, 45.359898>,  <38.351719, 33.660728, 45.080486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684715, 34.240891, 45.359898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313190, 34.351620, 45.261368>,  <38.090275, 34.418056, 45.202248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313190, 34.351620, 45.261368>,  <38.684715, 34.240891, 45.359898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313190, 34.351620, 45.261368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062019, 0.539251, 0.839858,
		0.365323, 0.795348, -0.483695,
		-0.928813, 0.276821, -0.246327,
		38.034546, 34.434666, 45.187469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692600, 34.950108, 45.596256>,  <38.684715, 34.240891, 45.359898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692600, 34.950108, 45.596256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308449, 34.862335, 45.527523>,  <38.077957, 34.809669, 45.486282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308449, 34.862335, 45.527523>,  <38.692600, 34.950108, 45.596256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308449, 34.862335, 45.527523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273142, 0.618422, 0.736849,
		-0.055425, 0.754587, -0.653855,
		-0.960376, -0.219435, -0.171834,
		38.020336, 34.796505, 45.475971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376797, 35.497440, 45.555351>,  <38.692600, 34.950108, 45.596256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376797, 35.497440, 45.555351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066494, 35.256828, 45.631634>,  <37.880314, 35.112461, 45.677402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066494, 35.256828, 45.631634>,  <38.376797, 35.497440, 45.555351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066494, 35.256828, 45.631634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301410, 0.618718, 0.725493,
		-0.554400, 0.505322, -0.661279,
		-0.775753, -0.601529, 0.190708,
		37.833767, 35.076370, 45.688847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750710, 35.838345, 45.452118>,  <38.376797, 35.497440, 45.555351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750710, 35.838345, 45.452118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672287, 35.539841, 45.706570>,  <37.625233, 35.360737, 45.859241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672287, 35.539841, 45.706570>,  <37.750710, 35.838345, 45.452118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672287, 35.539841, 45.706570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385842, 0.655093, 0.649599,
		-0.901493, -0.118088, -0.416372,
		-0.196053, -0.746263, 0.636125,
		37.613472, 35.315964, 45.897408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078159, 35.826519, 45.746410>,  <37.750710, 35.838345, 45.452118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078159, 35.826519, 45.746410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319530, 35.657875, 46.017147>,  <37.464355, 35.556686, 46.179588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319530, 35.657875, 46.017147>,  <37.078159, 35.826519, 45.746410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319530, 35.657875, 46.017147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336820, 0.634596, 0.695586,
		-0.722788, -0.647712, 0.240929,
		0.603432, -0.421612, 0.676841,
		37.500561, 35.531391, 46.220200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710041, 36.088940, 46.397095>,  <37.078159, 35.826519, 45.746410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710041, 36.088940, 46.397095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044628, 35.899616, 46.507584>,  <37.245380, 35.786022, 46.573879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044628, 35.899616, 46.507584>,  <36.710041, 36.088940, 46.397095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044628, 35.899616, 46.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043993, 0.560414, 0.827043,
		-0.546248, -0.679642, 0.489591,
		0.836467, -0.473309, 0.276226,
		37.295567, 35.757622, 46.590450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629955, 35.826984, 47.099480>,  <36.710041, 36.088940, 46.397095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629955, 35.826984, 47.099480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021324, 35.881302, 47.037189>,  <37.256145, 35.913891, 46.999817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021324, 35.881302, 47.037189>,  <36.629955, 35.826984, 47.099480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021324, 35.881302, 47.037189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062405, 0.524272, 0.849261,
		0.196967, -0.840654, 0.504485,
		0.978422, 0.135794, -0.155725,
		37.314850, 35.922039, 46.990471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079983, 35.439014, 47.692348>,  <36.629955, 35.826984, 47.099480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079983, 35.439014, 47.692348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257126, 35.748180, 47.510586>,  <37.363411, 35.933678, 47.401527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257126, 35.748180, 47.510586>,  <37.079983, 35.439014, 47.692348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257126, 35.748180, 47.510586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030916, 0.493347, 0.869283,
		0.896057, -0.399019, 0.194589,
		0.442860, 0.772912, -0.454403,
		37.389984, 35.980053, 47.374264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474968, 35.655037, 48.197945>,  <37.079983, 35.439014, 47.692348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474968, 35.655037, 48.197945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510986, 35.967922, 47.951359>,  <37.532597, 36.155655, 47.803406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510986, 35.967922, 47.951359>,  <37.474968, 35.655037, 48.197945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510986, 35.967922, 47.951359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196377, 0.592883, 0.780978,
		0.976385, -0.191383, -0.100223,
		0.090045, 0.782217, -0.616465,
		37.537998, 36.202587, 47.766418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992432, 36.151348, 48.474129>,  <37.474968, 35.655037, 48.197945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992432, 36.151348, 48.474129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799198, 36.383644, 48.212025>,  <37.683258, 36.523022, 48.054760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799198, 36.383644, 48.212025>,  <37.992432, 36.151348, 48.474129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799198, 36.383644, 48.212025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012996, 0.743546, 0.668559,
		0.875477, 0.331487, -0.351649,
		-0.483085, 0.580738, -0.655265,
		37.654274, 36.557865, 48.015446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358898, 36.814823, 48.490700>,  <37.992432, 36.151348, 48.474129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358898, 36.814823, 48.490700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009842, 36.924904, 48.329323>,  <37.800407, 36.990952, 48.232498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009842, 36.924904, 48.329323>,  <38.358898, 36.814823, 48.490700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009842, 36.924904, 48.329323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030600, 0.855292, 0.517241,
		0.487410, 0.439019, -0.754781,
		-0.872637, 0.275205, -0.403444,
		37.748051, 37.007465, 48.208290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468941, 37.615185, 48.393520>,  <38.358898, 36.814823, 48.490700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468941, 37.615185, 48.393520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078777, 37.528118, 48.407379>,  <37.844681, 37.475876, 48.415695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078777, 37.528118, 48.407379>,  <38.468941, 37.615185, 48.393520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078777, 37.528118, 48.407379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183873, 0.890280, 0.416644,
		-0.121536, 0.400027, -0.908410,
		-0.975408, -0.217669, 0.034647,
		37.786156, 37.462818, 48.417774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054050, 38.275616, 48.280865>,  <38.468941, 37.615185, 48.393520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054050, 38.275616, 48.280865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778511, 38.031158, 48.436813>,  <37.613190, 37.884483, 48.530384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778511, 38.031158, 48.436813>,  <38.054050, 38.275616, 48.280865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778511, 38.031158, 48.436813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423936, 0.775886, 0.467204,
		-0.588024, 0.156550, -0.793549,
		-0.688844, -0.611141, 0.389873,
		37.571857, 37.847816, 48.553776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421413, 38.717384, 48.345295>,  <38.054050, 38.275616, 48.280865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421413, 38.717384, 48.345295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333202, 38.391140, 48.559261>,  <37.280273, 38.195393, 48.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333202, 38.391140, 48.559261>,  <37.421413, 38.717384, 48.345295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333202, 38.391140, 48.559261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440926, 0.572550, 0.691210,
		-0.870029, -0.083428, -0.485889,
		-0.220530, -0.815614, 0.534921,
		37.267044, 38.146454, 48.719738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525417, 39.444458, 48.445393>,  <37.421413, 38.717384, 48.345295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525417, 39.444458, 48.445393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807652, 39.695229, 48.313259>,  <37.976994, 39.845692, 48.233978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807652, 39.695229, 48.313259>,  <37.525417, 39.444458, 48.445393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807652, 39.695229, 48.313259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465349, -0.761486, -0.451210,
		-0.534416, 0.164647, -0.829030,
		0.705585, 0.626922, -0.330332,
		38.019325, 39.883305, 48.214161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574867, 39.415096, 47.683796>,  <37.525417, 39.444458, 48.445393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574867, 39.415096, 47.683796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927601, 39.545906, 47.819687>,  <38.139240, 39.624393, 47.901222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927601, 39.545906, 47.819687>,  <37.574867, 39.415096, 47.683796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927601, 39.545906, 47.819687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469916, -0.669457, -0.575332,
		0.039286, 0.666994, -0.744027,
		0.881837, 0.327027, 0.339731,
		38.192150, 39.644012, 47.921608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856102, 39.408562, 47.051048>,  <37.574867, 39.415096, 47.683796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856102, 39.408562, 47.051048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163834, 39.452713, 47.302746>,  <38.348473, 39.479206, 47.453766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163834, 39.452713, 47.302746>,  <37.856102, 39.408562, 47.051048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163834, 39.452713, 47.302746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570275, -0.562620, -0.598536,
		0.287960, 0.819314, -0.495786,
		0.769328, 0.110380, 0.629246,
		38.394630, 39.485828, 47.491520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459782, 39.834126, 46.782127>,  <37.856102, 39.408562, 47.051048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459782, 39.834126, 46.782127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542816, 39.553123, 47.054420>,  <38.592636, 39.384521, 47.217796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542816, 39.553123, 47.054420>,  <38.459782, 39.834126, 46.782127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542816, 39.553123, 47.054420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378324, -0.584081, -0.718137,
		0.902096, 0.406614, 0.144526,
		0.207589, -0.702506, 0.680729,
		38.605091, 39.342373, 47.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190639, 39.657093, 46.783733>,  <38.459782, 39.834126, 46.782127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190639, 39.657093, 46.783733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965687, 39.342274, 46.885143>,  <38.830715, 39.153381, 46.945988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965687, 39.342274, 46.885143>,  <39.190639, 39.657093, 46.783733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965687, 39.342274, 46.885143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277199, -0.468313, -0.838954,
		0.779027, -0.401540, 0.481542,
		-0.562386, -0.787051, 0.253522,
		38.796970, 39.106159, 46.961201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995598, 39.298115, 46.146271>,  <39.190639, 39.657093, 46.783733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995598, 39.298115, 46.146271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990738, 39.039505, 46.451389>,  <38.987823, 38.884338, 46.634460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990738, 39.039505, 46.451389>,  <38.995598, 39.298115, 46.146271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990738, 39.039505, 46.451389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122588, -0.758062, -0.640558,
		0.992383, 0.085729, 0.088464,
		-0.012146, -0.646524, 0.762797,
		38.987095, 38.845547, 46.680229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504475, 38.842876, 46.023636>,  <38.995598, 39.298115, 46.146271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504475, 38.842876, 46.023636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227623, 38.659954, 46.247005>,  <39.061512, 38.550201, 46.381027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227623, 38.659954, 46.247005>,  <39.504475, 38.842876, 46.023636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227623, 38.659954, 46.247005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059442, -0.734934, -0.675529,
		0.719322, -0.500747, 0.481486,
		-0.692129, -0.457302, 0.558420,
		39.019985, 38.522762, 46.414532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697014, 38.194477, 46.077065>,  <39.504475, 38.842876, 46.023636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697014, 38.194477, 46.077065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300545, 38.182854, 46.128807>,  <39.062664, 38.175880, 46.159855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300545, 38.182854, 46.128807>,  <39.697014, 38.194477, 46.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300545, 38.182854, 46.128807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068766, -0.721502, -0.688990,
		0.113355, -0.691803, 0.713134,
		-0.991172, -0.029061, 0.129359,
		39.003193, 38.174137, 46.167614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564312, 37.434879, 46.131393>,  <39.697014, 38.194477, 46.077065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564312, 37.434879, 46.131393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219719, 37.629372, 46.072826>,  <39.012962, 37.746067, 46.037685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219719, 37.629372, 46.072826>,  <39.564312, 37.434879, 46.131393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219719, 37.629372, 46.072826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204217, -0.595740, -0.776781,
		-0.464918, -0.639279, 0.612514,
		-0.861479, 0.486226, -0.146419,
		38.961277, 37.775238, 46.028900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111221, 36.898750, 46.016491>,  <39.564312, 37.434879, 46.131393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111221, 36.898750, 46.016491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954300, 37.238422, 45.875076>,  <38.860146, 37.442226, 45.790230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954300, 37.238422, 45.875076>,  <39.111221, 36.898750, 46.016491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954300, 37.238422, 45.875076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057421, -0.406205, -0.911976,
		-0.918041, -0.337473, 0.208117,
		-0.392306, 0.849182, -0.353535,
		38.836609, 37.493176, 45.769016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426994, 36.804874, 45.810551>,  <39.111221, 36.898750, 46.016491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426994, 36.804874, 45.810551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502769, 37.123943, 45.581528>,  <38.548237, 37.315384, 45.444115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502769, 37.123943, 45.581528>,  <38.426994, 36.804874, 45.810551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502769, 37.123943, 45.581528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170751, -0.547471, -0.819219,
		-0.966931, 0.252960, 0.032490,
		0.189442, 0.797676, -0.572559,
		38.559601, 37.363247, 45.409760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864662, 36.854156, 45.229706>,  <38.426994, 36.804874, 45.810551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864662, 36.854156, 45.229706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183495, 37.072449, 45.126289>,  <38.374794, 37.203423, 45.064240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183495, 37.072449, 45.126289>,  <37.864662, 36.854156, 45.229706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183495, 37.072449, 45.126289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192645, -0.175973, -0.965361,
		-0.572320, 0.819277, -0.035133,
		0.797081, 0.545727, -0.258542,
		38.422619, 37.236168, 45.048725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742592, 36.907436, 44.563995>,  <37.864662, 36.854156, 45.229706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742592, 36.907436, 44.563995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109882, 37.065773, 44.569096>,  <38.330257, 37.160774, 44.572155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109882, 37.065773, 44.569096>,  <37.742592, 36.907436, 44.563995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109882, 37.065773, 44.569096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057303, -0.100934, -0.993241,
		-0.391883, 0.912754, -0.115363,
		0.918229, 0.395845, 0.012750,
		38.385349, 37.184528, 44.572922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726891, 37.429043, 44.035557>,  <37.742592, 36.907436, 44.563995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726891, 37.429043, 44.035557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098774, 37.313656, 44.127151>,  <38.321903, 37.244423, 44.182110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098774, 37.313656, 44.127151>,  <37.726891, 37.429043, 44.035557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098774, 37.313656, 44.127151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193102, -0.147645, -0.970006,
		0.313623, 0.946038, -0.081563,
		0.929705, -0.288467, 0.228987,
		38.377686, 37.227116, 44.195847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306171, 37.867931, 43.667313>,  <37.726891, 37.429043, 44.035557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306171, 37.867931, 43.667313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415459, 37.492680, 43.752415>,  <38.481030, 37.267529, 43.803474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415459, 37.492680, 43.752415>,  <38.306171, 37.867931, 43.667313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415459, 37.492680, 43.752415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062926, -0.203267, -0.977099,
		0.959892, 0.280348, 0.003496,
		0.273217, -0.938130, 0.212756,
		38.497425, 37.211239, 43.816242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884666, 37.780045, 43.253960>,  <38.306171, 37.867931, 43.667313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884666, 37.780045, 43.253960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703518, 37.438278, 43.355843>,  <38.594830, 37.233219, 43.416973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703518, 37.438278, 43.355843>,  <38.884666, 37.780045, 43.253960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703518, 37.438278, 43.355843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001926, -0.286622, -0.958042,
		0.891572, -0.433382, 0.131450,
		-0.452875, -0.854416, 0.254709,
		38.567654, 37.181953, 43.432255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011425, 37.468315, 42.724258>,  <38.884666, 37.780045, 43.253960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011425, 37.468315, 42.724258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785500, 37.191723, 42.904408>,  <38.649944, 37.025768, 43.012497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785500, 37.191723, 42.904408>,  <39.011425, 37.468315, 42.724258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785500, 37.191723, 42.904408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115454, -0.474184, -0.872823,
		0.817102, -0.544981, 0.187991,
		-0.564814, -0.691481, 0.450377,
		38.616055, 36.984280, 43.039520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433243, 36.806171, 42.694016>,  <39.011425, 37.468315, 42.724258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433243, 36.806171, 42.694016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038830, 36.743664, 42.717060>,  <38.802181, 36.706158, 42.730885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038830, 36.743664, 42.717060>,  <39.433243, 36.806171, 42.694016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038830, 36.743664, 42.717060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029772, -0.505687, -0.862203,
		0.163870, -0.848445, 0.503276,
		-0.986033, -0.156273, 0.057607,
		38.743019, 36.696781, 42.734341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349392, 36.224236, 42.336079>,  <39.433243, 36.806171, 42.694016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349392, 36.224236, 42.336079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965000, 36.334827, 42.339474>,  <38.734364, 36.401180, 42.341511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965000, 36.334827, 42.339474>,  <39.349392, 36.224236, 42.336079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965000, 36.334827, 42.339474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156472, -0.518043, -0.840921,
		-0.228094, -0.809440, 0.541091,
		-0.960984, 0.276475, 0.008492,
		38.676704, 36.417770, 42.342022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961243, 35.572590, 42.270130>,  <39.349392, 36.224236, 42.336079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961243, 35.572590, 42.270130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715485, 35.861538, 42.143196>,  <38.568027, 36.034904, 42.067036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715485, 35.861538, 42.143196>,  <38.961243, 35.572590, 42.270130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715485, 35.861538, 42.143196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201605, -0.532579, -0.822019,
		-0.762804, -0.441072, 0.472849,
		-0.614398, 0.722368, -0.317331,
		38.531166, 36.078247, 42.047997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358089, 35.235420, 42.008091>,  <38.961243, 35.572590, 42.270130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358089, 35.235420, 42.008091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367100, 35.599495, 41.842651>,  <38.372505, 35.817940, 41.743389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367100, 35.599495, 41.842651>,  <38.358089, 35.235420, 42.008091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367100, 35.599495, 41.842651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197577, -0.401487, -0.894299,
		-0.980028, 0.101866, 0.170786,
		0.022531, 0.910182, -0.413595,
		38.373859, 35.872551, 41.718575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882248, 35.179840, 41.460899>,  <38.358089, 35.235420, 42.008091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882248, 35.179840, 41.460899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102821, 35.507095, 41.395706>,  <38.235165, 35.703449, 41.356590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102821, 35.507095, 41.395706>,  <37.882248, 35.179840, 41.460899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102821, 35.507095, 41.395706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122639, -0.113742, -0.985912,
		-0.825152, 0.563657, 0.037614,
		0.551438, 0.818140, -0.162980,
		38.268253, 35.752537, 41.346813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497086, 35.340412, 40.885818>,  <37.882248, 35.179840, 41.460899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497086, 35.340412, 40.885818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846096, 35.535667, 40.877716>,  <38.055504, 35.652821, 40.872852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846096, 35.535667, 40.877716>,  <37.497086, 35.340412, 40.885818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846096, 35.535667, 40.877716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118426, -0.251547, -0.960572,
		-0.473990, 0.835729, -0.277291,
		0.872530, 0.488140, -0.020259,
		38.107857, 35.682110, 40.871639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583103, 35.662998, 40.177742>,  <37.497086, 35.340412, 40.885818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583103, 35.662998, 40.177742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954571, 35.641651, 40.324566>,  <38.177452, 35.628841, 40.412659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954571, 35.641651, 40.324566>,  <37.583103, 35.662998, 40.177742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954571, 35.641651, 40.324566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335158, -0.303182, -0.892048,
		0.158893, 0.951437, -0.263668,
		0.928667, -0.053370, 0.367055,
		38.233170, 35.625641, 40.434681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034794, 35.874519, 39.647144>,  <37.583103, 35.662998, 40.177742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034794, 35.874519, 39.647144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320656, 35.713448, 39.875919>,  <38.492172, 35.616806, 40.013184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320656, 35.713448, 39.875919>,  <38.034794, 35.874519, 39.647144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320656, 35.713448, 39.875919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504860, -0.268989, -0.820220,
		0.484131, 0.874925, 0.011062,
		0.714656, -0.402679, 0.571941,
		38.535053, 35.592644, 40.047501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692722, 36.184658, 39.404781>,  <38.034794, 35.874519, 39.647144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692722, 36.184658, 39.404781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778568, 35.853344, 39.611809>,  <38.830074, 35.654556, 39.736027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778568, 35.853344, 39.611809>,  <38.692722, 36.184658, 39.404781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778568, 35.853344, 39.611809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704331, -0.235877, -0.669537,
		0.676653, 0.508231, 0.532768,
		0.214612, -0.828290, 0.517570,
		38.842953, 35.604858, 39.767078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440319, 36.164330, 39.678143>,  <38.692722, 36.184658, 39.404781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440319, 36.164330, 39.678143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321964, 35.782784, 39.657761>,  <39.250950, 35.553856, 39.645531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321964, 35.782784, 39.657761>,  <39.440319, 36.164330, 39.678143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321964, 35.782784, 39.657761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825252, -0.228399, -0.516521,
		0.481051, -0.194886, 0.854757,
		-0.295888, -0.953862, -0.050959,
		39.233196, 35.496624, 39.642471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014713, 35.682919, 39.960674>,  <39.440319, 36.164330, 39.678143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014713, 35.682919, 39.960674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767937, 35.440075, 39.760349>,  <39.619873, 35.294369, 39.640156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767937, 35.440075, 39.760349>,  <40.014713, 35.682919, 39.960674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767937, 35.440075, 39.760349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778434, -0.377034, -0.501881,
		0.115873, -0.699478, 0.705198,
		-0.616938, -0.607105, -0.500810,
		39.582855, 35.257942, 39.610107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297108, 34.981239, 39.960091>,  <40.014713, 35.682919, 39.960674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297108, 34.981239, 39.960091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049244, 35.018623, 39.648376>,  <39.900524, 35.041054, 39.461349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049244, 35.018623, 39.648376>,  <40.297108, 34.981239, 39.960091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049244, 35.018623, 39.648376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665067, -0.464714, -0.584574,
		-0.416778, -0.880515, 0.225808,
		-0.619663, 0.093460, -0.779284,
		39.863346, 35.046661, 39.414593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365936, 34.353783, 39.439896>,  <40.297108, 34.981239, 39.960091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365936, 34.353783, 39.439896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158524, 34.616592, 39.221008>,  <40.034077, 34.774277, 39.089676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158524, 34.616592, 39.221008>,  <40.365936, 34.353783, 39.439896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158524, 34.616592, 39.221008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625363, -0.145050, -0.766734,
		-0.583136, -0.739785, -0.335665,
		-0.518531, 0.657022, -0.547218,
		40.002964, 34.813698, 39.056843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294163, 34.069862, 38.777626>,  <40.365936, 34.353783, 39.439896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294163, 34.069862, 38.777626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228729, 34.460697, 38.723152>,  <40.189468, 34.695198, 38.690468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228729, 34.460697, 38.723152>,  <40.294163, 34.069862, 38.777626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228729, 34.460697, 38.723152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461163, -0.046293, -0.886107,
		-0.872106, -0.207758, -0.443022,
		-0.163587, 0.977084, -0.136182,
		40.179653, 34.753822, 38.682297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032330, 34.168827, 38.073994>,  <40.294163, 34.069862, 38.777626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032330, 34.168827, 38.073994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224461, 34.490330, 38.214424>,  <40.339741, 34.683231, 38.298683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224461, 34.490330, 38.214424>,  <40.032330, 34.168827, 38.073994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224461, 34.490330, 38.214424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731113, -0.145792, -0.666497,
		-0.484517, 0.576817, -0.657666,
		0.480330, 0.803758, 0.351080,
		40.368561, 34.731457, 38.319748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420689, 34.372921, 37.603058>,  <40.032330, 34.168827, 38.073994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420689, 34.372921, 37.603058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589405, 34.630188, 37.858692>,  <40.690636, 34.784546, 38.012074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.589405, 34.630188, 37.858692>,  <40.420689, 34.372921, 37.603058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589405, 34.630188, 37.858692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801632, 0.064809, -0.594295,
		-0.423647, 0.762982, -0.488244,
		0.421793, 0.643163, 0.639087,
		40.715942, 34.823135, 38.050419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620491, 34.905918, 37.175606>,  <40.420689, 34.372921, 37.603058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620491, 34.905918, 37.175606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838638, 34.946381, 37.508434>,  <40.969524, 34.970657, 37.708130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838638, 34.946381, 37.508434>,  <40.620491, 34.905918, 37.175606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838638, 34.946381, 37.508434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832509, 0.050106, -0.551741,
		-0.097505, 0.993608, -0.056890,
		0.545364, 0.101159, 0.832073,
		41.002247, 34.976727, 37.758057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011631, 35.516449, 37.128510>,  <40.620491, 34.905918, 37.175606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011631, 35.516449, 37.128510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210022, 35.333813, 37.423950>,  <41.329056, 35.224232, 37.601215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210022, 35.333813, 37.423950>,  <41.011631, 35.516449, 37.128510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210022, 35.333813, 37.423950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852662, 0.095206, -0.513716,
		0.164238, 0.884569, 0.436536,
		0.495978, -0.456589, 0.738601,
		41.358814, 35.196835, 37.645531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568600, 35.963085, 37.437405>,  <41.011631, 35.516449, 37.128510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568600, 35.963085, 37.437405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697281, 35.598526, 37.540058>,  <41.774490, 35.379791, 37.601650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697281, 35.598526, 37.540058>,  <41.568600, 35.963085, 37.437405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697281, 35.598526, 37.540058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914716, 0.229147, -0.332846,
		0.244547, 0.341828, 0.907386,
		0.321701, -0.911397, 0.256639,
		41.793793, 35.325108, 37.617050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161606, 36.191624, 37.679478>,  <41.568600, 35.963085, 37.437405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161606, 36.191624, 37.679478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174751, 35.798111, 37.608948>,  <42.182640, 35.562004, 37.566631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174751, 35.798111, 37.608948>,  <42.161606, 36.191624, 37.679478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174751, 35.798111, 37.608948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942849, 0.089047, -0.321103,
		0.331597, -0.155696, 0.930485,
		0.032863, -0.983783, -0.176325,
		42.184608, 35.502975, 37.556049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676979, 36.016052, 37.932400>,  <42.161606, 36.191624, 37.679478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676979, 36.016052, 37.932400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608353, 35.726673, 37.664913>,  <42.567177, 35.553043, 37.504421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608353, 35.726673, 37.664913>,  <42.676979, 36.016052, 37.932400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608353, 35.726673, 37.664913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922661, 0.119949, -0.366482,
		0.345344, -0.679874, 0.646922,
		-0.171564, -0.723452, -0.668717,
		42.556885, 35.509636, 37.464298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267517, 35.621090, 37.958130>,  <42.676979, 36.016052, 37.932400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267517, 35.621090, 37.958130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090992, 35.556309, 37.605083>,  <42.985077, 35.517441, 37.393253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090992, 35.556309, 37.605083>,  <43.267517, 35.621090, 37.958130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090992, 35.556309, 37.605083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888338, 0.060239, -0.455221,
		0.126891, -0.984959, 0.117282,
		-0.441309, -0.161950, -0.882620,
		42.958599, 35.507725, 37.340298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713760, 35.142319, 37.636501>,  <43.267517, 35.621090, 37.958130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713760, 35.142319, 37.636501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496662, 35.290886, 37.335178>,  <43.366402, 35.380028, 37.154385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496662, 35.290886, 37.335178>,  <43.713760, 35.142319, 37.636501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496662, 35.290886, 37.335178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805953, -0.022083, -0.591567,
		-0.236356, -0.928202, -0.287363,
		-0.542748, 0.371421, -0.753307,
		43.333839, 35.402313, 37.109188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807354, 34.812805, 36.990868>,  <43.713760, 35.142319, 37.636501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807354, 34.812805, 36.990868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701439, 35.183292, 36.883533>,  <43.637890, 35.405586, 36.819130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701439, 35.183292, 36.883533>,  <43.807354, 34.812805, 36.990868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701439, 35.183292, 36.883533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761725, 0.030261, -0.647194,
		-0.591322, -0.375771, -0.713537,
		-0.264788, 0.926219, -0.268340,
		43.622002, 35.461159, 36.803032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793373, 34.942894, 36.227386>,  <43.807354, 34.812805, 36.990868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793373, 34.942894, 36.227386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886284, 35.287384, 36.408203>,  <43.942032, 35.494076, 36.516693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886284, 35.287384, 36.408203>,  <43.793373, 34.942894, 36.227386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886284, 35.287384, 36.408203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766317, 0.124181, -0.630346,
		-0.599003, 0.492826, -0.631124,
		0.232278, 0.861221, 0.452046,
		43.955967, 35.545750, 36.543816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793278, 35.449512, 35.695194>,  <43.793373, 34.942894, 36.227386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793278, 35.449512, 35.695194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015629, 35.406090, 36.024853>,  <44.149040, 35.380035, 36.222649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015629, 35.406090, 36.024853>,  <43.793278, 35.449512, 35.695194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015629, 35.406090, 36.024853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741177, -0.384162, -0.550523,
		0.376367, 0.916862, -0.133090,
		0.555881, -0.108556, 0.824143,
		44.182392, 35.373524, 36.272095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419888, 35.716118, 35.507557>,  <43.793278, 35.449512, 35.695194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419888, 35.716118, 35.507557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476719, 35.436764, 35.788147>,  <44.510818, 35.269150, 35.956501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476719, 35.436764, 35.788147>,  <44.419888, 35.716118, 35.507557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476719, 35.436764, 35.788147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750637, -0.385938, -0.536279,
		0.645257, 0.602749, 0.469401,
		0.142082, -0.698388, 0.701475,
		44.519344, 35.227249, 35.998589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143990, 35.871658, 35.827591>,  <44.419888, 35.716118, 35.507557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143990, 35.871658, 35.827591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948605, 35.523640, 35.800983>,  <44.831375, 35.314827, 35.785019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948605, 35.523640, 35.800983>,  <45.143990, 35.871658, 35.827591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948605, 35.523640, 35.800983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752097, -0.381132, -0.537670,
		0.442446, -0.312659, 0.840527,
		-0.488459, -0.870048, -0.066519,
		44.802067, 35.262627, 35.781029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391529, 35.926941, 36.462482>,  <45.143990, 35.871658, 35.827591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391529, 35.926941, 36.462482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750732, 36.102665, 36.472214>,  <45.966255, 36.208099, 36.478054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750732, 36.102665, 36.472214>,  <45.391529, 35.926941, 36.462482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750732, 36.102665, 36.472214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438299, 0.888350, 0.136851,
		0.038507, -0.133556, 0.990293,
		0.898004, 0.439314, 0.024330,
		46.020134, 36.234459, 36.479511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.548111, 36.324097, 37.103966>,  <45.391529, 35.926941, 36.462482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.548111, 36.324097, 37.103966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714088, 36.457630, 36.765408>,  <45.813675, 36.537750, 36.562275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714088, 36.457630, 36.765408>,  <45.548111, 36.324097, 37.103966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714088, 36.457630, 36.765408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598646, 0.800703, 0.022322,
		0.685160, 0.497426, 0.532094,
		0.414945, 0.333830, -0.846391,
		45.838573, 36.557777, 36.511490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786179, 37.000118, 37.117657>,  <45.548111, 36.324097, 37.103966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786179, 37.000118, 37.117657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747292, 36.935513, 36.724831>,  <45.723957, 36.896748, 36.489136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747292, 36.935513, 36.724831>,  <45.786179, 37.000118, 37.117657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747292, 36.935513, 36.724831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639074, 0.766576, -0.062807,
		0.762976, 0.621510, -0.177747,
		-0.097222, -0.161514, -0.982070,
		45.718124, 36.887058, 36.430210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.584175, 37.671780, 36.802315>,  <45.786179, 37.000118, 37.117657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.584175, 37.671780, 36.802315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489479, 37.427689, 36.499905>,  <45.432659, 37.281235, 36.318459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.489479, 37.427689, 36.499905>,  <45.584175, 37.671780, 36.802315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.489479, 37.427689, 36.499905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705878, 0.642721, -0.297733,
		0.667599, 0.463177, -0.582905,
		-0.236743, -0.610227, -0.756027,
		45.418457, 37.244621, 36.273098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613430, 38.018581, 36.121517>,  <45.584175, 37.671780, 36.802315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613430, 38.018581, 36.121517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358616, 37.716553, 36.059483>,  <45.205727, 37.535336, 36.022263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358616, 37.716553, 36.059483>,  <45.613430, 38.018581, 36.121517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358616, 37.716553, 36.059483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679626, 0.645109, -0.349202,
		0.363719, -0.117056, -0.924125,
		-0.637038, -0.755071, -0.155084,
		45.167503, 37.490032, 36.012959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310837, 38.155930, 35.564976>,  <45.613430, 38.018581, 36.121517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310837, 38.155930, 35.564976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027168, 37.908352, 35.700024>,  <44.856968, 37.759804, 35.781052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.027168, 37.908352, 35.700024>,  <45.310837, 38.155930, 35.564976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027168, 37.908352, 35.700024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694915, 0.532786, -0.482941,
		0.119035, -0.577103, -0.807949,
		-0.709171, -0.618943, 0.337618,
		44.814419, 37.722668, 35.801308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894566, 38.099239, 34.934906>,  <45.310837, 38.155930, 35.564976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894566, 38.099239, 34.934906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675709, 37.988476, 35.250870>,  <44.544395, 37.922016, 35.440449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675709, 37.988476, 35.250870>,  <44.894566, 38.099239, 34.934906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675709, 37.988476, 35.250870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796483, 0.462418, -0.389596,
		-0.257383, -0.842313, -0.473565,
		-0.547146, -0.276911, 0.789906,
		44.511566, 37.905403, 35.487843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360989, 37.734013, 34.703640>,  <44.894566, 38.099239, 34.934906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360989, 37.734013, 34.703640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222694, 37.851719, 35.060040>,  <44.139717, 37.922344, 35.273880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.222694, 37.851719, 35.060040>,  <44.360989, 37.734013, 34.703640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222694, 37.851719, 35.060040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855866, 0.290361, -0.428001,
		-0.384657, -0.910548, 0.151465,
		-0.345735, 0.294267, 0.890996,
		44.118973, 37.939999, 35.327339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654846, 37.482552, 34.797253>,  <44.360989, 37.734013, 34.703640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654846, 37.482552, 34.797253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682392, 37.783459, 35.059353>,  <43.698917, 37.964005, 35.216614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682392, 37.783459, 35.059353>,  <43.654846, 37.482552, 34.797253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682392, 37.783459, 35.059353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811750, 0.424060, -0.401541,
		-0.579931, -0.504248, 0.639854,
		0.068860, 0.752268, 0.655249,
		43.703049, 38.009140, 35.255928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959003, 37.571266, 34.970795>,  <43.654846, 37.482552, 34.797253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959003, 37.571266, 34.970795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105457, 37.915829, 35.111603>,  <43.193329, 38.122566, 35.196087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105457, 37.915829, 35.111603>,  <42.959003, 37.571266, 34.970795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105457, 37.915829, 35.111603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836723, 0.470299, -0.280558,
		-0.407231, -0.191824, 0.892954,
		0.366138, 0.861407, 0.352024,
		43.215298, 38.174252, 35.217209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497765, 37.878284, 35.517097>,  <42.959003, 37.571266, 34.970795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497765, 37.878284, 35.517097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717464, 38.177582, 35.368263>,  <42.849285, 38.357162, 35.278961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717464, 38.177582, 35.368263>,  <42.497765, 37.878284, 35.517097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717464, 38.177582, 35.368263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834709, 0.470025, -0.286944,
		-0.039814, 0.468191, 0.882730,
		0.549250, 0.748247, -0.372090,
		42.882240, 38.402058, 35.256638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187450, 38.600258, 35.787296>,  <42.497765, 37.878284, 35.517097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187450, 38.600258, 35.787296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417904, 38.690147, 35.472954>,  <42.556175, 38.744080, 35.284348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417904, 38.690147, 35.472954>,  <42.187450, 38.600258, 35.787296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417904, 38.690147, 35.472954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603888, 0.764951, -0.223986,
		0.550804, 0.603613, 0.576426,
		0.576138, 0.224724, -0.785852,
		42.590744, 38.757565, 35.237198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240555, 39.387630, 35.786373>,  <42.187450, 38.600258, 35.787296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240555, 39.387630, 35.786373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339958, 39.263401, 35.419376>,  <42.399601, 39.188866, 35.199177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339958, 39.263401, 35.419376>,  <42.240555, 39.387630, 35.786373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339958, 39.263401, 35.419376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545965, 0.737495, -0.397521,
		0.800103, 0.599705, 0.013715,
		0.248510, -0.310570, -0.917490,
		42.414513, 39.170231, 35.144131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463886, 39.982304, 35.459175>,  <42.240555, 39.387630, 35.786373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463886, 39.982304, 35.459175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388111, 39.737206, 35.152279>,  <42.342648, 39.590145, 34.968140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388111, 39.737206, 35.152279>,  <42.463886, 39.982304, 35.459175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388111, 39.737206, 35.152279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435723, 0.752698, -0.493549,
		0.879919, 0.240807, -0.409577,
		-0.189438, -0.612745, -0.767239,
		42.331280, 39.553383, 34.922108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682484, 40.331760, 34.837208>,  <42.463886, 39.982304, 35.459175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682484, 40.331760, 34.837208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392555, 40.077785, 34.730251>,  <42.218597, 39.925400, 34.666077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392555, 40.077785, 34.730251>,  <42.682484, 40.331760, 34.837208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392555, 40.077785, 34.730251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401615, 0.704758, -0.584826,
		0.559772, -0.316505, -0.765820,
		-0.724818, -0.634934, -0.267391,
		42.175110, 39.887306, 34.650036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576614, 40.484177, 34.144531>,  <42.682484, 40.331760, 34.837208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576614, 40.484177, 34.144531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246117, 40.287838, 34.255093>,  <42.047817, 40.170036, 34.321430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246117, 40.287838, 34.255093>,  <42.576614, 40.484177, 34.144531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246117, 40.287838, 34.255093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532326, 0.519827, -0.668138,
		0.184269, -0.699180, -0.690791,
		-0.826240, -0.490844, 0.276404,
		41.998245, 40.140583, 34.338013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371120, 40.066658, 33.591656>,  <42.576614, 40.484177, 34.144531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371120, 40.066658, 33.591656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062035, 40.167038, 33.824871>,  <41.876583, 40.227268, 33.964798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062035, 40.167038, 33.824871>,  <42.371120, 40.066658, 33.591656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062035, 40.167038, 33.824871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507237, 0.308073, -0.804862,
		-0.381599, -0.917668, -0.110761,
		-0.772718, 0.250953, 0.583035,
		41.830219, 40.242325, 33.999783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681686, 39.776802, 33.326244>,  <42.371120, 40.066658, 33.591656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681686, 39.776802, 33.326244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585949, 40.104351, 33.534920>,  <41.528507, 40.300880, 33.660126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585949, 40.104351, 33.534920>,  <41.681686, 39.776802, 33.326244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585949, 40.104351, 33.534920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530657, 0.339630, -0.776566,
		-0.813091, -0.462702, 0.353255,
		-0.239343, 0.818876, 0.521686,
		41.514145, 40.350014, 33.691425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056519, 40.007370, 33.058788>,  <41.681686, 39.776802, 33.326244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056519, 40.007370, 33.058788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107044, 40.318340, 33.305252>,  <41.137360, 40.504921, 33.453133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107044, 40.318340, 33.305252>,  <41.056519, 40.007370, 33.058788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107044, 40.318340, 33.305252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382858, 0.611218, -0.692699,
		-0.915131, -0.148404, 0.374849,
		0.126315, 0.777424, 0.616163,
		41.144939, 40.551567, 33.490101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590092, 40.412914, 32.816391>,  <41.056519, 40.007370, 33.058788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590092, 40.412914, 32.816391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794750, 40.662540, 33.052616>,  <40.917545, 40.812317, 33.194351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794750, 40.662540, 33.052616>,  <40.590092, 40.412914, 32.816391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794750, 40.662540, 33.052616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298153, 0.773592, -0.559160,
		-0.805808, 0.110010, 0.581868,
		0.511642, 0.624061, 0.590567,
		40.948242, 40.849758, 33.229786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107811, 40.886913, 33.069107>,  <40.590092, 40.412914, 32.816391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107811, 40.886913, 33.069107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460270, 41.072929, 33.103317>,  <40.671745, 41.184540, 33.123844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460270, 41.072929, 33.103317>,  <40.107811, 40.886913, 33.069107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460270, 41.072929, 33.103317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429821, 0.863149, -0.265007,
		-0.197061, 0.196750, 0.960446,
		0.881148, 0.465042, 0.085526,
		40.724613, 41.212440, 33.128975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918358, 41.571205, 33.348686>,  <40.107811, 40.886913, 33.069107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918358, 41.571205, 33.348686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270573, 41.559113, 33.159485>,  <40.481903, 41.551857, 33.045963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270573, 41.559113, 33.159485>,  <39.918358, 41.571205, 33.348686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270573, 41.559113, 33.159485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294851, 0.746417, -0.596594,
		0.371092, 0.664791, 0.648339,
		0.880542, -0.030228, -0.473004,
		40.534737, 41.550045, 33.017582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028564, 42.278763, 33.306797>,  <39.918358, 41.571205, 33.348686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028564, 42.278763, 33.306797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269669, 42.090855, 33.048809>,  <40.414333, 41.978111, 32.894016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269669, 42.090855, 33.048809>,  <40.028564, 42.278763, 33.306797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269669, 42.090855, 33.048809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375169, 0.546540, -0.748693,
		0.704218, 0.693260, 0.153192,
		0.602764, -0.469771, -0.644973,
		40.450497, 41.949924, 32.855316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504688, 42.736736, 32.890598>,  <40.028564, 42.278763, 33.306797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504688, 42.736736, 32.890598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408276, 42.419136, 32.667358>,  <40.350430, 42.228577, 32.533413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408276, 42.419136, 32.667358>,  <40.504688, 42.736736, 32.890598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408276, 42.419136, 32.667358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213113, 0.604317, -0.767713,
		0.946830, -0.066104, -0.314869,
		-0.241030, -0.793997, -0.558098,
		40.335968, 42.180939, 32.499928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843716, 42.809071, 32.141827>,  <40.504688, 42.736736, 32.890598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843716, 42.809071, 32.141827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516285, 42.580269, 32.162758>,  <40.319824, 42.442989, 32.175316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516285, 42.580269, 32.162758>,  <40.843716, 42.809071, 32.141827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516285, 42.580269, 32.162758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495073, 0.656415, -0.569230,
		0.291250, -0.491868, -0.820512,
		-0.818581, -0.572001, 0.052330,
		40.270710, 42.408669, 32.178455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499359, 42.868023, 31.476856>,  <40.843716, 42.809071, 32.141827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499359, 42.868023, 31.476856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191280, 42.736538, 31.695490>,  <40.006435, 42.657646, 31.826670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191280, 42.736538, 31.695490>,  <40.499359, 42.868023, 31.476856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191280, 42.736538, 31.695490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615870, 0.606127, -0.503304,
		-0.165856, -0.724264, -0.669278,
		-0.770192, -0.328712, 0.546582,
		39.960224, 42.637924, 31.859465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996452, 42.614208, 30.965799>,  <40.499359, 42.868023, 31.476856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996452, 42.614208, 30.965799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868839, 42.735203, 31.325069>,  <39.792271, 42.807800, 31.540630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868839, 42.735203, 31.325069>,  <39.996452, 42.614208, 30.965799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868839, 42.735203, 31.325069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731289, 0.524255, -0.436317,
		-0.602854, -0.796025, 0.053953,
		-0.319034, 0.302491, 0.898174,
		39.773129, 42.825951, 31.594522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206814, 43.236111, 30.523399>,  <39.996452, 42.614208, 30.965799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206814, 43.236111, 30.523399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244003, 43.311466, 30.132326>,  <40.266315, 43.356678, 29.897682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.244003, 43.311466, 30.132326>,  <40.206814, 43.236111, 30.523399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244003, 43.311466, 30.132326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975163, 0.181032, 0.127615,
		0.201033, -0.965266, -0.166877,
		0.092972, 0.188387, -0.977684,
		40.271896, 43.367981, 29.839022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807114, 42.796837, 30.216747>,  <40.206814, 43.236111, 30.523399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807114, 42.796837, 30.216747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713909, 43.152958, 30.060249>,  <40.657986, 43.366631, 29.966351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713909, 43.152958, 30.060249>,  <40.807114, 42.796837, 30.216747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713909, 43.152958, 30.060249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946829, 0.299482, 0.117584,
		0.221856, -0.343044, -0.912744,
		-0.233014, 0.890298, -0.391246,
		40.644005, 43.420048, 29.942875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500309, 42.343807, 29.583811>,  <40.807114, 42.796837, 30.216747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500309, 42.343807, 29.583811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566086, 42.565094, 29.257153>,  <40.605553, 42.697865, 29.061157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566086, 42.565094, 29.257153>,  <40.500309, 42.343807, 29.583811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566086, 42.565094, 29.257153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496786, 0.668797, 0.553094,
		0.852151, -0.496652, -0.164849,
		0.164445, 0.553215, -0.816646,
		40.615417, 42.731060, 29.012159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221748, 42.529705, 29.535332>,  <40.500309, 42.343807, 29.583811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221748, 42.529705, 29.535332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986622, 42.796181, 29.351736>,  <40.845547, 42.956066, 29.241579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986622, 42.796181, 29.351736>,  <41.221748, 42.529705, 29.535332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986622, 42.796181, 29.351736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368478, 0.725561, 0.581193,
		0.720209, 0.172505, -0.671969,
		-0.587813, 0.666186, -0.458991,
		40.810280, 42.996037, 29.214039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344849, 43.203117, 29.859024>,  <41.221748, 42.529705, 29.535332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344849, 43.203117, 29.859024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598705, 43.373219, 30.117138>,  <41.751019, 43.475277, 30.272005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.598705, 43.373219, 30.117138>,  <41.344849, 43.203117, 29.859024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598705, 43.373219, 30.117138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507220, -0.859181, 0.067353,
		0.583057, 0.284556, -0.760968,
		0.634643, 0.425249, 0.645284,
		41.789097, 43.500793, 30.310722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017742, 42.941494, 29.557333>,  <41.344849, 43.203117, 29.859024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017742, 42.941494, 29.557333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047016, 43.049419, 29.941383>,  <42.064579, 43.114174, 30.171814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047016, 43.049419, 29.941383>,  <42.017742, 42.941494, 29.557333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047016, 43.049419, 29.941383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603978, -0.778082, 0.172624,
		0.793634, 0.567263, -0.219905,
		0.073181, 0.269818, 0.960127,
		42.068970, 43.130363, 30.229422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744156, 43.067364, 29.810234>,  <42.017742, 42.941494, 29.557333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744156, 43.067364, 29.810234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555305, 42.952724, 30.143690>,  <42.441994, 42.883942, 30.343763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555305, 42.952724, 30.143690>,  <42.744156, 43.067364, 29.810234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555305, 42.952724, 30.143690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695445, -0.702223, 0.152444,
		0.541711, 0.651725, 0.530852,
		-0.472127, -0.286598, 0.833641,
		42.413666, 42.866745, 30.393782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247478, 42.845943, 30.395954>,  <42.744156, 43.067364, 29.810234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247478, 42.845943, 30.395954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905846, 42.675640, 30.515471>,  <42.700867, 42.573456, 30.587181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905846, 42.675640, 30.515471>,  <43.247478, 42.845943, 30.395954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905846, 42.675640, 30.515471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518309, -0.744823, 0.420231,
		0.043628, 0.513776, 0.856814,
		-0.854080, -0.425761, 0.298790,
		42.649620, 42.547913, 30.605108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363941, 42.714622, 31.086712>,  <43.247478, 42.845943, 30.395954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363941, 42.714622, 31.086712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063366, 42.477924, 30.969975>,  <42.883018, 42.335907, 30.899933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.063366, 42.477924, 30.969975>,  <43.363941, 42.714622, 31.086712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063366, 42.477924, 30.969975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463110, -0.788089, 0.405517,
		-0.469960, 0.169568, 0.866247,
		-0.751443, -0.591745, -0.291842,
		42.837933, 42.300400, 30.882421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033447, 42.314625, 31.669674>,  <43.363941, 42.714622, 31.086712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033447, 42.314625, 31.669674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929985, 42.095413, 31.351490>,  <42.867908, 41.963886, 31.160580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.929985, 42.095413, 31.351490>,  <43.033447, 42.314625, 31.669674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929985, 42.095413, 31.351490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347322, -0.821176, 0.452810,
		-0.901368, -0.159159, 0.402745,
		-0.258656, -0.548031, -0.795462,
		42.852386, 41.931004, 31.112852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746105, 41.746151, 31.885252>,  <43.033447, 42.314625, 31.669674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746105, 41.746151, 31.885252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843182, 41.641529, 31.511580>,  <42.901428, 41.578754, 31.287376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.843182, 41.641529, 31.511580>,  <42.746105, 41.746151, 31.885252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843182, 41.641529, 31.511580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319598, -0.887653, 0.331557,
		-0.915948, -0.379026, -0.131828,
		0.242687, -0.261557, -0.934180,
		42.915989, 41.563061, 31.231325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439140, 41.049397, 31.822819>,  <42.746105, 41.746151, 31.885252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439140, 41.049397, 31.822819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712532, 41.087334, 31.533306>,  <42.876568, 41.110096, 31.359598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712532, 41.087334, 31.533306>,  <42.439140, 41.049397, 31.822819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712532, 41.087334, 31.533306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284336, -0.947802, 0.144309,
		-0.672318, -0.304430, -0.674768,
		0.683478, 0.094839, -0.723784,
		42.917576, 41.115784, 31.316172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434311, 40.362045, 31.386084>,  <42.439140, 41.049397, 31.822819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434311, 40.362045, 31.386084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785622, 40.537022, 31.308853>,  <42.996407, 40.642010, 31.262516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785622, 40.537022, 31.308853>,  <42.434311, 40.362045, 31.386084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785622, 40.537022, 31.308853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463617, -0.877876, 0.119965,
		-0.117017, -0.194875, -0.973823,
		0.878274, 0.437443, -0.193074,
		43.049103, 40.668255, 31.250931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754677, 39.848984, 30.944130>,  <42.434311, 40.362045, 31.386084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754677, 39.848984, 30.944130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049706, 40.073643, 31.094080>,  <43.226723, 40.208439, 31.184052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049706, 40.073643, 31.094080>,  <42.754677, 39.848984, 30.944130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049706, 40.073643, 31.094080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535546, -0.824688, 0.181878,
		0.411309, 0.066616, -0.909059,
		0.737574, 0.561651, 0.374877,
		43.270977, 40.242138, 31.206543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306808, 39.536591, 30.723942>,  <42.754677, 39.848984, 30.944130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306808, 39.536591, 30.723942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467335, 39.768501, 31.007578>,  <43.563648, 39.907646, 31.177759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467335, 39.768501, 31.007578>,  <43.306808, 39.536591, 30.723942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467335, 39.768501, 31.007578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600861, -0.750949, 0.273938,
		0.691313, 0.316129, -0.649730,
		0.401314, 0.579775, 0.709090,
		43.587730, 39.942432, 31.220304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944118, 39.577988, 30.567944>,  <43.306808, 39.536591, 30.723942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944118, 39.577988, 30.567944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928825, 39.676876, 30.955225>,  <43.919651, 39.736210, 31.187593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928825, 39.676876, 30.955225>,  <43.944118, 39.577988, 30.567944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928825, 39.676876, 30.955225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601167, -0.768269, 0.219909,
		0.798208, 0.590460, -0.119250,
		-0.038232, 0.247223, 0.968204,
		43.917355, 39.751041, 31.245686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630497, 39.574871, 30.832802>,  <43.944118, 39.577988, 30.567944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630497, 39.574871, 30.832802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397907, 39.540779, 31.156437>,  <44.258354, 39.520325, 31.350618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.397907, 39.540779, 31.156437>,  <44.630497, 39.574871, 30.832802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397907, 39.540779, 31.156437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674691, -0.606248, 0.421018,
		0.454624, 0.790695, 0.410022,
		-0.581472, -0.085233, 0.809089,
		44.223465, 39.515209, 31.399164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109531, 39.624023, 31.378307>,  <44.630497, 39.574871, 30.832802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109531, 39.624023, 31.378307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785305, 39.448639, 31.533602>,  <44.590767, 39.343407, 31.626780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785305, 39.448639, 31.533602>,  <45.109531, 39.624023, 31.378307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785305, 39.448639, 31.533602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585099, -0.634897, 0.504544,
		0.025267, 0.636125, 0.771172,
		-0.810568, -0.438464, 0.388238,
		44.542133, 39.317101, 31.650074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314758, 39.453503, 32.070847>,  <45.109531, 39.624023, 31.378307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314758, 39.453503, 32.070847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967926, 39.262733, 32.013279>,  <44.759827, 39.148273, 31.978739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967926, 39.262733, 32.013279>,  <45.314758, 39.453503, 32.070847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967926, 39.262733, 32.013279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339543, -0.777192, 0.529795,
		-0.364520, 0.410512, 0.835826,
		-0.867085, -0.476920, -0.143915,
		44.707802, 39.119659, 31.970104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000820, 39.299198, 32.656265>,  <45.314758, 39.453503, 32.070847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000820, 39.299198, 32.656265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894684, 38.983795, 32.434330>,  <44.831001, 38.794552, 32.301167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894684, 38.983795, 32.434330>,  <45.000820, 39.299198, 32.656265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894684, 38.983795, 32.434330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523770, -0.601034, 0.603675,
		-0.809482, -0.130432, 0.572474,
		-0.265337, -0.788509, -0.554842,
		44.815083, 38.747242, 32.267876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899456, 38.862255, 33.121746>,  <45.000820, 39.299198, 32.656265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899456, 38.862255, 33.121746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917641, 38.627934, 32.798077>,  <44.928551, 38.487339, 32.603874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917641, 38.627934, 32.798077>,  <44.899456, 38.862255, 33.121746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917641, 38.627934, 32.798077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381102, -0.738582, 0.556109,
		-0.923415, -0.333658, 0.189678,
		0.045458, -0.585806, -0.809175,
		44.931278, 38.452190, 32.555325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762684, 38.224529, 33.379719>,  <44.899456, 38.862255, 33.121746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762684, 38.224529, 33.379719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957542, 38.141800, 33.040329>,  <45.074459, 38.092163, 32.836697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.957542, 38.141800, 33.040329>,  <44.762684, 38.224529, 33.379719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957542, 38.141800, 33.040329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507280, -0.723830, 0.467693,
		-0.710879, -0.658252, -0.247701,
		0.487153, -0.206820, -0.848474,
		45.103687, 38.079754, 32.785786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664772, 37.465733, 33.216045>,  <44.762684, 38.224529, 33.379719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664772, 37.465733, 33.216045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992798, 37.598000, 33.029221>,  <45.189613, 37.677361, 32.917126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992798, 37.598000, 33.029221>,  <44.664772, 37.465733, 33.216045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992798, 37.598000, 33.029221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531510, -0.742605, 0.407473,
		-0.212107, -0.582405, -0.784739,
		0.820065, 0.330669, -0.467066,
		45.238819, 37.697201, 32.889099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937180, 36.826130, 32.878227>,  <44.664772, 37.465733, 33.216045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937180, 36.826130, 32.878227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232513, 37.095177, 32.897995>,  <45.409714, 37.256607, 32.909855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232513, 37.095177, 32.897995>,  <44.937180, 36.826130, 32.878227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232513, 37.095177, 32.897995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633816, -0.717047, 0.290036,
		0.230518, -0.182823, -0.955739,
		0.738335, 0.672622, 0.049416,
		45.454014, 37.296963, 32.912819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564930, 36.603832, 32.572380>,  <44.937180, 36.826130, 32.878227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564930, 36.603832, 32.572380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699108, 36.877251, 32.831684>,  <45.779613, 37.041302, 32.987267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699108, 36.877251, 32.831684>,  <45.564930, 36.603832, 32.572380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699108, 36.877251, 32.831684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665377, -0.659047, 0.350614,
		0.666894, 0.313725, -0.675891,
		0.335447, 0.683545, 0.648260,
		45.799744, 37.082314, 33.026161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361351, 36.497074, 32.558098>,  <45.564930, 36.603832, 32.572380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361351, 36.497074, 32.558098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325397, 36.737080, 32.876068>,  <46.303825, 36.881084, 33.066849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.325397, 36.737080, 32.876068>,  <46.361351, 36.497074, 32.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325397, 36.737080, 32.876068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767374, -0.467059, 0.439310,
		0.634869, 0.649489, -0.418455,
		-0.089883, 0.600016, 0.794923,
		46.298431, 36.917084, 33.114544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065716, 36.759781, 32.820004>,  <46.361351, 36.497074, 32.558098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065716, 36.759781, 32.820004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798306, 36.757969, 33.117474>,  <46.637859, 36.756882, 33.295956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.798306, 36.757969, 33.117474>,  <47.065716, 36.759781, 32.820004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798306, 36.757969, 33.117474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679802, -0.409229, 0.608606,
		0.301577, 0.912420, 0.276659,
		-0.668521, -0.004532, 0.743679,
		46.597748, 36.756611, 33.340576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.340485, 37.033379, 33.410694>,  <47.065716, 36.759781, 32.820004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.340485, 37.033379, 33.410694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049992, 36.781483, 33.520969>,  <46.875694, 36.630344, 33.587135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049992, 36.781483, 33.520969>,  <47.340485, 37.033379, 33.410694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049992, 36.781483, 33.520969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671434, -0.563735, 0.481019,
		-0.147503, 0.534441, 0.832236,
		-0.726237, -0.629743, 0.275689,
		46.832119, 36.592560, 33.603676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394669, 36.831306, 34.057899>,  <47.340485, 37.033379, 33.410694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394669, 36.831306, 34.057899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185246, 36.527916, 33.902668>,  <47.059589, 36.345882, 33.809528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185246, 36.527916, 33.902668>,  <47.394669, 36.831306, 34.057899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185246, 36.527916, 33.902668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732024, -0.633519, 0.250587,
		-0.435918, -0.152885, 0.886905,
		-0.523561, -0.758472, -0.388078,
		47.028179, 36.300373, 33.786243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351723, 36.245857, 34.616741>,  <47.394669, 36.831306, 34.057899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351723, 36.245857, 34.616741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325565, 36.153198, 34.228500>,  <47.309872, 36.097603, 33.995556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325565, 36.153198, 34.228500>,  <47.351723, 36.245857, 34.616741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325565, 36.153198, 34.228500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804757, -0.587348, 0.085958,
		-0.589991, -0.775475, 0.224829,
		-0.065395, -0.231647, -0.970599,
		47.305946, 36.083706, 33.937321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634666, 35.505215, 34.791748>,  <47.351723, 36.245857, 34.616741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634666, 35.505215, 34.791748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.806847, 35.161716, 34.902939>,  <47.910156, 34.955620, 34.969654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.806847, 35.161716, 34.902939>,  <47.634666, 35.505215, 34.791748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.806847, 35.161716, 34.902939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581378, -0.028204, 0.813145,
		-0.690443, -0.511628, -0.511395,
		0.430451, -0.858744, 0.277977,
		47.935982, 34.904095, 34.986332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.194355, 40.858959, 40.672981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884533, 40.688782, 40.860199>,  <35.698639, 40.586674, 40.972530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884533, 40.688782, 40.860199>,  <36.194355, 40.858959, 40.672981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884533, 40.688782, 40.860199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131248, -0.831981, -0.539057,
		0.618743, -0.356098, 0.700252,
		-0.774553, -0.425444, 0.468045,
		35.652168, 40.561150, 41.000614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358585, 40.119492, 40.926788>,  <36.194355, 40.858959, 40.672981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358585, 40.119492, 40.926788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963402, 40.145992, 40.870857>,  <35.726292, 40.161892, 40.837299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.963402, 40.145992, 40.870857>,  <36.358585, 40.119492, 40.926788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963402, 40.145992, 40.870857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046627, -0.734205, -0.677325,
		-0.147534, -0.675688, 0.722274,
		-0.987957, 0.066251, -0.139826,
		35.667015, 40.165867, 40.828911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258144, 39.426548, 40.788609>,  <36.358585, 40.119492, 40.926788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258144, 39.426548, 40.788609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904774, 39.568417, 40.666126>,  <35.692753, 39.653538, 40.592636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.904774, 39.568417, 40.666126>,  <36.258144, 39.426548, 40.788609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904774, 39.568417, 40.666126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021512, -0.683506, -0.729628,
		-0.468072, -0.637987, 0.611458,
		-0.883428, 0.354672, -0.306206,
		35.639744, 39.674820, 40.574265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913960, 38.839825, 40.561020>,  <36.258144, 39.426548, 40.788609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913960, 38.839825, 40.561020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695004, 39.132427, 40.398411>,  <35.563629, 39.307987, 40.300846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.695004, 39.132427, 40.398411>,  <35.913960, 38.839825, 40.561020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695004, 39.132427, 40.398411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272932, -0.615249, -0.739579,
		-0.791119, -0.293886, 0.536434,
		-0.547393, 0.731505, -0.406524,
		35.530785, 39.351879, 40.276455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164059, 38.602669, 40.307457>,  <35.913960, 38.839825, 40.561020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164059, 38.602669, 40.307457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244637, 38.927868, 40.088936>,  <35.292984, 39.122990, 39.957821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244637, 38.927868, 40.088936>,  <35.164059, 38.602669, 40.307457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244637, 38.927868, 40.088936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242464, -0.498994, -0.831995,
		-0.949017, 0.300058, 0.096605,
		0.201441, 0.813001, -0.546307,
		35.305069, 39.171768, 39.925045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700321, 38.450001, 39.722385>,  <35.164059, 38.602669, 40.307457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700321, 38.450001, 39.722385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966576, 38.732868, 39.627026>,  <35.126328, 38.902588, 39.569809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966576, 38.732868, 39.627026>,  <34.700321, 38.450001, 39.722385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966576, 38.732868, 39.627026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022990, -0.338729, -0.940603,
		-0.745920, 0.620621, -0.241729,
		0.665639, 0.707172, -0.238396,
		35.166267, 38.945019, 39.555508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491711, 38.566978, 39.119678>,  <34.700321, 38.450001, 39.722385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491711, 38.566978, 39.119678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878582, 38.668602, 39.117577>,  <35.110703, 38.729576, 39.116314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878582, 38.668602, 39.117577>,  <34.491711, 38.566978, 39.119678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878582, 38.668602, 39.117577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093866, -0.376394, -0.921692,
		-0.236143, 0.890944, -0.387887,
		0.967174, 0.254060, -0.005253,
		35.168736, 38.744820, 39.116001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590149, 39.029743, 38.547226>,  <34.491711, 38.566978, 39.119678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590149, 39.029743, 38.547226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.919456, 38.832298, 38.659355>,  <35.117039, 38.713833, 38.726631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.919456, 38.832298, 38.659355>,  <34.590149, 39.029743, 38.547226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919456, 38.832298, 38.659355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054024, -0.423452, -0.904306,
		0.565081, 0.759628, -0.321946,
		0.823265, -0.493613, 0.280323,
		35.166435, 38.684216, 38.743450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042961, 39.198875, 38.016464>,  <34.590149, 39.029743, 38.547226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042961, 39.198875, 38.016464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223881, 38.879940, 38.176300>,  <35.332432, 38.688580, 38.272202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223881, 38.879940, 38.176300>,  <35.042961, 39.198875, 38.016464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223881, 38.879940, 38.176300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204492, -0.343383, -0.916663,
		0.868106, 0.496319, 0.007738,
		0.452300, -0.797343, 0.399587,
		35.359570, 38.640736, 38.296177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643082, 39.089691, 37.620327>,  <35.042961, 39.198875, 38.016464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643082, 39.089691, 37.620327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611782, 38.732277, 37.797173>,  <35.593002, 38.517826, 37.903278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611782, 38.732277, 37.797173>,  <35.643082, 39.089691, 37.620327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611782, 38.732277, 37.797173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090581, -0.448010, -0.889428,
		0.992810, -0.029547, 0.115993,
		-0.078246, -0.893540, 0.442113,
		35.588306, 38.464214, 37.929806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120579, 38.749146, 37.167084>,  <35.643082, 39.089691, 37.620327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120579, 38.749146, 37.167084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929379, 38.475513, 37.387463>,  <35.814659, 38.311333, 37.519691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.929379, 38.475513, 37.387463>,  <36.120579, 38.749146, 37.167084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929379, 38.475513, 37.387463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356269, -0.724332, -0.590267,
		0.802863, -0.085862, 0.589949,
		-0.478000, -0.684084, 0.550949,
		35.785980, 38.270287, 37.552746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721951, 38.271729, 37.422081>,  <36.120579, 38.749146, 37.167084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721951, 38.271729, 37.422081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358635, 38.110035, 37.378998>,  <36.140644, 38.013020, 37.353149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358635, 38.110035, 37.378998>,  <36.721951, 38.271729, 37.422081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358635, 38.110035, 37.378998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372980, -0.665920, -0.646093,
		0.189447, -0.627014, 0.755621,
		-0.908293, -0.404232, -0.107707,
		36.086147, 37.988766, 37.346687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773933, 37.532288, 37.488922>,  <36.721951, 38.271729, 37.422081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773933, 37.532288, 37.488922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427856, 37.566849, 37.291344>,  <36.220211, 37.587585, 37.172798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427856, 37.566849, 37.291344>,  <36.773933, 37.532288, 37.488922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427856, 37.566849, 37.291344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248928, -0.781091, -0.572653,
		-0.435298, -0.618410, 0.654281,
		-0.865188, 0.086406, -0.493947,
		36.168301, 37.592770, 37.143158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664391, 36.864315, 37.440880>,  <36.773933, 37.532288, 37.488922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664391, 36.864315, 37.440880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454243, 37.051407, 37.156567>,  <36.328156, 37.163662, 36.985977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454243, 37.051407, 37.156567>,  <36.664391, 36.864315, 37.440880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454243, 37.051407, 37.156567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208681, -0.739017, -0.640552,
		-0.824890, -0.484851, 0.290647,
		-0.525365, 0.467732, -0.710787,
		36.296635, 37.191727, 36.943329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266605, 36.330566, 37.122227>,  <36.664391, 36.864315, 37.440880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266605, 36.330566, 37.122227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295589, 36.632191, 36.861107>,  <36.312981, 36.813164, 36.704437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295589, 36.632191, 36.861107>,  <36.266605, 36.330566, 37.122227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295589, 36.632191, 36.861107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254613, -0.646816, -0.718888,
		-0.964325, -0.114122, -0.238860,
		0.072458, 0.754059, -0.652798,
		36.317326, 36.858410, 36.665268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094269, 36.002846, 36.454021>,  <36.266605, 36.330566, 37.122227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094269, 36.002846, 36.454021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254383, 36.358112, 36.363747>,  <36.350452, 36.571270, 36.309582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254383, 36.358112, 36.363747>,  <36.094269, 36.002846, 36.454021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254383, 36.358112, 36.363747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379114, -0.384718, -0.841585,
		-0.834291, 0.251317, -0.490713,
		0.400290, 0.888162, -0.225689,
		36.374470, 36.624561, 36.296040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135933, 35.923374, 35.784172>,  <36.094269, 36.002846, 36.454021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135933, 35.923374, 35.784172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397675, 36.213348, 35.870235>,  <36.554718, 36.387333, 35.921875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397675, 36.213348, 35.870235>,  <36.135933, 35.923374, 35.784172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397675, 36.213348, 35.870235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614875, -0.344453, -0.709423,
		-0.440175, 0.596506, -0.671138,
		0.654351, 0.724936, 0.215157,
		36.593979, 36.430828, 35.934784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350826, 36.253403, 35.162468>,  <36.135933, 35.923374, 35.784172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350826, 36.253403, 35.162468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655586, 36.290962, 35.418808>,  <36.838444, 36.313496, 35.572613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.655586, 36.290962, 35.418808>,  <36.350826, 36.253403, 35.162468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655586, 36.290962, 35.418808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613412, -0.422236, -0.667414,
		0.207922, 0.901610, -0.379299,
		0.761901, 0.093897, 0.640851,
		36.884155, 36.319130, 35.611065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912651, 36.318020, 34.768276>,  <36.350826, 36.253403, 35.162468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912651, 36.318020, 34.768276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078648, 36.259403, 35.127457>,  <37.178246, 36.224236, 35.342964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.078648, 36.259403, 35.127457>,  <36.912651, 36.318020, 34.768276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078648, 36.259403, 35.127457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814677, -0.379559, -0.438447,
		0.405073, 0.913489, -0.038133,
		0.414990, -0.146537, 0.897948,
		37.203144, 36.215443, 35.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580044, 36.210045, 34.559978>,  <36.912651, 36.318020, 34.768276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580044, 36.210045, 34.559978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562538, 36.052498, 34.927227>,  <37.552032, 35.957970, 35.147575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562538, 36.052498, 34.927227>,  <37.580044, 36.210045, 34.559978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562538, 36.052498, 34.927227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692733, -0.674158, -0.256188,
		0.719865, 0.624801, 0.302354,
		-0.043768, -0.393871, 0.918123,
		37.549408, 35.934338, 35.202663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224724, 36.155350, 34.733334>,  <37.580044, 36.210045, 34.559978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224724, 36.155350, 34.733334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023399, 35.888668, 34.953220>,  <37.902607, 35.728661, 35.085152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023399, 35.888668, 34.953220>,  <38.224724, 36.155350, 34.733334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023399, 35.888668, 34.953220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661781, -0.706468, -0.250895,
		0.555632, 0.237518, 0.796780,
		-0.503307, -0.666700, 0.549721,
		37.872406, 35.688660, 35.118137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679390, 35.790539, 35.014580>,  <38.224724, 36.155350, 34.733334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679390, 35.790539, 35.014580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388588, 35.526741, 35.091022>,  <38.214108, 35.368462, 35.136890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388588, 35.526741, 35.091022>,  <38.679390, 35.790539, 35.014580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388588, 35.526741, 35.091022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623016, -0.750589, -0.220151,
		0.288635, -0.040986, 0.956562,
		-0.727008, -0.659496, 0.191111,
		38.170486, 35.328892, 35.148357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890491, 35.300350, 35.492081>,  <38.679390, 35.790539, 35.014580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890491, 35.300350, 35.492081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610561, 35.125874, 35.265812>,  <38.442604, 35.021187, 35.130051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.610561, 35.125874, 35.265812>,  <38.890491, 35.300350, 35.492081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610561, 35.125874, 35.265812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659379, -0.699028, -0.276729,
		-0.274713, -0.566653, 0.776813,
		-0.699823, -0.436193, -0.565671,
		38.400616, 34.995014, 35.096111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560440, 35.712646, 35.390770>,  <38.890491, 35.300350, 35.492081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560440, 35.712646, 35.390770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869305, 35.966267, 35.374069>,  <40.054623, 36.118439, 35.364048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869305, 35.966267, 35.374069>,  <39.560440, 35.712646, 35.390770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869305, 35.966267, 35.374069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178691, 0.279729, 0.943303,
		0.609784, -0.720921, 0.329296,
		0.772161, 0.634053, -0.041752,
		40.100952, 36.156483, 35.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865501, 35.642769, 36.087429>,  <39.560440, 35.712646, 35.390770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865501, 35.642769, 36.087429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007835, 35.979115, 35.924294>,  <40.093235, 36.180920, 35.826412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007835, 35.979115, 35.924294>,  <39.865501, 35.642769, 36.087429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007835, 35.979115, 35.924294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208007, 0.354192, 0.911746,
		0.911106, -0.409265, -0.048871,
		0.355836, 0.840863, -0.407837,
		40.114586, 36.231373, 35.801941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494362, 35.862812, 36.493061>,  <39.865501, 35.642769, 36.087429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494362, 35.862812, 36.493061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332520, 36.176167, 36.304337>,  <40.235416, 36.364178, 36.191101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.332520, 36.176167, 36.304337>,  <40.494362, 35.862812, 36.493061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332520, 36.176167, 36.304337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108340, 0.553358, 0.825868,
		0.908053, 0.283031, -0.308761,
		-0.404601, 0.783383, -0.471815,
		40.211140, 36.411182, 36.162792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837734, 36.378239, 36.782032>,  <40.494362, 35.862812, 36.493061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837734, 36.378239, 36.782032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.517262, 36.557457, 36.623352>,  <40.324978, 36.664989, 36.528145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.517262, 36.557457, 36.623352>,  <40.837734, 36.378239, 36.782032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517262, 36.557457, 36.623352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046591, 0.614191, 0.787781,
		0.596610, 0.649635, -0.471201,
		-0.801178, 0.448044, -0.396699,
		40.276909, 36.691872, 36.504341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982517, 37.004879, 36.794533>,  <40.837734, 36.378239, 36.782032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982517, 37.004879, 36.794533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.582970, 36.994843, 36.778374>,  <40.343243, 36.988819, 36.768681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.582970, 36.994843, 36.778374>,  <40.982517, 37.004879, 36.794533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582970, 36.994843, 36.778374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047209, 0.625247, 0.778998,
		0.005712, 0.780023, -0.625724,
		-0.998869, -0.025090, -0.040396,
		40.283310, 36.987316, 36.766254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805885, 37.730885, 36.708748>,  <40.982517, 37.004879, 36.794533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805885, 37.730885, 36.708748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.487411, 37.542091, 36.860180>,  <40.296326, 37.428814, 36.951038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.487411, 37.542091, 36.860180>,  <40.805885, 37.730885, 36.708748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487411, 37.542091, 36.860180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137938, 0.750809, 0.645956,
		-0.589120, 0.462080, -0.662888,
		-0.796185, -0.471983, 0.378578,
		40.248554, 37.400497, 36.973755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333412, 38.319969, 36.828983>,  <40.805885, 37.730885, 36.708748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333412, 38.319969, 36.828983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.180435, 38.023788, 37.050064>,  <40.088650, 37.846081, 37.182713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.180435, 38.023788, 37.050064>,  <40.333412, 38.319969, 36.828983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180435, 38.023788, 37.050064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246950, 0.658323, 0.711074,
		-0.890368, 0.135454, -0.434622,
		-0.382440, -0.740448, 0.552699,
		40.065704, 37.801655, 37.215874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699871, 38.517262, 37.052708>,  <40.333412, 38.319969, 36.828983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699871, 38.517262, 37.052708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818134, 38.248756, 37.324589>,  <39.889091, 38.087654, 37.487717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818134, 38.248756, 37.324589>,  <39.699871, 38.517262, 37.052708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818134, 38.248756, 37.324589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347217, 0.587337, 0.731078,
		-0.889961, -0.452149, -0.059426,
		0.295653, -0.671265, 0.679701,
		39.906830, 38.047379, 37.528500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250008, 38.592514, 37.490017>,  <39.699871, 38.517262, 37.052708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250008, 38.592514, 37.490017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.502708, 38.374287, 37.710285>,  <39.654331, 38.243351, 37.842445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.502708, 38.374287, 37.710285>,  <39.250008, 38.592514, 37.490017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502708, 38.374287, 37.710285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374901, 0.406740, 0.833074,
		-0.678479, -0.732747, 0.052426,
		0.631756, -0.545568, 0.550672,
		39.692234, 38.210617, 37.875488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841045, 38.351017, 38.040455>,  <39.250008, 38.592514, 37.490017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841045, 38.351017, 38.040455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219231, 38.340759, 38.170338>,  <39.446144, 38.334606, 38.248268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.219231, 38.340759, 38.170338>,  <38.841045, 38.351017, 38.040455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219231, 38.340759, 38.170338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294026, 0.361776, 0.884685,
		-0.140157, -0.931912, 0.334507,
		0.945465, -0.025641, 0.324712,
		39.502869, 38.333065, 38.267750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699982, 38.032814, 38.692532>,  <38.841045, 38.351017, 38.040455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699982, 38.032814, 38.692532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056133, 38.213451, 38.715469>,  <39.269825, 38.321835, 38.729233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.056133, 38.213451, 38.715469>,  <38.699982, 38.032814, 38.692532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056133, 38.213451, 38.715469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312872, 0.515589, 0.797671,
		0.330654, -0.728173, 0.600360,
		0.890381, 0.451589, 0.057343,
		39.323246, 38.348930, 38.732674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915844, 37.912277, 39.342308>,  <38.699982, 38.032814, 38.692532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915844, 37.912277, 39.342308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.158413, 38.213860, 39.241272>,  <39.303955, 38.394810, 39.180649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.158413, 38.213860, 39.241272>,  <38.915844, 37.912277, 39.342308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158413, 38.213860, 39.241272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261919, 0.489347, 0.831828,
		0.750770, -0.438276, 0.494225,
		0.606418, 0.753958, -0.252594,
		39.340340, 38.440048, 39.165493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301605, 38.013275, 39.838291>,  <38.915844, 37.912277, 39.342308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301605, 38.013275, 39.838291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347809, 38.370136, 39.663605>,  <39.375530, 38.584255, 39.558792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.347809, 38.370136, 39.663605>,  <39.301605, 38.013275, 39.838291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347809, 38.370136, 39.663605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234947, 0.451719, 0.860669,
		0.965121, 0.003189, 0.261787,
		0.115509, 0.892155, -0.436712,
		39.382462, 38.637783, 39.532593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721840, 38.478954, 40.322075>,  <39.301605, 38.013275, 39.838291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721840, 38.478954, 40.322075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486996, 38.704189, 40.089447>,  <39.346088, 38.839333, 39.949871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486996, 38.704189, 40.089447>,  <39.721840, 38.478954, 40.322075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486996, 38.704189, 40.089447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271754, 0.539638, 0.796831,
		0.762528, 0.625874, -0.163805,
		-0.587112, 0.563092, -0.581573,
		39.310863, 38.873116, 39.914974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877769, 39.208313, 40.510788>,  <39.721840, 38.478954, 40.322075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877769, 39.208313, 40.510788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527737, 39.241093, 40.319992>,  <39.317719, 39.260761, 40.205513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.527737, 39.241093, 40.319992>,  <39.877769, 39.208313, 40.510788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527737, 39.241093, 40.319992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242463, 0.778728, 0.578613,
		0.418864, 0.621985, -0.661579,
		-0.875080, 0.081952, -0.476990,
		39.265213, 39.265678, 40.176895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755531, 39.874058, 40.236187>,  <39.877769, 39.208313, 40.510788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755531, 39.874058, 40.236187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388760, 39.718784, 40.273190>,  <39.168697, 39.625622, 40.295391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.388760, 39.718784, 40.273190>,  <39.755531, 39.874058, 40.236187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388760, 39.718784, 40.273190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326622, 0.863235, 0.384893,
		-0.229266, 0.322704, -0.918313,
		-0.916927, -0.388184, 0.092508,
		39.113682, 39.602329, 40.300941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451874, 40.398636, 40.146332>,  <39.755531, 39.874058, 40.236187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451874, 40.398636, 40.146332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192398, 40.146782, 40.317337>,  <39.036713, 39.995670, 40.419941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192398, 40.146782, 40.317337>,  <39.451874, 40.398636, 40.146332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192398, 40.146782, 40.317337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432696, 0.767238, 0.473413,
		-0.626080, 0.122115, -0.770138,
		-0.648690, -0.629630, 0.427513,
		38.997791, 39.957893, 40.445591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.599072, 40.766003, 40.109253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616520, 40.495628, 40.403519>,  <38.626987, 40.333405, 40.580078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616520, 40.495628, 40.403519>,  <38.599072, 40.766003, 40.109253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616520, 40.495628, 40.403519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543414, 0.601854, 0.585212,
		-0.838331, -0.425298, -0.341062,
		0.043620, -0.675939, 0.735665,
		38.629604, 40.292847, 40.624218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859303, 40.775887, 40.453979>,  <38.599072, 40.766003, 40.109253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859303, 40.775887, 40.453979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092411, 40.597042, 40.725410>,  <38.232277, 40.489735, 40.888268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092411, 40.597042, 40.725410>,  <37.859303, 40.775887, 40.453979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092411, 40.597042, 40.725410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486963, 0.476364, 0.732083,
		-0.650576, -0.757077, 0.059881,
		0.582768, -0.447116, 0.678579,
		38.267242, 40.462906, 40.928986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479900, 40.650406, 41.014400>,  <37.859303, 40.775887, 40.453979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479900, 40.650406, 41.014400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833347, 40.612377, 41.197781>,  <38.045418, 40.589558, 41.307808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833347, 40.612377, 41.197781>,  <37.479900, 40.650406, 41.014400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833347, 40.612377, 41.197781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421368, 0.265382, 0.867192,
		-0.204112, -0.959444, 0.194435,
		0.883622, -0.095076, 0.458447,
		38.098434, 40.583855, 41.335316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298981, 40.365543, 41.610970>,  <37.479900, 40.650406, 41.014400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298981, 40.365543, 41.610970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656429, 40.522179, 41.698689>,  <37.870899, 40.616161, 41.751320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656429, 40.522179, 41.698689>,  <37.298981, 40.365543, 41.610970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656429, 40.522179, 41.698689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396364, 0.459343, 0.794921,
		0.210552, -0.797282, 0.565693,
		0.893624, 0.391592, 0.219299,
		37.924515, 40.639656, 41.764477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315308, 40.196903, 42.341637>,  <37.298981, 40.365543, 41.610970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315308, 40.196903, 42.341637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581913, 40.484753, 42.263756>,  <37.741875, 40.657463, 42.217030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581913, 40.484753, 42.263756>,  <37.315308, 40.196903, 42.341637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581913, 40.484753, 42.263756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350217, 0.532796, 0.770374,
		0.658115, -0.445274, 0.607137,
		0.666508, 0.719624, -0.194698,
		37.781864, 40.700642, 42.205345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694187, 40.207882, 42.938873>,  <37.315308, 40.196903, 42.341637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694187, 40.207882, 42.938873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724579, 40.563137, 42.757572>,  <37.742813, 40.776291, 42.648792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724579, 40.563137, 42.757572>,  <37.694187, 40.207882, 42.938873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724579, 40.563137, 42.757572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122240, 0.459437, 0.879758,
		0.989588, -0.011433, 0.143472,
		0.075974, 0.888137, -0.453256,
		37.747372, 40.829578, 42.621593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179222, 40.522655, 43.372974>,  <37.694187, 40.207882, 42.938873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179222, 40.522655, 43.372974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980625, 40.787914, 43.148930>,  <37.861465, 40.947071, 43.014503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980625, 40.787914, 43.148930>,  <38.179222, 40.522655, 43.372974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980625, 40.787914, 43.148930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055591, 0.668225, 0.741880,
		0.866257, 0.337203, -0.368636,
		-0.496496, 0.663152, -0.560109,
		37.831676, 40.986858, 42.980896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501518, 41.159843, 43.557423>,  <38.179222, 40.522655, 43.372974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501518, 41.159843, 43.557423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147217, 41.253441, 43.397083>,  <37.934635, 41.309601, 43.300880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147217, 41.253441, 43.397083>,  <38.501518, 41.159843, 43.557423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147217, 41.253441, 43.397083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102726, 0.743371, 0.660944,
		0.452637, 0.626614, -0.634409,
		-0.885758, 0.233998, -0.400846,
		37.881489, 41.323639, 43.276829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459873, 41.889027, 43.471519>,  <38.501518, 41.159843, 43.557423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459873, 41.889027, 43.471519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078796, 41.767452, 43.470753>,  <37.850151, 41.694508, 43.470295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.078796, 41.767452, 43.470753>,  <38.459873, 41.889027, 43.471519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078796, 41.767452, 43.470753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189970, 0.590513, 0.784350,
		-0.237265, 0.747606, -0.620315,
		-0.952689, -0.303941, -0.001914,
		37.792988, 41.676270, 43.470177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179222, 42.464848, 43.606991>,  <38.459873, 41.889027, 43.471519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179222, 42.464848, 43.606991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860466, 42.227177, 43.650658>,  <37.669212, 42.084576, 43.676857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.860466, 42.227177, 43.650658>,  <38.179222, 42.464848, 43.606991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860466, 42.227177, 43.650658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296802, 0.542461, 0.785904,
		-0.526187, 0.593878, -0.608635,
		-0.796891, -0.594177, 0.109172,
		37.621399, 42.048923, 43.683411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593449, 42.821117, 43.652252>,  <38.179222, 42.464848, 43.606991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593449, 42.821117, 43.652252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520054, 42.486950, 43.859486>,  <37.476017, 42.286449, 43.983826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.520054, 42.486950, 43.859486>,  <37.593449, 42.821117, 43.652252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520054, 42.486950, 43.859486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388304, 0.545766, 0.742536,
		-0.903079, -0.064926, -0.424538,
		-0.183488, -0.835419, 0.518081,
		37.465008, 42.236324, 44.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010010, 42.957489, 44.007824>,  <37.593449, 42.821117, 43.652252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010010, 42.957489, 44.007824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140263, 42.636238, 44.207405>,  <37.218414, 42.443489, 44.327152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140263, 42.636238, 44.207405>,  <37.010010, 42.957489, 44.007824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140263, 42.636238, 44.207405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433406, 0.342217, 0.833695,
		-0.840312, -0.487726, -0.236642,
		0.325631, -0.803125, 0.498953,
		37.237953, 42.395302, 44.357090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465885, 42.639385, 44.430355>,  <37.010010, 42.957489, 44.007824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465885, 42.639385, 44.430355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818085, 42.527355, 44.583340>,  <37.029404, 42.460136, 44.675129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818085, 42.527355, 44.583340>,  <36.465885, 42.639385, 44.430355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818085, 42.527355, 44.583340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318971, 0.246799, 0.915067,
		-0.350679, -0.927711, 0.127971,
		0.880501, -0.280076, 0.382460,
		37.082233, 42.443333, 44.698078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245304, 42.652534, 45.064686>,  <36.465885, 42.639385, 44.430355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245304, 42.652534, 45.064686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640858, 42.596977, 45.085941>,  <36.878189, 42.563644, 45.098694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640858, 42.596977, 45.085941>,  <36.245304, 42.652534, 45.064686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640858, 42.596977, 45.085941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025324, 0.194850, 0.980506,
		-0.146539, -0.970949, 0.189166,
		0.988881, -0.138892, 0.053142,
		36.937523, 42.555309, 45.101883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333374, 42.213314, 45.641975>,  <36.245304, 42.652534, 45.064686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333374, 42.213314, 45.641975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674706, 42.413673, 45.584110>,  <36.879505, 42.533890, 45.549393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.674706, 42.413673, 45.584110>,  <36.333374, 42.213314, 45.641975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674706, 42.413673, 45.584110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106915, 0.103453, 0.988871,
		0.510288, -0.859303, 0.034726,
		0.853332, 0.500896, -0.144663,
		36.930706, 42.563942, 45.540710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771599, 41.839890, 46.041420>,  <36.333374, 42.213314, 45.641975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771599, 41.839890, 46.041420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928978, 42.205387, 46.000877>,  <37.023403, 42.424686, 45.976551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928978, 42.205387, 46.000877>,  <36.771599, 41.839890, 46.041420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928978, 42.205387, 46.000877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187683, 0.028093, 0.981828,
		0.899987, -0.405317, -0.160441,
		0.393444, 0.913744, -0.101355,
		37.047012, 42.479511, 45.970470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327335, 41.842045, 46.527969>,  <36.771599, 41.839890, 46.041420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327335, 41.842045, 46.527969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286419, 42.234501, 46.462360>,  <37.261868, 42.469975, 46.422997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286419, 42.234501, 46.462360>,  <37.327335, 41.842045, 46.527969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286419, 42.234501, 46.462360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039590, 0.168773, 0.984860,
		0.993966, 0.094253, -0.056108,
		-0.102295, 0.981138, -0.164024,
		37.255730, 42.528843, 46.413155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922367, 42.186405, 46.876575>,  <37.327335, 41.842045, 46.527969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922367, 42.186405, 46.876575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626274, 42.454281, 46.852642>,  <37.448620, 42.615005, 46.838284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626274, 42.454281, 46.852642>,  <37.922367, 42.186405, 46.876575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626274, 42.454281, 46.852642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009121, 0.078977, 0.996835,
		0.672291, 0.738433, -0.052353,
		-0.740231, 0.669686, -0.059831,
		37.404205, 42.655186, 46.834694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185452, 42.600533, 47.344776>,  <37.922367, 42.186405, 46.876575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185452, 42.600533, 47.344776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791695, 42.650883, 47.295567>,  <37.555443, 42.681091, 47.266041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.791695, 42.650883, 47.295567>,  <38.185452, 42.600533, 47.344776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791695, 42.650883, 47.295567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119426, 0.035805, 0.992197,
		0.129296, 0.991400, -0.020214,
		-0.984388, 0.125873, -0.123029,
		37.496380, 42.688644, 47.258659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933235, 43.128750, 47.846989>,  <38.185452, 42.600533, 47.344776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933235, 43.128750, 47.846989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621994, 42.901402, 47.740025>,  <37.435249, 42.764992, 47.675846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.621994, 42.901402, 47.740025>,  <37.933235, 43.128750, 47.846989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621994, 42.901402, 47.740025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287740, -0.055901, 0.956076,
		-0.558352, 0.820872, -0.120046,
		-0.778106, -0.568369, -0.267410,
		37.388561, 42.730892, 47.659801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466995, 43.246738, 48.405418>,  <37.933235, 43.128750, 47.846989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466995, 43.246738, 48.405418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285995, 42.945328, 48.214649>,  <37.177395, 42.764481, 48.100189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.285995, 42.945328, 48.214649>,  <37.466995, 43.246738, 48.405418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285995, 42.945328, 48.214649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405862, -0.302190, 0.862530,
		-0.794055, 0.583854, -0.169087,
		-0.452495, -0.753522, -0.476920,
		37.150246, 42.719273, 48.071571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743626, 43.260639, 48.614235>,  <37.466995, 43.246738, 48.405418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743626, 43.260639, 48.614235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835434, 42.888374, 48.500263>,  <36.890518, 42.665016, 48.431881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835434, 42.888374, 48.500263>,  <36.743626, 43.260639, 48.614235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835434, 42.888374, 48.500263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590711, -0.365864, 0.719169,
		-0.773550, 0.003247, -0.633727,
		0.229522, -0.930663, -0.284932,
		36.904289, 42.609177, 48.414783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111862, 42.995975, 48.583588>,  <36.743626, 43.260639, 48.614235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111862, 42.995975, 48.583588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404415, 42.732552, 48.654446>,  <36.579948, 42.574497, 48.696960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404415, 42.732552, 48.654446>,  <36.111862, 42.995975, 48.583588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404415, 42.732552, 48.654446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541097, -0.402285, 0.738499,
		-0.415091, -0.635970, -0.650570,
		0.731378, -0.658566, 0.177136,
		36.623829, 42.534985, 48.707592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797089, 42.439968, 48.651146>,  <36.111862, 42.995975, 48.583588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797089, 42.439968, 48.651146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148781, 42.399708, 48.837406>,  <36.359795, 42.375549, 48.949162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.148781, 42.399708, 48.837406>,  <35.797089, 42.439968, 48.651146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148781, 42.399708, 48.837406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474770, -0.104207, 0.873919,
		-0.039434, -0.989450, -0.139405,
		0.879226, -0.100647, 0.465652,
		36.412548, 42.369511, 48.977100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030605, 42.375854, 48.565193>,  <35.797089, 42.439968, 48.651146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030605, 42.375854, 48.565193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671539, 42.219170, 48.645943>,  <34.456100, 42.125160, 48.694393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671539, 42.219170, 48.645943>,  <35.030605, 42.375854, 48.565193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671539, 42.219170, 48.645943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069964, -0.578981, -0.812334,
		0.435080, -0.715083, 0.547139,
		-0.897669, -0.391710, 0.201873,
		34.402237, 42.101658, 48.706505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113197, 41.644028, 48.547585>,  <35.030605, 42.375854, 48.565193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113197, 41.644028, 48.547585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726181, 41.686275, 48.455742>,  <34.493973, 41.711624, 48.400639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726181, 41.686275, 48.455742>,  <35.113197, 41.644028, 48.547585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726181, 41.686275, 48.455742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121177, -0.603382, -0.788192,
		-0.221787, -0.790427, 0.570996,
		-0.967537, 0.105619, -0.229604,
		34.435921, 41.717960, 48.386860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774918, 40.961040, 48.510731>,  <35.113197, 41.644028, 48.547585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774918, 40.961040, 48.510731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575485, 41.229057, 48.290745>,  <34.455826, 41.389870, 48.158752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575485, 41.229057, 48.290745>,  <34.774918, 40.961040, 48.510731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575485, 41.229057, 48.290745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037856, -0.617007, -0.786047,
		-0.866018, -0.412725, 0.282261,
		-0.498578, 0.670045, -0.549963,
		34.425911, 41.430069, 48.125755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440659, 40.509197, 48.009579>,  <34.774918, 40.961040, 48.510731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440659, 40.509197, 48.009579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393185, 40.874752, 47.854286>,  <34.364700, 41.094086, 47.761108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393185, 40.874752, 47.854286>,  <34.440659, 40.509197, 48.009579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393185, 40.874752, 47.854286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221534, -0.356770, -0.907545,
		-0.967904, -0.193714, -0.160115,
		-0.118680, 0.913887, -0.388234,
		34.357582, 41.148918, 47.737816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889965, 40.523106, 47.518524>,  <34.440659, 40.509197, 48.009579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889965, 40.523106, 47.518524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111546, 40.840649, 47.418186>,  <34.244495, 41.031174, 47.357983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111546, 40.840649, 47.418186>,  <33.889965, 40.523106, 47.518524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111546, 40.840649, 47.418186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027977, -0.318876, -0.947383,
		-0.832078, 0.517788, -0.198852,
		0.553953, 0.793860, -0.250844,
		34.277733, 41.078808, 47.342934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657780, 40.980545, 46.865387>,  <33.889965, 40.523106, 47.518524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657780, 40.980545, 46.865387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043541, 41.086277, 46.868164>,  <34.274998, 41.149715, 46.869831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043541, 41.086277, 46.868164>,  <33.657780, 40.980545, 46.865387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043541, 41.086277, 46.868164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041285, -0.124573, -0.991351,
		-0.261180, 0.956353, -0.131052,
		0.964407, 0.264331, 0.006947,
		34.332863, 41.165577, 46.870247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794697, 41.445049, 46.270477>,  <33.657780, 40.980545, 46.865387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794697, 41.445049, 46.270477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160606, 41.320007, 46.372822>,  <34.380154, 41.244980, 46.434227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160606, 41.320007, 46.372822>,  <33.794697, 41.445049, 46.270477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160606, 41.320007, 46.372822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207393, -0.180092, -0.961538,
		0.346664, 0.932653, -0.099911,
		0.914775, -0.312610, 0.255857,
		34.435040, 41.226223, 46.449577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080456, 41.635036, 45.728989>,  <33.794697, 41.445049, 46.270477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080456, 41.635036, 45.728989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355228, 41.387714, 45.881737>,  <34.520092, 41.239319, 45.973385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355228, 41.387714, 45.881737>,  <34.080456, 41.635036, 45.728989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355228, 41.387714, 45.881737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393096, -0.125824, -0.910848,
		0.611233, 0.775799, 0.156622,
		0.686928, -0.618307, 0.381871,
		34.561306, 41.202221, 45.996300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577320, 41.799816, 45.372528>,  <34.080456, 41.635036, 45.728989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577320, 41.799816, 45.372528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709568, 41.451145, 45.517235>,  <34.788918, 41.241943, 45.604057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709568, 41.451145, 45.517235>,  <34.577320, 41.799816, 45.372528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709568, 41.451145, 45.517235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422501, -0.206056, -0.882629,
		0.843908, 0.444662, 0.300157,
		0.330622, -0.871675, 0.361762,
		34.808754, 41.189644, 45.625763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280338, 41.797668, 45.440224>,  <34.577320, 41.799816, 45.372528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280338, 41.797668, 45.440224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139439, 41.436890, 45.340290>,  <35.054897, 41.220425, 45.280331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139439, 41.436890, 45.340290>,  <35.280338, 41.797668, 45.440224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139439, 41.436890, 45.340290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487951, 0.050799, -0.871391,
		0.798637, -0.428856, 0.422211,
		-0.352253, -0.901944, -0.249830,
		35.033764, 41.166306, 45.265343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786297, 41.500137, 45.009892>,  <35.280338, 41.797668, 45.440224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786297, 41.500137, 45.009892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489342, 41.243023, 44.934330>,  <35.311169, 41.088753, 44.888992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.489342, 41.243023, 44.934330>,  <35.786297, 41.500137, 45.009892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489342, 41.243023, 44.934330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279851, -0.041336, -0.959153,
		0.608723, -0.764928, 0.210572,
		-0.742387, -0.642788, -0.188904,
		35.266624, 41.050186, 44.877659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125824, 40.927830, 44.661278>,  <35.786297, 41.500137, 45.009892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125824, 40.927830, 44.661278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731293, 40.933235, 44.595573>,  <35.494576, 40.936478, 44.556152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731293, 40.933235, 44.595573>,  <36.125824, 40.927830, 44.661278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731293, 40.933235, 44.595573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162258, -0.095293, -0.982136,
		-0.028921, -0.995358, 0.091798,
		-0.986324, 0.013509, -0.164260,
		35.435394, 40.937290, 44.546295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010059, 40.514103, 43.984596>,  <36.125824, 40.927830, 44.661278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010059, 40.514103, 43.984596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667717, 40.714294, 44.036797>,  <35.462311, 40.834412, 44.068119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667717, 40.714294, 44.036797>,  <36.010059, 40.514103, 43.984596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667717, 40.714294, 44.036797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198290, -0.084460, -0.976498,
		-0.477697, -0.861617, 0.171526,
		-0.855854, 0.500482, 0.130504,
		35.410961, 40.864441, 44.075947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594139, 40.156200, 43.620426>,  <36.010059, 40.514103, 43.984596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594139, 40.156200, 43.620426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430843, 40.519447, 43.657650>,  <35.332867, 40.737396, 43.679985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.430843, 40.519447, 43.657650>,  <35.594139, 40.156200, 43.620426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430843, 40.519447, 43.657650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153626, 0.032139, -0.987606,
		-0.899855, -0.417478, 0.126390,
		-0.408241, 0.908119, 0.093056,
		35.308372, 40.791882, 43.685566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942356, 40.184727, 43.333138>,  <35.594139, 40.156200, 43.620426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942356, 40.184727, 43.333138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070751, 40.563450, 43.323940>,  <35.147789, 40.790684, 43.318420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070751, 40.563450, 43.323940>,  <34.942356, 40.184727, 43.333138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070751, 40.563450, 43.323940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031183, -0.013701, -0.999420,
		-0.946571, 0.321515, 0.025126,
		0.320985, 0.946805, -0.022995,
		35.167046, 40.847492, 43.317043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475639, 40.538410, 42.805218>,  <34.942356, 40.184727, 43.333138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475639, 40.538410, 42.805218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795048, 40.775894, 42.844963>,  <34.986694, 40.918385, 42.868809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795048, 40.775894, 42.844963>,  <34.475639, 40.538410, 42.805218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795048, 40.775894, 42.844963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032070, 0.122868, -0.991905,
		-0.601109, 0.795245, 0.079072,
		0.798523, 0.593707, 0.099361,
		35.034603, 40.954006, 42.874771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341320, 41.077175, 42.312279>,  <34.475639, 40.538410, 42.805218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341320, 41.077175, 42.312279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731339, 41.069748, 42.400776>,  <34.965347, 41.065292, 42.453873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731339, 41.069748, 42.400776>,  <34.341320, 41.077175, 42.312279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731339, 41.069748, 42.400776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222019, 0.079154, -0.971824,
		0.000533, 0.996689, 0.081301,
		0.975042, -0.018569, 0.221242,
		35.023849, 41.064178, 42.467148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668732, 41.622482, 41.883896>,  <34.341320, 41.077175, 42.312279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668732, 41.622482, 41.883896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957798, 41.366177, 41.987572>,  <35.131237, 41.212391, 42.049778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.957798, 41.366177, 41.987572>,  <34.668732, 41.622482, 41.883896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957798, 41.366177, 41.987572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183243, -0.183956, -0.965703,
		0.666470, 0.745371, -0.015522,
		0.722662, -0.640767, 0.259185,
		35.174595, 41.173946, 42.065327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143131, 41.716965, 41.365643>,  <34.668732, 41.622482, 41.883896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143131, 41.716965, 41.365643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246445, 41.363300, 41.521358>,  <35.308434, 41.151100, 41.614788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.246445, 41.363300, 41.521358>,  <35.143131, 41.716965, 41.365643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246445, 41.363300, 41.521358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289780, -0.313497, -0.904294,
		0.921583, 0.346375, 0.175240,
		0.258287, -0.884163, 0.389285,
		35.323933, 41.098053, 41.638145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733044, 41.399220, 40.976780>,  <35.143131, 41.716965, 41.365643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733044, 41.399220, 40.976780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582844, 41.085903, 41.174957>,  <35.492725, 40.897915, 41.293861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582844, 41.085903, 41.174957>,  <35.733044, 41.399220, 40.976780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582844, 41.085903, 41.174957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201276, -0.590719, -0.781370,
		0.904703, -0.193684, 0.379472,
		-0.375500, -0.783286, 0.495441,
		35.470192, 40.850918, 41.323589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.295841, 41.347069, 32.016022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074627, 41.578491, 32.255829>,  <40.941898, 41.717346, 32.399712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074627, 41.578491, 32.255829>,  <41.295841, 41.347069, 32.016022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074627, 41.578491, 32.255829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310902, -0.524286, 0.792757,
		0.772975, 0.624814, 0.110074,
		-0.553036, 0.578560, 0.599516,
		40.908714, 41.752060, 32.435684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704418, 41.785202, 32.431030>,  <41.295841, 41.347069, 32.016022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704418, 41.785202, 32.431030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359169, 41.717781, 32.621445>,  <41.152020, 41.677330, 32.735695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359169, 41.717781, 32.621445>,  <41.704418, 41.785202, 32.431030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359169, 41.717781, 32.621445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499131, -0.427964, 0.753469,
		0.076728, 0.887940, 0.453515,
		-0.863123, -0.168551, 0.476034,
		41.100231, 41.667217, 32.764256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886482, 41.792263, 33.201366>,  <41.704418, 41.785202, 32.431030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886482, 41.792263, 33.201366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529823, 41.611404, 33.192173>,  <41.315830, 41.502888, 33.186657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.529823, 41.611404, 33.192173>,  <41.886482, 41.792263, 33.201366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529823, 41.611404, 33.192173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299006, -0.626239, 0.720014,
		-0.339947, 0.635126, 0.693578,
		-0.891645, -0.452151, -0.022982,
		41.262329, 41.475758, 33.185280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714363, 41.701393, 33.876007>,  <41.886482, 41.792263, 33.201366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714363, 41.701393, 33.876007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486877, 41.434155, 33.684086>,  <41.350388, 41.273811, 33.568935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486877, 41.434155, 33.684086>,  <41.714363, 41.701393, 33.876007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486877, 41.434155, 33.684086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079148, -0.625063, 0.776552,
		-0.818717, 0.403662, 0.408361,
		-0.568716, -0.668097, -0.479801,
		41.316261, 41.233727, 33.540146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213520, 41.557159, 34.347298>,  <41.714363, 41.701393, 33.876007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213520, 41.557159, 34.347298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222153, 41.243317, 34.099453>,  <41.227333, 41.055012, 33.950745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222153, 41.243317, 34.099453>,  <41.213520, 41.557159, 34.347298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222153, 41.243317, 34.099453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305515, -0.584934, 0.751341,
		-0.951943, -0.205517, 0.227086,
		0.021583, -0.784612, -0.619612,
		41.228626, 41.007935, 33.913570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937508, 40.998192, 34.706135>,  <41.213520, 41.557159, 34.347298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937508, 40.998192, 34.706135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.142307, 40.824112, 34.409904>,  <41.265186, 40.719666, 34.232166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.142307, 40.824112, 34.409904>,  <40.937508, 40.998192, 34.706135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142307, 40.824112, 34.409904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214316, -0.770169, 0.600756,
		-0.831820, -0.466305, -0.301056,
		0.511999, -0.435200, -0.740579,
		41.295906, 40.693550, 34.187729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822315, 40.169857, 34.768803>,  <40.937508, 40.998192, 34.706135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822315, 40.169857, 34.768803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.141136, 40.223969, 34.533379>,  <41.332428, 40.256435, 34.392124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.141136, 40.223969, 34.533379>,  <40.822315, 40.169857, 34.768803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141136, 40.223969, 34.533379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453137, -0.778226, 0.434777,
		-0.399218, -0.613240, -0.681587,
		0.797052, 0.135282, -0.588564,
		41.380253, 40.264553, 34.356808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985378, 39.488934, 34.665928>,  <40.822315, 40.169857, 34.768803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985378, 39.488934, 34.665928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314285, 39.683197, 34.547253>,  <41.511627, 39.799755, 34.476048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.314285, 39.683197, 34.547253>,  <40.985378, 39.488934, 34.665928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314285, 39.683197, 34.547253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569102, -0.703994, 0.424871,
		-0.002523, -0.518200, -0.855256,
		0.822263, 0.485656, -0.296685,
		41.560963, 39.828896, 34.458248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385048, 38.962143, 34.375507>,  <40.985378, 39.488934, 34.665928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385048, 38.962143, 34.375507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.615978, 39.275280, 34.468334>,  <41.754536, 39.463161, 34.524029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.615978, 39.275280, 34.468334>,  <41.385048, 38.962143, 34.375507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615978, 39.275280, 34.468334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725548, -0.622223, 0.293970,
		0.374528, -0.001341, -0.927215,
		0.577329, 0.782839, 0.232067,
		41.789177, 39.510132, 34.537952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995304, 38.785267, 33.942131>,  <41.385048, 38.962143, 34.375507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995304, 38.785267, 33.942131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.102451, 39.024731, 34.244083>,  <42.166740, 39.168407, 34.425255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.102451, 39.024731, 34.244083>,  <41.995304, 38.785267, 33.942131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102451, 39.024731, 34.244083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669647, -0.679011, 0.300862,
		0.692689, 0.424914, -0.582778,
		0.267871, 0.598659, 0.754886,
		42.182812, 39.204327, 34.470551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743168, 38.849701, 33.915733>,  <41.995304, 38.785267, 33.942131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743168, 38.849701, 33.915733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.632977, 38.944092, 34.288490>,  <42.566864, 39.000729, 34.512146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.632977, 38.944092, 34.288490>,  <42.743168, 38.849701, 33.915733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632977, 38.944092, 34.288490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766227, -0.531514, 0.361096,
		0.580526, 0.813515, -0.034395,
		-0.275475, 0.235980, 0.931894,
		42.550335, 39.014885, 34.568058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358814, 39.000629, 34.198601>,  <42.743168, 38.849701, 33.915733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358814, 39.000629, 34.198601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.117958, 38.924667, 34.508789>,  <42.973442, 38.879089, 34.694904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.117958, 38.924667, 34.508789>,  <43.358814, 39.000629, 34.198601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117958, 38.924667, 34.508789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785838, -0.312510, 0.533662,
		0.141000, 0.930739, 0.337408,
		-0.602144, -0.189902, 0.775474,
		42.937317, 38.867699, 34.741432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684235, 39.252857, 34.769844>,  <43.358814, 39.000629, 34.198601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684235, 39.252857, 34.769844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423523, 38.985653, 34.913479>,  <43.267097, 38.825329, 34.999660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423523, 38.985653, 34.913479>,  <43.684235, 39.252857, 34.769844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423523, 38.985653, 34.913479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733270, -0.434171, 0.523268,
		-0.193641, 0.604367, 0.772815,
		-0.651780, -0.668009, 0.359091,
		43.227989, 38.785252, 35.021206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752575, 39.307743, 35.590626>,  <43.684235, 39.252857, 34.769844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752575, 39.307743, 35.590626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608608, 38.961681, 35.450935>,  <43.522228, 38.754044, 35.367119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608608, 38.961681, 35.450935>,  <43.752575, 39.307743, 35.590626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608608, 38.961681, 35.450935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599173, -0.501260, 0.624283,
		-0.715159, 0.015439, 0.698791,
		-0.359914, -0.865159, -0.349230,
		43.500633, 38.702133, 35.346165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707905, 38.957256, 36.133102>,  <43.752575, 39.307743, 35.590626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707905, 38.957256, 36.133102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715084, 38.662331, 35.862980>,  <43.719391, 38.485374, 35.700905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715084, 38.662331, 35.862980>,  <43.707905, 38.957256, 36.133102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715084, 38.662331, 35.862980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618037, -0.522745, 0.587170,
		-0.785945, -0.427900, 0.446310,
		0.017944, -0.737319, -0.675307,
		43.720467, 38.441135, 35.660389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733875, 38.299110, 36.541382>,  <43.707905, 38.957256, 36.133102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733875, 38.299110, 36.541382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850529, 38.208633, 36.169621>,  <43.920521, 38.154346, 35.946564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.850529, 38.208633, 36.169621>,  <43.733875, 38.299110, 36.541382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850529, 38.208633, 36.169621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656963, -0.658850, 0.366492,
		-0.695234, -0.717463, -0.043543,
		0.291633, -0.226191, -0.929402,
		43.938019, 38.140778, 35.890800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821011, 37.595119, 36.650410>,  <43.733875, 38.299110, 36.541382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821011, 37.595119, 36.650410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020340, 37.682079, 36.314693>,  <44.139938, 37.734257, 36.113262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020340, 37.682079, 36.314693>,  <43.821011, 37.595119, 36.650410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020340, 37.682079, 36.314693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687804, -0.688483, 0.230035,
		-0.527828, -0.691901, -0.492616,
		0.498319, 0.217404, -0.839293,
		44.169834, 37.747299, 36.062904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978306, 36.926846, 36.343830>,  <43.821011, 37.595119, 36.650410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978306, 36.926846, 36.343830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224430, 37.183472, 36.160614>,  <44.372105, 37.337448, 36.050686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224430, 37.183472, 36.160614>,  <43.978306, 36.926846, 36.343830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224430, 37.183472, 36.160614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742691, -0.666564, 0.064058,
		-0.264213, -0.379595, -0.886622,
		0.615306, 0.641561, -0.458036,
		44.409023, 37.375938, 36.023205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393318, 36.474049, 35.792633>,  <43.978306, 36.926846, 36.343830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393318, 36.474049, 35.792633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624596, 36.797367, 35.837074>,  <44.763363, 36.991360, 35.863739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624596, 36.797367, 35.837074>,  <44.393318, 36.474049, 35.792633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624596, 36.797367, 35.837074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812515, -0.582823, 0.011691,
		0.074206, 0.083517, -0.993740,
		0.578198, 0.808296, 0.111108,
		44.798054, 37.039856, 35.870407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991501, 36.433720, 35.317375>,  <44.393318, 36.474049, 35.792633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991501, 36.433720, 35.317375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129353, 36.705589, 35.576382>,  <45.212063, 36.868710, 35.731785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.129353, 36.705589, 35.576382>,  <44.991501, 36.433720, 35.317375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129353, 36.705589, 35.576382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858240, -0.507589, 0.076007,
		0.380330, 0.529527, -0.758255,
		0.344634, 0.679672, 0.647513,
		45.232742, 36.909492, 35.770634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654930, 36.673412, 35.086681>,  <44.991501, 36.433720, 35.317375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654930, 36.673412, 35.086681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.656303, 36.714981, 35.484512>,  <45.657127, 36.739922, 35.723213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.656303, 36.714981, 35.484512>,  <45.654930, 36.673412, 35.086681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.656303, 36.714981, 35.484512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846072, -0.530477, 0.052507,
		0.533058, 0.841305, -0.089750,
		0.003436, 0.103924, 0.994579,
		45.657333, 36.746159, 35.782887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834888, 36.961819, 34.377892>,  <45.654930, 36.673412, 35.086681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834888, 36.961819, 34.377892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.067802, 36.910908, 34.056709>,  <46.207550, 36.880360, 33.863998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.067802, 36.910908, 34.056709>,  <45.834888, 36.961819, 34.377892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067802, 36.910908, 34.056709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726302, 0.362321, -0.584131,
		0.365275, 0.923323, 0.118533,
		0.582288, -0.127278, -0.802958,
		46.242489, 36.872723, 33.815823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943207, 37.624588, 34.147896>,  <45.834888, 36.961819, 34.377892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943207, 37.624588, 34.147896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051254, 37.404781, 33.831654>,  <46.116081, 37.272896, 33.641907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051254, 37.404781, 33.831654>,  <45.943207, 37.624588, 34.147896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051254, 37.404781, 33.831654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532502, 0.598856, -0.598174,
		0.802171, 0.582579, -0.130858,
		0.270119, -0.549520, -0.790610,
		46.132290, 37.239925, 33.594471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.255554, 38.070377, 33.730194>,  <45.943207, 37.624588, 34.147896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.255554, 38.070377, 33.730194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114475, 37.767612, 33.510124>,  <46.029827, 37.585953, 33.378082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.114475, 37.767612, 33.510124>,  <46.255554, 38.070377, 33.730194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114475, 37.767612, 33.510124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520036, 0.647349, -0.557226,
		0.777925, 0.089578, -0.621939,
		-0.352696, -0.756912, -0.550174,
		46.008667, 37.540539, 33.345074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394230, 38.197498, 32.948494>,  <46.255554, 38.070377, 33.730194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394230, 38.197498, 32.948494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.101212, 37.925514, 32.935650>,  <45.925400, 37.762325, 32.927944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.101212, 37.925514, 32.935650>,  <46.394230, 38.197498, 32.948494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101212, 37.925514, 32.935650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566522, 0.635133, -0.525033,
		0.377396, -0.366418, -0.850476,
		-0.732547, -0.679959, -0.032113,
		45.881447, 37.721527, 32.926014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299934, 38.042179, 32.192455>,  <46.394230, 38.197498, 32.948494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299934, 38.042179, 32.192455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971821, 37.928741, 32.391136>,  <45.774952, 37.860680, 32.510345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.971821, 37.928741, 32.391136>,  <46.299934, 38.042179, 32.192455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971821, 37.928741, 32.391136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556948, 0.593705, -0.580796,
		-0.130189, -0.753055, -0.644949,
		-0.820281, -0.283590, 0.496706,
		45.725739, 37.843666, 32.540150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829384, 37.816383, 31.673025>,  <46.299934, 38.042179, 32.192455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829384, 37.816383, 31.673025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620674, 37.908714, 32.001530>,  <45.495449, 37.964111, 32.198631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.620674, 37.908714, 32.001530>,  <45.829384, 37.816383, 31.673025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.620674, 37.908714, 32.001530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693154, 0.446468, -0.565865,
		-0.497286, -0.864514, -0.072954,
		-0.521770, 0.230828, 0.821264,
		45.464142, 37.977962, 32.247910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.154240, 37.875458, 31.382435>,  <45.829384, 37.816383, 31.673025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.154240, 37.875458, 31.382435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092041, 38.023487, 31.748795>,  <45.054722, 38.112305, 31.968611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.092041, 38.023487, 31.748795>,  <45.154240, 37.875458, 31.382435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092041, 38.023487, 31.748795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595759, 0.704449, -0.385777,
		-0.787968, -0.605640, 0.110935,
		-0.155494, 0.370070, 0.915898,
		45.045391, 38.134506, 32.023563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472416, 37.933769, 31.383053>,  <45.154240, 37.875458, 31.382435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472416, 37.933769, 31.383053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592041, 38.199177, 31.657368>,  <44.663815, 38.358421, 31.821957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592041, 38.199177, 31.657368>,  <44.472416, 37.933769, 31.383053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592041, 38.199177, 31.657368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641772, 0.671716, -0.370037,
		-0.706181, -0.329456, 0.626712,
		0.299061, 0.663519, 0.685788,
		44.681759, 38.398232, 31.863104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793671, 38.239750, 31.655361>,  <44.472416, 37.933769, 31.383053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793671, 38.239750, 31.655361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074566, 38.502819, 31.764410>,  <44.243103, 38.660660, 31.829840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.074566, 38.502819, 31.764410>,  <43.793671, 38.239750, 31.655361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074566, 38.502819, 31.764410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627792, 0.752635, -0.198541,
		-0.335759, -0.031726, 0.941414,
		0.702241, 0.657674, 0.272621,
		44.285240, 38.700123, 31.846197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527706, 38.724579, 32.196213>,  <43.793671, 38.239750, 31.655361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527706, 38.724579, 32.196213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831272, 38.896488, 32.000523>,  <44.013412, 38.999634, 31.883108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831272, 38.896488, 32.000523>,  <43.527706, 38.724579, 32.196213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831272, 38.896488, 32.000523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544940, 0.830438, -0.115814,
		0.356497, 0.354491, 0.864434,
		0.758914, 0.429777, -0.489226,
		44.058945, 39.025421, 31.853754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397396, 39.391506, 32.376575>,  <43.527706, 38.724579, 32.196213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397396, 39.391506, 32.376575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.681816, 39.449810, 32.101429>,  <43.852467, 39.484791, 31.936340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.681816, 39.449810, 32.101429>,  <43.397396, 39.391506, 32.376575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681816, 39.449810, 32.101429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438191, 0.856941, -0.271368,
		0.549908, 0.494374, 0.673198,
		0.711048, 0.145761, -0.687869,
		43.895130, 39.493538, 31.895069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671799, 40.012291, 32.489685>,  <43.397396, 39.391506, 32.376575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671799, 40.012291, 32.489685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749897, 39.925625, 32.107075>,  <43.796757, 39.873623, 31.877510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749897, 39.925625, 32.107075>,  <43.671799, 40.012291, 32.489685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749897, 39.925625, 32.107075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230076, 0.937957, -0.259426,
		0.953386, 0.270725, 0.133282,
		0.195246, -0.216668, -0.956522,
		43.808472, 39.860626, 31.820118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114300, 40.628616, 32.179527>,  <43.671799, 40.012291, 32.489685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114300, 40.628616, 32.179527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941387, 40.422363, 31.883617>,  <43.837639, 40.298611, 31.706072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941387, 40.422363, 31.883617>,  <44.114300, 40.628616, 32.179527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941387, 40.422363, 31.883617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350983, 0.851898, -0.388691,
		0.830630, 0.091624, -0.549235,
		-0.432279, -0.515630, -0.739771,
		43.811703, 40.267673, 31.661686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286255, 40.976452, 31.652811>,  <44.114300, 40.628616, 32.179527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286255, 40.976452, 31.652811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.979618, 40.767155, 31.503920>,  <43.795635, 40.641579, 31.414585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.979618, 40.767155, 31.503920>,  <44.286255, 40.976452, 31.652811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979618, 40.767155, 31.503920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384228, 0.838221, -0.386981,
		0.514494, -0.153636, -0.843619,
		-0.766593, -0.523241, -0.372228,
		43.749641, 40.610184, 31.392252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209492, 41.148926, 30.944159>,  <44.286255, 40.976452, 31.652811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209492, 41.148926, 30.944159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.846893, 41.012695, 31.043983>,  <43.629333, 40.930958, 31.103878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.846893, 41.012695, 31.043983>,  <44.209492, 41.148926, 30.944159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846893, 41.012695, 31.043983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420290, 0.784347, -0.456241,
		-0.040359, -0.518467, -0.854144,
		-0.906492, -0.340575, 0.249562,
		43.574947, 40.910522, 31.118853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775059, 41.275143, 30.363638>,  <44.209492, 41.148926, 30.944159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775059, 41.275143, 30.363638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498905, 41.218773, 30.647470>,  <43.333214, 41.184952, 30.817770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498905, 41.218773, 30.647470>,  <43.775059, 41.275143, 30.363638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498905, 41.218773, 30.647470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610834, 0.639091, -0.467381,
		-0.387621, -0.756110, -0.527302,
		-0.690385, -0.140927, 0.709582,
		43.291790, 41.176495, 30.860346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185490, 41.265003, 29.977221>,  <43.775059, 41.275143, 30.363638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185490, 41.265003, 29.977221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092278, 41.329006, 30.360907>,  <43.036350, 41.367409, 30.591118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.092278, 41.329006, 30.360907>,  <43.185490, 41.265003, 29.977221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092278, 41.329006, 30.360907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693926, 0.663677, -0.279284,
		-0.681297, -0.730706, -0.043624,
		-0.233027, 0.160004, 0.959217,
		43.022369, 41.377007, 30.648672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432537, 41.212616, 30.155107>,  <43.185490, 41.265003, 29.977221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432537, 41.212616, 30.155107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568825, 41.449749, 30.446987>,  <42.650597, 41.592030, 30.622114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.568825, 41.449749, 30.446987>,  <42.432537, 41.212616, 30.155107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568825, 41.449749, 30.446987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708438, 0.672137, -0.215282,
		-0.618083, -0.443595, 0.648996,
		0.340717, 0.592836, 0.729697,
		42.671040, 41.627602, 30.665895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857273, 41.443359, 30.446737>,  <42.432537, 41.212616, 30.155107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857273, 41.443359, 30.446737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144886, 41.695591, 30.563612>,  <42.317451, 41.846928, 30.633736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144886, 41.695591, 30.563612>,  <41.857273, 41.443359, 30.446737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144886, 41.695591, 30.563612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589097, 0.776061, -0.225154,
		-0.368730, -0.010233, 0.929480,
		0.719029, 0.630575, 0.292185,
		42.360596, 41.884762, 30.651268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565666, 41.976410, 30.845085>,  <41.857273, 41.443359, 30.446737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565666, 41.976410, 30.845085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912083, 42.143097, 30.734587>,  <42.119934, 42.243107, 30.668287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.912083, 42.143097, 30.734587>,  <41.565666, 41.976410, 30.845085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912083, 42.143097, 30.734587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471090, 0.865208, -0.171728,
		0.167450, 0.278862, 0.945620,
		0.866046, 0.416716, -0.276248,
		42.171898, 42.268112, 30.651712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757324, 42.670593, 31.259487>,  <41.565666, 41.976410, 30.845085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757324, 42.670593, 31.259487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.919052, 42.656013, 30.893932>,  <42.016090, 42.647266, 30.674599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.919052, 42.656013, 30.893932>,  <41.757324, 42.670593, 31.259487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919052, 42.656013, 30.893932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244559, 0.958514, -0.146428,
		0.881313, 0.282704, 0.378637,
		0.404324, -0.036450, -0.913889,
		42.040348, 42.645077, 30.619766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.471008, 39.101997, 38.674576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144619, 38.872322, 38.701412>,  <39.948784, 38.734516, 38.717514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144619, 38.872322, 38.701412>,  <40.471008, 39.101997, 38.674576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144619, 38.872322, 38.701412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407745, -0.653914, -0.637292,
		0.409797, -0.492655, 0.767696,
		-0.815972, -0.574184, 0.067094,
		39.899826, 38.700066, 38.721539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701336, 38.445660, 38.713600>,  <40.471008, 39.101997, 38.674576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701336, 38.445660, 38.713600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324608, 38.420849, 38.581459>,  <40.098572, 38.405964, 38.502174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324608, 38.420849, 38.581459>,  <40.701336, 38.445660, 38.713600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324608, 38.420849, 38.581459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308330, -0.550774, -0.775616,
		-0.133841, -0.832346, 0.537853,
		-0.941817, -0.062027, -0.330354,
		40.042065, 38.402241, 38.482353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622952, 37.741886, 38.637806>,  <40.701336, 38.445660, 38.713600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622952, 37.741886, 38.637806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319283, 37.876976, 38.415237>,  <40.137081, 37.958031, 38.281696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319283, 37.876976, 38.415237>,  <40.622952, 37.741886, 38.637806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319283, 37.876976, 38.415237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262625, -0.623247, -0.736608,
		-0.595558, -0.705340, 0.384455,
		-0.759170, 0.337726, -0.556420,
		40.091534, 37.978294, 38.248310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267685, 37.140533, 38.411541>,  <40.622952, 37.741886, 38.637806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267685, 37.140533, 38.411541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191727, 37.425812, 38.141640>,  <40.146152, 37.596977, 37.979698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191727, 37.425812, 38.141640>,  <40.267685, 37.140533, 38.411541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191727, 37.425812, 38.141640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178698, -0.650674, -0.738031,
		-0.965405, -0.260728, -0.003884,
		-0.189898, 0.713193, -0.674755,
		40.134758, 37.639771, 37.939213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842369, 36.727493, 37.916367>,  <40.267685, 37.140533, 38.411541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842369, 36.727493, 37.916367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887936, 37.069679, 37.714294>,  <39.915276, 37.274990, 37.593052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887936, 37.069679, 37.714294>,  <39.842369, 36.727493, 37.916367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887936, 37.069679, 37.714294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054138, -0.502392, -0.862944,
		-0.992014, 0.125656, -0.010919,
		0.113920, 0.855461, -0.505183,
		39.922112, 37.326317, 37.562740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295010, 36.744125, 37.444077>,  <39.842369, 36.727493, 37.916367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295010, 36.744125, 37.444077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600994, 36.966068, 37.313255>,  <39.784584, 37.099232, 37.234760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600994, 36.966068, 37.313255>,  <39.295010, 36.744125, 37.444077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600994, 36.966068, 37.313255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045266, -0.460226, -0.886647,
		-0.642479, 0.693059, -0.326941,
		0.764965, 0.554852, -0.327058,
		39.830482, 37.132523, 37.215137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041740, 36.878681, 36.801460>,  <39.295010, 36.744125, 37.444077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041740, 36.878681, 36.801460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437523, 36.933147, 36.781700>,  <39.674992, 36.965828, 36.769844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437523, 36.933147, 36.781700>,  <39.041740, 36.878681, 36.801460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437523, 36.933147, 36.781700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003176, -0.361366, -0.932419,
		-0.144817, 0.922428, -0.357987,
		0.989454, 0.136167, -0.049402,
		39.734360, 36.973999, 36.766880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169369, 37.277576, 36.214733>,  <39.041740, 36.878681, 36.801460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169369, 37.277576, 36.214733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527004, 37.107353, 36.270603>,  <39.741585, 37.005219, 36.304123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527004, 37.107353, 36.270603>,  <39.169369, 37.277576, 36.214733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527004, 37.107353, 36.270603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005338, -0.301694, -0.953390,
		0.447861, 0.853159, -0.267469,
		0.894087, -0.425558, 0.139671,
		39.795231, 36.979687, 36.312504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631119, 37.457085, 35.662380>,  <39.169369, 37.277576, 36.214733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631119, 37.457085, 35.662380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807793, 37.129589, 35.809116>,  <39.913799, 36.933090, 35.897160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807793, 37.129589, 35.809116>,  <39.631119, 37.457085, 35.662380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807793, 37.129589, 35.809116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207749, -0.304442, -0.929600,
		0.872785, 0.486804, 0.035625,
		0.441687, -0.818741, 0.366845,
		39.940300, 36.883968, 35.919170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409470, 37.466614, 35.517792>,  <39.631119, 37.457085, 35.662380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409470, 37.466614, 35.517792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299129, 37.089046, 35.590374>,  <40.232925, 36.862507, 35.633923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299129, 37.089046, 35.590374>,  <40.409470, 37.466614, 35.517792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299129, 37.089046, 35.590374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369239, -0.278357, -0.886668,
		0.887449, -0.177592, 0.425317,
		-0.275855, -0.943917, 0.181454,
		40.216373, 36.805870, 35.644810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845173, 37.188908, 35.126614>,  <40.409470, 37.466614, 35.517792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845173, 37.188908, 35.126614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614918, 36.869907, 35.198883>,  <40.476765, 36.678509, 35.242245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614918, 36.869907, 35.198883>,  <40.845173, 37.188908, 35.126614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614918, 36.869907, 35.198883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228563, -0.369065, -0.900861,
		0.785113, -0.477274, 0.394725,
		-0.575636, -0.797496, 0.180670,
		40.442226, 36.630657, 35.253082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276756, 36.613720, 35.154854>,  <40.845173, 37.188908, 35.126614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276756, 36.613720, 35.154854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903442, 36.552868, 35.024723>,  <40.679455, 36.516357, 34.946644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903442, 36.552868, 35.024723>,  <41.276756, 36.613720, 35.154854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903442, 36.552868, 35.024723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357740, -0.313916, -0.879477,
		0.031671, -0.937183, 0.347396,
		-0.933284, -0.152132, -0.325326,
		40.623459, 36.507229, 34.927124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744850, 36.421700, 35.703373>,  <41.276756, 36.613720, 35.154854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744850, 36.421700, 35.703373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139606, 36.400360, 35.642441>,  <42.376461, 36.387558, 35.605881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139606, 36.400360, 35.642441>,  <41.744850, 36.421700, 35.703373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139606, 36.400360, 35.642441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157313, 0.529015, 0.833904,
		0.036101, -0.846934, 0.530471,
		0.986889, -0.053345, -0.152331,
		42.435673, 36.384357, 35.596741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937634, 35.972050, 36.292072>,  <41.744850, 36.421700, 35.703373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937634, 35.972050, 36.292072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100559, 36.217331, 36.562798>,  <42.198315, 36.364498, 36.725231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100559, 36.217331, 36.562798>,  <41.937634, 35.972050, 36.292072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100559, 36.217331, 36.562798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308390, -0.789894, 0.530060,
		0.859645, -0.007179, -0.510841,
		0.407315, 0.613202, 0.676815,
		42.222755, 36.401291, 36.765842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638035, 35.832424, 36.050755>,  <41.937634, 35.972050, 36.292072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638035, 35.832424, 36.050755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841812, 35.704433, 36.370274>,  <42.964081, 35.627640, 36.561985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841812, 35.704433, 36.370274>,  <42.638035, 35.832424, 36.050755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841812, 35.704433, 36.370274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859182, -0.240547, 0.451601,
		0.047648, -0.916380, -0.397463,
		0.509447, -0.319975, 0.798799,
		42.994648, 35.608440, 36.609913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380741, 35.133629, 36.222820>,  <42.638035, 35.832424, 36.050755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380741, 35.133629, 36.222820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561440, 35.246407, 36.561390>,  <42.669861, 35.314072, 36.764530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561440, 35.246407, 36.561390>,  <42.380741, 35.133629, 36.222820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561440, 35.246407, 36.561390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796425, -0.300097, 0.525023,
		0.402034, -0.911291, 0.088977,
		0.451747, 0.281940, 0.846424,
		42.696964, 35.330990, 36.815319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414558, 34.538769, 36.573959>,  <42.380741, 35.133629, 36.222820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414558, 34.538769, 36.573959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458344, 34.844513, 36.828133>,  <42.484615, 35.027958, 36.980637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458344, 34.844513, 36.828133>,  <42.414558, 34.538769, 36.573959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458344, 34.844513, 36.828133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648878, -0.429322, 0.628204,
		0.752978, -0.481082, 0.448981,
		0.109460, 0.764358, 0.635434,
		42.491180, 35.073822, 37.018764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299824, 34.247562, 37.250626>,  <42.414558, 34.538769, 36.573959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299824, 34.247562, 37.250626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257530, 34.634758, 37.341679>,  <42.232155, 34.867077, 37.396313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257530, 34.634758, 37.341679>,  <42.299824, 34.247562, 37.250626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257530, 34.634758, 37.341679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704479, -0.234481, 0.669871,
		0.701804, -0.089536, 0.706721,
		-0.105736, 0.967989, 0.227636,
		42.225811, 34.925156, 37.409969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188320, 34.169735, 37.957363>,  <42.299824, 34.247562, 37.250626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188320, 34.169735, 37.957363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081673, 34.541203, 37.854225>,  <42.017685, 34.764084, 37.792343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081673, 34.541203, 37.854225>,  <42.188320, 34.169735, 37.957363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081673, 34.541203, 37.854225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785035, -0.054046, 0.617090,
		0.559138, 0.366945, 0.743449,
		-0.266619, 0.928671, -0.257845,
		42.001686, 34.819805, 37.776871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901295, 34.570309, 38.679760>,  <42.188320, 34.169735, 37.957363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901295, 34.570309, 38.679760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741341, 34.750351, 38.360386>,  <41.645370, 34.858376, 38.168762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741341, 34.750351, 38.360386>,  <41.901295, 34.570309, 38.679760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741341, 34.750351, 38.360386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835628, 0.178881, 0.519353,
		0.376590, 0.874874, 0.304591,
		-0.399882, 0.450108, -0.798434,
		41.621376, 34.885384, 38.120857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570000, 35.065083, 38.939388>,  <41.901295, 34.570309, 38.679760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570000, 35.065083, 38.939388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412750, 35.042641, 38.572281>,  <41.318401, 35.029175, 38.352016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412750, 35.042641, 38.572281>,  <41.570000, 35.065083, 38.939388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412750, 35.042641, 38.572281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907864, 0.181866, 0.377767,
		0.145717, 0.981722, -0.122431,
		-0.393128, -0.056104, -0.917771,
		41.294811, 35.025810, 38.296951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219635, 35.647999, 38.892185>,  <41.570000, 35.065083, 38.939388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219635, 35.647999, 38.892185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059292, 35.396072, 38.626057>,  <40.963085, 35.244919, 38.466381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059292, 35.396072, 38.626057>,  <41.219635, 35.647999, 38.892185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059292, 35.396072, 38.626057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907907, 0.175955, 0.380452,
		-0.122548, 0.756554, -0.642346,
		-0.400856, -0.629814, -0.665318,
		40.939034, 35.207127, 38.426460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723480, 35.996742, 38.608604>,  <41.219635, 35.647999, 38.892185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723480, 35.996742, 38.608604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616413, 35.622646, 38.515926>,  <40.552174, 35.398190, 38.460320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616413, 35.622646, 38.515926>,  <40.723480, 35.996742, 38.608604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616413, 35.622646, 38.515926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835128, 0.105262, 0.539891,
		-0.480539, 0.338004, -0.809220,
		-0.267665, -0.935240, -0.231694,
		40.536114, 35.342075, 38.446419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041512, 36.029446, 38.614918>,  <40.723480, 35.996742, 38.608604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041512, 36.029446, 38.614918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081516, 35.631500, 38.621281>,  <40.105518, 35.392735, 38.625099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081516, 35.631500, 38.621281>,  <40.041512, 36.029446, 38.614918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081516, 35.631500, 38.621281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831700, -0.074807, 0.550163,
		-0.546145, -0.068253, -0.834906,
		0.100007, -0.994859, 0.015911,
		40.111519, 35.333042, 38.626053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395416, 35.713074, 38.394566>,  <40.041512, 36.029446, 38.614918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395416, 35.713074, 38.394566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597431, 35.440861, 38.606911>,  <39.718639, 35.277531, 38.734318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597431, 35.440861, 38.606911>,  <39.395416, 35.713074, 38.394566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597431, 35.440861, 38.606911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838546, -0.241220, 0.488522,
		-0.204402, -0.691870, -0.692485,
		0.505035, -0.680535, 0.530859,
		39.748943, 35.236702, 38.766171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925781, 35.103470, 38.482838>,  <39.395416, 35.713074, 38.394566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925781, 35.103470, 38.482838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210293, 35.111191, 38.763893>,  <39.381001, 35.115826, 38.932526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210293, 35.111191, 38.763893>,  <38.925781, 35.103470, 38.482838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210293, 35.111191, 38.763893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677323, -0.248420, 0.692475,
		0.187919, -0.968460, -0.163621,
		0.711281, 0.019305, 0.702643,
		39.423676, 35.116982, 38.974686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908932, 34.449078, 38.926590>,  <38.925781, 35.103470, 38.482838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908932, 34.449078, 38.926590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119678, 34.715885, 39.137302>,  <39.246124, 34.875969, 39.263729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119678, 34.715885, 39.137302>,  <38.908932, 34.449078, 38.926590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119678, 34.715885, 39.137302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717601, 0.016954, 0.696248,
		0.455481, -0.744846, 0.487588,
		0.526864, 0.667021, 0.526780,
		39.277737, 34.915993, 39.295338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925751, 34.235897, 39.612938>,  <38.908932, 34.449078, 38.926590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925751, 34.235897, 39.612938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002930, 34.628017, 39.629848>,  <39.049236, 34.863289, 39.639996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002930, 34.628017, 39.629848>,  <38.925751, 34.235897, 39.612938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002930, 34.628017, 39.629848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636352, 0.092218, 0.765867,
		0.746879, -0.174672, 0.641608,
		0.192943, 0.980298, 0.042277,
		39.060814, 34.922108, 39.642532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353600, 33.655552, 40.087616>,  <38.925751, 34.235897, 39.612938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353600, 33.655552, 40.087616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211258, 33.288963, 40.160763>,  <39.125851, 33.069008, 40.204651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211258, 33.288963, 40.160763>,  <39.353600, 33.655552, 40.087616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211258, 33.288963, 40.160763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212163, -0.269796, -0.939253,
		0.910139, -0.295441, 0.290451,
		-0.355856, -0.916474, 0.182870,
		39.104500, 33.014023, 40.215626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825714, 33.151443, 39.737980>,  <39.353600, 33.655552, 40.087616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825714, 33.151443, 39.737980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473694, 32.969059, 39.791069>,  <39.262482, 32.859631, 39.822922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473694, 32.969059, 39.791069>,  <39.825714, 33.151443, 39.737980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473694, 32.969059, 39.791069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114101, -0.474323, -0.872925,
		0.460972, -0.753073, 0.469453,
		-0.880049, -0.455959, 0.132723,
		39.209679, 32.832272, 39.830887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931377, 32.406284, 39.628761>,  <39.825714, 33.151443, 39.737980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931377, 32.406284, 39.628761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540260, 32.475410, 39.581333>,  <39.305592, 32.516888, 39.552876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540260, 32.475410, 39.581333>,  <39.931377, 32.406284, 39.628761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540260, 32.475410, 39.581333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007920, -0.595806, -0.803089,
		-0.209433, -0.784315, 0.583942,
		-0.977791, 0.172818, -0.118570,
		39.246922, 32.527256, 39.545761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574673, 31.839447, 39.275379>,  <39.931377, 32.406284, 39.628761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574673, 31.839447, 39.275379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271965, 32.100227, 39.256332>,  <39.090340, 32.256695, 39.244904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271965, 32.100227, 39.256332>,  <39.574673, 31.839447, 39.275379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271965, 32.100227, 39.256332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333682, -0.447908, -0.829479,
		-0.562107, -0.611832, 0.556505,
		-0.756764, 0.651952, -0.047615,
		39.044937, 32.295811, 39.242050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909134, 31.424654, 39.143787>,  <39.574673, 31.839447, 39.275379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909134, 31.424654, 39.143787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866558, 31.802538, 39.019726>,  <38.841015, 32.029266, 38.945290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866558, 31.802538, 39.019726>,  <38.909134, 31.424654, 39.143787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866558, 31.802538, 39.019726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357177, -0.327436, -0.874763,
		-0.927952, 0.017675, 0.372279,
		-0.106437, 0.944708, -0.310158,
		38.834625, 32.085949, 38.926678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237350, 31.470299, 38.730396>,  <38.909134, 31.424654, 39.143787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237350, 31.470299, 38.730396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432858, 31.802551, 38.623692>,  <38.550159, 32.001904, 38.559669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432858, 31.802551, 38.623692>,  <38.237350, 31.470299, 38.730396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432858, 31.802551, 38.623692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322360, -0.112181, -0.939947,
		-0.810676, 0.545403, 0.212933,
		0.488763, 0.830633, -0.266758,
		38.579487, 32.051743, 38.543663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651119, 31.780031, 38.377522>,  <38.237350, 31.470299, 38.730396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651119, 31.780031, 38.377522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017788, 31.896660, 38.268192>,  <38.237789, 31.966637, 38.202595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017788, 31.896660, 38.268192>,  <37.651119, 31.780031, 38.377522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017788, 31.896660, 38.268192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206127, -0.240996, -0.948384,
		-0.342393, 0.925692, -0.160812,
		0.916667, 0.291572, -0.273326,
		38.292789, 31.984131, 38.186195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578175, 32.200176, 37.742378>,  <37.651119, 31.780031, 38.377522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578175, 32.200176, 37.742378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961487, 32.085922, 37.738102>,  <38.191475, 32.017368, 37.735535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961487, 32.085922, 37.738102>,  <37.578175, 32.200176, 37.742378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961487, 32.085922, 37.738102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093639, -0.278359, -0.955902,
		0.270062, 0.917022, -0.293492,
		0.958279, -0.285635, -0.010695,
		38.248970, 32.000233, 37.734894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824150, 32.326630, 37.001678>,  <37.578175, 32.200176, 37.742378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824150, 32.326630, 37.001678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081409, 32.067883, 37.165596>,  <38.235764, 31.912634, 37.263947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081409, 32.067883, 37.165596>,  <37.824150, 32.326630, 37.001678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081409, 32.067883, 37.165596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006284, -0.530676, -0.847551,
		0.765718, 0.547674, -0.337238,
		0.643146, -0.646866, 0.409790,
		38.274353, 31.873823, 37.288532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473923, 32.286137, 36.619186>,  <37.824150, 32.326630, 37.001678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473923, 32.286137, 36.619186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500793, 31.948513, 36.831993>,  <38.516914, 31.745937, 36.959679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500793, 31.948513, 36.831993>,  <38.473923, 32.286137, 36.619186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500793, 31.948513, 36.831993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149446, -0.518697, -0.841795,
		0.986485, 0.136054, 0.091300,
		0.067172, -0.844063, 0.532020,
		38.520947, 31.695293, 36.991600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952095, 31.888536, 36.260994>,  <38.473923, 32.286137, 36.619186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952095, 31.888536, 36.260994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749313, 31.627213, 36.485912>,  <38.627644, 31.470417, 36.620865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749313, 31.627213, 36.485912>,  <38.952095, 31.888536, 36.260994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749313, 31.627213, 36.485912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006516, -0.649416, -0.760405,
		0.861947, -0.389157, 0.324969,
		-0.506957, -0.653311, 0.562298,
		38.597225, 31.431219, 36.654602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261703, 31.198496, 36.379642>,  <38.952095, 31.888536, 36.260994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261703, 31.198496, 36.379642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861874, 31.196957, 36.391216>,  <38.621975, 31.196033, 36.398163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861874, 31.196957, 36.391216>,  <39.261703, 31.198496, 36.379642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861874, 31.196957, 36.391216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016346, -0.747550, -0.664004,
		0.024185, -0.664194, 0.747168,
		-0.999574, -0.003846, 0.028936,
		38.562000, 31.195803, 36.399899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.058098, 34.217651, 43.796772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684238, 34.091938, 43.730244>,  <38.459923, 34.016510, 43.690327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684238, 34.091938, 43.730244>,  <39.058098, 34.217651, 43.796772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684238, 34.091938, 43.730244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309961, -0.490901, -0.814211,
		0.174244, -0.812553, 0.556234,
		-0.934646, -0.314283, -0.166323,
		38.403843, 33.997654, 43.680347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147114, 33.584476, 43.586132>,  <39.058098, 34.217651, 43.796772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147114, 33.584476, 43.586132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765987, 33.641346, 43.478859>,  <38.537312, 33.675468, 43.414494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.765987, 33.641346, 43.478859>,  <39.147114, 33.584476, 43.586132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765987, 33.641346, 43.478859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137245, -0.586261, -0.798412,
		-0.270743, -0.797549, 0.539087,
		-0.952818, 0.142178, -0.268186,
		38.480141, 33.683998, 43.398403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902245, 32.971470, 43.337254>,  <39.147114, 33.584476, 43.586132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902245, 32.971470, 43.337254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.663143, 33.241451, 43.164219>,  <38.519684, 33.403442, 43.060398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.663143, 33.241451, 43.164219>,  <38.902245, 32.971470, 43.337254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663143, 33.241451, 43.164219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058748, -0.501264, -0.863298,
		-0.799526, -0.541450, 0.259979,
		-0.597751, 0.674956, -0.432583,
		38.483818, 33.443939, 43.034443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500935, 32.540920, 42.832794>,  <38.902245, 32.971470, 43.337254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500935, 32.540920, 42.832794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456188, 32.916832, 42.703617>,  <38.429340, 33.142380, 42.626110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456188, 32.916832, 42.703617>,  <38.500935, 32.540920, 42.832794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456188, 32.916832, 42.703617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054294, -0.318718, -0.946293,
		-0.992238, -0.123396, -0.015370,
		-0.111870, 0.939783, -0.322944,
		38.422626, 33.198769, 42.606735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904022, 32.514431, 42.420677>,  <38.500935, 32.540920, 42.832794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904022, 32.514431, 42.420677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138481, 32.823040, 42.321735>,  <38.279156, 33.008205, 42.262371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138481, 32.823040, 42.321735>,  <37.904022, 32.514431, 42.420677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138481, 32.823040, 42.321735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085501, -0.362491, -0.928057,
		-0.805682, 0.522828, -0.278439,
		0.586146, 0.771525, -0.247350,
		38.314323, 33.054497, 42.247532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643070, 32.774536, 41.700909>,  <37.904022, 32.514431, 42.420677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643070, 32.774536, 41.700909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024391, 32.891148, 41.732460>,  <38.253185, 32.961117, 41.751392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024391, 32.891148, 41.732460>,  <37.643070, 32.774536, 41.700909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024391, 32.891148, 41.732460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127699, -0.152409, -0.980033,
		-0.273690, 0.944341, -0.182520,
		0.953303, 0.291533, 0.078879,
		38.310383, 32.978607, 41.756123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795345, 32.898087, 41.063179>,  <37.643070, 32.774536, 41.700909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795345, 32.898087, 41.063179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172508, 32.947906, 41.186737>,  <38.398808, 32.977798, 41.260872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172508, 32.947906, 41.186737>,  <37.795345, 32.898087, 41.063179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172508, 32.947906, 41.186737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320745, -0.089724, -0.942906,
		-0.089724, 0.988148, -0.124551,
		0.942906, 0.124551, 0.308893,
		38.455379, 32.985271, 41.279404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069901, 33.364975, 40.640522>,  <37.795345, 32.898087, 41.063179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069901, 33.364975, 40.640522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390858, 33.184807, 40.797127>,  <38.583431, 33.076706, 40.891090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.390858, 33.184807, 40.797127>,  <38.069901, 33.364975, 40.640522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390858, 33.184807, 40.797127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363446, -0.151530, -0.919209,
		0.473359, 0.879862, 0.042118,
		0.802395, -0.450424, 0.391511,
		38.631577, 33.049679, 40.914581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701618, 33.747379, 40.388870>,  <38.069901, 33.364975, 40.640522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701618, 33.747379, 40.388870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785316, 33.369324, 40.489212>,  <38.835533, 33.142490, 40.549416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785316, 33.369324, 40.489212>,  <38.701618, 33.747379, 40.388870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785316, 33.369324, 40.489212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430976, -0.141138, -0.891257,
		0.877768, 0.294600, 0.377801,
		0.209243, -0.945141, 0.250852,
		38.848091, 33.085781, 40.564468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076103, 34.442974, 40.380932>,  <38.701618, 33.747379, 40.388870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076103, 34.442974, 40.380932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009804, 34.785805, 40.185814>,  <38.970024, 34.991505, 40.068745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009804, 34.785805, 40.185814>,  <39.076103, 34.442974, 40.380932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009804, 34.785805, 40.185814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382965, 0.399873, 0.832730,
		0.908771, 0.324833, 0.261952,
		-0.165750, 0.857080, -0.487793,
		38.960079, 35.042927, 40.039474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368477, 35.004517, 40.784096>,  <39.076103, 34.442974, 40.380932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368477, 35.004517, 40.784096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129520, 35.219479, 40.545998>,  <38.986145, 35.348457, 40.403137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.129520, 35.219479, 40.545998>,  <39.368477, 35.004517, 40.784096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129520, 35.219479, 40.545998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297836, 0.540481, 0.786876,
		0.744591, 0.647359, -0.162821,
		-0.597393, 0.537407, -0.595244,
		38.950302, 35.380699, 40.367424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470963, 35.666965, 40.929111>,  <39.368477, 35.004517, 40.784096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470963, 35.666965, 40.929111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102814, 35.649437, 40.773682>,  <38.881924, 35.638920, 40.680424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.102814, 35.649437, 40.773682>,  <39.470963, 35.666965, 40.929111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102814, 35.649437, 40.773682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359998, 0.482958, 0.798219,
		0.152686, 0.874546, -0.460279,
		-0.920374, -0.043823, -0.388575,
		38.826702, 35.636292, 40.657108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175472, 36.352917, 40.909798>,  <39.470963, 35.666965, 40.929111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175472, 36.352917, 40.909798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848541, 36.122540, 40.916359>,  <38.652382, 35.984314, 40.920296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.848541, 36.122540, 40.916359>,  <39.175472, 36.352917, 40.909798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848541, 36.122540, 40.916359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389267, 0.572954, 0.721245,
		-0.424799, 0.583104, -0.692485,
		-0.817323, -0.575946, 0.016407,
		38.603344, 35.949757, 40.921280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779415, 36.923046, 41.056419>,  <39.175472, 36.352917, 40.909798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779415, 36.923046, 41.056419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588066, 36.579983, 41.131870>,  <38.473259, 36.374146, 41.177139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.588066, 36.579983, 41.131870>,  <38.779415, 36.923046, 41.056419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588066, 36.579983, 41.131870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283159, 0.353972, 0.891362,
		-0.831254, 0.372989, -0.412184,
		-0.478370, -0.857661, 0.188625,
		38.444557, 36.322685, 41.188457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078995, 37.063026, 41.176613>,  <38.779415, 36.923046, 41.056419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078995, 37.063026, 41.176613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175392, 36.717346, 41.353283>,  <38.233231, 36.509937, 41.459286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175392, 36.717346, 41.353283>,  <38.078995, 37.063026, 41.176613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175392, 36.717346, 41.353283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305183, 0.364526, 0.879764,
		-0.921296, -0.346810, -0.175890,
		0.240994, -0.864201, 0.441677,
		38.247692, 36.458084, 41.485786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630329, 36.976330, 41.809605>,  <38.078995, 37.063026, 41.176613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630329, 36.976330, 41.809605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908619, 36.699589, 41.886856>,  <38.075592, 36.533543, 41.933205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908619, 36.699589, 41.886856>,  <37.630329, 36.976330, 41.809605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908619, 36.699589, 41.886856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214763, 0.056213, 0.975047,
		-0.685450, -0.719843, -0.109476,
		0.695727, -0.691857, 0.193127,
		38.117336, 36.492031, 41.944794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537777, 36.987442, 42.509319>,  <37.630329, 36.976330, 41.809605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537777, 36.987442, 42.509319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851376, 36.744270, 42.459080>,  <38.039536, 36.598370, 42.428936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.851376, 36.744270, 42.459080>,  <37.537777, 36.987442, 42.509319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851376, 36.744270, 42.459080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240127, 0.110417, 0.964441,
		-0.572439, -0.786280, 0.232545,
		0.783998, -0.607925, -0.125600,
		38.086575, 36.561893, 42.421398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468601, 36.371910, 42.993576>,  <37.537777, 36.987442, 42.509319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468601, 36.371910, 42.993576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848427, 36.455833, 42.900360>,  <38.076321, 36.506187, 42.844429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848427, 36.455833, 42.900360>,  <37.468601, 36.371910, 42.993576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848427, 36.455833, 42.900360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218913, 0.088552, 0.971718,
		0.224508, -0.973725, 0.038157,
		0.949565, 0.209805, -0.233042,
		38.133297, 36.518776, 42.830448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839687, 36.006535, 43.425201>,  <37.468601, 36.371910, 42.993576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839687, 36.006535, 43.425201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092609, 36.298363, 43.320961>,  <38.244362, 36.473461, 43.258419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092609, 36.298363, 43.320961>,  <37.839687, 36.006535, 43.425201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092609, 36.298363, 43.320961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127305, 0.233959, 0.963876,
		0.764186, -0.642642, 0.055056,
		0.632308, 0.729572, -0.260599,
		38.282303, 36.517235, 43.242783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285633, 35.981544, 43.895306>,  <37.839687, 36.006535, 43.425201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285633, 35.981544, 43.895306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376320, 36.338451, 43.739124>,  <38.430733, 36.552597, 43.645416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.376320, 36.338451, 43.739124>,  <38.285633, 35.981544, 43.895306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376320, 36.338451, 43.739124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298089, 0.318088, 0.899979,
		0.927224, -0.320427, -0.193861,
		0.226713, 0.892270, -0.390455,
		38.444332, 36.606133, 43.621986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011478, 36.120518, 44.187008>,  <38.285633, 35.981544, 43.895306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011478, 36.120518, 44.187008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874859, 36.477203, 44.068226>,  <38.792885, 36.691216, 43.996956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874859, 36.477203, 44.068226>,  <39.011478, 36.120518, 44.187008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874859, 36.477203, 44.068226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379480, 0.419895, 0.824429,
		0.859847, 0.168900, -0.481806,
		-0.341554, 0.891718, -0.296951,
		38.772392, 36.744720, 43.979141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579117, 36.661850, 44.315311>,  <39.011478, 36.120518, 44.187008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579117, 36.661850, 44.315311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224174, 36.842686, 44.279041>,  <39.011211, 36.951187, 44.257278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224174, 36.842686, 44.279041>,  <39.579117, 36.661850, 44.315311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224174, 36.842686, 44.279041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164659, 0.494373, 0.853512,
		0.430687, 0.742436, -0.513124,
		-0.887353, 0.452087, -0.090671,
		38.957970, 36.978313, 44.251839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676113, 37.348743, 44.355099>,  <39.579117, 36.661850, 44.315311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676113, 37.348743, 44.355099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289532, 37.319801, 44.453674>,  <39.057583, 37.302437, 44.512821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.289532, 37.319801, 44.453674>,  <39.676113, 37.348743, 44.355099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289532, 37.319801, 44.453674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136476, 0.668174, 0.731381,
		-0.217581, 0.740479, -0.635885,
		-0.966454, -0.072352, 0.246439,
		38.999596, 37.298096, 44.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.459263, 38.021709, 43.834095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854462, 38.083393, 43.830296>,  <35.091579, 38.120403, 43.828014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854462, 38.083393, 43.830296>,  <34.459263, 38.021709, 43.834095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854462, 38.083393, 43.830296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036628, -0.293536, -0.955246,
		-0.150093, 0.943429, -0.295660,
		0.987993, 0.154205, -0.009502,
		35.150860, 38.129654, 43.827446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702988, 38.549221, 43.329075>,  <34.459263, 38.021709, 43.834095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702988, 38.549221, 43.329075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049709, 38.358723, 43.388180>,  <35.257744, 38.244423, 43.423641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.049709, 38.358723, 43.388180>,  <34.702988, 38.549221, 43.329075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049709, 38.358723, 43.388180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140953, -0.050225, -0.988742,
		0.478305, 0.877877, 0.023592,
		0.866808, -0.476246, 0.147762,
		35.309753, 38.215851, 43.432507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173328, 38.820522, 42.852661>,  <34.702988, 38.549221, 43.329075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173328, 38.820522, 42.852661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342155, 38.467690, 42.936375>,  <35.443451, 38.255989, 42.986603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342155, 38.467690, 42.936375>,  <35.173328, 38.820522, 42.852661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342155, 38.467690, 42.936375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318188, -0.072032, -0.945287,
		0.848892, 0.465564, 0.250264,
		0.422065, -0.882078, 0.209284,
		35.468777, 38.203068, 42.999161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744610, 38.771805, 42.469830>,  <35.173328, 38.820522, 42.852661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744610, 38.771805, 42.469830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727722, 38.379848, 42.547832>,  <35.717590, 38.144676, 42.594635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727722, 38.379848, 42.547832>,  <35.744610, 38.771805, 42.469830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727722, 38.379848, 42.547832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191455, -0.199501, -0.961012,
		0.980593, -0.003241, 0.196028,
		-0.042223, -0.979892, 0.195009,
		35.715054, 38.085880, 42.606335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340771, 38.423237, 42.242275>,  <35.744610, 38.771805, 42.469830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340771, 38.423237, 42.242275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.050137, 38.149529, 42.267067>,  <35.875755, 37.985302, 42.281940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.050137, 38.149529, 42.267067>,  <36.340771, 38.423237, 42.242275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050137, 38.149529, 42.267067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100233, -0.194804, -0.975708,
		0.679724, -0.702724, 0.210129,
		-0.726587, -0.684274, 0.061976,
		35.832161, 37.944248, 42.285660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567013, 37.856361, 41.777203>,  <36.340771, 38.423237, 42.242275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567013, 37.856361, 41.777203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.178879, 37.774204, 41.828213>,  <35.945999, 37.724911, 41.858818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.178879, 37.774204, 41.828213>,  <36.567013, 37.856361, 41.777203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178879, 37.774204, 41.828213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028249, -0.427555, -0.903548,
		0.240105, -0.880347, 0.409070,
		-0.970336, -0.205391, 0.127527,
		35.887779, 37.712585, 41.866470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492363, 37.162582, 41.570171>,  <36.567013, 37.856361, 41.777203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492363, 37.162582, 41.570171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.121151, 37.311481, 41.564629>,  <35.898426, 37.400822, 41.561302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.121151, 37.311481, 41.564629>,  <36.492363, 37.162582, 41.570171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121151, 37.311481, 41.564629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218249, -0.573497, -0.789600,
		-0.301879, -0.729746, 0.613465,
		-0.928029, 0.372251, -0.013860,
		35.842743, 37.423157, 41.560471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065544, 36.554920, 41.501202>,  <36.492363, 37.162582, 41.570171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065544, 36.554920, 41.501202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811970, 36.837631, 41.375610>,  <35.659824, 37.007259, 41.300255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811970, 36.837631, 41.375610>,  <36.065544, 36.554920, 41.501202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811970, 36.837631, 41.375610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257046, -0.575451, -0.776391,
		-0.729416, -0.411480, 0.546477,
		-0.633940, 0.706781, -0.313974,
		35.621788, 37.049667, 41.281418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465370, 36.197861, 41.295158>,  <36.065544, 36.554920, 41.501202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465370, 36.197861, 41.295158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464523, 36.560360, 41.126064>,  <35.464016, 36.777859, 41.024609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464523, 36.560360, 41.126064>,  <35.465370, 36.197861, 41.295158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464523, 36.560360, 41.126064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317497, -0.401469, -0.859080,
		-0.948257, 0.132398, 0.288582,
		-0.002117, 0.906253, -0.422731,
		35.463890, 36.832237, 40.999245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763874, 36.236343, 41.004215>,  <35.465370, 36.197861, 41.295158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763874, 36.236343, 41.004215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999413, 36.491299, 40.805420>,  <35.140736, 36.644272, 40.686142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.999413, 36.491299, 40.805420>,  <34.763874, 36.236343, 41.004215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999413, 36.491299, 40.805420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256407, -0.435818, -0.862739,
		-0.766497, 0.635450, -0.093198,
		0.588844, 0.637390, -0.496987,
		35.176067, 36.682514, 40.656322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351570, 36.627201, 40.500191>,  <34.763874, 36.236343, 41.004215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351570, 36.627201, 40.500191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722755, 36.658833, 40.354523>,  <34.945469, 36.677811, 40.267120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722755, 36.658833, 40.354523>,  <34.351570, 36.627201, 40.500191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722755, 36.658833, 40.354523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342389, -0.204887, -0.916947,
		-0.147128, 0.975586, -0.163052,
		0.927967, 0.079081, -0.364174,
		35.001144, 36.682556, 40.245270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322968, 37.015450, 39.852497>,  <34.351570, 36.627201, 40.500191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322968, 37.015450, 39.852497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665749, 36.809937, 39.836159>,  <34.871418, 36.686630, 39.826355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665749, 36.809937, 39.836159>,  <34.322968, 37.015450, 39.852497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665749, 36.809937, 39.836159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066115, -0.030984, -0.997331,
		0.511142, 0.857363, -0.060521,
		0.856949, -0.513779, -0.040847,
		34.922832, 36.655804, 39.823906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625984, 37.246338, 39.239986>,  <34.322968, 37.015450, 39.852497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625984, 37.246338, 39.239986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777325, 36.883186, 39.312210>,  <34.868130, 36.665295, 39.355545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777325, 36.883186, 39.312210>,  <34.625984, 37.246338, 39.239986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777325, 36.883186, 39.312210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088963, -0.229824, -0.969158,
		0.921376, 0.350622, -0.167723,
		0.378355, -0.907879, 0.180562,
		34.890831, 36.610821, 39.366379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804001, 37.023861, 38.610374>,  <34.625984, 37.246338, 39.239986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804001, 37.023861, 38.610374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.870277, 36.678692, 38.801331>,  <34.910042, 36.471588, 38.915905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.870277, 36.678692, 38.801331>,  <34.804001, 37.023861, 38.610374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870277, 36.678692, 38.801331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089343, -0.495228, -0.864157,
		0.982122, 0.100532, -0.159152,
		0.165692, -0.862927, 0.477393,
		34.919987, 36.419815, 38.944550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548695, 37.288250, 38.512592>,  <34.804001, 37.023861, 38.610374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548695, 37.288250, 38.512592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549053, 37.647133, 38.335953>,  <35.549271, 37.862465, 38.229969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.549053, 37.647133, 38.335953>,  <35.548695, 37.288250, 38.512592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549053, 37.647133, 38.335953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160909, 0.435718, 0.885584,
		0.986969, -0.071853, -0.143978,
		0.000898, 0.897211, -0.441602,
		35.549324, 37.916298, 38.203472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849930, 37.620468, 38.949219>,  <35.548695, 37.288250, 38.512592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849930, 37.620468, 38.949219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.705643, 37.926971, 38.736530>,  <35.619068, 38.110874, 38.608917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.705643, 37.926971, 38.736530>,  <35.849930, 37.620468, 38.949219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705643, 37.926971, 38.736530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116253, 0.602594, 0.789535,
		0.925401, 0.222987, -0.306448,
		-0.360720, 0.766262, -0.531718,
		35.597427, 38.156849, 38.577015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298370, 38.196903, 39.093269>,  <35.849930, 37.620468, 38.949219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298370, 38.196903, 39.093269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.942165, 38.341797, 38.983162>,  <35.728443, 38.428734, 38.917099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.942165, 38.341797, 38.983162>,  <36.298370, 38.196903, 39.093269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942165, 38.341797, 38.983162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035416, 0.658395, 0.751838,
		0.453575, 0.659774, -0.599139,
		-0.890514, 0.362234, -0.275265,
		35.675011, 38.450466, 38.900581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396729, 39.054558, 39.108791>,  <36.298370, 38.196903, 39.093269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396729, 39.054558, 39.108791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005291, 38.972408, 39.113968>,  <35.770428, 38.923119, 39.117073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.005291, 38.972408, 39.113968>,  <36.396729, 39.054558, 39.108791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005291, 38.972408, 39.113968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124502, 0.640956, 0.757413,
		-0.163846, 0.739592, -0.652808,
		-0.978598, -0.205375, 0.012937,
		35.711712, 38.910797, 39.117847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019165, 39.717449, 39.105778>,  <36.396729, 39.054558, 39.108791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019165, 39.717449, 39.105778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759045, 39.460842, 39.268536>,  <35.602974, 39.306877, 39.366192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.759045, 39.460842, 39.268536>,  <36.019165, 39.717449, 39.105778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759045, 39.460842, 39.268536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259481, 0.690973, 0.674705,
		-0.713990, 0.333178, -0.615801,
		-0.650298, -0.641521, 0.406894,
		35.563953, 39.268387, 39.390602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521446, 40.201466, 39.214993>,  <36.019165, 39.717449, 39.105778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521446, 40.201466, 39.214993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423473, 39.887421, 39.442535>,  <35.364689, 39.698994, 39.579060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423473, 39.887421, 39.442535>,  <35.521446, 40.201466, 39.214993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423473, 39.887421, 39.442535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163081, 0.611733, 0.774072,
		-0.955725, 0.096828, -0.277873,
		-0.244936, -0.785116, 0.568858,
		35.349991, 39.651886, 39.613194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983059, 40.357067, 39.663990>,  <35.521446, 40.201466, 39.214993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983059, 40.357067, 39.663990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112289, 40.038361, 39.868259>,  <35.189827, 39.847137, 39.990822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112289, 40.038361, 39.868259>,  <34.983059, 40.357067, 39.663990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112289, 40.038361, 39.868259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206820, 0.467121, 0.859665,
		-0.923496, -0.383356, -0.013870,
		0.323078, -0.796766, 0.510670,
		35.209213, 39.799332, 40.021461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461609, 40.234283, 40.242779>,  <34.983059, 40.357067, 39.663990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461609, 40.234283, 40.242779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802948, 40.050053, 40.340485>,  <35.007751, 39.939514, 40.399109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802948, 40.050053, 40.340485>,  <34.461609, 40.234283, 40.242779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802948, 40.050053, 40.340485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086320, 0.337247, 0.937451,
		-0.514151, -0.821054, 0.248031,
		0.853345, -0.460581, 0.244269,
		35.058952, 39.911877, 40.413765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393116, 39.797836, 40.852806>,  <34.461609, 40.234283, 40.242779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393116, 39.797836, 40.852806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773048, 39.922832, 40.858139>,  <35.001007, 39.997829, 40.861340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.773048, 39.922832, 40.858139>,  <34.393116, 39.797836, 40.852806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773048, 39.922832, 40.858139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182255, 0.518330, 0.835534,
		0.254188, -0.796042, 0.549277,
		0.949827, 0.312491, 0.013329,
		35.057995, 40.016579, 40.862137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529823, 40.045650, 41.530251>,  <34.393116, 39.797836, 40.852806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529823, 40.045650, 41.530251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881554, 40.172188, 41.387867>,  <35.092590, 40.248112, 41.302437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881554, 40.172188, 41.387867>,  <34.529823, 40.045650, 41.530251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881554, 40.172188, 41.387867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137227, 0.547450, 0.825511,
		0.456018, -0.774741, 0.437976,
		0.879327, 0.316345, -0.355962,
		35.145351, 40.267094, 41.281078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056324, 39.825878, 41.948280>,  <34.529823, 40.045650, 41.530251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056324, 39.825878, 41.948280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.196030, 40.147781, 41.756287>,  <35.279854, 40.340923, 41.641090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.196030, 40.147781, 41.756287>,  <35.056324, 39.825878, 41.948280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196030, 40.147781, 41.756287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174863, 0.447267, 0.877140,
		0.920564, -0.390284, 0.015492,
		0.349263, 0.804755, -0.479984,
		35.300808, 40.389206, 41.612289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677197, 40.016895, 42.176960>,  <35.056324, 39.825878, 41.948280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677197, 40.016895, 42.176960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551933, 40.357201, 42.008137>,  <35.476776, 40.561382, 41.906841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.551933, 40.357201, 42.008137>,  <35.677197, 40.016895, 42.176960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551933, 40.357201, 42.008137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070063, 0.463897, 0.883114,
		0.947114, 0.246982, -0.204879,
		-0.313156, 0.850764, -0.422059,
		35.457985, 40.612431, 41.881519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235607, 40.453289, 42.374592>,  <35.677197, 40.016895, 42.176960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235607, 40.453289, 42.374592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898457, 40.646015, 42.278748>,  <35.696167, 40.761650, 42.221241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.898457, 40.646015, 42.278748>,  <36.235607, 40.453289, 42.374592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898457, 40.646015, 42.278748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044472, 0.381387, 0.923345,
		0.536261, 0.788925, -0.300036,
		-0.842880, 0.481811, -0.239608,
		35.645592, 40.790558, 42.206863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303596, 41.014080, 42.760872>,  <36.235607, 40.453289, 42.374592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303596, 41.014080, 42.760872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913094, 41.045025, 42.679935>,  <35.678791, 41.063591, 42.631374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913094, 41.045025, 42.679935>,  <36.303596, 41.014080, 42.760872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913094, 41.045025, 42.679935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150617, 0.428917, 0.890699,
		0.155696, 0.900025, -0.407079,
		-0.976255, 0.077365, -0.202340,
		35.620216, 41.068233, 42.619232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825062, 41.628498, 42.642967>,  <36.303596, 41.014080, 42.760872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825062, 41.628498, 42.642967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155231, 41.532352, 42.847279>,  <37.353333, 41.474667, 42.969864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155231, 41.532352, 42.847279>,  <36.825062, 41.628498, 42.642967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155231, 41.532352, 42.847279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398187, -0.393463, -0.828634,
		0.400145, 0.887363, -0.229067,
		0.825428, -0.240362, 0.510778,
		37.402859, 41.460243, 43.000511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368645, 41.986271, 42.297794>,  <36.825062, 41.628498, 42.642967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368645, 41.986271, 42.297794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477768, 41.659317, 42.500751>,  <37.543243, 41.463142, 42.622528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477768, 41.659317, 42.500751>,  <37.368645, 41.986271, 42.297794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477768, 41.659317, 42.500751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601938, -0.266397, -0.752797,
		0.750496, 0.510793, 0.419340,
		0.272813, -0.817388, 0.507395,
		37.559612, 41.414101, 42.652969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040886, 41.946262, 42.087677>,  <37.368645, 41.986271, 42.297794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040886, 41.946262, 42.087677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962322, 41.602730, 42.276917>,  <37.915184, 41.396610, 42.390461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.962322, 41.602730, 42.276917>,  <38.040886, 41.946262, 42.087677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962322, 41.602730, 42.276917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472926, -0.505641, -0.721573,
		0.858933, 0.082022, 0.505476,
		-0.196405, -0.858836, 0.473102,
		37.903400, 41.345078, 42.418846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700470, 41.643723, 42.097130>,  <38.040886, 41.946262, 42.087677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700470, 41.643723, 42.097130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422016, 41.357883, 42.124664>,  <38.254944, 41.186378, 42.141186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422016, 41.357883, 42.124664>,  <38.700470, 41.643723, 42.097130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422016, 41.357883, 42.124664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508708, -0.558670, -0.655060,
		0.506564, -0.420993, 0.752435,
		-0.696139, -0.714599, 0.068840,
		38.213173, 41.143505, 42.145317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067547, 41.147812, 41.842094>,  <38.700470, 41.643723, 42.097130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067547, 41.147812, 41.842094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703499, 40.982899, 41.858627>,  <38.485069, 40.883953, 41.868546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703499, 40.982899, 41.858627>,  <39.067547, 41.147812, 41.842094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703499, 40.982899, 41.858627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280396, -0.686264, -0.671133,
		0.305059, -0.599222, 0.740184,
		-0.910120, -0.412279, 0.041332,
		38.430462, 40.859215, 41.871025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143032, 40.401524, 42.058750>,  <39.067547, 41.147812, 41.842094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143032, 40.401524, 42.058750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834034, 40.457886, 41.811073>,  <38.648636, 40.491703, 41.662468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.834034, 40.457886, 41.811073>,  <39.143032, 40.401524, 42.058750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834034, 40.457886, 41.811073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409784, -0.634265, -0.655580,
		-0.485106, -0.760167, 0.432225,
		-0.772496, 0.140906, -0.619190,
		38.602287, 40.500156, 41.625317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201023, 39.816700, 41.720970>,  <39.143032, 40.401524, 42.058750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201023, 39.816700, 41.720970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.926601, 40.007420, 41.501156>,  <38.761948, 40.121853, 41.369267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.926601, 40.007420, 41.501156>,  <39.201023, 39.816700, 41.720970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926601, 40.007420, 41.501156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221297, -0.582783, -0.781916,
		-0.693079, -0.658047, 0.294305,
		-0.686053, 0.476801, -0.549538,
		38.720787, 40.150459, 41.336296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618069, 39.401344, 41.546013>,  <39.201023, 39.816700, 41.720970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618069, 39.401344, 41.546013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.644688, 39.685535, 41.265785>,  <38.660660, 39.856049, 41.097649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.644688, 39.685535, 41.265785>,  <38.618069, 39.401344, 41.546013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644688, 39.685535, 41.265785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093345, -0.703475, -0.704562,
		-0.993407, -0.018508, -0.113134,
		0.066547, 0.710478, -0.700566,
		38.664650, 39.898678, 41.055614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167282, 39.095749, 41.005672>,  <38.618069, 39.401344, 41.546013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167282, 39.095749, 41.005672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415581, 39.361961, 40.839909>,  <38.564560, 39.521690, 40.740448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.415581, 39.361961, 40.839909>,  <38.167282, 39.095749, 41.005672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415581, 39.361961, 40.839909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168088, -0.629264, -0.758797,
		-0.765778, 0.401366, -0.502484,
		0.620750, 0.665531, -0.414412,
		38.601807, 39.561623, 40.715584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010395, 38.957672, 40.331676>,  <38.167282, 39.095749, 41.005672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010395, 38.957672, 40.331676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348347, 39.171532, 40.324505>,  <38.551117, 39.299847, 40.320202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348347, 39.171532, 40.324505>,  <38.010395, 38.957672, 40.331676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348347, 39.171532, 40.324505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298745, -0.499358, -0.813260,
		-0.443763, 0.681754, -0.581624,
		0.844882, 0.534653, -0.017926,
		38.601810, 39.331928, 40.319126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110645, 39.387642, 39.655098>,  <38.010395, 38.957672, 40.331676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110645, 39.387642, 39.655098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470448, 39.339760, 39.823170>,  <38.686329, 39.311031, 39.924015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470448, 39.339760, 39.823170>,  <38.110645, 39.387642, 39.655098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470448, 39.339760, 39.823170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334414, -0.430266, -0.838474,
		0.281157, 0.894731, -0.346999,
		0.899510, -0.119701, 0.420183,
		38.740299, 39.303848, 39.949226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554852, 39.558197, 39.128265>,  <38.110645, 39.387642, 39.655098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554852, 39.558197, 39.128265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783760, 39.350727, 39.382343>,  <38.921104, 39.226246, 39.534790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783760, 39.350727, 39.382343>,  <38.554852, 39.558197, 39.128265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783760, 39.350727, 39.382343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482904, -0.412890, -0.772221,
		0.662800, 0.748662, 0.014186,
		0.572275, -0.518679, 0.635195,
		38.955444, 39.195122, 39.572903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282658, 39.758354, 39.020664>,  <38.554852, 39.558197, 39.128265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282658, 39.758354, 39.020664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266464, 39.389027, 39.173420>,  <39.256748, 39.167431, 39.265076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266464, 39.389027, 39.173420>,  <39.282658, 39.758354, 39.020664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266464, 39.389027, 39.173420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642685, -0.316711, -0.697603,
		0.765060, 0.217197, 0.606224,
		-0.040480, -0.923320, 0.381892,
		39.254318, 39.112030, 39.287987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898392, 39.528656, 38.660877>,  <39.282658, 39.758354, 39.020664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898392, 39.528656, 38.660877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.716358, 39.207687, 38.815292>,  <39.607136, 39.015106, 38.907940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.716358, 39.207687, 38.815292>,  <39.898392, 39.528656, 38.660877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716358, 39.207687, 38.815292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481255, -0.586398, -0.651560,
		0.749193, -0.110736, 0.653029,
		-0.455086, -0.802418, 0.386034,
		39.579834, 38.966961, 38.931103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.381990, 34.818661, 42.487099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995918, 34.916126, 42.449039>,  <26.764275, 34.974606, 42.426205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.995918, 34.916126, 42.449039>,  <27.381990, 34.818661, 42.487099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995918, 34.916126, 42.449039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130407, 0.132899, -0.982513,
		-0.226757, -0.960711, -0.160047,
		-0.965181, 0.243663, -0.095148,
		26.706364, 34.989223, 42.420494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891190, 34.382278, 42.135075>,  <27.381990, 34.818661, 42.487099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891190, 34.382278, 42.135075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734291, 34.745914, 42.078934>,  <26.640152, 34.964096, 42.045250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.734291, 34.745914, 42.078934>,  <26.891190, 34.382278, 42.135075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734291, 34.745914, 42.078934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136467, -0.208407, -0.968475,
		-0.909681, -0.360726, 0.205807,
		-0.392246, 0.909089, -0.140356,
		26.616617, 35.018642, 42.036827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371054, 34.384922, 41.652561>,  <26.891190, 34.382278, 42.135075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371054, 34.384922, 41.652561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494404, 34.765350, 41.644863>,  <26.568415, 34.993607, 41.640244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494404, 34.765350, 41.644863>,  <26.371054, 34.384922, 41.652561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494404, 34.765350, 41.644863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010706, -0.023698, -0.999662,
		-0.951204, 0.308066, -0.017490,
		0.308376, 0.951070, -0.019244,
		26.586916, 35.050671, 41.639091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825375, 34.713238, 41.231667>,  <26.371054, 34.384922, 41.652561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825375, 34.713238, 41.231667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.141863, 34.957825, 41.235027>,  <26.331757, 35.104576, 41.237041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.141863, 34.957825, 41.235027>,  <25.825375, 34.713238, 41.231667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141863, 34.957825, 41.235027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053968, -0.056139, -0.996963,
		-0.609143, 0.789272, -0.077418,
		0.791222, 0.611472, 0.008399,
		26.379229, 35.141266, 41.237549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742172, 35.253376, 40.685646>,  <25.825375, 34.713238, 41.231667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742172, 35.253376, 40.685646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136814, 35.235535, 40.748409>,  <26.373600, 35.224831, 40.786068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136814, 35.235535, 40.748409>,  <25.742172, 35.253376, 40.685646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136814, 35.235535, 40.748409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138160, -0.282883, -0.949152,
		0.086719, 0.958117, -0.272932,
		0.986606, -0.044601, 0.156904,
		26.432796, 35.222153, 40.795479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104359, 35.728123, 40.191818>,  <25.742172, 35.253376, 40.685646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104359, 35.728123, 40.191818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383204, 35.459084, 40.291138>,  <26.550510, 35.297661, 40.350731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383204, 35.459084, 40.291138>,  <26.104359, 35.728123, 40.191818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383204, 35.459084, 40.291138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161152, -0.190470, -0.968376,
		0.698617, 0.715080, -0.024389,
		0.697112, -0.672593, 0.248302,
		26.592337, 35.257305, 40.365627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461926, 35.817009, 39.650242>,  <26.104359, 35.728123, 40.191818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461926, 35.817009, 39.650242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.600430, 35.478825, 39.812870>,  <26.683533, 35.275913, 39.910446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.600430, 35.478825, 39.812870>,  <26.461926, 35.817009, 39.650242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600430, 35.478825, 39.812870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178672, -0.366019, -0.913294,
		0.920966, 0.388882, 0.024322,
		0.346262, -0.845459, 0.406574,
		26.704308, 35.225185, 39.934841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038607, 35.636559, 39.269398>,  <26.461926, 35.817009, 39.650242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038607, 35.636559, 39.269398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938585, 35.290771, 39.443832>,  <26.878572, 35.083298, 39.548492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.938585, 35.290771, 39.443832>,  <27.038607, 35.636559, 39.269398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938585, 35.290771, 39.443832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125332, -0.475504, -0.870740,
		0.960086, -0.163077, 0.227248,
		-0.250055, -0.864466, 0.436086,
		26.863569, 35.031433, 39.574657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517324, 35.186100, 38.997952>,  <27.038607, 35.636559, 39.269398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517324, 35.186100, 38.997952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.243887, 34.923542, 39.125603>,  <27.079824, 34.766006, 39.202194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.243887, 34.923542, 39.125603>,  <27.517324, 35.186100, 38.997952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243887, 34.923542, 39.125603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108837, -0.524029, -0.844718,
		0.721704, -0.542709, 0.429662,
		-0.683592, -0.656400, 0.319127,
		27.038809, 34.726624, 39.221340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757336, 34.399296, 38.920040>,  <27.517324, 35.186100, 38.997952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757336, 34.399296, 38.920040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358555, 34.402004, 38.951122>,  <27.119286, 34.403629, 38.969772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358555, 34.402004, 38.951122>,  <27.757336, 34.399296, 38.920040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358555, 34.402004, 38.951122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060711, -0.692867, -0.718505,
		0.048977, -0.721034, 0.691167,
		-0.996953, 0.006772, 0.077709,
		27.059469, 34.404037, 38.974434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515127, 33.787792, 38.595211>,  <27.757336, 34.399296, 38.920040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515127, 33.787792, 38.595211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187054, 34.016090, 38.579468>,  <26.990210, 34.153069, 38.570023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.187054, 34.016090, 38.579468>,  <27.515127, 33.787792, 38.595211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187054, 34.016090, 38.579468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341058, -0.543026, -0.767334,
		-0.459319, -0.615936, 0.640038,
		-0.820186, 0.570741, -0.039352,
		26.940998, 34.187313, 38.567661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931356, 33.329445, 38.613281>,  <27.515127, 33.787792, 38.595211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931356, 33.329445, 38.613281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806021, 33.678516, 38.463482>,  <26.730820, 33.887959, 38.373600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.806021, 33.678516, 38.463482>,  <26.931356, 33.329445, 38.613281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806021, 33.678516, 38.463482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416612, -0.480709, -0.771591,
		-0.853377, -0.085748, 0.514194,
		-0.313341, 0.872677, -0.374503,
		26.712019, 33.940319, 38.351131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229191, 33.191143, 38.306271>,  <26.931356, 33.329445, 38.613281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229191, 33.191143, 38.306271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341227, 33.541107, 38.148243>,  <26.408449, 33.751087, 38.053429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.341227, 33.541107, 38.148243>,  <26.229191, 33.191143, 38.306271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341227, 33.541107, 38.148243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479485, -0.229022, -0.847138,
		-0.831650, 0.426704, 0.355360,
		0.280092, 0.874912, -0.395065,
		26.425255, 33.803581, 38.029724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598547, 33.454140, 38.007832>,  <26.229191, 33.191143, 38.306271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598547, 33.454140, 38.007832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.912130, 33.614944, 37.818604>,  <26.100281, 33.711430, 37.705067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.912130, 33.614944, 37.818604>,  <25.598547, 33.454140, 38.007832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912130, 33.614944, 37.818604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438936, -0.179950, -0.880314,
		-0.439027, 0.897777, 0.035385,
		0.783958, 0.402014, -0.473069,
		26.147318, 33.735550, 37.676682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255783, 33.623280, 37.390320>,  <25.598547, 33.454140, 38.007832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255783, 33.623280, 37.390320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648651, 33.659264, 37.324295>,  <25.884373, 33.680855, 37.284679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648651, 33.659264, 37.324295>,  <25.255783, 33.623280, 37.390320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648651, 33.659264, 37.324295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149543, -0.158168, -0.976022,
		-0.113912, 0.983305, -0.141895,
		0.982171, 0.089961, -0.165064,
		25.943302, 33.686253, 37.274776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319235, 34.155293, 36.883480>,  <25.255783, 33.623280, 37.390320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319235, 34.155293, 36.883480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.638153, 33.915001, 36.860023>,  <25.829504, 33.770824, 36.845951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.638153, 33.915001, 36.860023>,  <25.319235, 34.155293, 36.883480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638153, 33.915001, 36.860023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151038, -0.104505, -0.982988,
		0.584384, 0.792591, -0.174055,
		0.797297, -0.600731, -0.058640,
		25.877342, 33.734783, 36.842430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616749, 34.245274, 36.184242>,  <25.319235, 34.155293, 36.883480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616749, 34.245274, 36.184242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784653, 33.906414, 36.314560>,  <25.885395, 33.703098, 36.392750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.784653, 33.906414, 36.314560>,  <25.616749, 34.245274, 36.184242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784653, 33.906414, 36.314560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167442, -0.280509, -0.945134,
		0.892058, 0.451279, 0.024103,
		0.419758, -0.847150, 0.325793,
		25.910580, 33.652267, 36.412296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170885, 34.051701, 35.829163>,  <25.616749, 34.245274, 36.184242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170885, 34.051701, 35.829163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.160929, 33.689091, 35.997730>,  <26.154955, 33.471523, 36.098869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.160929, 33.689091, 35.997730>,  <26.170885, 34.051701, 35.829163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160929, 33.689091, 35.997730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477623, -0.381106, -0.791602,
		0.878212, 0.181572, 0.442465,
		-0.024893, -0.906526, 0.421415,
		26.153461, 33.417133, 36.124153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835136, 33.689060, 35.682968>,  <26.170885, 34.051701, 35.829163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835136, 33.689060, 35.682968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526386, 33.443699, 35.749840>,  <26.341137, 33.296482, 35.789963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526386, 33.443699, 35.749840>,  <26.835136, 33.689060, 35.682968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526386, 33.443699, 35.749840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244876, -0.529506, -0.812194,
		0.586725, -0.585972, 0.558919,
		-0.771874, -0.613400, 0.167183,
		26.294825, 33.259678, 35.799995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053827, 32.994675, 35.440670>,  <26.835136, 33.689060, 35.682968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053827, 32.994675, 35.440670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655972, 32.955925, 35.455147>,  <26.417259, 32.932674, 35.463833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.655972, 32.955925, 35.455147>,  <27.053827, 32.994675, 35.440670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655972, 32.955925, 35.455147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018753, -0.513087, -0.858132,
		0.101701, -0.852852, 0.512153,
		-0.994638, -0.096877, 0.036188,
		26.357580, 32.926861, 35.466003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725416, 33.328003, 35.504261>,  <27.053827, 32.994675, 35.440670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725416, 33.328003, 35.504261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011848, 33.068497, 35.401237>,  <28.183708, 32.912792, 35.339424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011848, 33.068497, 35.401237>,  <27.725416, 33.328003, 35.504261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011848, 33.068497, 35.401237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256033, -0.099140, 0.961571,
		-0.649366, -0.754505, 0.095113,
		0.716080, -0.648763, -0.257557,
		28.226673, 32.873867, 35.323971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663507, 32.754578, 35.975571>,  <27.725416, 33.328003, 35.504261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663507, 32.754578, 35.975571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.036629, 32.766285, 35.831890>,  <28.260502, 32.773308, 35.745682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.036629, 32.766285, 35.831890>,  <27.663507, 32.754578, 35.975571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036629, 32.766285, 35.831890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360375, -0.067345, 0.930373,
		0.003038, -0.997300, -0.073366,
		0.932803, 0.029266, -0.359198,
		28.316469, 32.775063, 35.724133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946886, 32.261368, 36.343685>,  <27.663507, 32.754578, 35.975571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946886, 32.261368, 36.343685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258690, 32.459759, 36.190655>,  <28.445772, 32.578793, 36.098835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258690, 32.459759, 36.190655>,  <27.946886, 32.261368, 36.343685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258690, 32.459759, 36.190655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392620, 0.089024, 0.915382,
		0.488072, -0.863757, -0.125337,
		0.779510, 0.495982, -0.382578,
		28.492542, 32.608555, 36.075882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537334, 31.996222, 36.623734>,  <27.946886, 32.261368, 36.343685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537334, 31.996222, 36.623734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643044, 32.365768, 36.513008>,  <28.706469, 32.587498, 36.446571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643044, 32.365768, 36.513008>,  <28.537334, 31.996222, 36.623734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643044, 32.365768, 36.513008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317051, 0.187848, 0.929619,
		0.910846, -0.333436, -0.243271,
		0.264271, 0.923869, -0.276817,
		28.722324, 32.642929, 36.429962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079908, 32.073997, 37.013245>,  <28.537334, 31.996222, 36.623734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079908, 32.073997, 37.013245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968166, 32.441826, 36.902721>,  <28.901121, 32.662521, 36.836407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968166, 32.441826, 36.902721>,  <29.079908, 32.073997, 37.013245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968166, 32.441826, 36.902721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273299, 0.352012, 0.895207,
		0.920471, 0.174568, -0.349655,
		-0.279357, 0.919572, -0.276308,
		28.884359, 32.717697, 36.819828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615305, 32.488300, 37.207684>,  <29.079908, 32.073997, 37.013245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615305, 32.488300, 37.207684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317804, 32.754704, 37.184811>,  <29.139303, 32.914543, 37.171085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317804, 32.754704, 37.184811>,  <29.615305, 32.488300, 37.207684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317804, 32.754704, 37.184811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270641, 0.378246, 0.885259,
		0.611218, 0.642935, -0.461569,
		-0.743751, 0.666006, -0.057187,
		29.094679, 32.954506, 37.167656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900229, 32.984131, 37.403336>,  <29.615305, 32.488300, 37.207684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900229, 32.984131, 37.403336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510729, 33.055695, 37.459621>,  <29.277029, 33.098633, 37.493393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510729, 33.055695, 37.459621>,  <29.900229, 32.984131, 37.403336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510729, 33.055695, 37.459621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157309, 0.082178, 0.984124,
		0.164506, 0.980427, -0.108165,
		-0.973751, 0.178910, 0.140712,
		29.218603, 33.109367, 37.501835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785753, 33.532864, 37.879757>,  <29.900229, 32.984131, 37.403336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785753, 33.532864, 37.879757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412197, 33.390514, 37.893616>,  <29.188063, 33.305103, 37.901932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.412197, 33.390514, 37.893616>,  <29.785753, 33.532864, 37.879757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412197, 33.390514, 37.893616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099087, -0.164481, 0.981391,
		-0.343555, 0.919945, 0.188870,
		-0.933891, -0.355876, 0.034646,
		29.132030, 33.283752, 37.904011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415485, 33.996990, 38.378853>,  <29.785753, 33.532864, 37.879757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415485, 33.996990, 38.378853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.269800, 33.625069, 38.357655>,  <29.182388, 33.401917, 38.344936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.269800, 33.625069, 38.357655>,  <29.415485, 33.996990, 38.378853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269800, 33.625069, 38.357655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118524, -0.102718, 0.987624,
		-0.923743, 0.353424, 0.147615,
		-0.364213, -0.929807, -0.052996,
		29.160536, 33.346127, 38.341755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994392, 33.934521, 38.970753>,  <29.415485, 33.996990, 38.378853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994392, 33.934521, 38.970753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042109, 33.562035, 38.832993>,  <29.070738, 33.338543, 38.750336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042109, 33.562035, 38.832993>,  <28.994392, 33.934521, 38.970753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042109, 33.562035, 38.832993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022410, -0.344260, 0.938607,
		-0.992607, -0.119683, -0.020198,
		0.119289, -0.931215, -0.344396,
		29.077896, 33.282669, 38.729675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581171, 33.532307, 39.398445>,  <28.994392, 33.934521, 38.970753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581171, 33.532307, 39.398445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816801, 33.258202, 39.227142>,  <28.958179, 33.093739, 39.124359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.816801, 33.258202, 39.227142>,  <28.581171, 33.532307, 39.398445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816801, 33.258202, 39.227142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000576, -0.529617, 0.848236,
		-0.808079, -0.499920, -0.311588,
		0.589073, -0.685263, -0.428261,
		28.993523, 33.052624, 39.098663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275158, 32.837360, 39.616684>,  <28.581171, 33.532307, 39.398445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275158, 32.837360, 39.616684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667559, 32.818352, 39.541451>,  <28.903000, 32.806946, 39.496311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.667559, 32.818352, 39.541451>,  <28.275158, 32.837360, 39.616684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667559, 32.818352, 39.541451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141928, -0.485132, 0.862846,
		-0.132244, -0.873149, -0.469173,
		0.981004, -0.047517, -0.188080,
		28.961861, 32.804096, 39.485027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.497494, 32.118816, 39.740704>,  <28.275158, 32.837360, 39.616684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.497494, 32.118816, 39.740704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803787, 32.374477, 39.769344>,  <28.987564, 32.527874, 39.786530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803787, 32.374477, 39.769344>,  <28.497494, 32.118816, 39.740704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803787, 32.374477, 39.769344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284578, -0.436551, 0.853486,
		0.576770, -0.633168, -0.516173,
		0.765736, 0.639157, 0.071604,
		29.033508, 32.566223, 39.790825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974846, 31.722954, 40.018539>,  <28.497494, 32.118816, 39.740704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974846, 31.722954, 40.018539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051037, 32.103878, 40.113884>,  <29.096752, 32.332432, 40.171093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051037, 32.103878, 40.113884>,  <28.974846, 31.722954, 40.018539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051037, 32.103878, 40.113884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286601, -0.286178, 0.914310,
		0.938924, -0.105841, -0.327444,
		0.190479, 0.952313, 0.238365,
		29.108181, 32.389572, 40.185394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262169, 31.701488, 40.639603>,  <28.974846, 31.722954, 40.018539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262169, 31.701488, 40.639603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222618, 32.099400, 40.629482>,  <29.198887, 32.338146, 40.623409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222618, 32.099400, 40.629482>,  <29.262169, 31.701488, 40.639603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222618, 32.099400, 40.629482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070729, 0.032384, 0.996970,
		0.992583, 0.096789, -0.073561,
		-0.098878, 0.994778, -0.025298,
		29.192955, 32.397835, 40.621891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737000, 31.967424, 41.176247>,  <29.262169, 31.701488, 40.639603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737000, 31.967424, 41.176247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445723, 32.228962, 41.094051>,  <29.270956, 32.385883, 41.044735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445723, 32.228962, 41.094051>,  <29.737000, 31.967424, 41.176247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445723, 32.228962, 41.094051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244996, 0.031683, 0.969006,
		0.640088, 0.755967, 0.137118,
		-0.728193, 0.653842, -0.205489,
		29.227264, 32.425114, 41.032406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855206, 32.464157, 41.659027>,  <29.737000, 31.967424, 41.176247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855206, 32.464157, 41.659027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.474272, 32.522236, 41.551712>,  <29.245712, 32.557083, 41.487324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.474272, 32.522236, 41.551712>,  <29.855206, 32.464157, 41.659027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474272, 32.522236, 41.551712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242529, 0.173090, 0.954578,
		0.185038, 0.974145, -0.129625,
		-0.952334, 0.145195, -0.268287,
		29.188572, 32.565796, 41.471226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651638, 33.124775, 41.959915>,  <29.855206, 32.464157, 41.659027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651638, 33.124775, 41.959915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308947, 32.931095, 41.888847>,  <29.103333, 32.814888, 41.846207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.308947, 32.931095, 41.888847>,  <29.651638, 33.124775, 41.959915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308947, 32.931095, 41.888847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304248, 0.196297, 0.932148,
		-0.416474, 0.852651, -0.315491,
		-0.856728, -0.484203, -0.177665,
		29.051928, 32.785835, 41.835548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217609, 33.528381, 42.272293>,  <29.651638, 33.124775, 41.959915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217609, 33.528381, 42.272293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994249, 33.198898, 42.232918>,  <28.860233, 33.001209, 42.209293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994249, 33.198898, 42.232918>,  <29.217609, 33.528381, 42.272293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994249, 33.198898, 42.232918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433630, 0.188658, 0.881120,
		-0.707216, 0.534705, -0.462532,
		-0.558400, -0.823710, -0.098442,
		28.826729, 32.951786, 42.203384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597549, 33.723263, 42.537308>,  <29.217609, 33.528381, 42.272293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597549, 33.723263, 42.537308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585211, 33.323528, 42.544991>,  <28.577806, 33.083687, 42.549599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585211, 33.323528, 42.544991>,  <28.597549, 33.723263, 42.537308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585211, 33.323528, 42.544991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514404, 0.032346, 0.856938,
		-0.856993, 0.016557, -0.515062,
		-0.030848, -0.999340, 0.019204,
		28.575956, 33.023727, 42.550751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956934, 33.612881, 42.667812>,  <28.597549, 33.723263, 42.537308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956934, 33.612881, 42.667812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129913, 33.263474, 42.757217>,  <28.233702, 33.053829, 42.810860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129913, 33.263474, 42.757217>,  <27.956934, 33.612881, 42.667812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129913, 33.263474, 42.757217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537370, -0.050625, 0.841826,
		-0.724032, -0.484157, -0.491293,
		0.432448, -0.873515, 0.223517,
		28.259647, 33.001419, 42.824272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423658, 33.118324, 42.791607>,  <27.956934, 33.612881, 42.667812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423658, 33.118324, 42.791607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756443, 32.998039, 42.978119>,  <27.956114, 32.925869, 43.090027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756443, 32.998039, 42.978119>,  <27.423658, 33.118324, 42.791607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756443, 32.998039, 42.978119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461569, 0.091237, 0.882400,
		-0.307892, -0.949340, -0.062894,
		0.831959, -0.300714, 0.466277,
		28.006031, 32.907825, 43.118004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.364712, 37.989979, 44.597462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091305, 37.745331, 44.756824>,  <38.927261, 37.598541, 44.852440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.091305, 37.745331, 44.756824>,  <39.364712, 37.989979, 44.597462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091305, 37.745331, 44.756824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089325, 0.611792, 0.785959,
		-0.724448, 0.501629, -0.472804,
		-0.683518, -0.611620, 0.398403,
		38.886250, 37.561844, 44.876347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963642, 38.485447, 44.878464>,  <39.364712, 37.989979, 44.597462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963642, 38.485447, 44.878464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853947, 38.132526, 45.031483>,  <38.788128, 37.920776, 45.123295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.853947, 38.132526, 45.031483>,  <38.963642, 38.485447, 44.878464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853947, 38.132526, 45.031483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277009, 0.453413, 0.847161,
		-0.920901, 0.126355, -0.368748,
		-0.274238, -0.882299, 0.382547,
		38.771675, 37.867836, 45.146248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353470, 38.610405, 45.295483>,  <38.963642, 38.485447, 44.878464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353470, 38.610405, 45.295483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.475487, 38.256752, 45.437046>,  <38.548698, 38.044559, 45.521984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.475487, 38.256752, 45.437046>,  <38.353470, 38.610405, 45.295483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475487, 38.256752, 45.437046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247951, 0.285071, 0.925881,
		-0.919494, -0.370185, -0.132264,
		0.305042, -0.884137, 0.353909,
		38.566998, 37.991512, 45.543217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832184, 38.411770, 45.884171>,  <38.353470, 38.610405, 45.295483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832184, 38.411770, 45.884171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176876, 38.212143, 45.920753>,  <38.383690, 38.092369, 45.942703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.176876, 38.212143, 45.920753>,  <37.832184, 38.411770, 45.884171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176876, 38.212143, 45.920753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040848, 0.247910, 0.967921,
		-0.505727, -0.830347, 0.234016,
		0.861726, -0.499063, 0.091457,
		38.435394, 38.062424, 45.948189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765224, 37.975040, 46.478638>,  <37.832184, 38.411770, 45.884171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765224, 37.975040, 46.478638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136387, 38.090462, 46.384209>,  <38.359085, 38.159714, 46.327549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.136387, 38.090462, 46.384209>,  <37.765224, 37.975040, 46.478638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136387, 38.090462, 46.384209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090274, 0.440475, 0.893215,
		0.361727, -0.850128, 0.382669,
		0.927903, 0.288555, -0.236076,
		38.414757, 38.177029, 46.313385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054516, 38.129948, 47.163086>,  <37.765224, 37.975040, 46.478638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054516, 38.129948, 47.163086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350262, 38.253159, 46.923599>,  <38.527710, 38.327084, 46.779907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.350262, 38.253159, 46.923599>,  <38.054516, 38.129948, 47.163086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350262, 38.253159, 46.923599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378175, 0.545722, 0.747777,
		0.557070, -0.779297, 0.286998,
		0.739362, 0.308029, -0.598717,
		38.572071, 38.345566, 46.743984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719139, 37.982098, 47.542351>,  <38.054516, 38.129948, 47.163086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719139, 37.982098, 47.542351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750847, 38.282852, 47.280544>,  <38.769871, 38.463303, 47.123463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750847, 38.282852, 47.280544>,  <38.719139, 37.982098, 47.542351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750847, 38.282852, 47.280544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219114, 0.627380, 0.747251,
		0.972474, -0.202647, -0.115016,
		0.079269, 0.751884, -0.654513,
		38.774628, 38.508419, 47.084190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327961, 38.375019, 47.724964>,  <38.719139, 37.982098, 47.542351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327961, 38.375019, 47.724964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048492, 38.585217, 47.530762>,  <38.880814, 38.711334, 47.414242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.048492, 38.585217, 47.530762>,  <39.327961, 38.375019, 47.724964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048492, 38.585217, 47.530762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057924, 0.634831, 0.770476,
		0.713096, 0.566431, -0.413099,
		-0.698670, 0.525495, -0.485505,
		38.838890, 38.742867, 47.385109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100330, 38.783779, 48.280193>,  <39.327961, 38.375019, 47.724964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100330, 38.783779, 48.280193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.010788, 38.958580, 47.931728>,  <38.957062, 39.063461, 47.722649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.010788, 38.958580, 47.931728>,  <39.100330, 38.783779, 48.280193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010788, 38.958580, 47.931728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141206, 0.869871, 0.472637,
		0.964340, 0.228814, -0.133015,
		-0.223852, 0.437000, -0.871161,
		38.943634, 39.089680, 47.670380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373096, 39.476562, 48.379864>,  <39.100330, 38.783779, 48.280193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373096, 39.476562, 48.379864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.098907, 39.494049, 48.089149>,  <38.934395, 39.504539, 47.914722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.098907, 39.494049, 48.089149>,  <39.373096, 39.476562, 48.379864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098907, 39.494049, 48.089149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323116, 0.876254, 0.357455,
		0.652470, 0.479861, -0.586528,
		-0.685477, 0.043712, -0.726781,
		38.893265, 39.507164, 47.871117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321331, 40.163486, 48.285122>,  <39.373096, 39.476562, 48.379864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321331, 40.163486, 48.285122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.989418, 40.011318, 48.121784>,  <38.790272, 39.920017, 48.023781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.989418, 40.011318, 48.121784>,  <39.321331, 40.163486, 48.285122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989418, 40.011318, 48.121784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525081, 0.780062, 0.340283,
		0.189081, 0.496773, -0.847033,
		-0.829782, -0.380420, -0.408341,
		38.740482, 39.897194, 47.999283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988064, 40.671360, 47.974430>,  <39.321331, 40.163486, 48.285122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988064, 40.671360, 47.974430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677464, 40.431618, 48.052223>,  <38.491104, 40.287773, 48.098900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.677464, 40.431618, 48.052223>,  <38.988064, 40.671360, 47.974430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677464, 40.431618, 48.052223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506720, 0.777410, 0.372651,
		-0.374545, 0.190814, -0.907363,
		-0.776500, -0.599353, 0.194486,
		38.444515, 40.251812, 48.110569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266281, 41.001274, 47.686012>,  <38.988064, 40.671360, 47.974430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266281, 41.001274, 47.686012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272377, 40.763088, 48.007305>,  <38.276035, 40.620178, 48.200081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272377, 40.763088, 48.007305>,  <38.266281, 41.001274, 47.686012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272377, 40.763088, 48.007305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410960, 0.728611, 0.547940,
		-0.911526, -0.338450, -0.233608,
		0.015241, -0.595465, 0.803237,
		38.276951, 40.584450, 48.248276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627899, 40.830589, 48.013699>,  <38.266281, 41.001274, 47.686012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627899, 40.830589, 48.013699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.936703, 40.859528, 48.266293>,  <38.121986, 40.876892, 48.417847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.936703, 40.859528, 48.266293>,  <37.627899, 40.830589, 48.013699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936703, 40.859528, 48.266293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440809, 0.776701, 0.449915,
		-0.457922, -0.625701, 0.631512,
		0.772008, 0.072350, 0.631482,
		38.168304, 40.881233, 48.455738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127815, 41.430546, 47.949944>,  <37.627899, 40.830589, 48.013699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127815, 41.430546, 47.949944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025562, 41.794769, 48.079887>,  <36.964211, 42.013302, 48.157852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025562, 41.794769, 48.079887>,  <37.127815, 41.430546, 47.949944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025562, 41.794769, 48.079887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230032, 0.383663, -0.894364,
		-0.939008, -0.153904, -0.307536,
		-0.255636, 0.910558, 0.324859,
		36.948872, 42.067936, 48.177345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651859, 41.716824, 47.503239>,  <37.127815, 41.430546, 47.949944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651859, 41.716824, 47.503239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801659, 42.038589, 47.687706>,  <36.891537, 42.231647, 47.798386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801659, 42.038589, 47.687706>,  <36.651859, 41.716824, 47.503239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801659, 42.038589, 47.687706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131265, 0.446354, -0.885177,
		-0.917889, 0.392031, 0.061567,
		0.374497, 0.804413, 0.461164,
		36.914009, 42.279915, 47.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257511, 42.170280, 47.275105>,  <36.651859, 41.716824, 47.503239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257511, 42.170280, 47.275105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593472, 42.353569, 47.391453>,  <36.795048, 42.463543, 47.461262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593472, 42.353569, 47.391453>,  <36.257511, 42.170280, 47.275105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593472, 42.353569, 47.391453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053046, 0.464048, -0.884220,
		-0.540143, 0.758086, 0.365447,
		0.839900, 0.458219, 0.290866,
		36.845440, 42.491035, 47.478714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198925, 42.826641, 47.018978>,  <36.257511, 42.170280, 47.275105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198925, 42.826641, 47.018978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588913, 42.802006, 47.104435>,  <36.822906, 42.787224, 47.155708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.588913, 42.802006, 47.104435>,  <36.198925, 42.826641, 47.018978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588913, 42.802006, 47.104435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218934, 0.433482, -0.874163,
		-0.038770, 0.899055, 0.436116,
		0.974969, -0.061589, 0.213639,
		36.881405, 42.783527, 47.168526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464317, 43.449944, 46.827091>,  <36.198925, 42.826641, 47.018978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464317, 43.449944, 46.827091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764965, 43.186760, 46.808537>,  <36.945354, 43.028851, 46.797405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764965, 43.186760, 46.808537>,  <36.464317, 43.449944, 46.827091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764965, 43.186760, 46.808537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168085, 0.259066, -0.951122,
		0.637821, 0.707085, 0.305313,
		0.751620, -0.657964, -0.046388,
		36.990452, 42.989372, 46.794621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948105, 43.738510, 46.354347>,  <36.464317, 43.449944, 46.827091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948105, 43.738510, 46.354347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027657, 43.346504, 46.353062>,  <37.075390, 43.111301, 46.352291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027657, 43.346504, 46.353062>,  <36.948105, 43.738510, 46.354347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027657, 43.346504, 46.353062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100699, 0.023694, -0.994635,
		0.974836, 0.197491, 0.103399,
		0.198881, -0.980018, -0.003211,
		37.087322, 43.052498, 46.352097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535381, 43.674278, 45.825859>,  <36.948105, 43.738510, 46.354347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535381, 43.674278, 45.825859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364288, 43.315178, 45.867973>,  <37.261631, 43.099716, 45.893242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.364288, 43.315178, 45.867973>,  <37.535381, 43.674278, 45.825859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364288, 43.315178, 45.867973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135161, -0.178697, -0.974576,
		0.893744, -0.402626, 0.197775,
		-0.427731, -0.897753, 0.105290,
		37.235970, 43.045853, 45.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021404, 43.196758, 45.569359>,  <37.535381, 43.674278, 45.825859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021404, 43.196758, 45.569359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676460, 42.994591, 45.557449>,  <37.469494, 42.873291, 45.550304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676460, 42.994591, 45.557449>,  <38.021404, 43.196758, 45.569359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676460, 42.994591, 45.557449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227437, -0.334185, -0.914655,
		0.452335, -0.795533, 0.403139,
		-0.862360, -0.505419, -0.029770,
		37.417751, 42.842964, 45.548519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223434, 42.671902, 45.165878>,  <38.021404, 43.196758, 45.569359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223434, 42.671902, 45.165878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830589, 42.600311, 45.189255>,  <37.594883, 42.557358, 45.203281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830589, 42.600311, 45.189255>,  <38.223434, 42.671902, 45.165878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830589, 42.600311, 45.189255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054591, -0.567751, -0.821388,
		0.180190, -0.803508, 0.567368,
		-0.982116, -0.178979, 0.058439,
		37.535954, 42.546616, 45.206787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109341, 41.933601, 45.366276>,  <38.223434, 42.671902, 45.165878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109341, 41.933601, 45.366276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.804714, 42.093124, 45.161938>,  <37.621937, 42.188839, 45.039333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.804714, 42.093124, 45.161938>,  <38.109341, 41.933601, 45.366276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804714, 42.093124, 45.161938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061991, -0.739798, -0.669967,
		-0.645109, -0.541895, 0.538687,
		-0.761571, 0.398809, -0.510843,
		37.576244, 42.212769, 45.008686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868515, 41.459236, 44.983677>,  <38.109341, 41.933601, 45.366276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868515, 41.459236, 44.983677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.674721, 41.751373, 44.791065>,  <37.558445, 41.926655, 44.675499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.674721, 41.751373, 44.791065>,  <37.868515, 41.459236, 44.983677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674721, 41.751373, 44.791065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027662, -0.562960, -0.826021,
		-0.874362, -0.386874, 0.292948,
		-0.484485, 0.730345, -0.481530,
		37.529377, 41.970478, 44.646606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287315, 41.129658, 44.671272>,  <37.868515, 41.459236, 44.983677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287315, 41.129658, 44.671272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329784, 41.475338, 44.474541>,  <37.355267, 41.682747, 44.356503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329784, 41.475338, 44.474541>,  <37.287315, 41.129658, 44.671272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329784, 41.475338, 44.474541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051309, -0.489200, -0.870661,
		-0.993023, 0.117673, -0.007597,
		0.106170, 0.864197, -0.491824,
		37.361637, 41.734596, 44.326992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740616, 41.211010, 44.101337>,  <37.287315, 41.129658, 44.671272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740616, 41.211010, 44.101337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.028507, 41.459492, 43.977337>,  <37.201241, 41.608582, 43.902939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.028507, 41.459492, 43.977337>,  <36.740616, 41.211010, 44.101337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028507, 41.459492, 43.977337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045243, -0.403600, -0.913816,
		-0.692782, 0.671723, -0.262376,
		0.719726, 0.621205, -0.309998,
		37.244427, 41.645855, 43.884338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551563, 41.510193, 43.437714>,  <36.740616, 41.211010, 44.101337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551563, 41.510193, 43.437714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950558, 41.519917, 43.464348>,  <37.189953, 41.525749, 43.480328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.950558, 41.519917, 43.464348>,  <36.551563, 41.510193, 43.437714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950558, 41.519917, 43.464348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070740, -0.400073, -0.913749,
		0.004428, 0.916161, -0.400786,
		0.997485, 0.024306, 0.066581,
		37.249802, 41.527206, 43.484322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026554, 41.782940, 43.015308>,  <36.551563, 41.510193, 43.437714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026554, 41.782940, 43.015308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729721, 41.516769, 42.982979>,  <35.551620, 41.357067, 42.963581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729721, 41.516769, 42.982979>,  <36.026554, 41.782940, 43.015308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729721, 41.516769, 42.982979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143868, 0.040349, 0.988774,
		-0.654691, 0.745376, -0.125675,
		-0.742080, -0.665422, -0.080819,
		35.507095, 41.317142, 42.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467999, 42.100842, 43.238155>,  <36.026554, 41.782940, 43.015308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467999, 42.100842, 43.238155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380642, 41.712372, 43.276363>,  <35.328228, 41.479290, 43.299290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380642, 41.712372, 43.276363>,  <35.467999, 42.100842, 43.238155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380642, 41.712372, 43.276363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135580, 0.127130, 0.982576,
		-0.966396, 0.201640, -0.159437,
		-0.218396, -0.971174, 0.095519,
		35.315125, 41.421021, 43.305019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012085, 42.040268, 43.834362>,  <35.467999, 42.100842, 43.238155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012085, 42.040268, 43.834362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086960, 41.651340, 43.778419>,  <35.131886, 41.417984, 43.744854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086960, 41.651340, 43.778419>,  <35.012085, 42.040268, 43.834362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086960, 41.651340, 43.778419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209958, -0.178689, 0.961243,
		-0.959624, -0.150568, -0.237594,
		0.187188, -0.972317, -0.139861,
		35.143116, 41.359646, 43.736462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395016, 41.629147, 44.024658>,  <35.012085, 42.040268, 43.834362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395016, 41.629147, 44.024658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714725, 41.390308, 44.051895>,  <34.906551, 41.247005, 44.068237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714725, 41.390308, 44.051895>,  <34.395016, 41.629147, 44.024658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714725, 41.390308, 44.051895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338539, -0.353741, 0.871928,
		-0.496539, -0.719961, -0.484877,
		0.799275, -0.597096, 0.068088,
		34.954510, 41.211182, 44.072323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162201, 40.949711, 44.208908>,  <34.395016, 41.629147, 44.024658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162201, 40.949711, 44.208908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545486, 40.957573, 44.323063>,  <34.775455, 40.962292, 44.391556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.545486, 40.957573, 44.323063>,  <34.162201, 40.949711, 44.208908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545486, 40.957573, 44.323063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263127, -0.330809, 0.906272,
		0.112224, -0.943493, -0.311812,
		0.958212, 0.019660, 0.285383,
		34.832951, 40.963470, 44.408676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186642, 40.407772, 44.657833>,  <34.162201, 40.949711, 44.208908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186642, 40.407772, 44.657833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522903, 40.613270, 44.726376>,  <34.724659, 40.736568, 44.767502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.522903, 40.613270, 44.726376>,  <34.186642, 40.407772, 44.657833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522903, 40.613270, 44.726376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092287, -0.175892, 0.980074,
		0.533649, -0.839719, -0.100452,
		0.840656, 0.513745, 0.171359,
		34.775101, 40.767395, 44.777782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621643, 39.947109, 44.992386>,  <34.186642, 40.407772, 44.657833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621643, 39.947109, 44.992386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755184, 40.317692, 45.061909>,  <34.835312, 40.540043, 45.103622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.755184, 40.317692, 45.061909>,  <34.621643, 39.947109, 44.992386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755184, 40.317692, 45.061909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080738, -0.211814, 0.973969,
		0.939160, -0.311134, -0.145517,
		0.333857, 0.926461, 0.173807,
		34.855343, 40.595631, 45.114052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383930, 40.037239, 45.333549>,  <34.621643, 39.947109, 44.992386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383930, 40.037239, 45.333549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132557, 40.332447, 45.431847>,  <34.981731, 40.509571, 45.490826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132557, 40.332447, 45.431847>,  <35.383930, 40.037239, 45.333549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132557, 40.332447, 45.431847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042841, -0.282599, 0.958281,
		0.776680, 0.612746, 0.145978,
		-0.628437, 0.738024, 0.245740,
		34.944027, 40.553856, 45.505569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461937, 39.650478, 45.976074>,  <35.383930, 40.037239, 45.333549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461937, 39.650478, 45.976074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282833, 39.296143, 46.024731>,  <35.175373, 39.083542, 46.053925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282833, 39.296143, 46.024731>,  <35.461937, 39.650478, 45.976074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282833, 39.296143, 46.024731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351237, -0.299351, -0.887142,
		0.822281, -0.354501, 0.445178,
		-0.447758, -0.885843, 0.121637,
		35.148506, 39.030388, 46.061222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951164, 39.289032, 45.634926>,  <35.461937, 39.650478, 45.976074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951164, 39.289032, 45.634926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642635, 39.035130, 45.653435>,  <35.457516, 38.882790, 45.664539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642635, 39.035130, 45.653435>,  <35.951164, 39.289032, 45.634926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642635, 39.035130, 45.653435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192974, -0.302538, -0.933398,
		0.606481, -0.711023, 0.355847,
		-0.771324, -0.634758, 0.046275,
		35.411240, 38.844704, 45.667316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238918, 38.586678, 45.414906>,  <35.951164, 39.289032, 45.634926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238918, 38.586678, 45.414906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844521, 38.581779, 45.348373>,  <35.607883, 38.578842, 45.308453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844521, 38.581779, 45.348373>,  <36.238918, 38.586678, 45.414906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844521, 38.581779, 45.348373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148442, -0.519116, -0.841714,
		-0.076039, -0.854616, 0.513663,
		-0.985993, -0.012246, -0.166334,
		35.548721, 38.578106, 45.298473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055424, 37.871010, 45.085705>,  <36.238918, 38.586678, 45.414906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055424, 37.871010, 45.085705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739525, 38.111076, 45.034958>,  <35.549984, 38.255116, 45.004509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739525, 38.111076, 45.034958>,  <36.055424, 37.871010, 45.085705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739525, 38.111076, 45.034958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183669, -0.428673, -0.884593,
		-0.585290, -0.675304, 0.448776,
		-0.789747, 0.600170, -0.126866,
		35.502602, 38.291126, 44.996899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408699, 37.393970, 44.995808>,  <36.055424, 37.871010, 45.085705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408699, 37.393970, 44.995808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395504, 37.756584, 44.827465>,  <35.387589, 37.974152, 44.726460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395504, 37.756584, 44.827465>,  <35.408699, 37.393970, 44.995808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395504, 37.756584, 44.827465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156629, -0.420567, -0.893639,
		-0.987107, 0.036442, 0.155861,
		-0.032984, 0.906529, -0.420852,
		35.385609, 38.028542, 44.701210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890064, 37.340321, 44.418682>,  <35.408699, 37.393970, 44.995808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890064, 37.340321, 44.418682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095882, 37.677063, 44.353531>,  <35.219372, 37.879108, 44.314442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095882, 37.677063, 44.353531>,  <34.890064, 37.340321, 44.418682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095882, 37.677063, 44.353531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106288, -0.125865, -0.986337,
		-0.850851, 0.524826, 0.024716,
		0.514544, 0.841853, -0.162875,
		35.250244, 37.929619, 44.304668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.011780, 37.132854, 49.442131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.055443, 37.456871, 49.211681>,  <37.081642, 37.651279, 49.073410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.055443, 37.456871, 49.211681>,  <37.011780, 37.132854, 49.442131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055443, 37.456871, 49.211681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086737, -0.585138, -0.806282,
		-0.990233, 0.038043, -0.134135,
		0.109161, 0.810041, -0.576123,
		37.088192, 37.699883, 49.038845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632629, 37.038296, 48.952526>,  <37.011780, 37.132854, 49.442131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632629, 37.038296, 48.952526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906239, 37.296825, 48.817242>,  <37.070404, 37.451942, 48.736073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.906239, 37.296825, 48.817242>,  <36.632629, 37.038296, 48.952526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906239, 37.296825, 48.817242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143341, -0.573692, -0.806431,
		-0.715242, 0.503135, -0.485061,
		0.684019, 0.646322, -0.338209,
		37.111443, 37.490723, 48.715778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519463, 37.230801, 48.312820>,  <36.632629, 37.038296, 48.952526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519463, 37.230801, 48.312820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.914127, 37.294975, 48.323845>,  <37.150925, 37.333481, 48.330460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.914127, 37.294975, 48.323845>,  <36.519463, 37.230801, 48.312820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914127, 37.294975, 48.323845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121645, -0.614140, -0.779766,
		-0.108173, 0.772718, -0.625465,
		0.986662, 0.160434, 0.027564,
		37.210125, 37.343105, 48.332115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665878, 37.318489, 47.626980>,  <36.519463, 37.230801, 48.312820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665878, 37.318489, 47.626980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.010605, 37.229794, 47.809452>,  <37.217442, 37.176579, 47.918934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.010605, 37.229794, 47.809452>,  <36.665878, 37.318489, 47.626980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010605, 37.229794, 47.809452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245868, -0.604023, -0.758093,
		0.443640, 0.765499, -0.466041,
		0.861819, -0.221736, 0.456181,
		37.269150, 37.163273, 47.946308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094826, 37.322372, 47.121506>,  <36.665878, 37.318489, 47.626980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094826, 37.322372, 47.121506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.262367, 37.085236, 47.396633>,  <37.362892, 36.942951, 47.561710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.262367, 37.085236, 47.396633>,  <37.094826, 37.322372, 47.121506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262367, 37.085236, 47.396633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413312, -0.549984, -0.725735,
		0.808537, 0.588262, 0.014666,
		0.418857, -0.592845, 0.687818,
		37.388023, 36.907383, 47.602978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708618, 37.195396, 46.840096>,  <37.094826, 37.322372, 47.121506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708618, 37.195396, 46.840096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.663612, 36.904076, 47.110477>,  <37.636608, 36.729282, 47.272705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.663612, 36.904076, 47.110477>,  <37.708618, 37.195396, 46.840096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663612, 36.904076, 47.110477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309214, -0.672161, -0.672745,
		0.944313, 0.133323, 0.300828,
		-0.112513, -0.728302, 0.675956,
		37.629860, 36.685585, 47.313263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340599, 36.796047, 46.928925>,  <37.708618, 37.195396, 46.840096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340599, 36.796047, 46.928925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.027016, 36.573494, 47.039089>,  <37.838867, 36.439960, 47.105190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.027016, 36.573494, 47.039089>,  <38.340599, 36.796047, 46.928925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027016, 36.573494, 47.039089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263162, -0.699625, -0.664281,
		0.562282, -0.448287, 0.694894,
		-0.783954, -0.556383, 0.275415,
		37.791828, 36.406578, 47.121712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614487, 36.067406, 46.895065>,  <38.340599, 36.796047, 46.928925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614487, 36.067406, 46.895065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216000, 36.037056, 46.912033>,  <37.976910, 36.018845, 46.922215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.216000, 36.037056, 46.912033>,  <38.614487, 36.067406, 46.895065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216000, 36.037056, 46.912033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031594, -0.770657, -0.636466,
		0.080980, -0.632717, 0.770138,
		-0.996215, -0.075873, 0.042418,
		37.917133, 36.014294, 46.924759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517349, 35.289696, 46.910748>,  <38.614487, 36.067406, 46.895065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517349, 35.289696, 46.910748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151321, 35.424183, 46.821667>,  <37.931705, 35.504875, 46.768219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.151321, 35.424183, 46.821667>,  <38.517349, 35.289696, 46.910748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151321, 35.424183, 46.821667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187224, -0.843277, -0.503817,
		-0.357196, -0.419334, 0.834608,
		-0.915073, 0.336220, -0.222706,
		37.876801, 35.525047, 46.754856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049534, 34.731659, 47.086384>,  <38.517349, 35.289696, 46.910748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049534, 34.731659, 47.086384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.884350, 34.972633, 46.813168>,  <37.785240, 35.117218, 46.649239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.884350, 34.972633, 46.813168>,  <38.049534, 34.731659, 47.086384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884350, 34.972633, 46.813168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140057, -0.783058, -0.605973,
		-0.899917, -0.154576, 0.407744,
		-0.412956, 0.602434, -0.683038,
		37.760464, 35.153362, 46.608257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489540, 34.342407, 46.744476>,  <38.049534, 34.731659, 47.086384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489540, 34.342407, 46.744476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.592873, 34.634331, 46.491291>,  <37.654873, 34.809486, 46.339382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.592873, 34.634331, 46.491291>,  <37.489540, 34.342407, 46.744476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592873, 34.634331, 46.491291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102348, -0.672190, -0.733271,
		-0.960619, 0.124646, -0.248343,
		0.258333, 0.729811, -0.632961,
		37.670372, 34.853275, 46.301403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088497, 34.181782, 46.206852>,  <37.489540, 34.342407, 46.744476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088497, 34.181782, 46.206852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345814, 34.448071, 46.055595>,  <37.500202, 34.607845, 45.964840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345814, 34.448071, 46.055595>,  <37.088497, 34.181782, 46.206852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345814, 34.448071, 46.055595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160260, -0.600044, -0.783750,
		-0.748662, 0.443577, -0.492691,
		0.643290, 0.665722, -0.378143,
		37.538799, 34.647789, 45.942154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466167, 34.527355, 46.064163>,  <37.088497, 34.181782, 46.206852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466167, 34.527355, 46.064163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086075, 34.408108, 46.100342>,  <35.858017, 34.336559, 46.122047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086075, 34.408108, 46.100342>,  <36.466167, 34.527355, 46.064163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086075, 34.408108, 46.100342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045208, 0.419194, 0.906770,
		-0.308242, 0.857554, -0.411810,
		-0.950233, -0.298122, 0.090445,
		35.801006, 34.318672, 46.127476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199635, 35.082958, 46.474091>,  <36.466167, 34.527355, 46.064163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199635, 35.082958, 46.474091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.918835, 34.801128, 46.515583>,  <35.750355, 34.632030, 46.540478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.918835, 34.801128, 46.515583>,  <36.199635, 35.082958, 46.474091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918835, 34.801128, 46.515583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207511, 0.341695, 0.916615,
		-0.681270, 0.621943, -0.386079,
		-0.702004, -0.704578, 0.103727,
		35.708233, 34.589756, 46.546700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660942, 35.410248, 46.666508>,  <36.199635, 35.082958, 46.474091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660942, 35.410248, 46.666508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.607887, 35.035667, 46.796413>,  <35.576054, 34.810921, 46.874355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.607887, 35.035667, 46.796413>,  <35.660942, 35.410248, 46.666508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607887, 35.035667, 46.796413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257953, 0.348983, 0.900928,
		-0.957010, 0.035721, -0.287847,
		-0.132636, -0.936448, 0.324765,
		35.568096, 34.754734, 46.893845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046059, 35.463631, 47.082428>,  <35.660942, 35.410248, 46.666508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046059, 35.463631, 47.082428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194855, 35.109505, 47.194035>,  <35.284130, 34.897030, 47.260998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194855, 35.109505, 47.194035>,  <35.046059, 35.463631, 47.082428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194855, 35.109505, 47.194035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163000, 0.233615, 0.958569,
		-0.913814, -0.402054, -0.057405,
		0.371986, -0.885311, 0.279016,
		35.306450, 34.843910, 47.277740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623032, 35.226086, 47.598747>,  <35.046059, 35.463631, 47.082428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623032, 35.226086, 47.598747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.957634, 35.015694, 47.660198>,  <35.158398, 34.889458, 47.697071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.957634, 35.015694, 47.660198>,  <34.623032, 35.226086, 47.598747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957634, 35.015694, 47.660198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089458, 0.145518, 0.985303,
		-0.540603, -0.837957, 0.074674,
		0.836508, -0.525978, 0.153630,
		35.208588, 34.857899, 47.706287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458275, 34.989708, 48.139305>,  <34.623032, 35.226086, 47.598747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458275, 34.989708, 48.139305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.855385, 34.941971, 48.134304>,  <35.093651, 34.913330, 48.131302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.855385, 34.941971, 48.134304>,  <34.458275, 34.989708, 48.139305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855385, 34.941971, 48.134304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052505, 0.338337, 0.939559,
		-0.107896, -0.933427, 0.342158,
		0.992775, -0.119340, -0.012504,
		35.153217, 34.906170, 48.130554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663731, 34.560143, 48.811649>,  <34.458275, 34.989708, 48.139305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663731, 34.560143, 48.811649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948063, 34.799896, 48.664425>,  <35.118660, 34.943748, 48.576092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.948063, 34.799896, 48.664425>,  <34.663731, 34.560143, 48.811649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948063, 34.799896, 48.664425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062193, 0.574796, 0.815930,
		0.700614, -0.557092, 0.445857,
		0.710825, 0.599381, -0.368063,
		35.161312, 34.979710, 48.554005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990662, 34.795654, 49.464046>,  <34.663731, 34.560143, 48.811649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990662, 34.795654, 49.464046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125866, 35.042553, 49.179863>,  <35.206989, 35.190693, 49.009354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.125866, 35.042553, 49.179863>,  <34.990662, 34.795654, 49.464046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125866, 35.042553, 49.179863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242393, 0.672331, 0.699440,
		0.909393, -0.408628, 0.077638,
		0.338009, 0.617247, -0.710462,
		35.227268, 35.227726, 48.966724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592091, 35.024628, 49.724129>,  <34.990662, 34.795654, 49.464046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592091, 35.024628, 49.724129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.462425, 35.276432, 49.441673>,  <35.384628, 35.427517, 49.272202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.462425, 35.276432, 49.441673>,  <35.592091, 35.024628, 49.724129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462425, 35.276432, 49.441673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183129, 0.774083, 0.606019,
		0.928108, 0.067132, -0.366210,
		-0.324160, 0.629514, -0.706139,
		35.365177, 35.465286, 49.229832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109062, 35.440475, 49.736477>,  <35.592091, 35.024628, 49.724129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109062, 35.440475, 49.736477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800873, 35.639294, 49.576820>,  <35.615959, 35.758587, 49.481026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.800873, 35.639294, 49.576820>,  <36.109062, 35.440475, 49.736477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800873, 35.639294, 49.576820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275982, 0.824493, 0.494009,
		0.574633, 0.270466, -0.772428,
		-0.770474, 0.497050, -0.399137,
		35.569729, 35.788410, 49.457081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360340, 36.051174, 49.617943>,  <36.109062, 35.440475, 49.736477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360340, 36.051174, 49.617943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966221, 36.119335, 49.622902>,  <35.729748, 36.160233, 49.625877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.966221, 36.119335, 49.622902>,  <36.360340, 36.051174, 49.617943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966221, 36.119335, 49.622902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152826, 0.846604, 0.509810,
		0.076377, 0.504208, -0.860198,
		-0.985298, 0.170398, 0.012395,
		35.670631, 36.170456, 49.626621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370552, 36.747688, 49.729248>,  <36.360340, 36.051174, 49.617943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370552, 36.747688, 49.729248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985123, 36.655277, 49.783142>,  <35.753864, 36.599831, 49.815479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985123, 36.655277, 49.783142>,  <36.370552, 36.747688, 49.729248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985123, 36.655277, 49.783142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124927, 0.834259, 0.537034,
		-0.236475, 0.500639, -0.832731,
		-0.963573, -0.231026, 0.134738,
		35.696053, 36.585968, 49.823563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977268, 37.408199, 49.629814>,  <36.370552, 36.747688, 49.729248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977268, 37.408199, 49.629814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755077, 37.143417, 49.831112>,  <35.621761, 36.984547, 49.951889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755077, 37.143417, 49.831112>,  <35.977268, 37.408199, 49.629814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755077, 37.143417, 49.831112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213789, 0.698551, 0.682877,
		-0.803577, 0.271736, -0.529550,
		-0.555480, -0.661957, 0.503245,
		35.588432, 36.944832, 49.982086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223602, 37.595699, 49.800758>,  <35.977268, 37.408199, 49.629814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223602, 37.595699, 49.800758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361546, 37.333145, 50.069153>,  <35.444309, 37.175613, 50.230190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.361546, 37.333145, 50.069153>,  <35.223602, 37.595699, 49.800758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361546, 37.333145, 50.069153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032124, 0.706170, 0.707313,
		-0.938106, -0.265476, 0.222441,
		0.344855, -0.656388, 0.670991,
		35.465004, 37.136230, 50.270451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391457, 38.376831, 49.590172>,  <35.223602, 37.595699, 49.800758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391457, 38.376831, 49.590172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.042507, 38.520306, 49.457321>,  <34.833138, 38.606388, 49.377609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.042507, 38.520306, 49.457321>,  <35.391457, 38.376831, 49.590172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042507, 38.520306, 49.457321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326097, -0.079154, -0.942016,
		-0.364176, -0.930097, -0.047914,
		-0.872374, 0.358684, -0.332128,
		34.780796, 38.627911, 49.357681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177254, 37.952030, 49.080708>,  <35.391457, 38.376831, 49.590172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177254, 37.952030, 49.080708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.985577, 38.291527, 48.991249>,  <34.870571, 38.495224, 48.937576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.985577, 38.291527, 48.991249>,  <35.177254, 37.952030, 49.080708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985577, 38.291527, 48.991249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121229, -0.188360, -0.974589,
		-0.869298, -0.494127, -0.012631,
		-0.479192, 0.848740, -0.223644,
		34.841820, 38.546150, 48.924156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723328, 37.755505, 48.561642>,  <35.177254, 37.952030, 49.080708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723328, 37.755505, 48.561642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727665, 38.153820, 48.525230>,  <34.730267, 38.392811, 48.503384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727665, 38.153820, 48.525230>,  <34.723328, 37.755505, 48.561642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727665, 38.153820, 48.525230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052478, -0.091472, -0.994424,
		-0.998563, 0.006003, -0.053249,
		0.010840, 0.995790, -0.091025,
		34.730919, 38.452557, 48.497921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299747, 37.933338, 48.037708>,  <34.723328, 37.755505, 48.561642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299747, 37.933338, 48.037708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510056, 38.271893, 48.071659>,  <34.636242, 38.475025, 48.092030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510056, 38.271893, 48.071659>,  <34.299747, 37.933338, 48.037708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510056, 38.271893, 48.071659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075271, 0.053102, -0.995748,
		-0.847291, 0.529923, -0.035788,
		0.525769, 0.846382, 0.084881,
		34.667786, 38.525806, 48.097122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938850, 38.371548, 47.646954>,  <34.299747, 37.933338, 48.037708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938850, 38.371548, 47.646954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.311172, 38.515564, 47.672161>,  <34.534565, 38.601974, 47.687286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.311172, 38.515564, 47.672161>,  <33.938850, 38.371548, 47.646954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311172, 38.515564, 47.672161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102804, -0.092431, -0.990398,
		-0.350760, 0.928346, -0.123049,
		0.930805, 0.360042, 0.063017,
		34.590416, 38.623577, 47.691067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884190, 38.992577, 47.239803>,  <33.938850, 38.371548, 47.646954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884190, 38.992577, 47.239803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271614, 38.902084, 47.281185>,  <34.504070, 38.847790, 47.306015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271614, 38.902084, 47.281185>,  <33.884190, 38.992577, 47.239803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271614, 38.902084, 47.281185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138965, 0.147138, -0.979305,
		0.206327, 0.962897, 0.173951,
		0.968565, -0.226230, 0.103450,
		34.562183, 38.834217, 47.312222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149010, 39.491413, 46.800964>,  <33.884190, 38.992577, 47.239803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149010, 39.491413, 46.800964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443195, 39.224491, 46.847931>,  <34.619709, 39.064339, 46.876110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.443195, 39.224491, 46.847931>,  <34.149010, 39.491413, 46.800964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443195, 39.224491, 46.847931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258144, 0.115749, -0.959147,
		0.626457, 0.735731, 0.257391,
		0.735468, -0.667309, 0.117413,
		34.663837, 39.024300, 46.883156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739193, 39.770660, 46.363304>,  <34.149010, 39.491413, 46.800964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739193, 39.770660, 46.363304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.831936, 39.382732, 46.393482>,  <34.887581, 39.149975, 46.411587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.831936, 39.382732, 46.393482>,  <34.739193, 39.770660, 46.363304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831936, 39.382732, 46.393482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252301, -0.014947, -0.967533,
		0.939461, 0.243364, 0.241221,
		0.231857, -0.969820, 0.075443,
		34.901493, 39.091785, 46.416115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277752, 40.289661, 46.492336>,  <34.739193, 39.770660, 46.363304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277752, 40.289661, 46.492336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135845, 40.633945, 46.346287>,  <35.050701, 40.840515, 46.258659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135845, 40.633945, 46.346287>,  <35.277752, 40.289661, 46.492336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135845, 40.633945, 46.346287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330225, 0.249998, 0.910194,
		0.874695, 0.443480, 0.195538,
		-0.354769, 0.860713, -0.365120,
		35.029415, 40.892159, 46.236752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669945, 40.800369, 46.799156>,  <35.277752, 40.289661, 46.492336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669945, 40.800369, 46.799156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.305916, 40.925766, 46.690720>,  <35.087498, 41.001003, 46.625656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.305916, 40.925766, 46.690720>,  <35.669945, 40.800369, 46.799156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305916, 40.925766, 46.690720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153541, 0.352540, 0.923114,
		0.384961, 0.881724, -0.272703,
		-0.910071, 0.313492, -0.271095,
		35.032894, 41.019814, 46.609390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513645, 41.531506, 47.152290>,  <35.669945, 40.800369, 46.799156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513645, 41.531506, 47.152290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.147167, 41.439388, 47.021107>,  <34.927280, 41.384117, 46.942398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.147167, 41.439388, 47.021107>,  <35.513645, 41.531506, 47.152290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147167, 41.439388, 47.021107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398641, 0.440101, 0.804610,
		-0.040966, 0.867914, -0.495023,
		-0.916192, -0.230298, -0.327957,
		34.872311, 41.370300, 46.922718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008163, 42.114143, 47.066708>,  <35.513645, 41.531506, 47.152290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008163, 42.114143, 47.066708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.796452, 41.784218, 47.146252>,  <34.669426, 41.586262, 47.193977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.796452, 41.784218, 47.146252>,  <35.008163, 42.114143, 47.066708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796452, 41.784218, 47.146252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307263, 0.404811, 0.861230,
		-0.790857, 0.394726, -0.467692,
		-0.529277, -0.824815, 0.198863,
		34.637669, 41.536774, 47.205910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316719, 42.378307, 47.274963>,  <35.008163, 42.114143, 47.066708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316719, 42.378307, 47.274963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.332649, 42.002136, 47.410027>,  <34.342205, 41.776436, 47.491066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.332649, 42.002136, 47.410027>,  <34.316719, 42.378307, 47.274963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332649, 42.002136, 47.410027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394311, 0.295711, 0.870100,
		-0.918114, -0.167793, -0.359044,
		0.039824, -0.940426, 0.337659,
		34.344597, 41.720009, 47.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610855, 42.197315, 47.501316>,  <34.316719, 42.378307, 47.274963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610855, 42.197315, 47.501316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.889275, 41.981167, 47.690426>,  <34.056328, 41.851479, 47.803894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.889275, 41.981167, 47.690426>,  <33.610855, 42.197315, 47.501316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889275, 41.981167, 47.690426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305636, 0.372836, 0.876116,
		-0.649696, -0.754316, 0.094354,
		0.696047, -0.540371, 0.472776,
		34.098087, 41.819057, 47.832260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209549, 41.967342, 48.050949>,  <33.610855, 42.197315, 47.501316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209549, 41.967342, 48.050949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.580864, 41.879807, 48.171215>,  <33.803654, 41.827286, 48.243374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.580864, 41.879807, 48.171215>,  <33.209549, 41.967342, 48.050949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580864, 41.879807, 48.171215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212445, 0.351513, 0.911760,
		-0.305216, -0.910246, 0.279812,
		0.928284, -0.218839, 0.300665,
		33.859348, 41.814156, 48.261414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217888, 41.534603, 48.700836>,  <33.209549, 41.967342, 48.050949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217888, 41.534603, 48.700836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566116, 41.731415, 48.699745>,  <33.775055, 41.849503, 48.699089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.566116, 41.731415, 48.699745>,  <33.217888, 41.534603, 48.700836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566116, 41.731415, 48.699745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160399, 0.289039, 0.943784,
		0.465157, -0.821197, 0.330551,
		0.870575, 0.492028, -0.002729,
		33.827290, 41.879025, 48.698925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.157124, 34.602039, 35.383923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488144, 34.820145, 35.330490>,  <37.686756, 34.951008, 35.298431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488144, 34.820145, 35.330490>,  <37.157124, 34.602039, 35.383923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488144, 34.820145, 35.330490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441890, 0.779454, 0.444055,
		0.346250, -0.308449, 0.885986,
		0.827553, 0.545262, -0.133585,
		37.736408, 34.983723, 35.290413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424824, 34.839100, 36.007687>,  <37.157124, 34.602039, 35.383923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424824, 34.839100, 36.007687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556458, 35.098572, 35.733192>,  <37.635437, 35.254257, 35.568497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556458, 35.098572, 35.733192>,  <37.424824, 34.839100, 36.007687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556458, 35.098572, 35.733192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409399, 0.752869, 0.515345,
		0.850937, 0.111349, 0.513330,
		0.329087, 0.648683, -0.686230,
		37.655182, 35.293175, 35.527325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371147, 35.468403, 36.359440>,  <37.424824, 34.839100, 36.007687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371147, 35.468403, 36.359440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431694, 35.616810, 35.992958>,  <37.468021, 35.705856, 35.773067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431694, 35.616810, 35.992958>,  <37.371147, 35.468403, 36.359440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431694, 35.616810, 35.992958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213569, 0.917268, 0.336166,
		0.965131, 0.144790, 0.218080,
		0.151365, 0.371019, -0.916206,
		37.477104, 35.728115, 35.718098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891224, 35.960121, 36.451344>,  <37.371147, 35.468403, 36.359440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891224, 35.960121, 36.451344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657589, 36.023724, 36.132957>,  <37.517410, 36.061886, 35.941925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657589, 36.023724, 36.132957>,  <37.891224, 35.960121, 36.451344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657589, 36.023724, 36.132957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404399, 0.793249, 0.455212,
		0.703781, 0.587771, -0.399022,
		-0.584084, 0.159005, -0.795967,
		37.482365, 36.071426, 35.894169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824532, 36.719082, 36.398762>,  <37.891224, 35.960121, 36.451344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824532, 36.719082, 36.398762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526493, 36.600029, 36.160019>,  <37.347668, 36.528599, 36.016773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526493, 36.600029, 36.160019>,  <37.824532, 36.719082, 36.398762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526493, 36.600029, 36.160019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584706, 0.722014, 0.369885,
		0.320851, 0.624588, -0.712001,
		-0.745100, -0.297633, -0.596859,
		37.302963, 36.510738, 35.980961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538658, 37.315933, 36.173454>,  <37.824532, 36.719082, 36.398762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538658, 37.315933, 36.173454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254227, 37.041931, 36.110039>,  <37.083569, 36.877529, 36.071987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254227, 37.041931, 36.110039>,  <37.538658, 37.315933, 36.173454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254227, 37.041931, 36.110039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675535, 0.603049, 0.424246,
		-0.195004, 0.408772, -0.891560,
		-0.711074, -0.685010, -0.158543,
		37.040905, 36.836430, 36.062477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987530, 37.713539, 35.953869>,  <37.538658, 37.315933, 36.173454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987530, 37.713539, 35.953869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803951, 37.381577, 36.080753>,  <36.693806, 37.182400, 36.156883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803951, 37.381577, 36.080753>,  <36.987530, 37.713539, 35.953869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803951, 37.381577, 36.080753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710896, 0.557171, 0.429171,
		-0.532915, -0.028541, -0.845688,
		-0.458943, -0.829908, 0.317214,
		36.666267, 37.132603, 36.175919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218330, 37.879833, 35.824688>,  <36.987530, 37.713539, 35.953869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218330, 37.879833, 35.824688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258064, 37.581028, 36.087627>,  <36.281902, 37.401745, 36.245392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258064, 37.581028, 36.087627>,  <36.218330, 37.879833, 35.824688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258064, 37.581028, 36.087627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665615, 0.441173, 0.601932,
		-0.739655, -0.497330, -0.453402,
		0.099330, -0.747014, 0.657347,
		36.287865, 37.356922, 36.284832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469482, 37.648254, 36.053513>,  <36.218330, 37.879833, 35.824688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469482, 37.648254, 36.053513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750744, 37.546265, 36.319016>,  <35.919498, 37.485069, 36.478317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750744, 37.546265, 36.319016>,  <35.469482, 37.648254, 36.053513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750744, 37.546265, 36.319016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547330, 0.401792, 0.734161,
		-0.453885, -0.879517, 0.142964,
		0.703149, -0.254976, 0.663754,
		35.961689, 37.469772, 36.518143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075726, 37.865738, 36.588539>,  <35.469482, 37.648254, 36.053513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075726, 37.865738, 36.588539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419167, 37.747677, 36.756199>,  <35.625229, 37.676838, 36.856796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419167, 37.747677, 36.756199>,  <35.075726, 37.865738, 36.588539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419167, 37.747677, 36.756199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286128, 0.402515, 0.869548,
		-0.425366, -0.866525, 0.261147,
		0.858601, -0.295155, 0.419153,
		35.676746, 37.659130, 36.881947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944511, 37.437450, 37.160412>,  <35.075726, 37.865738, 36.588539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944511, 37.437450, 37.160412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288315, 37.636204, 37.208340>,  <35.494595, 37.755455, 37.237095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288315, 37.636204, 37.208340>,  <34.944511, 37.437450, 37.160412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288315, 37.636204, 37.208340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235177, 0.176319, 0.955826,
		0.453808, -0.849717, 0.268402,
		0.859506, 0.496883, 0.119819,
		35.546165, 37.785267, 37.244286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128136, 37.199875, 37.912834>,  <34.944511, 37.437450, 37.160412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128136, 37.199875, 37.912834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325359, 37.539497, 37.836945>,  <35.443695, 37.743271, 37.791412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325359, 37.539497, 37.836945>,  <35.128136, 37.199875, 37.912834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325359, 37.539497, 37.836945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079572, 0.261170, 0.962008,
		0.866349, -0.459230, 0.196334,
		0.493059, 0.849057, -0.189722,
		35.473278, 37.794216, 37.780029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384445, 36.545982, 38.135872>,  <35.128136, 37.199875, 37.912834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384445, 36.545982, 38.135872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197582, 36.324249, 38.411400>,  <35.085464, 36.191208, 38.576717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197582, 36.324249, 38.411400>,  <35.384445, 36.545982, 38.135872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197582, 36.324249, 38.411400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143162, -0.721353, -0.677610,
		0.872507, -0.415163, 0.257625,
		-0.467157, -0.554338, 0.688821,
		35.057434, 36.157948, 38.618046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664074, 35.834633, 38.099152>,  <35.384445, 36.545982, 38.135872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664074, 35.834633, 38.099152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298954, 35.819595, 38.261826>,  <35.079884, 35.810574, 38.359428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298954, 35.819595, 38.261826>,  <35.664074, 35.834633, 38.099152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298954, 35.819595, 38.261826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246862, -0.742493, -0.622706,
		0.325368, -0.668798, 0.668465,
		-0.912795, -0.037590, 0.406684,
		35.025116, 35.808319, 38.383831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618946, 35.116440, 38.362743>,  <35.664074, 35.834633, 38.099152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618946, 35.116440, 38.362743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263332, 35.288910, 38.301155>,  <35.049965, 35.392391, 38.264202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263332, 35.288910, 38.301155>,  <35.618946, 35.116440, 38.362743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263332, 35.288910, 38.301155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248702, -0.737154, -0.628293,
		-0.384408, -0.520279, 0.762588,
		-0.889033, 0.431178, -0.153973,
		34.996624, 35.418262, 38.254963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128403, 34.577694, 38.475166>,  <35.618946, 35.116440, 38.362743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128403, 34.577694, 38.475166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939064, 34.864304, 38.270214>,  <34.825462, 35.036270, 38.147243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939064, 34.864304, 38.270214>,  <35.128403, 34.577694, 38.475166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939064, 34.864304, 38.270214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349849, -0.686751, -0.637165,
		-0.808424, -0.122342, 0.575746,
		-0.473346, 0.716523, -0.512384,
		34.797058, 35.079262, 38.116501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459263, 34.339439, 38.299122>,  <35.128403, 34.577694, 38.475166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459263, 34.339439, 38.299122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534008, 34.641911, 38.048275>,  <34.578854, 34.823395, 37.897766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534008, 34.641911, 38.048275>,  <34.459263, 34.339439, 38.299122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534008, 34.641911, 38.048275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390609, -0.528543, -0.753703,
		-0.901392, 0.385799, 0.196604,
		0.186864, 0.756176, -0.627120,
		34.590069, 34.868763, 37.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794342, 34.540962, 38.071339>,  <34.459263, 34.339439, 38.299122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794342, 34.540962, 38.071339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012833, 34.720100, 37.788193>,  <34.143929, 34.827583, 37.618305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012833, 34.720100, 37.788193>,  <33.794342, 34.540962, 38.071339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012833, 34.720100, 37.788193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415162, -0.589224, -0.693149,
		-0.727515, 0.672493, -0.135920,
		0.546226, 0.447847, -0.707863,
		34.176701, 34.854454, 37.575832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316231, 34.677402, 37.548878>,  <33.794342, 34.540962, 38.071339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316231, 34.677402, 37.548878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678181, 34.662682, 37.379250>,  <33.895351, 34.653851, 37.277473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678181, 34.662682, 37.379250>,  <33.316231, 34.677402, 37.548878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678181, 34.662682, 37.379250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321127, -0.712970, -0.623339,
		-0.279413, 0.700228, -0.656970,
		0.904879, -0.036802, -0.424075,
		33.949646, 34.651642, 37.252026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083317, 34.640228, 36.842190>,  <33.316231, 34.677402, 37.548878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083317, 34.640228, 36.842190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470043, 34.541531, 36.868683>,  <33.702080, 34.482311, 36.884579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470043, 34.541531, 36.868683>,  <33.083317, 34.640228, 36.842190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470043, 34.541531, 36.868683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134456, -0.711875, -0.689315,
		0.217235, 0.657534, -0.721427,
		0.966814, -0.246744, 0.066235,
		33.760086, 34.467506, 36.888554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319073, 34.697136, 36.211197>,  <33.083317, 34.640228, 36.842190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319073, 34.697136, 36.211197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601715, 34.458412, 36.363262>,  <33.771301, 34.315178, 36.454502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601715, 34.458412, 36.363262>,  <33.319073, 34.697136, 36.211197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601715, 34.458412, 36.363262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062575, -0.482445, -0.873688,
		0.704833, 0.641144, -0.303554,
		0.706608, -0.596810, 0.380163,
		33.813698, 34.279369, 36.477310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633404, 34.385204, 35.605759>,  <33.319073, 34.697136, 36.211197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633404, 34.385204, 35.605759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773605, 34.140419, 35.889351>,  <33.857727, 33.993549, 36.059505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773605, 34.140419, 35.889351>,  <33.633404, 34.385204, 35.605759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773605, 34.140419, 35.889351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310867, -0.638066, -0.704438,
		0.883463, 0.467309, -0.033408,
		0.350507, -0.611959, 0.708979,
		33.878757, 33.956833, 36.102043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380867, 34.262630, 35.505199>,  <33.633404, 34.385204, 35.605759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380867, 34.262630, 35.505199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205059, 33.961575, 35.701302>,  <34.099575, 33.780941, 35.818962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205059, 33.961575, 35.701302>,  <34.380867, 34.262630, 35.505199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205059, 33.961575, 35.701302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406801, -0.653410, -0.638410,
		0.800833, -0.081158, 0.593363,
		-0.439522, -0.752641, 0.490257,
		34.073204, 33.735783, 35.848377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830612, 33.777256, 35.588543>,  <34.380867, 34.262630, 35.505199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830612, 33.777256, 35.588543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486137, 33.576099, 35.618084>,  <34.279453, 33.455406, 35.635807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486137, 33.576099, 35.618084>,  <34.830612, 33.777256, 35.588543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486137, 33.576099, 35.618084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430194, -0.798535, -0.421041,
		0.270711, -0.330825, 0.904030,
		-0.861191, -0.502888, 0.073853,
		34.227779, 33.425232, 35.640240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066853, 33.186768, 35.843002>,  <34.830612, 33.777256, 35.588543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066853, 33.186768, 35.843002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713318, 33.143456, 35.660965>,  <34.501198, 33.117470, 35.551743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713318, 33.143456, 35.660965>,  <35.066853, 33.186768, 35.843002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713318, 33.143456, 35.660965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420583, -0.609832, -0.671725,
		-0.204795, -0.785099, 0.584533,
		-0.883838, -0.108278, -0.455090,
		34.448166, 33.110973, 35.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916512, 32.455475, 35.740433>,  <35.066853, 33.186768, 35.843002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916512, 32.455475, 35.740433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775253, 32.692734, 35.451031>,  <34.690498, 32.835091, 35.277390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775253, 32.692734, 35.451031>,  <34.916512, 32.455475, 35.740433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775253, 32.692734, 35.451031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298814, -0.661316, -0.688020,
		-0.886565, -0.459165, 0.056299,
		-0.353146, 0.593151, -0.723505,
		34.669308, 32.870678, 35.233978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051910, 31.696997, 35.670292>,  <34.916512, 32.455475, 35.740433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051910, 31.696997, 35.670292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343803, 31.603561, 35.927330>,  <35.518940, 31.547501, 36.081551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343803, 31.603561, 35.927330>,  <35.051910, 31.696997, 35.670292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343803, 31.603561, 35.927330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664449, -0.020660, 0.747048,
		-0.161227, -0.972116, -0.170284,
		0.729735, -0.233590, 0.642591,
		35.562725, 31.533485, 36.120106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361645, 31.086706, 35.729729>,  <35.051910, 31.696997, 35.670292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361645, 31.086706, 35.729729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493187, 30.710909, 35.768112>,  <35.572113, 30.485432, 35.791142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493187, 30.710909, 35.768112>,  <35.361645, 31.086706, 35.729729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493187, 30.710909, 35.768112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195870, 0.031549, 0.980122,
		-0.923845, -0.341114, -0.173644,
		0.328855, -0.939492, 0.095960,
		35.591843, 30.429062, 35.796902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931480, 30.475946, 35.972286>,  <35.361645, 31.086706, 35.729729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931480, 30.475946, 35.972286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303497, 30.450872, 36.117111>,  <35.526707, 30.435827, 36.204006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303497, 30.450872, 36.117111>,  <34.931480, 30.475946, 35.972286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303497, 30.450872, 36.117111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352491, 0.126031, 0.927290,
		-0.103758, -0.990044, 0.095119,
		0.930045, -0.062685, 0.362058,
		35.582512, 30.432068, 36.225727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948612, 30.067400, 36.608418>,  <34.931480, 30.475946, 35.972286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948612, 30.067400, 36.608418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274059, 30.299509, 36.593945>,  <35.469326, 30.438774, 36.585262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274059, 30.299509, 36.593945>,  <34.948612, 30.067400, 36.608418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274059, 30.299509, 36.593945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263992, 0.424162, 0.866253,
		0.518011, -0.695247, 0.498293,
		0.813617, 0.580275, -0.036181,
		35.518147, 30.473591, 36.583092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317711, 30.034578, 37.262672>,  <34.948612, 30.067400, 36.608418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317711, 30.034578, 37.262672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477993, 30.377968, 37.134640>,  <35.574162, 30.584002, 37.057819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477993, 30.377968, 37.134640>,  <35.317711, 30.034578, 37.262672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477993, 30.377968, 37.134640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003141, 0.348065, 0.937465,
		0.916200, -0.376656, 0.136777,
		0.400709, 0.858476, -0.320080,
		35.598206, 30.635511, 37.038616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034790, 30.207462, 37.627071>,  <35.317711, 30.034578, 37.262672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034790, 30.207462, 37.627071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863068, 30.544725, 37.497589>,  <35.760036, 30.747084, 37.419899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863068, 30.544725, 37.497589>,  <36.034790, 30.207462, 37.627071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863068, 30.544725, 37.497589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026382, 0.346550, 0.937661,
		0.902776, 0.411079, -0.126530,
		-0.429302, 0.843159, -0.323702,
		35.734276, 30.797672, 37.400478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241539, 30.654551, 38.072933>,  <36.034790, 30.207462, 37.627071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241539, 30.654551, 38.072933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972336, 30.906172, 37.917316>,  <35.810814, 31.057144, 37.823948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972336, 30.906172, 37.917316>,  <36.241539, 30.654551, 38.072933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972336, 30.906172, 37.917316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062145, 0.476039, 0.877226,
		0.737020, 0.614556, -0.281286,
		-0.673007, 0.629053, -0.389041,
		35.770435, 31.094887, 37.800606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464348, 31.360113, 38.138908>,  <36.241539, 30.654551, 38.072933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464348, 31.360113, 38.138908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071320, 31.431038, 38.116550>,  <35.835503, 31.473593, 38.103134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071320, 31.431038, 38.116550>,  <36.464348, 31.360113, 38.138908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071320, 31.431038, 38.116550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026697, 0.432100, 0.901431,
		0.183986, 0.884223, -0.429300,
		-0.982566, 0.177312, -0.055894,
		35.776550, 31.484232, 38.099781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298882, 32.087505, 38.289425>,  <36.464348, 31.360113, 38.138908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298882, 32.087505, 38.289425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952023, 31.903141, 38.364914>,  <35.743908, 31.792522, 38.410206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952023, 31.903141, 38.364914>,  <36.298882, 32.087505, 38.289425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952023, 31.903141, 38.364914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009902, 0.394797, 0.918715,
		-0.497954, 0.794792, -0.346911,
		-0.867147, -0.460912, 0.188721,
		35.691879, 31.764868, 38.421532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836781, 32.544571, 38.611923>,  <36.298882, 32.087505, 38.289425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836781, 32.544571, 38.611923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669903, 32.198025, 38.721729>,  <35.569775, 31.990097, 38.787613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669903, 32.198025, 38.721729>,  <35.836781, 32.544571, 38.611923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669903, 32.198025, 38.721729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051766, 0.324218, 0.944565,
		-0.907340, 0.379861, -0.180112,
		-0.417199, -0.866365, 0.274512,
		35.544743, 31.938116, 38.804085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327538, 32.733334, 39.118782>,  <35.836781, 32.544571, 38.611923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327538, 32.733334, 39.118782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368076, 32.340805, 39.184196>,  <35.392399, 32.105289, 39.223446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368076, 32.340805, 39.184196>,  <35.327538, 32.733334, 39.118782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368076, 32.340805, 39.184196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098538, 0.173477, 0.979896,
		-0.989959, -0.083194, 0.114278,
		0.101346, -0.981318, 0.163538,
		35.398479, 32.046410, 39.233257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823814, 32.566914, 39.595276>,  <35.327538, 32.733334, 39.118782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823814, 32.566914, 39.595276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086769, 32.267246, 39.627766>,  <35.244541, 32.087448, 39.647259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086769, 32.267246, 39.627766>,  <34.823814, 32.566914, 39.595276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086769, 32.267246, 39.627766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066940, 0.165417, 0.983949,
		-0.750576, -0.641396, 0.158891,
		0.657385, -0.749165, 0.081223,
		35.283985, 32.042496, 39.652134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576595, 32.224255, 40.183262>,  <34.823814, 32.566914, 39.595276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576595, 32.224255, 40.183262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951618, 32.095440, 40.130676>,  <35.176632, 32.018150, 40.099125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951618, 32.095440, 40.130676>,  <34.576595, 32.224255, 40.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951618, 32.095440, 40.130676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153562, 0.044074, 0.987156,
		-0.312106, -0.945700, 0.090774,
		0.937554, -0.322037, -0.131468,
		35.232883, 31.998829, 40.091236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690296, 31.681412, 40.686584>,  <34.576595, 32.224255, 40.183262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690296, 31.681412, 40.686584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060646, 31.801178, 40.594398>,  <35.282856, 31.873037, 40.539089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060646, 31.801178, 40.594398>,  <34.690296, 31.681412, 40.686584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060646, 31.801178, 40.594398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228937, 0.040671, 0.972591,
		0.300584, -0.953255, -0.030892,
		0.925871, 0.299418, -0.230461,
		35.338406, 31.891003, 40.525261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270454, 31.221230, 41.028461>,  <34.690296, 31.681412, 40.686584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270454, 31.221230, 41.028461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442501, 31.576746, 40.965145>,  <35.545727, 31.790056, 40.927155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442501, 31.576746, 40.965145>,  <35.270454, 31.221230, 41.028461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442501, 31.576746, 40.965145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306403, 0.021210, 0.951665,
		0.849188, -0.457824, -0.263205,
		0.430113, 0.888790, -0.158290,
		35.571533, 31.843384, 40.917660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919113, 31.310944, 41.606129>,  <35.270454, 31.221230, 41.028461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919113, 31.310944, 41.606129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855194, 31.669859, 41.441525>,  <35.816845, 31.885208, 41.342762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855194, 31.669859, 41.441525>,  <35.919113, 31.310944, 41.606129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855194, 31.669859, 41.441525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171021, 0.435727, 0.883682,
		0.972223, 0.070831, -0.223082,
		-0.159795, 0.897288, -0.411510,
		35.807255, 31.939045, 41.318073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439606, 31.714275, 41.811256>,  <35.919113, 31.310944, 41.606129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439606, 31.714275, 41.811256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133995, 31.960499, 41.733948>,  <35.950630, 32.108234, 41.687561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133995, 31.960499, 41.733948>,  <36.439606, 31.714275, 41.811256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133995, 31.960499, 41.733948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180831, 0.491856, 0.851691,
		0.619329, 0.615762, -0.487102,
		-0.764023, 0.615560, -0.193272,
		35.904789, 32.145168, 41.675964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649193, 32.231224, 42.110069>,  <36.439606, 31.714275, 41.811256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649193, 32.231224, 42.110069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264534, 32.331966, 42.066612>,  <36.033737, 32.392414, 42.040539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264534, 32.331966, 42.066612>,  <36.649193, 32.231224, 42.110069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264534, 32.331966, 42.066612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062727, 0.587510, 0.806782,
		0.267021, 0.769025, -0.580776,
		-0.961647, 0.251858, -0.108639,
		35.976040, 32.407524, 42.034019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713440, 32.975674, 42.316608>,  <36.649193, 32.231224, 42.110069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713440, 32.975674, 42.316608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332455, 32.868206, 42.374062>,  <36.103863, 32.803726, 42.408535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332455, 32.868206, 42.374062>,  <36.713440, 32.975674, 42.316608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332455, 32.868206, 42.374062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087160, 0.692063, 0.716555,
		-0.291922, 0.669973, -0.682581,
		-0.952462, -0.268672, 0.143634,
		36.046715, 32.787605, 42.417152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374878, 33.594299, 42.419872>,  <36.713440, 32.975674, 42.316608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374878, 33.594299, 42.419872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112701, 33.318306, 42.542717>,  <35.955395, 33.152710, 42.616425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112701, 33.318306, 42.542717>,  <36.374878, 33.594299, 42.419872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112701, 33.318306, 42.542717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041568, 0.438982, 0.897534,
		-0.754099, 0.575517, -0.316409,
		-0.655444, -0.689982, 0.307113,
		35.916069, 33.111313, 42.634850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777229, 34.022793, 42.691994>,  <36.374878, 33.594299, 42.419872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777229, 34.022793, 42.691994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767456, 33.656498, 42.852409>,  <35.761593, 33.436722, 42.948658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767456, 33.656498, 42.852409>,  <35.777229, 34.022793, 42.691994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767456, 33.656498, 42.852409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236981, 0.395031, 0.887576,
		-0.971207, -0.073356, -0.226662,
		-0.024430, -0.915734, 0.401041,
		35.760128, 33.381779, 42.972721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265465, 34.060524, 43.245682>,  <35.777229, 34.022793, 42.691994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265465, 34.060524, 43.245682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447365, 33.710182, 43.310284>,  <35.556503, 33.499977, 43.349045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447365, 33.710182, 43.310284>,  <35.265465, 34.060524, 43.245682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447365, 33.710182, 43.310284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193662, 0.079761, 0.977821,
		-0.869309, -0.475942, -0.133348,
		0.454750, -0.875852, 0.161509,
		35.583790, 33.447426, 43.358738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844944, 33.801464, 43.759998>,  <35.265465, 34.060524, 43.245682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844944, 33.801464, 43.759998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195797, 33.612068, 43.792137>,  <35.406307, 33.498432, 43.811420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195797, 33.612068, 43.792137>,  <34.844944, 33.801464, 43.759998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195797, 33.612068, 43.792137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071539, 0.294240, 0.953050,
		-0.474899, -0.830199, 0.291959,
		0.877128, -0.473489, 0.080343,
		35.458935, 33.470020, 43.816238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734367, 33.331287, 44.323757>,  <34.844944, 33.801464, 43.759998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734367, 33.331287, 44.323757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131477, 33.361778, 44.286709>,  <35.369743, 33.380074, 44.264481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131477, 33.361778, 44.286709>,  <34.734367, 33.331287, 44.323757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131477, 33.361778, 44.286709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084253, 0.106550, 0.990731,
		0.085385, -0.991382, 0.099358,
		0.992779, 0.076222, -0.092624,
		35.429310, 33.384647, 44.258923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999691, 32.854450, 44.879848>,  <34.734367, 33.331287, 44.323757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999691, 32.854450, 44.879848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266106, 33.134228, 44.776180>,  <35.425957, 33.302094, 44.713978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266106, 33.134228, 44.776180>,  <34.999691, 32.854450, 44.879848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266106, 33.134228, 44.776180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113903, 0.248010, 0.962038,
		0.737170, -0.670275, 0.085515,
		0.666038, 0.699445, -0.259172,
		35.465916, 33.344063, 44.698429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544209, 32.795891, 45.410522>,  <34.999691, 32.854450, 44.879848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544209, 32.795891, 45.410522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565346, 33.161434, 45.249493>,  <35.578026, 33.380760, 45.152874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565346, 33.161434, 45.249493>,  <35.544209, 32.795891, 45.410522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565346, 33.161434, 45.249493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117134, 0.394684, 0.911320,
		0.991709, -0.095309, -0.086189,
		0.052839, 0.913860, -0.402576,
		35.581196, 33.435593, 45.128719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013912, 33.062508, 45.748608>,  <35.544209, 32.795891, 45.410522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013912, 33.062508, 45.748608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841423, 33.397743, 45.614948>,  <35.737930, 33.598885, 45.534752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841423, 33.397743, 45.614948>,  <36.013912, 33.062508, 45.748608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841423, 33.397743, 45.614948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221298, 0.457282, 0.861348,
		0.874687, 0.297484, -0.382656,
		-0.431219, 0.838091, -0.334147,
		35.712059, 33.649170, 45.514706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488384, 33.701206, 45.785797>,  <36.013912, 33.062508, 45.748608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488384, 33.701206, 45.785797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110962, 33.833527, 45.779213>,  <35.884510, 33.912918, 45.775265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110962, 33.833527, 45.779213>,  <36.488384, 33.701206, 45.785797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110962, 33.833527, 45.779213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149253, 0.469028, 0.870481,
		0.295676, 0.818892, -0.491927,
		-0.943557, 0.330801, -0.016458,
		35.827896, 33.932766, 45.774277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883476, 34.190277, 45.358246>,  <36.488384, 33.701206, 45.785797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883476, 34.190277, 45.358246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220867, 34.403885, 45.381500>,  <37.423302, 34.532047, 45.395454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220867, 34.403885, 45.381500>,  <36.883476, 34.190277, 45.358246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220867, 34.403885, 45.381500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205949, -0.221521, -0.953160,
		-0.496123, 0.815938, -0.296827,
		0.843473, 0.534016, 0.058139,
		37.473907, 34.564091, 45.398941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806114, 34.738327, 44.788818>,  <36.883476, 34.190277, 45.358246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806114, 34.738327, 44.788818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180061, 34.680252, 44.918400>,  <37.404430, 34.645409, 44.996147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180061, 34.680252, 44.918400>,  <36.806114, 34.738327, 44.788818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180061, 34.680252, 44.918400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292373, -0.202681, -0.934579,
		0.201349, 0.968422, -0.147030,
		0.934867, -0.145189, 0.323950,
		37.460522, 34.636696, 45.015583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121620, 35.122963, 44.309086>,  <36.806114, 34.738327, 44.788818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121620, 35.122963, 44.309086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384308, 34.868698, 44.471397>,  <37.541920, 34.716141, 44.568787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384308, 34.868698, 44.471397>,  <37.121620, 35.122963, 44.309086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384308, 34.868698, 44.471397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265439, -0.308809, -0.913334,
		0.705881, 0.707511, -0.034070,
		0.656715, -0.635661, 0.405783,
		37.581322, 34.678001, 44.593132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825974, 35.200352, 43.989697>,  <37.121620, 35.122963, 44.309086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825974, 35.200352, 43.989697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846317, 34.833294, 44.147350>,  <37.858524, 34.613060, 44.241943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846317, 34.833294, 44.147350>,  <37.825974, 35.200352, 43.989697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846317, 34.833294, 44.147350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370280, -0.349190, -0.860790,
		0.927527, 0.189719, 0.322026,
		0.050860, -0.917645, 0.394132,
		37.861576, 34.557999, 44.265591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426498, 34.999218, 43.686947>,  <37.825974, 35.200352, 43.989697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426498, 34.999218, 43.686947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239109, 34.656406, 43.772770>,  <38.126675, 34.450718, 43.824265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239109, 34.656406, 43.772770>,  <38.426498, 34.999218, 43.686947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239109, 34.656406, 43.772770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246470, -0.359995, -0.899809,
		0.848403, -0.368651, 0.379879,
		-0.468470, -0.857030, 0.214560,
		38.098568, 34.399296, 43.837139>
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
