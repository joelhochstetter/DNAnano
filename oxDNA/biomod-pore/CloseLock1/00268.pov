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
	<24.499918, 35.243885, 34.639168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511269, 35.056877, 34.992580>,  <24.518078, 34.944672, 35.204628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.511269, 35.056877, 34.992580>,  <24.499918, 35.243885, 34.639168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.511269, 35.056877, 34.992580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497332, 0.773324, 0.393231,
		-0.867096, 0.428250, 0.254454,
		0.028375, -0.467517, 0.883529,
		24.519781, 34.916622, 35.257641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876028, 35.934631, 34.423641>,  <24.499918, 35.243885, 34.639168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876028, 35.934631, 34.423641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005812, 36.166500, 34.722630>,  <25.083681, 36.305622, 34.902023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.005812, 36.166500, 34.722630>,  <24.876028, 35.934631, 34.423641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.005812, 36.166500, 34.722630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945480, -0.175177, -0.274556,
		-0.028212, 0.795800, -0.604902,
		0.324457, 0.579669, 0.747470,
		25.103149, 36.340401, 34.946869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192822, 36.623455, 34.214809>,  <24.876028, 35.934631, 34.423641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192822, 36.623455, 34.214809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363409, 36.492062, 34.551907>,  <25.465761, 36.413227, 34.754166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363409, 36.492062, 34.551907>,  <25.192822, 36.623455, 34.214809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363409, 36.492062, 34.551907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890855, -0.008692, -0.454204,
		0.156524, 0.944470, 0.288924,
		0.426471, -0.328483, 0.842746,
		25.491350, 36.393517, 34.804729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846907, 36.902790, 34.155464>,  <25.192822, 36.623455, 34.214809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846907, 36.902790, 34.155464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893385, 36.625912, 34.440380>,  <25.921272, 36.459785, 34.611332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893385, 36.625912, 34.440380>,  <25.846907, 36.902790, 34.155464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893385, 36.625912, 34.440380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905668, -0.220576, -0.362093,
		0.407754, 0.687176, 0.601269,
		0.116196, -0.692196, 0.712295,
		25.928244, 36.418255, 34.654068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448740, 37.022884, 34.586079>,  <25.846907, 36.902790, 34.155464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448740, 37.022884, 34.586079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370108, 36.633045, 34.629013>,  <26.322927, 36.399143, 34.654774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370108, 36.633045, 34.629013>,  <26.448740, 37.022884, 34.586079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370108, 36.633045, 34.629013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967756, -0.210447, -0.138420,
		0.157493, 0.076667, 0.984540,
		-0.196581, -0.974594, 0.107339,
		26.311132, 36.340668, 34.661213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755348, 37.719780, 34.683079>,  <26.448740, 37.022884, 34.586079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755348, 37.719780, 34.683079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115725, 37.716789, 34.856628>,  <27.331951, 37.714996, 34.960758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115725, 37.716789, 34.856628>,  <26.755348, 37.719780, 34.683079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115725, 37.716789, 34.856628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145966, 0.936366, 0.319238,
		-0.408654, -0.350946, 0.842519,
		0.900942, -0.007478, 0.433876,
		27.386007, 37.714546, 34.986790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722429, 37.948986, 35.403976>,  <26.755348, 37.719780, 34.683079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722429, 37.948986, 35.403976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083179, 38.031712, 35.252266>,  <27.299629, 38.081348, 35.161240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083179, 38.031712, 35.252266>,  <26.722429, 37.948986, 35.403976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083179, 38.031712, 35.252266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152560, 0.973865, 0.168261,
		0.404163, -0.093888, 0.909855,
		0.901874, 0.206813, -0.379277,
		27.353743, 38.093754, 35.138481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977272, 38.543713, 35.900135>,  <26.722429, 37.948986, 35.403976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977272, 38.543713, 35.900135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223217, 38.557583, 35.584988>,  <27.370785, 38.565903, 35.395897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223217, 38.557583, 35.584988>,  <26.977272, 38.543713, 35.900135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223217, 38.557583, 35.584988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095669, 0.988375, 0.118159,
		0.782811, -0.148027, 0.604397,
		0.614862, 0.034674, -0.787872,
		27.407675, 38.567986, 35.348625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326115, 39.170063, 35.965668>,  <26.977272, 38.543713, 35.900135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326115, 39.170063, 35.965668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367008, 39.080837, 35.577896>,  <27.391544, 39.027302, 35.345234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367008, 39.080837, 35.577896>,  <27.326115, 39.170063, 35.965668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367008, 39.080837, 35.577896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097528, 0.972086, -0.213395,
		0.989968, -0.072730, 0.121135,
		0.102234, -0.223068, -0.969427,
		27.397678, 39.013916, 35.287067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919733, 39.596706, 35.641895>,  <27.326115, 39.170063, 35.965668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919733, 39.596706, 35.641895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656025, 39.490685, 35.360439>,  <27.497801, 39.427071, 35.191566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656025, 39.490685, 35.360439>,  <27.919733, 39.596706, 35.641895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656025, 39.490685, 35.360439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021799, 0.928679, -0.370245,
		0.751589, -0.259430, -0.606473,
		-0.659271, -0.265051, -0.703640,
		27.458244, 39.411171, 35.149345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914772, 40.116768, 35.197060>,  <27.919733, 39.596706, 35.641895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914772, 40.116768, 35.197060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595200, 39.933193, 35.041580>,  <27.403456, 39.823048, 34.948292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595200, 39.933193, 35.041580>,  <27.914772, 40.116768, 35.197060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595200, 39.933193, 35.041580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327375, 0.874014, -0.359062,
		0.504511, -0.159617, -0.848523,
		-0.798933, -0.458936, -0.388694,
		27.355520, 39.795513, 34.924973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919956, 40.177372, 34.547115>,  <27.914772, 40.116768, 35.197060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919956, 40.177372, 34.547115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529320, 40.100254, 34.585266>,  <27.294937, 40.053982, 34.608158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529320, 40.100254, 34.585266>,  <27.919956, 40.177372, 34.547115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529320, 40.100254, 34.585266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214931, 0.892230, -0.397153,
		-0.008531, -0.408356, -0.912783,
		-0.976592, -0.192797, 0.095380,
		27.236341, 40.042416, 34.613880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629589, 40.661469, 34.056656>,  <27.919956, 40.177372, 34.547115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629589, 40.661469, 34.056656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301359, 40.574379, 34.268032>,  <27.104422, 40.522125, 34.394859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301359, 40.574379, 34.268032>,  <27.629589, 40.661469, 34.056656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301359, 40.574379, 34.268032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426288, 0.849026, -0.312143,
		-0.380699, -0.481406, -0.789504,
		-0.820577, -0.217723, 0.528441,
		27.055185, 40.509064, 34.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067860, 40.720982, 33.544762>,  <27.629589, 40.661469, 34.056656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067860, 40.720982, 33.544762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955589, 40.762836, 33.926395>,  <26.888227, 40.787949, 34.155376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955589, 40.762836, 33.926395>,  <27.067860, 40.720982, 33.544762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955589, 40.762836, 33.926395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570942, 0.780841, -0.253601,
		-0.771523, -0.615904, -0.159418,
		-0.280674, 0.104641, 0.954082,
		26.871387, 40.794228, 34.212620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316544, 40.771023, 33.520817>,  <27.067860, 40.720982, 33.544762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316544, 40.771023, 33.520817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423279, 40.927586, 33.873089>,  <26.487320, 41.021523, 34.084454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423279, 40.927586, 33.873089>,  <26.316544, 40.771023, 33.520817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423279, 40.927586, 33.873089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538490, 0.818412, -0.200576,
		-0.799267, -0.420717, 0.429151,
		0.266836, 0.391407, 0.880681,
		26.503330, 41.045006, 34.137295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693478, 41.129765, 33.731937>,  <26.316544, 40.771023, 33.520817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693478, 41.129765, 33.731937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006464, 41.265022, 33.941090>,  <26.194256, 41.346176, 34.066582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006464, 41.265022, 33.941090>,  <25.693478, 41.129765, 33.731937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006464, 41.265022, 33.941090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371655, 0.927349, -0.043554,
		-0.499619, -0.160251, 0.851294,
		0.782467, 0.338148, 0.522879,
		26.241203, 41.366467, 34.097954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545815, 41.475002, 34.349804>,  <25.693478, 41.129765, 33.731937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545815, 41.475002, 34.349804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898247, 41.643478, 34.263741>,  <26.109705, 41.744564, 34.212101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898247, 41.643478, 34.263741>,  <25.545815, 41.475002, 34.349804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898247, 41.643478, 34.263741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405546, 0.906867, 0.114562,
		0.243375, -0.013681, 0.969836,
		0.881080, 0.421194, -0.215160,
		26.162571, 41.769836, 34.199192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448162, 42.279270, 34.379559>,  <25.545815, 41.475002, 34.349804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448162, 42.279270, 34.379559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818743, 42.256012, 34.230801>,  <26.041092, 42.242058, 34.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818743, 42.256012, 34.230801>,  <25.448162, 42.279270, 34.379559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818743, 42.256012, 34.230801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030564, 0.973115, -0.228283,
		0.375171, 0.222860, 0.899767,
		0.926452, -0.058145, -0.371896,
		26.096678, 42.238567, 34.119232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864559, 42.830753, 34.634384>,  <25.448162, 42.279270, 34.379559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864559, 42.830753, 34.634384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033279, 42.715824, 34.290401>,  <26.134512, 42.646866, 34.084011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033279, 42.715824, 34.290401>,  <25.864559, 42.830753, 34.634384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033279, 42.715824, 34.290401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115021, 0.957755, -0.263583,
		0.899362, 0.012267, 0.437032,
		0.421803, -0.287324, -0.859958,
		26.159821, 42.629627, 34.032413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489258, 43.309864, 34.580826>,  <25.864559, 42.830753, 34.634384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489258, 43.309864, 34.580826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363659, 43.183292, 34.222771>,  <26.288300, 43.107349, 34.007938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363659, 43.183292, 34.222771>,  <26.489258, 43.309864, 34.580826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363659, 43.183292, 34.222771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178334, 0.906386, -0.382965,
		0.932524, -0.279885, -0.228174,
		-0.314000, -0.316433, -0.895139,
		26.269459, 43.088364, 33.954227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102146, 43.405746, 34.011150>,  <26.489258, 43.309864, 34.580826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102146, 43.405746, 34.011150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756699, 43.393311, 33.809875>,  <26.549431, 43.385849, 33.689110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756699, 43.393311, 33.809875>,  <27.102146, 43.405746, 34.011150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756699, 43.393311, 33.809875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225975, 0.868341, -0.441497,
		0.450663, -0.494993, -0.742890,
		-0.863619, -0.031092, -0.503185,
		26.497612, 43.383984, 33.658920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211754, 43.846703, 33.454655>,  <27.102146, 43.405746, 34.011150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211754, 43.846703, 33.454655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817713, 43.779606, 33.439514>,  <26.581287, 43.739349, 33.430431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817713, 43.779606, 33.439514>,  <27.211754, 43.846703, 33.454655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817713, 43.779606, 33.439514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132719, 0.881616, -0.452922,
		0.109340, -0.441153, -0.890746,
		-0.985104, -0.167742, -0.037847,
		26.522182, 43.729282, 33.428162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986923, 43.762157, 32.657570>,  <27.211754, 43.846703, 33.454655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986923, 43.762157, 32.657570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707376, 43.901344, 32.907532>,  <26.539648, 43.984856, 33.057510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.707376, 43.901344, 32.907532>,  <26.986923, 43.762157, 32.657570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707376, 43.901344, 32.907532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117814, 0.805751, -0.580419,
		-0.705483, -0.479258, -0.522117,
		-0.698866, 0.347963, 0.624906,
		26.497717, 44.005733, 33.095005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789209, 44.356014, 32.319870>,  <26.986923, 43.762157, 32.657570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789209, 44.356014, 32.319870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547392, 44.433331, 32.628975>,  <26.402302, 44.479721, 32.814438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547392, 44.433331, 32.628975>,  <26.789209, 44.356014, 32.319870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547392, 44.433331, 32.628975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142634, 0.928167, -0.343748,
		-0.783696, -0.318034, -0.533549,
		-0.604546, 0.193292, 0.772763,
		26.366028, 44.491318, 32.860806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135210, 44.619736, 31.988703>,  <26.789209, 44.356014, 32.319870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135210, 44.619736, 31.988703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176714, 44.749371, 32.364830>,  <26.201616, 44.827152, 32.590508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176714, 44.749371, 32.364830>,  <26.135210, 44.619736, 31.988703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176714, 44.749371, 32.364830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097287, 0.944196, -0.314690,
		-0.989833, -0.058829, 0.129498,
		0.103759, 0.324089, 0.940319,
		26.207842, 44.846596, 32.646927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949568, 44.971828, 31.912758>,  <26.135210, 44.619736, 31.988703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949568, 44.971828, 31.912758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907942, 45.359463, 31.823280>,  <26.882967, 45.592045, 31.769594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907942, 45.359463, 31.823280>,  <26.949568, 44.971828, 31.912758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907942, 45.359463, 31.823280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864794, 0.199253, 0.460901,
		0.491226, -0.145486, -0.858796,
		-0.104064, 0.969088, -0.223693,
		26.876722, 45.650188, 31.756172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507851, 45.275204, 32.078556>,  <26.949568, 44.971828, 31.912758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507851, 45.275204, 32.078556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335630, 45.623352, 31.982983>,  <27.232298, 45.832241, 31.925638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335630, 45.623352, 31.982983>,  <27.507851, 45.275204, 32.078556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335630, 45.623352, 31.982983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708627, 0.489929, 0.507758,
		0.558996, 0.049301, -0.827704,
		-0.430549, 0.870367, -0.238932,
		27.206467, 45.884460, 31.911303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137104, 45.704926, 32.104626>,  <27.507851, 45.275204, 32.078556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137104, 45.704926, 32.104626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811239, 45.933178, 32.063232>,  <27.615721, 46.070129, 32.038395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811239, 45.933178, 32.063232>,  <28.137104, 45.704926, 32.104626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811239, 45.933178, 32.063232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518440, 0.796551, 0.311009,
		0.259903, 0.199715, -0.944756,
		-0.814660, 0.570632, -0.103485,
		27.566841, 46.104366, 32.032188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242779, 46.258327, 31.603609>,  <28.137104, 45.704926, 32.104626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242779, 46.258327, 31.603609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006813, 46.340981, 31.915842>,  <27.865234, 46.390572, 32.103180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006813, 46.340981, 31.915842>,  <28.242779, 46.258327, 31.603609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006813, 46.340981, 31.915842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566764, 0.794514, 0.218007,
		-0.575136, 0.571010, -0.585804,
		-0.589913, 0.206629, 0.780581,
		27.829840, 46.402969, 32.150017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001141, 47.068336, 31.663988>,  <28.242779, 46.258327, 31.603609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001141, 47.068336, 31.663988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046785, 46.868679, 32.007576>,  <28.074171, 46.748882, 32.213730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046785, 46.868679, 32.007576>,  <28.001141, 47.068336, 31.663988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046785, 46.868679, 32.007576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711483, 0.644507, 0.280004,
		-0.693376, 0.579192, 0.428679,
		0.114111, -0.499146, 0.858971,
		28.081018, 46.718937, 32.265266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847002, 47.508579, 32.213768>,  <28.001141, 47.068336, 31.663988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847002, 47.508579, 32.213768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110008, 47.213428, 32.274715>,  <28.267813, 47.036339, 32.311283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110008, 47.213428, 32.274715>,  <27.847002, 47.508579, 32.213768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110008, 47.213428, 32.274715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652964, 0.658957, 0.373383,
		-0.375911, -0.146016, 0.915079,
		0.657517, -0.737872, 0.152366,
		28.307264, 46.992065, 32.320427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910141, 47.337761, 32.948013>,  <27.847002, 47.508579, 32.213768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910141, 47.337761, 32.948013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267206, 47.254982, 32.787849>,  <28.481445, 47.205315, 32.691750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267206, 47.254982, 32.787849>,  <27.910141, 47.337761, 32.948013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267206, 47.254982, 32.787849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395171, 0.786606, 0.474436,
		0.216781, -0.581742, 0.783953,
		0.892662, -0.206947, -0.400409,
		28.535006, 47.192898, 32.667728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533091, 47.034885, 33.401443>,  <27.910141, 47.337761, 32.948013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533091, 47.034885, 33.401443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656689, 47.280499, 33.110931>,  <28.730846, 47.427868, 32.936623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656689, 47.280499, 33.110931>,  <28.533091, 47.034885, 33.401443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656689, 47.280499, 33.110931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522385, 0.528569, 0.669125,
		0.794756, -0.586153, -0.157438,
		0.308993, 0.614034, -0.726281,
		28.749386, 47.464710, 32.893047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252560, 47.124001, 33.402790>,  <28.533091, 47.034885, 33.401443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252560, 47.124001, 33.402790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110828, 47.447784, 33.215504>,  <29.025789, 47.642056, 33.103134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110828, 47.447784, 33.215504>,  <29.252560, 47.124001, 33.402790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110828, 47.447784, 33.215504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592001, 0.581760, 0.557755,
		0.723868, -0.079553, -0.685336,
		-0.354330, 0.809461, -0.468212,
		29.004530, 47.690624, 33.075039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207085, 47.147076, 34.202511>,  <29.252560, 47.124001, 33.402790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207085, 47.147076, 34.202511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943899, 47.113621, 34.501865>,  <28.785988, 47.093548, 34.681480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943899, 47.113621, 34.501865>,  <29.207085, 47.147076, 34.202511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943899, 47.113621, 34.501865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256670, -0.959212, 0.118461,
		0.707956, 0.270032, 0.652595,
		-0.657966, -0.083636, 0.748389,
		28.746510, 47.088531, 34.726383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513756, 46.910187, 34.917282>,  <29.207085, 47.147076, 34.202511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513756, 46.910187, 34.917282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128632, 46.811802, 34.872559>,  <28.897558, 46.752769, 34.845726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128632, 46.811802, 34.872559>,  <29.513756, 46.910187, 34.917282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128632, 46.811802, 34.872559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222624, -0.956693, 0.187556,
		-0.153098, 0.155689, 0.975870,
		-0.962808, -0.245966, -0.111807,
		28.839788, 46.738010, 34.839016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368626, 46.482143, 35.498295>,  <29.513756, 46.910187, 34.917282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368626, 46.482143, 35.498295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122076, 46.388218, 35.197643>,  <28.974146, 46.331863, 35.017254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122076, 46.388218, 35.197643>,  <29.368626, 46.482143, 35.498295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122076, 46.388218, 35.197643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057068, -0.965316, 0.254773,
		-0.785382, 0.114142, 0.608398,
		-0.616376, -0.234814, -0.751627,
		28.937162, 46.317772, 34.972157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008785, 45.920776, 35.685539>,  <29.368626, 46.482143, 35.498295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008785, 45.920776, 35.685539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959908, 45.925152, 35.288559>,  <28.930582, 45.927776, 35.050373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959908, 45.925152, 35.288559>,  <29.008785, 45.920776, 35.685539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959908, 45.925152, 35.288559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072064, -0.997398, -0.002119,
		-0.989886, 0.071261, 0.122662,
		-0.122192, 0.010937, -0.992446,
		28.923250, 45.928432, 34.990826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588596, 45.361080, 35.552677>,  <29.008785, 45.920776, 35.685539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588596, 45.361080, 35.552677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704512, 45.467461, 35.184917>,  <28.774061, 45.531288, 34.964264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704512, 45.467461, 35.184917>,  <28.588596, 45.361080, 35.552677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704512, 45.467461, 35.184917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007234, -0.959980, -0.279975,
		-0.957064, 0.087784, -0.276265,
		0.289786, 0.265955, -0.919397,
		28.791447, 45.547249, 34.909100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108938, 45.007202, 35.168678>,  <28.588596, 45.361080, 35.552677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108938, 45.007202, 35.168678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436127, 45.079105, 34.950100>,  <28.632441, 45.122250, 34.818951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436127, 45.079105, 34.950100>,  <28.108938, 45.007202, 35.168678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436127, 45.079105, 34.950100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023491, -0.938691, -0.343958,
		-0.574778, 0.294185, -0.763601,
		0.817972, 0.179762, -0.546450,
		28.681519, 45.133034, 34.786163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015472, 44.663815, 34.551922>,  <28.108938, 45.007202, 35.168678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015472, 44.663815, 34.551922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413729, 44.698578, 34.538376>,  <28.652683, 44.719437, 34.530251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413729, 44.698578, 34.538376>,  <28.015472, 44.663815, 34.551922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413729, 44.698578, 34.538376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076954, -0.970561, -0.228230,
		-0.052698, 0.224630, -0.973018,
		0.995641, 0.086905, -0.033860,
		28.712421, 44.724648, 34.528217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204603, 44.267937, 34.072678>,  <28.015472, 44.663815, 34.551922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204603, 44.267937, 34.072678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573593, 44.303986, 34.222836>,  <28.794987, 44.325615, 34.312931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573593, 44.303986, 34.222836>,  <28.204603, 44.267937, 34.072678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573593, 44.303986, 34.222836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169445, -0.968222, -0.183939,
		0.346885, 0.233287, -0.908432,
		0.922474, 0.090124, 0.375391,
		28.850336, 44.331024, 34.335453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614443, 44.132935, 33.542816>,  <28.204603, 44.267937, 34.072678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614443, 44.132935, 33.542816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847347, 44.049347, 33.857090>,  <28.987091, 43.999195, 34.045654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847347, 44.049347, 33.857090>,  <28.614443, 44.132935, 33.542816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847347, 44.049347, 33.857090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032863, -0.959565, -0.279564,
		0.812336, 0.188599, -0.551851,
		0.582263, -0.208965, 0.785687,
		29.022026, 43.986656, 34.092796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039274, 43.633732, 33.399181>,  <28.614443, 44.132935, 33.542816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039274, 43.633732, 33.399181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112528, 43.578735, 33.788551>,  <29.156479, 43.545738, 34.022175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112528, 43.578735, 33.788551>,  <29.039274, 43.633732, 33.399181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112528, 43.578735, 33.788551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233958, -0.955628, -0.178996,
		0.954844, 0.260521, -0.142839,
		0.183133, -0.137495, 0.973426,
		29.167467, 43.537487, 34.080578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630999, 43.119942, 33.463928>,  <29.039274, 43.633732, 33.399181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630999, 43.119942, 33.463928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465862, 43.102734, 33.827843>,  <29.366781, 43.092411, 34.046192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465862, 43.102734, 33.827843>,  <29.630999, 43.119942, 33.463928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465862, 43.102734, 33.827843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075745, -0.997046, -0.012771,
		0.907649, 0.063639, 0.414877,
		-0.412839, -0.043016, 0.909788,
		29.342010, 43.089828, 34.100780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039547, 42.650875, 33.790100>,  <29.630999, 43.119942, 33.463928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039547, 42.650875, 33.790100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716526, 42.681522, 34.024021>,  <29.522715, 42.699913, 34.164371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716526, 42.681522, 34.024021>,  <30.039547, 42.650875, 33.790100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716526, 42.681522, 34.024021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076639, -0.969487, 0.232854,
		0.584798, 0.232859, 0.777038,
		-0.807551, 0.076621, 0.584800,
		29.474260, 42.704510, 34.199463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289114, 42.585258, 34.427105>,  <30.039547, 42.650875, 33.790100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289114, 42.585258, 34.427105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906168, 42.475712, 34.390327>,  <29.676401, 42.409985, 34.368259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906168, 42.475712, 34.390327>,  <30.289114, 42.585258, 34.427105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906168, 42.475712, 34.390327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235759, -0.924606, 0.299203,
		-0.166955, 0.264769, 0.949749,
		-0.957363, -0.273865, -0.091946,
		29.618959, 42.393551, 34.362743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233259, 42.256519, 35.013603>,  <30.289114, 42.585258, 34.427105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233259, 42.256519, 35.013603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914249, 42.128479, 34.809059>,  <29.722843, 42.051655, 34.686333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914249, 42.128479, 34.809059>,  <30.233259, 42.256519, 35.013603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914249, 42.128479, 34.809059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158933, -0.929165, 0.333755,
		-0.581973, 0.184906, 0.791907,
		-0.797526, -0.320097, -0.511361,
		29.674992, 42.032452, 34.655651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876379, 41.752918, 35.559589>,  <30.233259, 42.256519, 35.013603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876379, 41.752918, 35.559589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742884, 41.681820, 35.189285>,  <29.662786, 41.639160, 34.967102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742884, 41.681820, 35.189285>,  <29.876379, 41.752918, 35.559589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742884, 41.681820, 35.189285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135362, -0.980921, 0.139536,
		-0.932896, -0.078744, 0.351433,
		-0.333740, -0.177743, -0.925756,
		29.642761, 41.628498, 34.911560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297304, 41.228188, 35.621330>,  <29.876379, 41.752918, 35.559589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297304, 41.228188, 35.621330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421240, 41.192284, 35.242714>,  <29.495602, 41.170742, 35.015545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421240, 41.192284, 35.242714>,  <29.297304, 41.228188, 35.621330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421240, 41.192284, 35.242714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128872, -0.982382, 0.135339,
		-0.942015, -0.163916, -0.292812,
		0.309838, -0.089756, -0.946543,
		29.514191, 41.165356, 34.958752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968706, 40.573372, 35.305504>,  <29.297304, 41.228188, 35.621330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968706, 40.573372, 35.305504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291668, 40.677139, 35.093544>,  <29.485445, 40.739399, 34.966366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291668, 40.677139, 35.093544>,  <28.968706, 40.573372, 35.305504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291668, 40.677139, 35.093544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253412, -0.963563, -0.085607,
		-0.532804, -0.065164, -0.843726,
		0.807405, 0.259422, -0.529904,
		29.533890, 40.754967, 34.934574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911770, 40.092106, 34.796127>,  <28.968706, 40.573372, 35.305504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911770, 40.092106, 34.796127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290226, 40.221596, 34.794281>,  <29.517300, 40.299290, 34.793175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290226, 40.221596, 34.794281>,  <28.911770, 40.092106, 34.796127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290226, 40.221596, 34.794281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315809, -0.925959, -0.207040,
		-0.071294, 0.194433, -0.978322,
		0.946141, 0.323723, -0.004611,
		29.574068, 40.318714, 34.792896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192396, 39.794720, 34.262691>,  <28.911770, 40.092106, 34.796127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192396, 39.794720, 34.262691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516621, 39.935341, 34.450054>,  <29.711155, 40.019714, 34.562469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516621, 39.935341, 34.450054>,  <29.192396, 39.794720, 34.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516621, 39.935341, 34.450054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486512, -0.849437, -0.204359,
		0.326035, 0.393528, -0.859556,
		0.810560, 0.351556, 0.468402,
		29.759789, 40.040810, 34.590576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789095, 39.871494, 33.882294>,  <29.192396, 39.794720, 34.262691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789095, 39.871494, 33.882294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905298, 39.796291, 34.257584>,  <29.975019, 39.751167, 34.482758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905298, 39.796291, 34.257584>,  <29.789095, 39.871494, 33.882294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905298, 39.796291, 34.257584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296070, -0.914730, -0.274977,
		0.909916, 0.357662, -0.210073,
		0.290508, -0.188010, 0.938220,
		29.992451, 39.739887, 34.539051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268503, 39.297108, 33.933071>,  <29.789095, 39.871494, 33.882294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268503, 39.297108, 33.933071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184929, 39.298496, 34.324242>,  <30.134785, 39.299332, 34.558945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184929, 39.298496, 34.324242>,  <30.268503, 39.297108, 33.933071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184929, 39.298496, 34.324242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270400, -0.960802, 0.061185,
		0.939803, 0.277214, 0.199809,
		-0.208938, 0.003474, 0.977923,
		30.122248, 39.299538, 34.617619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779484, 38.881184, 34.141418>,  <30.268503, 39.297108, 33.933071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779484, 38.881184, 34.141418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514874, 38.913006, 34.439693>,  <30.356108, 38.932098, 34.618660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514874, 38.913006, 34.439693>,  <30.779484, 38.881184, 34.141418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514874, 38.913006, 34.439693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242777, -0.918091, 0.313319,
		0.709537, 0.388305, 0.588028,
		-0.661526, 0.079552, 0.745691,
		30.316416, 38.936871, 34.663403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119967, 38.691608, 34.774120>,  <30.779484, 38.881184, 34.141418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119967, 38.691608, 34.774120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727427, 38.626568, 34.815132>,  <30.491903, 38.587543, 34.839737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727427, 38.626568, 34.815132>,  <31.119967, 38.691608, 34.774120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727427, 38.626568, 34.815132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179955, -0.964634, 0.192606,
		0.067582, 0.207464, 0.975905,
		-0.981351, -0.162602, 0.102526,
		30.433022, 38.577785, 34.845890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463295, 38.634975, 35.443733>,  <31.119967, 38.691608, 34.774120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463295, 38.634975, 35.443733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165251, 38.887165, 35.356728>,  <30.986423, 39.038479, 35.304523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165251, 38.887165, 35.356728>,  <31.463295, 38.634975, 35.443733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165251, 38.887165, 35.356728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600958, 0.493245, -0.628935,
		-0.289237, -0.599346, -0.746409,
		-0.745112, 0.630472, -0.217517,
		30.941717, 39.076305, 35.291473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125835, 38.415459, 35.542366>,  <31.463295, 38.634975, 35.443733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125835, 38.415459, 35.542366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985620, 38.043819, 35.495205>,  <31.901491, 37.820835, 35.466908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985620, 38.043819, 35.495205>,  <32.125835, 38.415459, 35.542366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985620, 38.043819, 35.495205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936256, 0.350786, 0.019346,
		0.023383, 0.117165, -0.992837,
		-0.350540, -0.929098, -0.117899,
		31.880459, 37.765091, 35.459835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650093, 37.831066, 35.544498>,  <32.125835, 38.415459, 35.542366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650093, 37.831066, 35.544498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748875, 38.214142, 35.603630>,  <32.808144, 38.443985, 35.639107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748875, 38.214142, 35.603630>,  <32.650093, 37.831066, 35.544498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748875, 38.214142, 35.603630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681187, -0.280064, 0.676424,
		0.689202, -0.066349, -0.721525,
		0.246954, 0.957686, 0.147825,
		32.822960, 38.501446, 35.647976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290459, 37.924927, 35.465416>,  <32.650093, 37.831066, 35.544498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290459, 37.924927, 35.465416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113438, 38.141205, 35.751575>,  <33.007225, 38.270973, 35.923271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113438, 38.141205, 35.751575>,  <33.290459, 37.924927, 35.465416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113438, 38.141205, 35.751575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496504, -0.516589, 0.697581,
		0.746747, 0.663913, -0.039841,
		-0.442552, 0.540698, 0.715397,
		32.980671, 38.303413, 35.966194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876499, 38.095009, 36.004189>,  <33.290459, 37.924927, 35.465416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876499, 38.095009, 36.004189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507805, 38.069889, 36.157265>,  <33.286587, 38.054817, 36.249111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507805, 38.069889, 36.157265>,  <33.876499, 38.095009, 36.004189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507805, 38.069889, 36.157265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356016, -0.528345, 0.770782,
		0.153788, 0.846704, 0.509354,
		-0.921739, -0.062801, 0.382693,
		33.231285, 38.051048, 36.272072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968445, 38.234455, 36.693363>,  <33.876499, 38.095009, 36.004189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968445, 38.234455, 36.693363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620243, 38.043839, 36.644157>,  <33.411324, 37.929470, 36.614632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620243, 38.043839, 36.644157>,  <33.968445, 38.234455, 36.693363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620243, 38.043839, 36.644157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228305, -0.612426, 0.756843,
		-0.436005, 0.630749, 0.641916,
		-0.870504, -0.476540, -0.123017,
		33.359093, 37.900875, 36.607254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474937, 38.277279, 37.178371>,  <33.968445, 38.234455, 36.693363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474937, 38.277279, 37.178371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407887, 37.924183, 37.002792>,  <33.367657, 37.712326, 36.897446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407887, 37.924183, 37.002792>,  <33.474937, 38.277279, 37.178371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407887, 37.924183, 37.002792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056317, -0.453098, 0.889680,
		-0.984240, 0.124415, 0.125665,
		-0.167628, -0.882736, -0.438951,
		33.357597, 37.659363, 36.871109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844616, 37.993595, 37.463509>,  <33.474937, 38.277279, 37.178371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844616, 37.993595, 37.463509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020306, 37.666576, 37.314541>,  <33.125721, 37.470364, 37.225159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020306, 37.666576, 37.314541>,  <32.844616, 37.993595, 37.463509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020306, 37.666576, 37.314541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054834, -0.389379, 0.919444,
		-0.896702, -0.424264, -0.126195,
		0.439225, -0.817548, -0.372421,
		33.152073, 37.421310, 37.202816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604641, 37.423580, 37.968719>,  <32.844616, 37.993595, 37.463509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604641, 37.423580, 37.968719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871990, 37.235962, 37.737801>,  <33.032398, 37.123390, 37.599247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871990, 37.235962, 37.737801>,  <32.604641, 37.423580, 37.968719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871990, 37.235962, 37.737801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153500, -0.672440, 0.724059,
		-0.727819, -0.572555, -0.377440,
		0.668369, -0.469047, -0.577302,
		33.072502, 37.095249, 37.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429771, 36.812553, 37.875298>,  <32.604641, 37.423580, 37.968719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429771, 36.812553, 37.875298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827473, 36.807133, 37.832836>,  <33.066093, 36.803879, 37.807362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827473, 36.807133, 37.832836>,  <32.429771, 36.812553, 37.875298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827473, 36.807133, 37.832836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063722, -0.721935, 0.689021,
		-0.085971, -0.691828, -0.716926,
		0.994258, -0.013552, -0.106150,
		33.125751, 36.803066, 37.800991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538624, 36.079517, 37.887901>,  <32.429771, 36.812553, 37.875298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538624, 36.079517, 37.887901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890953, 36.255302, 37.958351>,  <33.102352, 36.360775, 38.000622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890953, 36.255302, 37.958351>,  <32.538624, 36.079517, 37.887901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890953, 36.255302, 37.958351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170221, -0.641095, 0.748347,
		0.441783, -0.629182, -0.639498,
		0.880825, 0.439463, 0.176125,
		33.155201, 36.387142, 38.011189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006927, 35.544147, 38.029789>,  <32.538624, 36.079517, 37.887901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006927, 35.544147, 38.029789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201054, 35.864082, 38.171062>,  <33.317528, 36.056042, 38.255829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201054, 35.864082, 38.171062>,  <33.006927, 35.544147, 38.029789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201054, 35.864082, 38.171062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298339, -0.531187, 0.792991,
		0.821867, -0.279479, -0.496412,
		0.485312, 0.799833, 0.353186,
		33.346645, 36.104031, 38.277020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679905, 35.318176, 38.363419>,  <33.006927, 35.544147, 38.029789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679905, 35.318176, 38.363419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622799, 35.679123, 38.526073>,  <33.588535, 35.895691, 38.623665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622799, 35.679123, 38.526073>,  <33.679905, 35.318176, 38.363419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622799, 35.679123, 38.526073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277595, -0.357846, 0.891564,
		0.950031, 0.240163, -0.199405,
		-0.142765, 0.902368, 0.406633,
		33.579971, 35.949833, 38.648064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291641, 35.424545, 38.807705>,  <33.679905, 35.318176, 38.363419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291641, 35.424545, 38.807705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030468, 35.685181, 38.962170>,  <33.873764, 35.841560, 39.054848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030468, 35.685181, 38.962170>,  <34.291641, 35.424545, 38.807705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030468, 35.685181, 38.962170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280815, -0.265248, 0.922381,
		0.703439, 0.710688, -0.009788,
		-0.652929, 0.651587, 0.386158,
		33.834591, 35.880657, 39.078018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695644, 35.845478, 39.406441>,  <34.291641, 35.424545, 38.807705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695644, 35.845478, 39.406441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302383, 35.853779, 39.479076>,  <34.066425, 35.858761, 39.522659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302383, 35.853779, 39.479076>,  <34.695644, 35.845478, 39.406441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302383, 35.853779, 39.479076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166302, -0.310572, 0.935889,
		0.075822, 0.950323, 0.301889,
		-0.983155, 0.020756, 0.181589,
		34.007439, 35.860004, 39.533554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607441, 36.189175, 40.042698>,  <34.695644, 35.845478, 39.406441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607441, 36.189175, 40.042698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261086, 36.000927, 39.974861>,  <34.053272, 35.887978, 39.934158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261086, 36.000927, 39.974861>,  <34.607441, 36.189175, 40.042698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261086, 36.000927, 39.974861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025924, -0.296346, 0.954729,
		-0.499567, 0.831084, 0.244403,
		-0.865887, -0.470615, -0.169590,
		34.001320, 35.859741, 39.923985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304951, 36.222633, 40.656837>,  <34.607441, 36.189175, 40.042698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304951, 36.222633, 40.656837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108555, 35.926884, 40.472553>,  <33.990715, 35.749435, 40.361984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108555, 35.926884, 40.472553>,  <34.304951, 36.222633, 40.656837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108555, 35.926884, 40.472553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076925, -0.489978, 0.868334,
		-0.867760, 0.461787, 0.183700,
		-0.490994, -0.739374, -0.460706,
		33.961258, 35.705070, 40.334343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704494, 36.030281, 41.061108>,  <34.304951, 36.222633, 40.656837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704494, 36.030281, 41.061108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744869, 35.691864, 40.851719>,  <33.769093, 35.488815, 40.726086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744869, 35.691864, 40.851719>,  <33.704494, 36.030281, 41.061108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744869, 35.691864, 40.851719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078353, -0.531290, 0.843559,
		-0.991803, -0.044130, -0.119917,
		0.100937, -0.846040, -0.523476,
		33.775150, 35.438053, 40.694675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136211, 35.653458, 41.267632>,  <33.704494, 36.030281, 41.061108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136211, 35.653458, 41.267632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408283, 35.402260, 41.116379>,  <33.571526, 35.251541, 41.025627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408283, 35.402260, 41.116379>,  <33.136211, 35.653458, 41.267632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408283, 35.402260, 41.116379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167775, -0.635505, 0.753648,
		-0.713591, -0.449172, -0.537617,
		0.680176, -0.627995, -0.378131,
		33.612335, 35.213863, 41.002941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758373, 35.084698, 41.407097>,  <33.136211, 35.653458, 41.267632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758373, 35.084698, 41.407097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138313, 34.983143, 41.334084>,  <33.366280, 34.922211, 41.290276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138313, 34.983143, 41.334084>,  <32.758373, 35.084698, 41.407097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138313, 34.983143, 41.334084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054430, -0.709083, 0.703021,
		-0.307921, -0.657831, -0.687345,
		0.949854, -0.253887, -0.182536,
		33.423271, 34.906975, 41.279324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879810, 34.386421, 41.150108>,  <32.758373, 35.084698, 41.407097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879810, 34.386421, 41.150108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248154, 34.431297, 41.299473>,  <33.469158, 34.458225, 41.389091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248154, 34.431297, 41.299473>,  <32.879810, 34.386421, 41.150108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248154, 34.431297, 41.299473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234116, -0.606740, 0.759642,
		0.311793, -0.786943, -0.532453,
		0.920855, 0.112195, 0.373413,
		33.524410, 34.464954, 41.411495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047920, 33.707062, 41.339874>,  <32.879810, 34.386421, 41.150108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047920, 33.707062, 41.339874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304565, 33.933647, 41.546738>,  <33.458553, 34.069599, 41.670856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304565, 33.933647, 41.546738>,  <33.047920, 33.707062, 41.339874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304565, 33.933647, 41.546738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104642, -0.603292, 0.790625,
		0.759858, -0.561392, -0.327804,
		0.641612, 0.566461, 0.517161,
		33.497047, 34.103584, 41.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439026, 33.185726, 41.676422>,  <33.047920, 33.707062, 41.339874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439026, 33.185726, 41.676422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491066, 33.512936, 41.900532>,  <33.522289, 33.709263, 42.034996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491066, 33.512936, 41.900532>,  <33.439026, 33.185726, 41.676422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491066, 33.512936, 41.900532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022207, -0.562529, 0.826479,
		0.991252, -0.119969, -0.055021,
		0.130103, 0.818027, 0.560272,
		33.530098, 33.758343, 42.068615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895718, 32.943928, 42.180439>,  <33.439026, 33.185726, 41.676422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895718, 32.943928, 42.180439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738869, 33.281342, 42.327240>,  <33.644760, 33.483791, 42.415321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738869, 33.281342, 42.327240>,  <33.895718, 32.943928, 42.180439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738869, 33.281342, 42.327240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120027, -0.442457, 0.888721,
		0.912051, 0.304434, 0.274743,
		-0.392119, 0.843535, 0.367003,
		33.621235, 33.534401, 42.437340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151955, 32.951191, 42.842609>,  <33.895718, 32.943928, 42.180439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151955, 32.951191, 42.842609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843288, 33.205200, 42.856899>,  <33.658089, 33.357605, 42.865475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843288, 33.205200, 42.856899>,  <34.151955, 32.951191, 42.842609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843288, 33.205200, 42.856899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187870, -0.281237, 0.941069,
		0.607650, 0.719477, 0.336323,
		-0.771664, 0.635026, 0.035725,
		33.611790, 33.395706, 42.867619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242607, 33.342773, 43.540318>,  <34.151955, 32.951191, 42.842609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242607, 33.342773, 43.540318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871689, 33.328968, 43.391224>,  <33.649139, 33.320683, 43.301765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871689, 33.328968, 43.391224>,  <34.242607, 33.342773, 43.540318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871689, 33.328968, 43.391224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331091, -0.388954, 0.859706,
		-0.174652, 0.920610, 0.349247,
		-0.927295, -0.034516, -0.372737,
		33.593502, 33.318615, 43.279404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809193, 33.626781, 44.057014>,  <34.242607, 33.342773, 43.540318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809193, 33.626781, 44.057014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566227, 33.424095, 43.812302>,  <33.420448, 33.302483, 43.665474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566227, 33.424095, 43.812302>,  <33.809193, 33.626781, 44.057014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566227, 33.424095, 43.812302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321187, -0.547723, 0.772553,
		-0.726557, 0.665758, 0.169943,
		-0.607415, -0.506720, -0.611785,
		33.384003, 33.272079, 43.628765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172966, 33.605312, 44.350571>,  <33.809193, 33.626781, 44.057014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172966, 33.605312, 44.350571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189449, 33.305256, 44.086571>,  <33.199341, 33.125221, 43.928173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189449, 33.305256, 44.086571>,  <33.172966, 33.605312, 44.350571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189449, 33.305256, 44.086571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471615, -0.596945, 0.649027,
		-0.880841, 0.284517, -0.378377,
		0.041212, -0.750138, -0.659996,
		33.201813, 33.080215, 43.888573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574486, 33.296124, 44.475563>,  <33.172966, 33.605312, 44.350571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574486, 33.296124, 44.475563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773312, 33.003750, 44.288521>,  <32.892605, 32.828323, 44.176296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773312, 33.003750, 44.288521>,  <32.574486, 33.296124, 44.475563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773312, 33.003750, 44.288521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312383, -0.653503, 0.689456,
		-0.809534, -0.196629, -0.553165,
		0.497062, -0.730938, -0.467610,
		32.922432, 32.784470, 44.148239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052994, 32.753605, 44.442604>,  <32.574486, 33.296124, 44.475563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052994, 32.753605, 44.442604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402725, 32.560223, 44.425510>,  <32.612564, 32.444195, 44.415253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402725, 32.560223, 44.425510>,  <32.052994, 32.753605, 44.442604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402725, 32.560223, 44.425510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353831, -0.695213, 0.625686,
		-0.332198, -0.531934, -0.778904,
		0.874327, -0.483452, -0.042734,
		32.665024, 32.415188, 44.412689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875753, 32.064625, 44.442429>,  <32.052994, 32.753605, 44.442604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875753, 32.064625, 44.442429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259605, 32.080189, 44.553852>,  <32.489918, 32.089527, 44.620705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259605, 32.080189, 44.553852>,  <31.875753, 32.064625, 44.442429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259605, 32.080189, 44.553852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187722, -0.648905, 0.737349,
		0.209452, -0.759874, -0.615403,
		0.959630, 0.038914, 0.278559,
		32.547493, 32.091862, 44.637421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918716, 31.492584, 44.830818>,  <31.875753, 32.064625, 44.442429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918716, 31.492584, 44.830818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285419, 31.639278, 44.894138>,  <32.505444, 31.727295, 44.932129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285419, 31.639278, 44.894138>,  <31.918716, 31.492584, 44.830818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285419, 31.639278, 44.894138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063429, -0.524933, 0.848777,
		0.394372, -0.768084, -0.504499,
		0.916760, 0.366734, 0.158300,
		32.560448, 31.749298, 44.941628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308052, 30.942701, 45.070560>,  <31.918716, 31.492584, 44.830818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308052, 30.942701, 45.070560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511169, 31.259163, 45.206928>,  <32.633041, 31.449039, 45.288750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511169, 31.259163, 45.206928>,  <32.308052, 30.942701, 45.070560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511169, 31.259163, 45.206928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223716, -0.503260, 0.834674,
		0.831923, -0.347575, -0.432546,
		0.507795, 0.791152, 0.340915,
		32.663509, 31.496508, 45.309204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835255, 30.676596, 45.297771>,  <32.308052, 30.942701, 45.070560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835255, 30.676596, 45.297771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805546, 31.028765, 45.485107>,  <32.787720, 31.240067, 45.597507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805546, 31.028765, 45.485107>,  <32.835255, 30.676596, 45.297771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805546, 31.028765, 45.485107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209114, -0.445446, 0.870545,
		0.975066, 0.162594, -0.151024,
		-0.074273, 0.880421, 0.468340,
		32.783264, 31.292891, 45.625610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306355, 30.684626, 45.752522>,  <32.835255, 30.676596, 45.297771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306355, 30.684626, 45.752522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125565, 31.000254, 45.918938>,  <33.017090, 31.189631, 46.018787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125565, 31.000254, 45.918938>,  <33.306355, 30.684626, 45.752522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125565, 31.000254, 45.918938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235443, -0.344330, 0.908847,
		0.860398, 0.508730, -0.030152,
		-0.451975, 0.789070, 0.416038,
		32.989971, 31.236975, 46.043751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772175, 31.132153, 46.149632>,  <33.306355, 30.684626, 45.752522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772175, 31.132153, 46.149632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390533, 31.138147, 46.269268>,  <33.161549, 31.141745, 46.341049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390533, 31.138147, 46.269268>,  <33.772175, 31.132153, 46.149632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390533, 31.138147, 46.269268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274298, -0.357054, 0.892901,
		0.120174, 0.933963, 0.336557,
		-0.954106, 0.014987, 0.299093,
		33.104301, 31.142643, 46.358997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841454, 31.423485, 46.724846>,  <33.772175, 31.132153, 46.149632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841454, 31.423485, 46.724846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479347, 31.253551, 46.723930>,  <33.262081, 31.151592, 46.723381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479347, 31.253551, 46.723930>,  <33.841454, 31.423485, 46.724846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479347, 31.253551, 46.723930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200173, -0.431292, 0.879726,
		-0.374726, 0.795929, 0.475475,
		-0.905268, -0.424834, -0.002293,
		33.207767, 31.126101, 46.723244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794994, 31.338539, 47.382854>,  <33.841454, 31.423485, 46.724846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794994, 31.338539, 47.382854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502541, 31.107561, 47.237530>,  <33.327068, 30.968973, 47.150337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502541, 31.107561, 47.237530>,  <33.794994, 31.338539, 47.382854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502541, 31.107561, 47.237530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020781, -0.551134, 0.834158,
		-0.681913, 0.602334, 0.414955,
		-0.731138, -0.577446, -0.363308,
		33.283199, 30.934328, 47.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347012, 31.122080, 47.897102>,  <33.794994, 31.338539, 47.382854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347012, 31.122080, 47.897102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237278, 30.846153, 47.629105>,  <33.171436, 30.680597, 47.468307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237278, 30.846153, 47.629105>,  <33.347012, 31.122080, 47.897102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237278, 30.846153, 47.629105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376609, -0.564000, 0.734894,
		-0.884819, 0.453935, -0.105064,
		-0.274338, -0.689816, -0.669994,
		33.154976, 30.639208, 47.428108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700161, 30.797932, 48.125195>,  <33.347012, 31.122080, 47.897102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700161, 30.797932, 48.125195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873634, 30.533052, 47.880764>,  <32.977718, 30.374125, 47.734104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873634, 30.533052, 47.880764>,  <32.700161, 30.797932, 48.125195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873634, 30.533052, 47.880764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453052, -0.746460, 0.487382,
		-0.778890, 0.065485, -0.623733,
		0.433676, -0.662200, -0.611078,
		33.003738, 30.334393, 47.697441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150585, 30.374004, 47.985298>,  <32.700161, 30.797932, 48.125195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150585, 30.374004, 47.985298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483795, 30.167265, 47.906372>,  <32.683723, 30.043221, 47.859016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483795, 30.167265, 47.906372>,  <32.150585, 30.374004, 47.985298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483795, 30.167265, 47.906372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415683, -0.820097, 0.393253,
		-0.365067, -0.245571, -0.898009,
		0.833027, -0.516851, -0.197310,
		32.733704, 30.012209, 47.847179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896275, 29.827354, 47.560673>,  <32.150585, 30.374004, 47.985298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896275, 29.827354, 47.560673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247166, 29.723684, 47.722313>,  <32.457699, 29.661482, 47.819298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247166, 29.723684, 47.722313>,  <31.896275, 29.827354, 47.560673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247166, 29.723684, 47.722313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386575, -0.880463, 0.274490,
		0.284656, -0.397006, -0.872558,
		0.877229, -0.259174, 0.404102,
		32.510334, 29.645931, 47.843544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073006, 29.155468, 47.377514>,  <31.896275, 29.827354, 47.560673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073006, 29.155468, 47.377514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292675, 29.208389, 47.707581>,  <32.424477, 29.240143, 47.905621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292675, 29.208389, 47.707581>,  <32.073006, 29.155468, 47.377514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292675, 29.208389, 47.707581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363904, -0.851005, 0.378634,
		0.752319, -0.508218, -0.419203,
		0.549173, 0.132304, 0.825170,
		32.457428, 29.248081, 47.955132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217369, 28.462782, 47.627548>,  <32.073006, 29.155468, 47.377514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217369, 28.462782, 47.627548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298607, 28.701860, 47.937775>,  <32.347351, 28.845308, 48.123913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298607, 28.701860, 47.937775>,  <32.217369, 28.462782, 47.627548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298607, 28.701860, 47.937775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415117, -0.664814, 0.621048,
		0.886809, -0.448085, 0.113093,
		0.203096, 0.597697, 0.775570,
		32.359535, 28.881170, 48.170444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664505, 28.132093, 48.121040>,  <32.217369, 28.462782, 47.627548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664505, 28.132093, 48.121040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437500, 28.390574, 48.325138>,  <32.301296, 28.545662, 48.447598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437500, 28.390574, 48.325138>,  <32.664505, 28.132093, 48.121040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437500, 28.390574, 48.325138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265650, -0.730273, 0.629390,
		0.779331, 0.221642, 0.586104,
		-0.567516, 0.646201, 0.510245,
		32.267246, 28.584435, 48.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677536, 27.805908, 48.738003>,  <32.664505, 28.132093, 48.121040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677536, 27.805908, 48.738003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426689, 28.108902, 48.810608>,  <32.276180, 28.290699, 48.854172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426689, 28.108902, 48.810608>,  <32.677536, 27.805908, 48.738003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426689, 28.108902, 48.810608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407882, -0.517868, 0.751961,
		0.663597, 0.397531, 0.633726,
		-0.627114, 0.757484, 0.181510,
		32.238556, 28.336147, 48.865063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668015, 27.998926, 49.543457>,  <32.677536, 27.805908, 48.738003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668015, 27.998926, 49.543457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319683, 28.101526, 49.375710>,  <32.110683, 28.163086, 49.275063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319683, 28.101526, 49.375710>,  <32.668015, 27.998926, 49.543457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319683, 28.101526, 49.375710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484663, -0.590662, 0.645152,
		-0.082222, 0.765067, 0.638680,
		-0.870828, 0.256499, -0.419365,
		32.058434, 28.178476, 49.249901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173847, 28.037960, 50.100361>,  <32.668015, 27.998926, 49.543457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173847, 28.037960, 50.100361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951517, 27.969875, 49.774887>,  <31.818119, 27.929026, 49.579601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951517, 27.969875, 49.774887>,  <32.173847, 28.037960, 50.100361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951517, 27.969875, 49.774887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636482, -0.542493, 0.548262,
		-0.534738, 0.822636, 0.193198,
		-0.555829, -0.170209, -0.813685,
		31.784769, 27.918812, 49.530781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406885, 28.340759, 50.174625>,  <32.173847, 28.037960, 50.100361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406885, 28.340759, 50.174625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441671, 28.009762, 49.952744>,  <31.462543, 27.811163, 49.819614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441671, 28.009762, 49.952744>,  <31.406885, 28.340759, 50.174625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441671, 28.009762, 49.952744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729786, -0.431941, 0.529943,
		-0.678122, 0.358727, -0.641456,
		0.086966, -0.827492, -0.554702,
		31.467762, 27.761515, 49.786331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883961, 28.201944, 49.681896>,  <31.406885, 28.340759, 50.174625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883961, 28.201944, 49.681896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058479, 27.872917, 49.827785>,  <31.163191, 27.675501, 49.915321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058479, 27.872917, 49.827785>,  <30.883961, 28.201944, 49.681896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058479, 27.872917, 49.827785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811161, -0.184123, 0.555083,
		-0.389440, -0.538033, -0.747568,
		0.436297, -0.822569, 0.364726,
		31.189369, 27.626146, 49.937202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353125, 27.769768, 49.404793>,  <30.883961, 28.201944, 49.681896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353125, 27.769768, 49.404793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167082, 27.819620, 49.755367>,  <30.055456, 27.849531, 49.965714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167082, 27.819620, 49.755367>,  <30.353125, 27.769768, 49.404793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167082, 27.819620, 49.755367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122487, -0.989578, 0.075718,
		0.876739, -0.072135, 0.475526,
		-0.465108, 0.124630, 0.876437,
		30.027550, 27.857010, 50.018299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673754, 27.289101, 49.804325>,  <30.353125, 27.769768, 49.404793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673754, 27.289101, 49.804325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329760, 27.356274, 49.997086>,  <30.123363, 27.396578, 50.112740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329760, 27.356274, 49.997086>,  <30.673754, 27.289101, 49.804325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329760, 27.356274, 49.997086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112885, -0.983512, 0.141283,
		0.497677, 0.067103, 0.864763,
		-0.859985, 0.167932, 0.481897,
		30.071764, 27.406652, 50.141655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677664, 26.947302, 50.461239>,  <30.673754, 27.289101, 49.804325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677664, 26.947302, 50.461239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313122, 26.955717, 50.296806>,  <30.094397, 26.960766, 50.198147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313122, 26.955717, 50.296806>,  <30.677664, 26.947302, 50.461239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313122, 26.955717, 50.296806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134082, -0.959395, 0.248161,
		-0.389168, 0.281282, 0.877171,
		-0.911356, 0.021037, -0.411081,
		30.039715, 26.962029, 50.173481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153008, 26.737392, 50.816578>,  <30.677664, 26.947302, 50.461239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153008, 26.737392, 50.816578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036287, 26.664989, 50.440899>,  <29.966255, 26.621548, 50.215492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036287, 26.664989, 50.440899>,  <30.153008, 26.737392, 50.816578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036287, 26.664989, 50.440899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114650, -0.968231, 0.222225,
		-0.949582, 0.172524, 0.261780,
		-0.291803, -0.181007, -0.939195,
		29.948746, 26.610687, 50.159142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605398, 26.328865, 50.898712>,  <30.153008, 26.737392, 50.816578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605398, 26.328865, 50.898712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729656, 26.248337, 50.527126>,  <29.804211, 26.200020, 50.304176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729656, 26.248337, 50.527126>,  <29.605398, 26.328865, 50.898712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729656, 26.248337, 50.527126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243242, -0.961608, 0.127056,
		-0.918876, 0.186493, -0.347688,
		0.310645, -0.201321, -0.928961,
		29.822849, 26.187941, 50.248440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202482, 26.010706, 50.275204>,  <29.605398, 26.328865, 50.898712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202482, 26.010706, 50.275204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580252, 25.880709, 50.294964>,  <29.806913, 25.802710, 50.306820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580252, 25.880709, 50.294964>,  <29.202482, 26.010706, 50.275204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580252, 25.880709, 50.294964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328615, -0.937295, 0.116149,
		0.008557, -0.125928, -0.992002,
		0.944425, -0.324993, 0.049402,
		29.863579, 25.783211, 50.309784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481142, 25.589931, 49.721764>,  <29.202482, 26.010706, 50.275204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481142, 25.589931, 49.721764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645218, 25.447977, 50.057812>,  <29.743664, 25.362804, 50.259441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645218, 25.447977, 50.057812>,  <29.481142, 25.589931, 49.721764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645218, 25.447977, 50.057812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601302, -0.797841, -0.043438,
		0.685696, -0.487347, -0.540661,
		0.410192, -0.354885, 0.840119,
		29.768276, 25.341511, 50.309849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969082, 25.531654, 49.285511>,  <29.481142, 25.589931, 49.721764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969082, 25.531654, 49.285511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864977, 25.872692, 49.104252>,  <29.802513, 26.077314, 48.995495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864977, 25.872692, 49.104252>,  <29.969082, 25.531654, 49.285511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864977, 25.872692, 49.104252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469621, -0.298288, -0.830952,
		-0.843634, -0.429075, -0.322763,
		-0.260264, 0.852596, -0.453148,
		29.786898, 26.128471, 48.968307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565855, 25.419264, 48.658577>,  <29.969082, 25.531654, 49.285511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565855, 25.419264, 48.658577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715073, 25.789577, 48.634041>,  <29.804604, 26.011766, 48.619320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715073, 25.789577, 48.634041>,  <29.565855, 25.419264, 48.658577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715073, 25.789577, 48.634041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356139, -0.203922, -0.911910,
		-0.856740, 0.318337, -0.405779,
		0.373042, 0.925785, -0.061336,
		29.826984, 26.067312, 48.615639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610989, 25.571459, 47.999687>,  <29.565855, 25.419264, 48.658577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610989, 25.571459, 47.999687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836843, 25.862404, 48.155701>,  <29.972357, 26.036970, 48.249310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836843, 25.862404, 48.155701>,  <29.610989, 25.571459, 47.999687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836843, 25.862404, 48.155701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380408, 0.190036, -0.905083,
		-0.732445, 0.659417, -0.169393,
		0.564636, 0.727362, 0.390038,
		30.006235, 26.080612, 48.272713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410734, 26.198591, 47.704144>,  <29.610989, 25.571459, 47.999687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410734, 26.198591, 47.704144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781096, 26.264734, 47.840000>,  <30.003313, 26.304420, 47.921513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781096, 26.264734, 47.840000>,  <29.410734, 26.198591, 47.704144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781096, 26.264734, 47.840000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278859, 0.307323, -0.909830,
		-0.254829, 0.937128, 0.238440,
		0.925905, 0.165360, 0.339641,
		30.058867, 26.314342, 47.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574190, 26.775362, 47.360809>,  <29.410734, 26.198591, 47.704144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574190, 26.775362, 47.360809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922144, 26.625013, 47.488571>,  <30.130917, 26.534803, 47.565228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922144, 26.625013, 47.488571>,  <29.574190, 26.775362, 47.360809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922144, 26.625013, 47.488571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467236, 0.420368, -0.777805,
		0.158088, 0.825839, 0.541293,
		0.869884, -0.375873, 0.319406,
		30.183109, 26.512251, 47.584393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032738, 27.349024, 47.263187>,  <29.574190, 26.775362, 47.360809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032738, 27.349024, 47.263187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287161, 27.043756, 47.308800>,  <30.439816, 26.860596, 47.336166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287161, 27.043756, 47.308800>,  <30.032738, 27.349024, 47.263187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287161, 27.043756, 47.308800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546706, 0.341412, -0.764559,
		0.544557, 0.548645, 0.634387,
		0.636058, -0.763169, 0.114030,
		30.477978, 26.814806, 47.343010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697702, 27.591784, 47.204830>,  <30.032738, 27.349024, 47.263187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697702, 27.591784, 47.204830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758131, 27.200577, 47.147335>,  <30.794388, 26.965853, 47.112839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758131, 27.200577, 47.147335>,  <30.697702, 27.591784, 47.204830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758131, 27.200577, 47.147335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336199, 0.187576, -0.922922,
		0.929596, 0.091101, 0.357145,
		0.151071, -0.978016, -0.143742,
		30.803452, 26.907171, 47.104214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359392, 27.563345, 46.999702>,  <30.697702, 27.591784, 47.204830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359392, 27.563345, 46.999702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188465, 27.222895, 46.877731>,  <31.085909, 27.018623, 46.804546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188465, 27.222895, 46.877731>,  <31.359392, 27.563345, 46.999702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188465, 27.222895, 46.877731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342788, 0.159569, -0.925761,
		0.836598, -0.500120, 0.223570,
		-0.427317, -0.851128, -0.304931,
		31.060270, 26.967556, 46.786251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866526, 27.189692, 46.797424>,  <31.359392, 27.563345, 46.999702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866526, 27.189692, 46.797424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537054, 27.051855, 46.617287>,  <31.339371, 26.969152, 46.509205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537054, 27.051855, 46.617287>,  <31.866526, 27.189692, 46.797424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537054, 27.051855, 46.617287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360000, 0.295840, -0.884804,
		0.438130, -0.890917, -0.119622,
		-0.823676, -0.344595, -0.450347,
		31.289951, 26.948477, 46.482182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008224, 26.690538, 46.245838>,  <31.866526, 27.189692, 46.797424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008224, 26.690538, 46.245838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650198, 26.831480, 46.136513>,  <31.435381, 26.916046, 46.070919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650198, 26.831480, 46.136513>,  <32.008224, 26.690538, 46.245838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650198, 26.831480, 46.136513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363272, 0.220696, -0.905167,
		-0.258622, -0.909472, -0.325539,
		-0.895069, 0.352356, -0.273309,
		31.381678, 26.937187, 46.054520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915125, 26.494165, 45.461807>,  <32.008224, 26.690538, 46.245838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915125, 26.494165, 45.461807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642565, 26.780041, 45.524948>,  <31.479029, 26.951565, 45.562832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642565, 26.780041, 45.524948>,  <31.915125, 26.494165, 45.461807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642565, 26.780041, 45.524948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091253, 0.296940, -0.950526,
		-0.726200, -0.633285, -0.267552,
		-0.681401, 0.714687, 0.157849,
		31.438145, 26.994446, 45.572304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625046, 26.556627, 44.820614>,  <31.915125, 26.494165, 45.461807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625046, 26.556627, 44.820614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525034, 26.884474, 45.026802>,  <31.465027, 27.081182, 45.150517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525034, 26.884474, 45.026802>,  <31.625046, 26.556627, 44.820614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525034, 26.884474, 45.026802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013611, 0.529355, -0.848292,
		-0.968142, -0.219114, -0.121199,
		-0.250030, 0.819617, 0.515473,
		31.450026, 27.130360, 45.181442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273130, 26.797710, 44.292858>,  <31.625046, 26.556627, 44.820614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273130, 26.797710, 44.292858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374134, 27.090452, 44.546040>,  <31.434736, 27.266098, 44.697948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374134, 27.090452, 44.546040>,  <31.273130, 26.797710, 44.292858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374134, 27.090452, 44.546040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074796, 0.637430, -0.766870,
		-0.964699, 0.240985, 0.106218,
		0.252510, 0.731854, 0.632952,
		31.449886, 27.310009, 44.735924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708332, 27.268999, 44.215076>,  <31.273130, 26.797710, 44.292858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708332, 27.268999, 44.215076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029240, 27.455305, 44.364437>,  <31.221785, 27.567089, 44.454052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029240, 27.455305, 44.364437>,  <30.708332, 27.268999, 44.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029240, 27.455305, 44.364437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053704, 0.566652, -0.822205,
		-0.594540, 0.679684, 0.429595,
		0.802271, 0.465763, 0.373399,
		31.269920, 27.595034, 44.476456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589251, 27.956657, 44.009754>,  <30.708332, 27.268999, 44.215076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589251, 27.956657, 44.009754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983536, 27.953365, 44.077049>,  <31.220106, 27.951389, 44.117428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983536, 27.953365, 44.077049>,  <30.589251, 27.956657, 44.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983536, 27.953365, 44.077049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150482, 0.491779, -0.857618,
		-0.075678, 0.870681, 0.485991,
		0.985712, -0.008230, 0.168239,
		31.279249, 27.950897, 44.127522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778337, 28.659500, 43.926838>,  <30.589251, 27.956657, 44.009754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778337, 28.659500, 43.926838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111580, 28.440773, 43.893547>,  <31.311525, 28.309536, 43.873573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111580, 28.440773, 43.893547>,  <30.778337, 28.659500, 43.926838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111580, 28.440773, 43.893547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298011, 0.570524, -0.765305,
		0.465968, 0.612775, 0.638264,
		0.833105, -0.546817, -0.083232,
		31.361511, 28.276728, 43.868576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319340, 29.075666, 44.111832>,  <30.778337, 28.659500, 43.926838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319340, 29.075666, 44.111832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446411, 28.797915, 43.853554>,  <31.522654, 28.631264, 43.698589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446411, 28.797915, 43.853554>,  <31.319340, 29.075666, 44.111832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446411, 28.797915, 43.853554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261809, 0.718730, -0.644114,
		0.911337, 0.035573, 0.410120,
		0.317679, -0.694379, -0.645692,
		31.541716, 28.589602, 43.659847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950161, 29.330336, 43.898701>,  <31.319340, 29.075666, 44.111832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950161, 29.330336, 43.898701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840441, 29.056498, 43.628563>,  <31.774609, 28.892195, 43.466480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840441, 29.056498, 43.628563>,  <31.950161, 29.330336, 43.898701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840441, 29.056498, 43.628563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232492, 0.634235, -0.737356,
		0.933116, -0.359270, -0.014809,
		-0.274302, -0.684596, -0.675342,
		31.758150, 28.851118, 43.425961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548347, 29.422218, 43.363613>,  <31.950161, 29.330336, 43.898701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548347, 29.422218, 43.363613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236439, 29.235628, 43.196590>,  <32.049294, 29.123674, 43.096375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236439, 29.235628, 43.196590>,  <32.548347, 29.422218, 43.363613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236439, 29.235628, 43.196590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197280, 0.449901, -0.871017,
		0.594168, -0.761571, -0.258794,
		-0.779772, -0.466475, -0.417559,
		32.002506, 29.095686, 43.071323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716686, 29.165215, 42.736973>,  <32.548347, 29.422218, 43.363613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716686, 29.165215, 42.736973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322105, 29.152880, 42.672520>,  <32.085358, 29.145479, 42.633846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322105, 29.152880, 42.672520>,  <32.716686, 29.165215, 42.736973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322105, 29.152880, 42.672520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150078, 0.227168, -0.962222,
		0.066275, -0.973367, -0.219463,
		-0.986450, -0.030834, -0.161136,
		32.026169, 29.143629, 42.624180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587128, 28.850985, 42.082104>,  <32.716686, 29.165215, 42.736973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587128, 28.850985, 42.082104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247211, 29.052368, 42.144569>,  <32.043262, 29.173199, 42.182049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247211, 29.052368, 42.144569>,  <32.587128, 28.850985, 42.082104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247211, 29.052368, 42.144569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072943, 0.181092, -0.980757,
		-0.522053, -0.844827, -0.117166,
		-0.849788, 0.503461, 0.156164,
		31.992275, 29.203405, 42.191418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058762, 28.683798, 41.555264>,  <32.587128, 28.850985, 42.082104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058762, 28.683798, 41.555264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943644, 29.035067, 41.708099>,  <31.874573, 29.245827, 41.799801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943644, 29.035067, 41.708099>,  <32.058762, 28.683798, 41.555264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943644, 29.035067, 41.708099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172291, 0.344981, -0.922662,
		-0.942067, -0.331367, 0.052018,
		-0.287794, 0.878171, 0.382087,
		31.857306, 29.298517, 41.822727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488882, 28.853598, 41.226860>,  <32.058762, 28.683798, 41.555264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488882, 28.853598, 41.226860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588036, 29.203304, 41.393818>,  <31.647528, 29.413128, 41.493992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588036, 29.203304, 41.393818>,  <31.488882, 28.853598, 41.226860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588036, 29.203304, 41.393818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279974, 0.477102, -0.833060,
		-0.927453, 0.089642, 0.363036,
		0.247882, 0.874264, 0.417392,
		31.662399, 29.465584, 41.519035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923231, 29.308670, 41.077381>,  <31.488882, 28.853598, 41.226860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923231, 29.308670, 41.077381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234783, 29.539276, 41.176155>,  <31.421715, 29.677639, 41.235420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234783, 29.539276, 41.176155>,  <30.923231, 29.308670, 41.077381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234783, 29.539276, 41.176155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213397, 0.613839, -0.760042,
		-0.589752, 0.539287, 0.601134,
		0.778880, 0.576516, 0.246931,
		31.468447, 29.712231, 41.250233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723948, 29.959148, 40.961407>,  <30.923231, 29.308670, 41.077381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723948, 29.959148, 40.961407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117414, 30.015593, 41.006107>,  <31.353495, 30.049459, 41.032928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117414, 30.015593, 41.006107>,  <30.723948, 29.959148, 40.961407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117414, 30.015593, 41.006107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019636, 0.701247, -0.712648,
		-0.178927, 0.698813, 0.692564,
		0.983666, 0.141111, 0.111750,
		31.412514, 30.057926, 41.039631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793425, 30.669888, 41.000542>,  <30.723948, 29.959148, 40.961407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793425, 30.669888, 41.000542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169647, 30.586155, 40.893559>,  <31.395380, 30.535915, 40.829369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.169647, 30.586155, 40.893559>,  <30.793425, 30.669888, 41.000542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169647, 30.586155, 40.893559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001469, 0.784968, -0.619534,
		0.339635, 0.583100, 0.737999,
		0.940556, -0.209331, -0.267459,
		31.451815, 30.523355, 40.813320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149393, 31.300432, 41.046703>,  <30.793425, 30.669888, 41.000542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149393, 31.300432, 41.046703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329279, 31.038149, 40.804119>,  <31.437210, 30.880779, 40.658569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329279, 31.038149, 40.804119>,  <31.149393, 31.300432, 41.046703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329279, 31.038149, 40.804119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031974, 0.666747, -0.744598,
		0.892599, 0.354249, 0.278882,
		0.449716, -0.655710, -0.606465,
		31.464193, 30.841436, 40.622181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658722, 31.638781, 40.720085>,  <31.149393, 31.300432, 41.046703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658722, 31.638781, 40.720085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620380, 31.321600, 40.479404>,  <31.597376, 31.131292, 40.334995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620380, 31.321600, 40.479404>,  <31.658722, 31.638781, 40.720085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620380, 31.321600, 40.479404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094268, 0.608996, -0.787551,
		0.990921, -0.018770, -0.133125,
		-0.095856, -0.792951, -0.601698,
		31.591623, 31.083715, 40.298897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161118, 31.726530, 40.262032>,  <31.658722, 31.638781, 40.720085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161118, 31.726530, 40.262032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893700, 31.467480, 40.115814>,  <31.733248, 31.312050, 40.028084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893700, 31.467480, 40.115814>,  <32.161118, 31.726530, 40.262032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893700, 31.467480, 40.115814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069279, 0.435165, -0.897681,
		0.740435, -0.625468, -0.246062,
		-0.668548, -0.647628, -0.365543,
		31.693134, 31.273191, 40.006153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473347, 31.501184, 39.607109>,  <32.161118, 31.726530, 40.262032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473347, 31.501184, 39.607109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080410, 31.428656, 39.588638>,  <31.844648, 31.385139, 39.577557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080410, 31.428656, 39.588638>,  <32.473347, 31.501184, 39.607109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080410, 31.428656, 39.588638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064012, 0.557568, -0.827660,
		0.175816, -0.810087, -0.559328,
		-0.982340, -0.181320, -0.046174,
		31.785707, 31.374260, 39.574787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253632, 31.412144, 38.903034>,  <32.473347, 31.501184, 39.607109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253632, 31.412144, 38.903034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883043, 31.458929, 39.046124>,  <31.660690, 31.487001, 39.131977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883043, 31.458929, 39.046124>,  <32.253632, 31.412144, 38.903034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883043, 31.458929, 39.046124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183383, 0.689724, -0.700465,
		-0.328660, -0.714563, -0.617562,
		-0.926474, 0.116965, 0.357723,
		31.605101, 31.494019, 39.153439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834244, 31.455204, 38.308014>,  <32.253632, 31.412144, 38.903034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834244, 31.455204, 38.308014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641607, 31.640839, 38.605385>,  <31.526026, 31.752220, 38.783810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641607, 31.640839, 38.605385>,  <31.834244, 31.455204, 38.308014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641607, 31.640839, 38.605385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077829, 0.822284, -0.563730,
		-0.872932, -0.329349, -0.359886,
		-0.481593, 0.464088, 0.743432,
		31.497129, 31.780066, 38.828415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291056, 31.764917, 37.920681>,  <31.834244, 31.455204, 38.308014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291056, 31.764917, 37.920681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325563, 31.970966, 38.261787>,  <31.346268, 32.094597, 38.466450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325563, 31.970966, 38.261787>,  <31.291056, 31.764917, 37.920681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325563, 31.970966, 38.261787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087353, 0.856571, -0.508582,
		-0.992435, -0.030616, 0.118894,
		0.086271, 0.515120, 0.852765,
		31.351444, 32.125504, 38.517616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795837, 32.198978, 37.913548>,  <31.291056, 31.764917, 37.920681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795837, 32.198978, 37.913548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049612, 32.386261, 38.159561>,  <31.201876, 32.498631, 38.307171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.049612, 32.386261, 38.159561>,  <30.795837, 32.198978, 37.913548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049612, 32.386261, 38.159561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019293, 0.785836, -0.618134,
		-0.772735, 0.404032, 0.489529,
		0.634435, 0.468209, 0.615038,
		31.239943, 32.526722, 38.344074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619314, 32.887871, 37.793755>,  <30.795837, 32.198978, 37.913548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619314, 32.887871, 37.793755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976160, 32.907650, 37.973392>,  <31.190268, 32.919518, 38.081177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976160, 32.907650, 37.973392>,  <30.619314, 32.887871, 37.793755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976160, 32.907650, 37.973392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285113, 0.709467, -0.644490,
		-0.350487, 0.703002, 0.618827,
		0.892115, 0.049450, 0.449094,
		31.243795, 32.922485, 38.108120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770935, 33.629948, 37.909969>,  <30.619314, 32.887871, 37.793755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770935, 33.629948, 37.909969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134197, 33.462494, 37.910110>,  <31.352154, 33.362022, 37.910194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134197, 33.462494, 37.910110>,  <30.770935, 33.629948, 37.909969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134197, 33.462494, 37.910110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372645, 0.808005, -0.456358,
		0.190761, 0.414576, 0.889796,
		0.908155, -0.418634, 0.000354,
		31.406643, 33.336903, 37.910217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096638, 34.160103, 38.036919>,  <30.770935, 33.629948, 37.909969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096638, 34.160103, 38.036919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371227, 33.897919, 37.910980>,  <31.535980, 33.740608, 37.835415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371227, 33.897919, 37.910980>,  <31.096638, 34.160103, 38.036919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371227, 33.897919, 37.910980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460083, 0.726816, -0.509963,
		0.563095, 0.205220, 0.800505,
		0.686475, -0.655457, -0.314848,
		31.577169, 33.701283, 37.816525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784950, 34.406715, 38.232128>,  <31.096638, 34.160103, 38.036919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784950, 34.406715, 38.232128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838730, 34.166439, 37.916889>,  <31.870998, 34.022274, 37.727745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838730, 34.166439, 37.916889>,  <31.784950, 34.406715, 38.232128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838730, 34.166439, 37.916889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588067, 0.688494, -0.424445,
		0.797559, -0.406388, 0.445812,
		0.134449, -0.600687, -0.788098,
		31.879065, 33.986233, 37.680458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501804, 34.465981, 38.049232>,  <31.784950, 34.406715, 38.232128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501804, 34.465981, 38.049232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331287, 34.326035, 37.715557>,  <32.228977, 34.242069, 37.515350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331287, 34.326035, 37.715557>,  <32.501804, 34.465981, 38.049232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331287, 34.326035, 37.715557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565203, 0.616991, -0.547602,
		0.706271, -0.704926, -0.065278,
		-0.426295, -0.349860, -0.834188,
		32.203400, 34.221077, 37.465302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042110, 34.451675, 37.589046>,  <32.501804, 34.465981, 38.049232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042110, 34.451675, 37.589046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714420, 34.439468, 37.359982>,  <32.517807, 34.432144, 37.222542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714420, 34.439468, 37.359982>,  <33.042110, 34.451675, 37.589046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714420, 34.439468, 37.359982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438310, 0.610622, -0.659564,
		0.369810, -0.791334, -0.486859,
		-0.819222, -0.030518, -0.572664,
		32.468655, 34.430313, 37.188183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196312, 34.306755, 36.848343>,  <33.042110, 34.451675, 37.589046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196312, 34.306755, 36.848343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869404, 34.531727, 36.898525>,  <32.673260, 34.666710, 36.928635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869404, 34.531727, 36.898525>,  <33.196312, 34.306755, 36.848343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869404, 34.531727, 36.898525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311117, 0.613910, -0.725480,
		-0.485054, -0.553880, -0.676712,
		-0.817269, 0.562434, 0.125458,
		32.624222, 34.700459, 36.936161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828613, 33.727352, 36.702900>,  <33.196312, 34.306755, 36.848343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828613, 33.727352, 36.702900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134289, 33.588612, 36.485382>,  <34.317692, 33.505367, 36.354870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134289, 33.588612, 36.485382>,  <33.828613, 33.727352, 36.702900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134289, 33.588612, 36.485382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110852, -0.901181, 0.419027,
		-0.635399, -0.259933, -0.727119,
		0.764186, -0.346852, -0.543796,
		34.363544, 33.484554, 36.322243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656818, 33.153431, 36.498699>,  <33.828613, 33.727352, 36.702900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656818, 33.153431, 36.498699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055786, 33.130669, 36.481201>,  <34.295166, 33.117012, 36.470703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055786, 33.130669, 36.481201>,  <33.656818, 33.153431, 36.498699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055786, 33.130669, 36.481201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031012, -0.891289, 0.452374,
		-0.064738, -0.449850, -0.890754,
		0.997420, -0.056910, -0.043749,
		34.355011, 33.113594, 36.468075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760555, 32.502083, 36.227379>,  <33.656818, 33.153431, 36.498699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760555, 32.502083, 36.227379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097904, 32.613739, 36.411030>,  <34.300316, 32.680733, 36.521221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097904, 32.613739, 36.411030>,  <33.760555, 32.502083, 36.227379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097904, 32.613739, 36.411030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040824, -0.885288, 0.463248,
		0.535770, -0.371950, -0.758026,
		0.843376, 0.279140, 0.459126,
		34.350918, 32.697479, 36.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254360, 31.997486, 36.256504>,  <33.760555, 32.502083, 36.227379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254360, 31.997486, 36.256504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372501, 32.227543, 36.561657>,  <34.443386, 32.365578, 36.744747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372501, 32.227543, 36.561657>,  <34.254360, 31.997486, 36.256504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372501, 32.227543, 36.561657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221771, -0.817961, 0.530808,
		0.929293, 0.012410, -0.369134,
		0.295350, 0.575140, 0.762878,
		34.461105, 32.400085, 36.790520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900028, 31.820555, 36.363033>,  <34.254360, 31.997486, 36.256504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900028, 31.820555, 36.363033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756638, 31.981937, 36.699776>,  <34.670605, 32.078766, 36.901821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756638, 31.981937, 36.699776>,  <34.900028, 31.820555, 36.363033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756638, 31.981937, 36.699776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205778, -0.845458, 0.492805,
		0.910578, 0.349893, 0.220051,
		-0.358473, 0.403456, 0.841856,
		34.649097, 32.102974, 36.952332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324406, 31.534357, 36.901474>,  <34.900028, 31.820555, 36.363033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324406, 31.534357, 36.901474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018837, 31.678782, 37.115414>,  <34.835495, 31.765436, 37.243778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018837, 31.678782, 37.115414>,  <35.324406, 31.534357, 36.901474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018837, 31.678782, 37.115414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245910, -0.603400, 0.758575,
		0.596618, 0.711015, 0.372162,
		-0.763921, 0.361062, 0.534845,
		34.789661, 31.787100, 37.275867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503807, 31.357769, 37.484364>,  <35.324406, 31.534357, 36.901474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503807, 31.357769, 37.484364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125568, 31.469336, 37.551350>,  <34.898624, 31.536276, 37.591541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125568, 31.469336, 37.551350>,  <35.503807, 31.357769, 37.484364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125568, 31.469336, 37.551350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072028, -0.681469, 0.728294,
		0.317257, 0.676613, 0.664487,
		-0.945600, 0.278918, 0.167466,
		34.841888, 31.553011, 37.601589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515327, 31.372540, 38.152466>,  <35.503807, 31.357769, 37.484364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515327, 31.372540, 38.152466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125660, 31.367907, 38.062252>,  <34.891861, 31.365128, 38.008121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125660, 31.367907, 38.062252>,  <35.515327, 31.372540, 38.152466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125660, 31.367907, 38.062252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185087, -0.531282, 0.826730,
		-0.129400, 0.847116, 0.515413,
		-0.974166, -0.011583, -0.225538,
		34.833412, 31.364431, 37.994591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226658, 31.626759, 38.715557>,  <35.515327, 31.372540, 38.152466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226658, 31.626759, 38.715557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976032, 31.397266, 38.504559>,  <34.825657, 31.259571, 38.377960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976032, 31.397266, 38.504559>,  <35.226658, 31.626759, 38.715557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976032, 31.397266, 38.504559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224103, -0.515608, 0.826998,
		-0.746455, 0.636380, 0.194487,
		-0.626564, -0.573732, -0.527493,
		34.788063, 31.225147, 38.346310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643444, 31.618135, 39.128620>,  <35.226658, 31.626759, 38.715557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643444, 31.618135, 39.128620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633533, 31.290560, 38.899281>,  <34.627586, 31.094015, 38.761677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633533, 31.290560, 38.899281>,  <34.643444, 31.618135, 39.128620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633533, 31.290560, 38.899281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186360, -0.559686, 0.807479,
		-0.982169, 0.126858, -0.138748,
		-0.024780, -0.818938, -0.573347,
		34.626099, 31.044878, 38.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176094, 31.184118, 39.451782>,  <34.643444, 31.618135, 39.128620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176094, 31.184118, 39.451782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333138, 30.917271, 39.198544>,  <34.427364, 30.757162, 39.046600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333138, 30.917271, 39.198544>,  <34.176094, 31.184118, 39.451782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333138, 30.917271, 39.198544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114479, -0.718464, 0.686079,
		-0.912551, -0.196887, -0.358449,
		0.392613, -0.667117, -0.633095,
		34.450920, 30.717136, 39.008614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720669, 30.575363, 39.538746>,  <34.176094, 31.184118, 39.451782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720669, 30.575363, 39.538746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076908, 30.470879, 39.389828>,  <34.290653, 30.408188, 39.300476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076908, 30.470879, 39.389828>,  <33.720669, 30.575363, 39.538746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076908, 30.470879, 39.389828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017747, -0.798019, 0.602370,
		-0.454443, -0.543078, -0.706079,
		0.890599, -0.261212, -0.372293,
		34.344090, 30.392515, 39.278141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614727, 29.940262, 39.286087>,  <33.720669, 30.575363, 39.538746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614727, 29.940262, 39.286087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010128, 29.976229, 39.334702>,  <34.247368, 29.997808, 39.363869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010128, 29.976229, 39.334702>,  <33.614727, 29.940262, 39.286087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010128, 29.976229, 39.334702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001468, -0.798148, 0.602460,
		0.151176, -0.595713, -0.788842,
		0.988506, 0.089920, 0.121535,
		34.306679, 30.003204, 39.371162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800072, 29.257282, 39.517632>,  <33.614727, 29.940262, 39.286087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800072, 29.257282, 39.517632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133301, 29.466562, 39.589466>,  <34.333237, 29.592131, 39.632568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133301, 29.466562, 39.589466>,  <33.800072, 29.257282, 39.517632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133301, 29.466562, 39.589466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248112, -0.643582, 0.724046,
		0.494400, -0.558625, -0.665963,
		0.833072, 0.523201, 0.179585,
		34.383221, 29.623522, 39.643341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426788, 28.800495, 39.416317>,  <33.800072, 29.257282, 39.517632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426788, 28.800495, 39.416317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478825, 29.095778, 39.681080>,  <34.510048, 29.272947, 39.839939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478825, 29.095778, 39.681080>,  <34.426788, 28.800495, 39.416317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478825, 29.095778, 39.681080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228364, -0.671944, 0.704514,
		0.964845, 0.059504, -0.255995,
		0.130093, 0.738207, 0.661911,
		34.517853, 29.317240, 39.879654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894840, 28.509012, 39.815948>,  <34.426788, 28.800495, 39.416317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894840, 28.509012, 39.815948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784210, 28.823759, 40.036617>,  <34.717831, 29.012608, 40.169018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784210, 28.823759, 40.036617>,  <34.894840, 28.509012, 39.815948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784210, 28.823759, 40.036617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088910, -0.550654, 0.829985,
		0.956870, 0.278605, 0.082338,
		-0.276578, 0.786867, 0.551675,
		34.701237, 29.059818, 40.202122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355839, 28.548079, 40.254677>,  <34.894840, 28.509012, 39.815948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355839, 28.548079, 40.254677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070393, 28.763914, 40.433384>,  <34.899124, 28.893415, 40.540607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070393, 28.763914, 40.433384>,  <35.355839, 28.548079, 40.254677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070393, 28.763914, 40.433384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055338, -0.592339, 0.803786,
		0.698352, 0.598315, 0.392840,
		-0.713612, 0.539587, 0.446771,
		34.856308, 28.925791, 40.567413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494671, 28.426064, 40.985203>,  <35.355839, 28.548079, 40.254677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494671, 28.426064, 40.985203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131660, 28.594049, 40.983093>,  <34.913857, 28.694841, 40.981827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131660, 28.594049, 40.983093>,  <35.494671, 28.426064, 40.985203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131660, 28.594049, 40.983093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235263, -0.497906, 0.834710,
		0.347924, 0.758761, 0.550664,
		-0.907524, 0.419967, -0.005275,
		34.859402, 28.720039, 40.981510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367599, 28.903193, 41.580173>,  <35.494671, 28.426064, 40.985203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367599, 28.903193, 41.580173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022411, 28.741127, 41.459431>,  <34.815296, 28.643888, 41.386986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022411, 28.741127, 41.459431>,  <35.367599, 28.903193, 41.580173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022411, 28.741127, 41.459431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192480, -0.288763, 0.937852,
		-0.467150, 0.867443, 0.171209,
		-0.862973, -0.405163, -0.301862,
		34.763519, 28.619577, 41.368874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880276, 28.974024, 42.162628>,  <35.367599, 28.903193, 41.580173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880276, 28.974024, 42.162628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696533, 28.697910, 41.939022>,  <34.586288, 28.532242, 41.804859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696533, 28.697910, 41.939022>,  <34.880276, 28.974024, 42.162628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696533, 28.697910, 41.939022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286033, -0.480863, 0.828828,
		-0.840936, 0.540626, 0.023445,
		-0.459360, -0.690286, -0.559012,
		34.558723, 28.490824, 41.771320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141827, 29.054752, 42.308731>,  <34.880276, 28.974024, 42.162628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141827, 29.054752, 42.308731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204781, 28.694664, 42.146332>,  <34.242554, 28.478611, 42.048893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204781, 28.694664, 42.146332>,  <34.141827, 29.054752, 42.308731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204781, 28.694664, 42.146332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404119, -0.433828, 0.805284,
		-0.901066, 0.037334, -0.432072,
		0.157380, -0.900222, -0.405995,
		34.251995, 28.424597, 42.024532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491879, 28.694660, 42.191380>,  <34.141827, 29.054752, 42.308731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491879, 28.694660, 42.191380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757271, 28.397436, 42.226379>,  <33.916504, 28.219101, 42.247379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757271, 28.397436, 42.226379>,  <33.491879, 28.694660, 42.191380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757271, 28.397436, 42.226379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584679, -0.441946, 0.680319,
		-0.466844, -0.502541, -0.727674,
		0.663481, -0.743058, 0.087505,
		33.956314, 28.174519, 42.252628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050041, 27.974020, 42.364079>,  <33.491879, 28.694660, 42.191380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050041, 27.974020, 42.364079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433136, 27.894529, 42.447269>,  <33.662991, 27.846834, 42.497185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433136, 27.894529, 42.447269>,  <33.050041, 27.974020, 42.364079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433136, 27.894529, 42.447269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284154, -0.766112, 0.576479,
		0.044774, -0.611211, -0.790200,
		0.957733, -0.198727, 0.207979,
		33.720455, 27.834911, 42.509663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024757, 27.234989, 42.358696>,  <33.050041, 27.974020, 42.364079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024757, 27.234989, 42.358696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352665, 27.349564, 42.557064>,  <33.549408, 27.418308, 42.676086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352665, 27.349564, 42.557064>,  <33.024757, 27.234989, 42.358696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352665, 27.349564, 42.557064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172884, -0.701769, 0.691109,
		0.545980, -0.652285, -0.525766,
		0.819766, 0.286435, 0.495921,
		33.598595, 27.435493, 42.705841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354790, 26.624588, 42.611195>,  <33.024757, 27.234989, 42.358696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354790, 26.624588, 42.611195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475842, 26.919436, 42.852879>,  <33.548473, 27.096344, 42.997890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475842, 26.919436, 42.852879>,  <33.354790, 26.624588, 42.611195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475842, 26.919436, 42.852879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050267, -0.645398, 0.762191,
		0.951781, -0.200292, -0.232372,
		0.302633, 0.737119, 0.604209,
		33.566631, 27.140572, 43.034142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961872, 26.356010, 42.870625>,  <33.354790, 26.624588, 42.611195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961872, 26.356010, 42.870625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867813, 26.650101, 43.124916>,  <33.811378, 26.826555, 43.277489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867813, 26.650101, 43.124916>,  <33.961872, 26.356010, 42.870625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867813, 26.650101, 43.124916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200942, -0.603162, 0.771892,
		0.950961, 0.309254, -0.005905,
		-0.235149, 0.735226, 0.635726,
		33.797268, 26.870668, 43.315636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405533, 26.286757, 43.401588>,  <33.961872, 26.356010, 42.870625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405533, 26.286757, 43.401588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121563, 26.509956, 43.573467>,  <33.951180, 26.643875, 43.676594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121563, 26.509956, 43.573467>,  <34.405533, 26.286757, 43.401588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121563, 26.509956, 43.573467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288607, -0.326048, 0.900222,
		0.642424, 0.763107, 0.070428,
		-0.709928, 0.557997, 0.429699,
		33.908585, 26.677355, 43.702377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727951, 26.560404, 43.889183>,  <34.405533, 26.286757, 43.401588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727951, 26.560404, 43.889183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348961, 26.596220, 44.011993>,  <34.121567, 26.617710, 44.085682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348961, 26.596220, 44.011993>,  <34.727951, 26.560404, 43.889183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348961, 26.596220, 44.011993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254977, -0.368019, 0.894175,
		0.193057, 0.925497, 0.325860,
		-0.947479, 0.089540, 0.307029,
		34.064716, 26.623081, 44.104103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806133, 26.817768, 44.582150>,  <34.727951, 26.560404, 43.889183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806133, 26.817768, 44.582150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436749, 26.666140, 44.558418>,  <34.215118, 26.575163, 44.544182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436749, 26.666140, 44.558418>,  <34.806133, 26.817768, 44.582150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436749, 26.666140, 44.558418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123013, -0.438968, 0.890042,
		-0.363432, 0.814624, 0.452002,
		-0.923464, -0.379072, -0.059326,
		34.159710, 26.552418, 44.540619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430134, 26.909601, 45.237915>,  <34.806133, 26.817768, 44.582150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430134, 26.909601, 45.237915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228542, 26.602839, 45.078987>,  <34.107586, 26.418781, 44.983631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228542, 26.602839, 45.078987>,  <34.430134, 26.909601, 45.237915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228542, 26.602839, 45.078987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005852, -0.463030, 0.886324,
		-0.863695, 0.444365, 0.237846,
		-0.503980, -0.766905, -0.397316,
		34.077347, 26.372766, 44.959793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952812, 26.761488, 45.751751>,  <34.430134, 26.909601, 45.237915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952812, 26.761488, 45.751751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960983, 26.430565, 45.527199>,  <33.965885, 26.232012, 45.392467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960983, 26.430565, 45.527199>,  <33.952812, 26.761488, 45.751751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960983, 26.430565, 45.527199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044951, -0.560170, 0.827157,
		-0.998780, -0.042131, 0.025746,
		0.020427, -0.827305, -0.561381,
		33.967110, 26.182373, 45.358784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312328, 26.403650, 45.868591>,  <33.952812, 26.761488, 45.751751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312328, 26.403650, 45.868591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576275, 26.140732, 45.722969>,  <33.734642, 25.982981, 45.635593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576275, 26.140732, 45.722969>,  <33.312328, 26.403650, 45.868591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576275, 26.140732, 45.722969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090035, -0.550196, 0.830168,
		-0.745970, -0.515021, -0.422235,
		0.659865, -0.657296, -0.364060,
		33.774235, 25.943542, 45.613750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148808, 25.846748, 46.332302>,  <33.312328, 26.403650, 45.868591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148808, 25.846748, 46.332302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489452, 25.733873, 46.155613>,  <33.693840, 25.666147, 46.049599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489452, 25.733873, 46.155613>,  <33.148808, 25.846748, 46.332302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489452, 25.733873, 46.155613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171541, -0.646270, 0.743579,
		-0.495302, -0.709017, -0.501967,
		0.851616, -0.282188, -0.441724,
		33.744938, 25.649218, 46.023094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180561, 25.155724, 46.216022>,  <33.148808, 25.846748, 46.332302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180561, 25.155724, 46.216022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572716, 25.233521, 46.203236>,  <33.808006, 25.280199, 46.195564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572716, 25.233521, 46.203236>,  <33.180561, 25.155724, 46.216022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572716, 25.233521, 46.203236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173369, -0.773737, 0.609323,
		0.093773, -0.602912, -0.792277,
		0.980383, 0.194494, -0.031971,
		33.866829, 25.291868, 46.193645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591488, 24.450541, 46.135765>,  <33.180561, 25.155724, 46.216022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591488, 24.450541, 46.135765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835594, 24.725061, 46.294037>,  <33.982059, 24.889774, 46.389000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835594, 24.725061, 46.294037>,  <33.591488, 24.450541, 46.135765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835594, 24.725061, 46.294037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059565, -0.537813, 0.840957,
		0.789953, -0.489641, -0.369089,
		0.610268, 0.686301, 0.395681,
		34.018673, 24.930952, 46.412743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017021, 24.080383, 46.443058>,  <33.591488, 24.450541, 46.135765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017021, 24.080383, 46.443058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080589, 24.432915, 46.621048>,  <34.118732, 24.644434, 46.727840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080589, 24.432915, 46.621048>,  <34.017021, 24.080383, 46.443058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080589, 24.432915, 46.621048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168127, -0.468276, 0.867439,
		0.972870, -0.063043, -0.222595,
		0.158922, 0.881330, 0.444973,
		34.128265, 24.697313, 46.754539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690475, 24.215158, 46.705093>,  <34.017021, 24.080383, 46.443058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690475, 24.215158, 46.705093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427795, 24.400379, 46.943192>,  <34.270187, 24.511513, 47.086052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427795, 24.400379, 46.943192>,  <34.690475, 24.215158, 46.705093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427795, 24.400379, 46.943192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293746, -0.569905, 0.767412,
		0.694589, 0.678814, 0.238239,
		-0.656704, 0.463054, 0.595248,
		34.230785, 24.539295, 47.121765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231331, 24.587666, 47.089073>,  <34.690475, 24.215158, 46.705093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231331, 24.587666, 47.089073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857803, 24.501585, 47.203388>,  <34.633686, 24.449938, 47.271976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857803, 24.501585, 47.203388>,  <35.231331, 24.587666, 47.089073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857803, 24.501585, 47.203388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340113, -0.286330, 0.895733,
		-0.110934, 0.933651, 0.340573,
		-0.933818, -0.215200, 0.285783,
		34.577660, 24.437025, 47.289124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689365, 24.723608, 47.592651>,  <35.231331, 24.587666, 47.089073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689365, 24.723608, 47.592651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010029, 24.923410, 47.723999>,  <36.202427, 25.043293, 47.802807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010029, 24.923410, 47.723999>,  <35.689365, 24.723608, 47.592651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010029, 24.923410, 47.723999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069518, 0.467694, -0.881153,
		-0.593720, 0.729215, 0.340208,
		0.801663, 0.499508, 0.328373,
		36.250526, 25.073263, 47.822510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613472, 25.479984, 47.485447>,  <35.689365, 24.723608, 47.592651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613472, 25.479984, 47.485447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996246, 25.364586, 47.472473>,  <36.225910, 25.295347, 47.464687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996246, 25.364586, 47.472473>,  <35.613472, 25.479984, 47.485447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996246, 25.364586, 47.472473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173149, 0.656845, -0.733876,
		0.233025, 0.696653, 0.678509,
		0.956932, -0.288495, -0.032437,
		36.283325, 25.278038, 47.462742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957363, 26.070856, 47.325787>,  <35.613472, 25.479984, 47.485447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957363, 26.070856, 47.325787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207848, 25.771786, 47.237389>,  <36.358139, 25.592342, 47.184349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207848, 25.771786, 47.237389>,  <35.957363, 26.070856, 47.325787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207848, 25.771786, 47.237389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133223, 0.381899, -0.914552,
		0.768187, 0.543261, 0.338757,
		0.626211, -0.747677, -0.220995,
		36.395710, 25.547483, 47.171089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593971, 26.427744, 47.172207>,  <35.957363, 26.070856, 47.325787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593971, 26.427744, 47.172207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638615, 26.076481, 46.986141>,  <36.665401, 25.865723, 46.874500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638615, 26.076481, 46.986141>,  <36.593971, 26.427744, 47.172207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638615, 26.076481, 46.986141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258754, 0.477625, -0.839596,
		0.959474, -0.026657, 0.280534,
		0.111610, -0.878159, -0.465166,
		36.672096, 25.813032, 46.846592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257206, 26.483898, 46.853760>,  <36.593971, 26.427744, 47.172207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257206, 26.483898, 46.853760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080170, 26.189468, 46.648895>,  <36.973946, 26.012810, 46.525978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080170, 26.189468, 46.648895>,  <37.257206, 26.483898, 46.853760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080170, 26.189468, 46.648895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356362, 0.379730, -0.853704,
		0.822872, -0.560357, 0.094243,
		-0.442593, -0.736074, -0.512159,
		36.947392, 25.968647, 46.495247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628483, 26.424866, 46.268349>,  <37.257206, 26.483898, 46.853760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628483, 26.424866, 46.268349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310009, 26.216753, 46.144802>,  <37.118923, 26.091887, 46.070675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310009, 26.216753, 46.144802>,  <37.628483, 26.424866, 46.268349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310009, 26.216753, 46.144802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186206, 0.275005, -0.943239,
		0.575689, -0.808504, -0.122075,
		-0.796184, -0.520281, -0.308866,
		37.071156, 26.060669, 46.052143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863110, 26.112402, 45.598885>,  <37.628483, 26.424866, 46.268349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863110, 26.112402, 45.598885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465351, 26.138439, 45.632214>,  <37.226696, 26.154060, 45.652210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465351, 26.138439, 45.632214>,  <37.863110, 26.112402, 45.598885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465351, 26.138439, 45.632214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063275, 0.264968, -0.962179,
		-0.084707, -0.962058, -0.259364,
		-0.994394, 0.065092, 0.083319,
		37.167034, 26.157967, 45.657207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590981, 25.813200, 45.051285>,  <37.863110, 26.112402, 45.598885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590981, 25.813200, 45.051285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289421, 26.037203, 45.188705>,  <37.108486, 26.171604, 45.271160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289421, 26.037203, 45.188705>,  <37.590981, 25.813200, 45.051285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289421, 26.037203, 45.188705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060640, 0.461375, -0.885131,
		-0.654187, -0.688132, -0.313871,
		-0.753898, 0.560007, 0.343553,
		37.063251, 26.205206, 45.291771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073692, 25.910482, 44.411083>,  <37.590981, 25.813200, 45.051285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073692, 25.910482, 44.411083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976570, 26.219580, 44.645660>,  <36.918297, 26.405039, 44.786407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976570, 26.219580, 44.645660>,  <37.073692, 25.910482, 44.411083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976570, 26.219580, 44.645660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141707, 0.569792, -0.809479,
		-0.959670, -0.279647, -0.028844,
		-0.242803, 0.772745, 0.586440,
		36.903728, 26.451403, 44.821590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387909, 26.173393, 44.215775>,  <37.073692, 25.910482, 44.411083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387909, 26.173393, 44.215775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574173, 26.471569, 44.406555>,  <36.685932, 26.650475, 44.521023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574173, 26.471569, 44.406555>,  <36.387909, 26.173393, 44.215775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574173, 26.471569, 44.406555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285690, 0.636717, -0.716221,
		-0.837581, 0.197257, 0.509459,
		0.465661, 0.745440, 0.476948,
		36.713871, 26.695202, 44.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827785, 26.672159, 44.370590>,  <36.387909, 26.173393, 44.215775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827785, 26.672159, 44.370590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174503, 26.871212, 44.383434>,  <36.382534, 26.990644, 44.391140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174503, 26.871212, 44.383434>,  <35.827785, 26.672159, 44.370590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174503, 26.871212, 44.383434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414068, 0.754127, -0.509745,
		-0.277881, 0.428548, 0.859726,
		0.866793, 0.497633, 0.032110,
		36.434540, 27.020502, 44.393066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643715, 27.336937, 44.447243>,  <35.827785, 26.672159, 44.370590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643715, 27.336937, 44.447243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020443, 27.392834, 44.324966>,  <36.246479, 27.426373, 44.251598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020443, 27.392834, 44.324966>,  <35.643715, 27.336937, 44.447243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020443, 27.392834, 44.324966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297667, 0.769175, -0.565477,
		0.156111, 0.623572, 0.766020,
		0.941819, 0.139742, -0.305693,
		36.302990, 27.434757, 44.233257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619267, 28.064217, 44.323639>,  <35.643715, 27.336937, 44.447243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619267, 28.064217, 44.323639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947987, 27.922613, 44.145058>,  <36.145218, 27.837650, 44.037910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947987, 27.922613, 44.145058>,  <35.619267, 28.064217, 44.323639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947987, 27.922613, 44.145058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030791, 0.754823, -0.655205,
		0.568942, 0.552195, 0.609414,
		0.821801, -0.354009, -0.446453,
		36.194527, 27.816410, 44.011120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033627, 28.599775, 44.241890>,  <35.619267, 28.064217, 44.323639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033627, 28.599775, 44.241890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198002, 28.359304, 43.967747>,  <36.296627, 28.215021, 43.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198002, 28.359304, 43.967747>,  <36.033627, 28.599775, 44.241890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198002, 28.359304, 43.967747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195305, 0.792364, -0.577940,
		0.890496, 0.103645, 0.443028,
		0.410940, -0.601179, -0.685355,
		36.321285, 28.178951, 43.762138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635166, 28.997299, 43.962650>,  <36.033627, 28.599775, 44.241890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635166, 28.997299, 43.962650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534847, 28.706322, 43.707172>,  <36.474655, 28.531734, 43.553886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534847, 28.706322, 43.707172>,  <36.635166, 28.997299, 43.962650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534847, 28.706322, 43.707172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170635, 0.616227, -0.768862,
		0.952882, -0.301811, -0.030420,
		-0.250796, -0.727444, -0.638691,
		36.459610, 28.488089, 43.515564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165264, 28.828749, 43.604420>,  <36.635166, 28.997299, 43.962650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165264, 28.828749, 43.604420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874458, 28.693050, 43.365639>,  <36.699974, 28.611631, 43.222370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874458, 28.693050, 43.365639>,  <37.165264, 28.828749, 43.604420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874458, 28.693050, 43.365639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333183, 0.585888, -0.738731,
		0.600369, -0.735963, -0.312914,
		-0.727012, -0.339254, -0.596960,
		36.656353, 28.591276, 43.186550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472446, 28.872803, 43.056213>,  <37.165264, 28.828749, 43.604420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472446, 28.872803, 43.056213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087746, 28.830559, 42.955116>,  <36.856926, 28.805212, 42.894459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087746, 28.830559, 42.955116>,  <37.472446, 28.872803, 43.056213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087746, 28.830559, 42.955116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181621, 0.444833, -0.877005,
		0.205049, -0.889365, -0.408638,
		-0.961753, -0.105612, -0.252740,
		36.799221, 28.798876, 42.879295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484570, 28.895300, 42.308640>,  <37.472446, 28.872803, 43.056213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484570, 28.895300, 42.308640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095898, 28.957983, 42.379391>,  <36.862694, 28.995592, 42.421841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095898, 28.957983, 42.379391>,  <37.484570, 28.895300, 42.308640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095898, 28.957983, 42.379391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057067, 0.570729, -0.819153,
		-0.229315, -0.806047, -0.545622,
		-0.971678, 0.156707, 0.176875,
		36.804394, 29.004995, 42.432453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166496, 28.758249, 41.699467>,  <37.484570, 28.895300, 42.308640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166496, 28.758249, 41.699467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887695, 28.953789, 41.909313>,  <36.720417, 29.071114, 42.035221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887695, 28.953789, 41.909313>,  <37.166496, 28.758249, 41.699467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887695, 28.953789, 41.909313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338414, 0.420754, -0.841690,
		-0.632192, -0.764194, -0.127832,
		-0.697000, 0.488849, 0.524611,
		36.678596, 29.100443, 42.066696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619194, 28.587267, 41.405914>,  <37.166496, 28.758249, 41.699467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619194, 28.587267, 41.405914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542904, 28.933611, 41.590916>,  <36.497131, 29.141417, 41.701916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542904, 28.933611, 41.590916>,  <36.619194, 28.587267, 41.405914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542904, 28.933611, 41.590916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109835, 0.449372, -0.886567,
		-0.975479, -0.219890, 0.009394,
		-0.190726, 0.865860, 0.462505,
		36.485687, 29.193369, 41.729668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054153, 28.932238, 40.984291>,  <36.619194, 28.587267, 41.405914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054153, 28.932238, 40.984291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238708, 29.212334, 41.202202>,  <36.349442, 29.380390, 41.332947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238708, 29.212334, 41.202202>,  <36.054153, 28.932238, 40.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238708, 29.212334, 41.202202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042540, 0.630798, -0.774780,
		-0.886176, 0.334303, 0.320834,
		0.461392, 0.700239, 0.544777,
		36.377125, 29.422405, 41.365635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644459, 29.522629, 40.891541>,  <36.054153, 28.932238, 40.984291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644459, 29.522629, 40.891541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015327, 29.628260, 40.997833>,  <36.237850, 29.691639, 41.061611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015327, 29.628260, 40.997833>,  <35.644459, 29.522629, 40.891541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015327, 29.628260, 40.997833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025614, 0.662969, -0.748209,
		-0.373761, 0.700524, 0.607922,
		0.927171, 0.264079, 0.265735,
		36.293480, 29.707483, 41.077553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620564, 30.240673, 40.885136>,  <35.644459, 29.522629, 40.891541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620564, 30.240673, 40.885136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011646, 30.161942, 40.855900>,  <36.246296, 30.114702, 40.838360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011646, 30.161942, 40.855900>,  <35.620564, 30.240673, 40.885136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011646, 30.161942, 40.855900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071516, 0.639483, -0.765472,
		0.197403, 0.743183, 0.639306,
		0.977710, -0.196827, -0.073087,
		36.304958, 30.102894, 40.833973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046825, 30.813211, 40.853790>,  <35.620564, 30.240673, 40.885136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046825, 30.813211, 40.853790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290863, 30.541088, 40.691322>,  <36.437286, 30.377815, 40.593842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290863, 30.541088, 40.691322>,  <36.046825, 30.813211, 40.853790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290863, 30.541088, 40.691322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160063, 0.607875, -0.777732,
		0.775995, 0.409476, 0.479751,
		0.610092, -0.680307, -0.406166,
		36.473892, 30.336996, 40.569473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686199, 31.164276, 40.679787>,  <36.046825, 30.813211, 40.853790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686199, 31.164276, 40.679787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672359, 30.846895, 40.436729>,  <36.664055, 30.656467, 40.290894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672359, 30.846895, 40.436729>,  <36.686199, 31.164276, 40.679787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672359, 30.846895, 40.436729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183482, 0.592633, -0.784296,
		0.982414, -0.138629, 0.125080,
		-0.034599, -0.793453, -0.607647,
		36.661980, 30.608860, 40.254436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171413, 31.205879, 40.289181>,  <36.686199, 31.164276, 40.679787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171413, 31.205879, 40.289181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996971, 30.914843, 40.077362>,  <36.892307, 30.740221, 39.950272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996971, 30.914843, 40.077362>,  <37.171413, 31.205879, 40.289181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996971, 30.914843, 40.077362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273386, 0.453523, -0.848279,
		0.857362, -0.514712, 0.001129,
		-0.436107, -0.727591, -0.529548,
		36.866138, 30.696566, 39.918499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752975, 30.940046, 39.905994>,  <37.171413, 31.205879, 40.289181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752975, 30.940046, 39.905994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402325, 30.866282, 39.728222>,  <37.191933, 30.822023, 39.621559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402325, 30.866282, 39.728222>,  <37.752975, 30.940046, 39.905994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402325, 30.866282, 39.728222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327241, 0.448652, -0.831640,
		0.352757, -0.874474, -0.332954,
		-0.876627, -0.184411, -0.444429,
		37.139336, 30.810957, 39.594894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966682, 30.664122, 39.247803>,  <37.752975, 30.940046, 39.905994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966682, 30.664122, 39.247803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582230, 30.765379, 39.203732>,  <37.351559, 30.826134, 39.177288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582230, 30.765379, 39.203732>,  <37.966682, 30.664122, 39.247803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582230, 30.765379, 39.203732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172732, 0.240082, -0.955261,
		-0.215367, -0.937165, -0.274477,
		-0.961135, 0.253143, -0.110173,
		37.293888, 30.841322, 39.170681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563313, 30.258705, 38.720230>,  <37.966682, 30.664122, 39.247803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563313, 30.258705, 38.720230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335812, 30.587563, 38.730042>,  <37.199310, 30.784878, 38.735928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335812, 30.587563, 38.730042>,  <37.563313, 30.258705, 38.720230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335812, 30.587563, 38.730042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104745, 0.101975, -0.989257,
		-0.815813, -0.560073, -0.144114,
		-0.568752, 0.822144, 0.024527,
		37.165188, 30.834206, 38.737400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169743, 30.235212, 38.017693>,  <37.563313, 30.258705, 38.720230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169743, 30.235212, 38.017693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117729, 30.604963, 38.161144>,  <37.086521, 30.826815, 38.247215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117729, 30.604963, 38.161144>,  <37.169743, 30.235212, 38.017693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117729, 30.604963, 38.161144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074238, 0.351610, -0.933198,
		-0.988727, -0.147967, 0.022905,
		-0.130029, 0.924379, 0.358631,
		37.078720, 30.882277, 38.268734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611832, 30.612034, 37.572796>,  <37.169743, 30.235212, 38.017693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611832, 30.612034, 37.572796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776260, 30.927105, 37.756351>,  <36.874916, 31.116148, 37.866486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776260, 30.927105, 37.756351>,  <36.611832, 30.612034, 37.572796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776260, 30.927105, 37.756351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160920, 0.432786, -0.887018,
		-0.897287, 0.438474, 0.051153,
		0.411072, 0.787678, 0.458892,
		36.899582, 31.163408, 37.894020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284561, 31.198729, 37.344765>,  <36.611832, 30.612034, 37.572796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284561, 31.198729, 37.344765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644302, 31.325438, 37.465305>,  <36.860149, 31.401463, 37.537628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644302, 31.325438, 37.465305>,  <36.284561, 31.198729, 37.344765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644302, 31.325438, 37.465305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121621, 0.480784, -0.868363,
		-0.419958, 0.817619, 0.393871,
		0.899358, 0.316773, 0.301349,
		36.914108, 31.420469, 37.555710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393322, 31.820707, 36.998817>,  <36.284561, 31.198729, 37.344765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393322, 31.820707, 36.998817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769444, 31.739401, 37.108006>,  <36.995117, 31.690617, 37.173519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769444, 31.739401, 37.108006>,  <36.393322, 31.820707, 36.998817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769444, 31.739401, 37.108006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340256, 0.543851, -0.767106,
		0.007472, 0.814192, 0.580547,
		0.940303, -0.203266, 0.272970,
		37.051533, 31.678421, 37.189896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706615, 32.427643, 36.894299>,  <36.393322, 31.820707, 36.998817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706615, 32.427643, 36.894299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008419, 32.165161, 36.898582>,  <37.189503, 32.007671, 36.901154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.008419, 32.165161, 36.898582>,  <36.706615, 32.427643, 36.894299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008419, 32.165161, 36.898582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411709, 0.460553, -0.786375,
		0.511090, 0.597735, 0.617656,
		0.754508, -0.656204, 0.010709,
		37.234772, 31.968300, 36.901794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196827, 32.910072, 36.748863>,  <36.706615, 32.427643, 36.894299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196827, 32.910072, 36.748863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363571, 32.550430, 36.695442>,  <37.463619, 32.334644, 36.663391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363571, 32.550430, 36.695442>,  <37.196827, 32.910072, 36.748863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363571, 32.550430, 36.695442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565932, 0.371699, -0.735908,
		0.711301, 0.231188, 0.663779,
		0.416860, -0.899106, -0.133553,
		37.488628, 32.280697, 36.655376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968784, 32.939377, 36.841213>,  <37.196827, 32.910072, 36.748863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968784, 32.939377, 36.841213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889450, 32.635399, 36.593620>,  <37.841850, 32.453011, 36.445065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.889450, 32.635399, 36.593620>,  <37.968784, 32.939377, 36.841213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889450, 32.635399, 36.593620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629770, 0.385107, -0.674597,
		0.751034, -0.523616, 0.402211,
		-0.198336, -0.759947, -0.618986,
		37.829948, 32.407413, 36.407925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625320, 32.749619, 36.586506>,  <37.968784, 32.939377, 36.841213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625320, 32.749619, 36.586506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383797, 32.550838, 36.337204>,  <38.238880, 32.431568, 36.187622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383797, 32.550838, 36.337204>,  <38.625320, 32.749619, 36.586506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383797, 32.550838, 36.337204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569621, 0.277956, -0.773480,
		0.557622, -0.822056, 0.115243,
		-0.603812, -0.496955, -0.623255,
		38.202652, 32.401752, 36.150227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913696, 32.132751, 36.321030>,  <38.625320, 32.749619, 36.586506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913696, 32.132751, 36.321030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649029, 32.267536, 36.053104>,  <38.490227, 32.348408, 35.892349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649029, 32.267536, 36.053104>,  <38.913696, 32.132751, 36.321030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649029, 32.267536, 36.053104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721561, 0.043332, -0.690994,
		-0.203814, -0.940521, -0.271810,
		-0.661672, 0.336961, -0.669811,
		38.450527, 32.368626, 35.852161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930004, 31.728054, 35.732967>,  <38.913696, 32.132751, 36.321030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930004, 31.728054, 35.732967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799816, 32.087479, 35.615223>,  <38.721703, 32.303135, 35.544575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799816, 32.087479, 35.615223>,  <38.930004, 31.728054, 35.732967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799816, 32.087479, 35.615223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638074, -0.021024, -0.769688,
		-0.697802, -0.438340, -0.566507,
		-0.325475, 0.898563, -0.294364,
		38.702175, 32.357048, 35.526913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637577, 31.698769, 34.963573>,  <38.930004, 31.728054, 35.732967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637577, 31.698769, 34.963573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751713, 32.069660, 35.060596>,  <38.820194, 32.292194, 35.118809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751713, 32.069660, 35.060596>,  <38.637577, 31.698769, 34.963573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751713, 32.069660, 35.060596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524410, 0.060790, -0.849293,
		-0.802232, 0.369532, -0.468902,
		0.285336, 0.927227, 0.242554,
		38.837315, 32.347828, 35.133362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436607, 32.237228, 34.424801>,  <38.637577, 31.698769, 34.963573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436607, 32.237228, 34.424801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787342, 32.317989, 34.599339>,  <38.997784, 32.366444, 34.704060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787342, 32.317989, 34.599339>,  <38.436607, 32.237228, 34.424801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787342, 32.317989, 34.599339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435252, 0.052201, -0.898794,
		-0.204242, 0.978015, -0.042105,
		0.876836, 0.201898, 0.436344,
		39.050392, 32.378559, 34.730240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938843, 32.867298, 34.036842>,  <38.436607, 32.237228, 34.424801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938843, 32.867298, 34.036842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156376, 32.593681, 34.231300>,  <39.286896, 32.429512, 34.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156376, 32.593681, 34.231300>,  <38.938843, 32.867298, 34.036842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156376, 32.593681, 34.231300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583238, -0.108433, -0.805032,
		0.603386, 0.721342, 0.339987,
		0.543837, -0.684038, 0.486141,
		39.319527, 32.388470, 34.377144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620098, 32.949131, 34.066650>,  <38.938843, 32.867298, 34.036842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620098, 32.949131, 34.066650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655914, 32.550751, 34.069984>,  <39.677406, 32.311722, 34.071983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655914, 32.550751, 34.069984>,  <39.620098, 32.949131, 34.066650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655914, 32.550751, 34.069984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866095, 0.073730, -0.494413,
		0.491795, 0.051489, 0.869187,
		0.089542, -0.995948, 0.008334,
		39.682777, 32.251965, 34.072483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268520, 32.756153, 34.310276>,  <39.620098, 32.949131, 34.066650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268520, 32.756153, 34.310276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137161, 32.477676, 34.054943>,  <40.058346, 32.310589, 33.901745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137161, 32.477676, 34.054943>,  <40.268520, 32.756153, 34.310276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137161, 32.477676, 34.054943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933066, -0.134090, -0.333778,
		0.146781, -0.705217, 0.693632,
		-0.328395, -0.696196, -0.638332,
		40.038643, 32.268818, 33.863445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652653, 32.214970, 34.469288>,  <40.268520, 32.756153, 34.310276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652653, 32.214970, 34.469288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510426, 32.204639, 34.095570>,  <40.425091, 32.198441, 33.871338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510426, 32.204639, 34.095570>,  <40.652653, 32.214970, 34.469288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510426, 32.204639, 34.095570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934417, 0.012604, -0.355958,
		0.020971, -0.999587, 0.019656,
		-0.355563, -0.025832, -0.934295,
		40.403755, 32.196892, 33.815281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085018, 31.842686, 33.938545>,  <40.652653, 32.214970, 34.469288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085018, 31.842686, 33.938545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861572, 32.076092, 33.702763>,  <40.727505, 32.216137, 33.561295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861572, 32.076092, 33.702763>,  <41.085018, 31.842686, 33.938545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861572, 32.076092, 33.702763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809780, 0.229938, -0.539800,
		-0.179445, -0.778870, -0.600967,
		-0.558619, 0.583516, -0.589452,
		40.693985, 32.251148, 33.525928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221085, 31.725506, 33.290691>,  <41.085018, 31.842686, 33.938545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221085, 31.725506, 33.290691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100620, 32.106243, 33.267742>,  <41.028343, 32.334686, 33.253971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.100620, 32.106243, 33.267742>,  <41.221085, 31.725506, 33.290691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100620, 32.106243, 33.267742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859807, 0.245037, -0.447983,
		-0.412352, -0.184246, -0.892199,
		-0.301161, 0.951846, -0.057374,
		41.010273, 32.391796, 33.250530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856701, 31.970987, 33.190723>,  <41.221085, 31.725506, 33.290691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856701, 31.970987, 33.190723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250748, 32.038815, 33.179489>,  <42.487175, 32.079510, 33.172749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250748, 32.038815, 33.179489>,  <41.856701, 31.970987, 33.190723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250748, 32.038815, 33.179489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021646, -0.284512, -0.958428,
		-0.170508, 0.943557, -0.283949,
		0.985119, 0.169566, -0.028088,
		42.546284, 32.089684, 33.171062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021172, 32.255302, 32.523754>,  <41.856701, 31.970987, 33.190723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021172, 32.255302, 32.523754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397400, 32.178471, 32.635777>,  <42.623138, 32.132370, 32.702991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397400, 32.178471, 32.635777>,  <42.021172, 32.255302, 32.523754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397400, 32.178471, 32.635777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227486, -0.255943, -0.939544,
		0.252149, 0.947416, -0.197036,
		0.940569, -0.192083, 0.280059,
		42.679569, 32.120846, 32.719795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449501, 32.621685, 32.043083>,  <42.021172, 32.255302, 32.523754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449501, 32.621685, 32.043083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662865, 32.329269, 32.213284>,  <42.790882, 32.153820, 32.315403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.662865, 32.329269, 32.213284>,  <42.449501, 32.621685, 32.043083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662865, 32.329269, 32.213284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362810, -0.256683, -0.895814,
		0.764099, 0.632210, 0.128314,
		0.533406, -0.731044, 0.425503,
		42.822887, 32.109955, 32.340935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102318, 32.596458, 31.752426>,  <42.449501, 32.621685, 32.043083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102318, 32.596458, 31.752426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005795, 32.231083, 31.883518>,  <42.947880, 32.011860, 31.962173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005795, 32.231083, 31.883518>,  <43.102318, 32.596458, 31.752426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005795, 32.231083, 31.883518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326934, -0.394488, -0.858774,
		0.913720, -0.100082, 0.393826,
		-0.241307, -0.913435, 0.327731,
		42.933403, 31.957052, 31.981838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683266, 32.149750, 31.601280>,  <43.102318, 32.596458, 31.752426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683266, 32.149750, 31.601280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378956, 31.899673, 31.670967>,  <43.196369, 31.749628, 31.712780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378956, 31.899673, 31.670967>,  <43.683266, 32.149750, 31.601280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378956, 31.899673, 31.670967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276528, -0.555102, -0.784470,
		0.587155, -0.548631, 0.595192,
		-0.760777, -0.625193, 0.174219,
		43.150723, 31.712116, 31.723232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933052, 31.487425, 31.700983>,  <43.683266, 32.149750, 31.601280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933052, 31.487425, 31.700983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552139, 31.403898, 31.611946>,  <43.323589, 31.353783, 31.558523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552139, 31.403898, 31.611946>,  <43.933052, 31.487425, 31.700983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552139, 31.403898, 31.611946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304455, -0.598735, -0.740827,
		0.021422, -0.773248, 0.633741,
		-0.952286, -0.208816, -0.222593,
		43.266453, 31.341253, 31.545168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024860, 30.916691, 31.455658>,  <43.933052, 31.487425, 31.700983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024860, 30.916691, 31.455658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662849, 31.011356, 31.314280>,  <43.445644, 31.068155, 31.229452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662849, 31.011356, 31.314280>,  <44.024860, 30.916691, 31.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662849, 31.011356, 31.314280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156647, -0.587089, -0.794222,
		-0.395467, -0.774155, 0.494257,
		-0.905024, 0.236664, -0.353443,
		43.391342, 31.082355, 31.208246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718506, 30.314911, 31.183485>,  <44.024860, 30.916691, 31.455658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718506, 30.314911, 31.183485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508457, 30.615421, 31.023569>,  <43.382427, 30.795727, 30.927620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.508457, 30.615421, 31.023569>,  <43.718506, 30.314911, 31.183485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508457, 30.615421, 31.023569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047409, -0.443220, -0.895158,
		-0.849707, -0.489019, 0.197127,
		-0.525120, 0.751277, -0.399791,
		43.350922, 30.840805, 30.903631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358753, 30.011660, 30.642160>,  <43.718506, 30.314911, 31.183485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358753, 30.011660, 30.642160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370335, 30.396812, 30.534815>,  <43.377281, 30.627905, 30.470407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.370335, 30.396812, 30.534815>,  <43.358753, 30.011660, 30.642160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370335, 30.396812, 30.534815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107444, -0.269919, -0.956870,
		-0.993789, -0.001131, -0.111270,
		0.028952, 0.962882, -0.268364,
		43.379021, 30.685677, 30.454306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936996, 30.021351, 29.978361>,  <43.358753, 30.011660, 30.642160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936996, 30.021351, 29.978361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151539, 30.357912, 30.004784>,  <43.280266, 30.559849, 30.020638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151539, 30.357912, 30.004784>,  <42.936996, 30.021351, 29.978361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151539, 30.357912, 30.004784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270245, -0.097069, -0.957886,
		-0.799555, 0.531620, -0.279448,
		0.536357, 0.841402, 0.066056,
		43.312447, 30.610332, 30.024601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716072, 30.489426, 29.425844>,  <42.936996, 30.021351, 29.978361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716072, 30.489426, 29.425844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095112, 30.573696, 29.521908>,  <43.322536, 30.624258, 29.579546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095112, 30.573696, 29.521908>,  <42.716072, 30.489426, 29.425844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095112, 30.573696, 29.521908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289207, -0.246345, -0.925026,
		-0.135720, 0.946007, -0.294365,
		0.947597, 0.210677, 0.240158,
		43.379391, 30.636900, 29.593956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907234, 30.978596, 28.951435>,  <42.716072, 30.489426, 29.425844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907234, 30.978596, 28.951435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248173, 30.832813, 29.101460>,  <43.452736, 30.745344, 29.191475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248173, 30.832813, 29.101460>,  <42.907234, 30.978596, 28.951435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248173, 30.832813, 29.101460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319333, -0.205250, -0.925148,
		0.414157, 0.908319, -0.058562,
		0.852350, -0.364456, 0.375062,
		43.503880, 30.723476, 29.213978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450283, 31.363750, 28.596346>,  <42.907234, 30.978596, 28.951435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450283, 31.363750, 28.596346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617245, 31.026627, 28.732254>,  <43.717422, 30.824352, 28.813799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617245, 31.026627, 28.732254>,  <43.450283, 31.363750, 28.596346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617245, 31.026627, 28.732254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470041, -0.119751, -0.874483,
		0.777710, 0.524722, 0.346170,
		0.417406, -0.842809, 0.339772,
		43.742466, 30.773785, 28.834187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062256, 31.458403, 28.293661>,  <43.450283, 31.363750, 28.596346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062256, 31.458403, 28.293661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067593, 31.070827, 28.392439>,  <44.070793, 30.838282, 28.451706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067593, 31.070827, 28.392439>,  <44.062256, 31.458403, 28.293661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067593, 31.070827, 28.392439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483348, -0.209946, -0.849880,
		0.875326, 0.130698, 0.465534,
		0.013340, -0.968938, 0.246944,
		44.071594, 30.780146, 28.466522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.771816, 31.119343, 28.271561>,  <44.062256, 31.458403, 28.293661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.771816, 31.119343, 28.271561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530533, 30.802147, 28.237379>,  <44.385761, 30.611830, 28.216869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530533, 30.802147, 28.237379>,  <44.771816, 31.119343, 28.271561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530533, 30.802147, 28.237379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695798, -0.470829, -0.542388,
		0.389874, -0.386633, 0.835771,
		-0.603211, -0.792991, -0.085455,
		44.349571, 30.564249, 28.211742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199379, 30.653675, 28.269924>,  <44.771816, 31.119343, 28.271561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199379, 30.653675, 28.269924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873703, 30.513266, 28.084934>,  <44.678299, 30.429020, 27.973940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873703, 30.513266, 28.084934>,  <45.199379, 30.653675, 28.269924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873703, 30.513266, 28.084934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564115, -0.289775, -0.773178,
		0.137392, -0.890400, 0.433950,
		-0.814186, -0.351026, -0.462475,
		44.629448, 30.407957, 27.946192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455933, 30.013645, 27.934763>,  <45.199379, 30.653675, 28.269924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455933, 30.013645, 27.934763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111271, 30.066137, 27.738668>,  <44.904472, 30.097633, 27.621012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111271, 30.066137, 27.738668>,  <45.455933, 30.013645, 27.934763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111271, 30.066137, 27.738668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455427, -0.226256, -0.861042,
		-0.223889, -0.965191, 0.135203,
		-0.861661, 0.131203, -0.490231,
		44.852776, 30.105507, 27.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470703, 29.581896, 27.379503>,  <45.455933, 30.013645, 27.934763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470703, 29.581896, 27.379503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135658, 29.765068, 27.260374>,  <44.934631, 29.874971, 27.188896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135658, 29.765068, 27.260374>,  <45.470703, 29.581896, 27.379503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135658, 29.765068, 27.260374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201527, -0.247702, -0.947645,
		-0.507727, -0.853782, 0.115194,
		-0.837615, 0.457930, -0.297825,
		44.884373, 29.902447, 27.171026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030674, 29.092564, 26.988914>,  <45.470703, 29.581896, 27.379503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030674, 29.092564, 26.988914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971889, 29.470331, 26.871286>,  <44.936619, 29.696991, 26.800709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971889, 29.470331, 26.871286>,  <45.030674, 29.092564, 26.988914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971889, 29.470331, 26.871286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290474, -0.242987, -0.925517,
		-0.945531, -0.221432, -0.238620,
		-0.146957, 0.944418, -0.294072,
		44.927803, 29.753656, 26.783064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743835, 29.110424, 26.298836>,  <45.030674, 29.092564, 26.988914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743835, 29.110424, 26.298836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915699, 29.468418, 26.346830>,  <45.018818, 29.683214, 26.375628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915699, 29.468418, 26.346830>,  <44.743835, 29.110424, 26.298836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915699, 29.468418, 26.346830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270824, -0.000960, -0.962628,
		-0.861422, 0.446096, -0.242796,
		0.429658, 0.894984, 0.119987,
		45.044598, 29.736914, 26.382826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583305, 29.553125, 25.666126>,  <44.743835, 29.110424, 26.298836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583305, 29.553125, 25.666126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912449, 29.716797, 25.823849>,  <45.109936, 29.815001, 25.918482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912449, 29.716797, 25.823849>,  <44.583305, 29.553125, 25.666126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912449, 29.716797, 25.823849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439636, -0.018763, -0.897980,
		-0.360035, 0.912262, -0.195329,
		0.822858, 0.409178, 0.394308,
		45.159306, 29.839550, 25.942141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964649, 29.917820, 25.125315>,  <44.583305, 29.553125, 25.666126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964649, 29.917820, 25.125315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237015, 29.854300, 25.411289>,  <45.400436, 29.816187, 25.582874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237015, 29.854300, 25.411289>,  <44.964649, 29.917820, 25.125315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237015, 29.854300, 25.411289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720558, -0.029279, -0.692776,
		0.130947, 0.986876, 0.094489,
		0.680918, -0.158802, 0.714936,
		45.441292, 29.806660, 25.625771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553299, 30.294781, 24.846661>,  <44.964649, 29.917820, 25.125315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553299, 30.294781, 24.846661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658405, 29.917894, 24.929789>,  <45.721470, 29.691763, 24.979666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.658405, 29.917894, 24.929789>,  <45.553299, 30.294781, 24.846661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658405, 29.917894, 24.929789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471319, -0.062598, -0.879738,
		0.841911, 0.329112, 0.427635,
		0.262764, -0.942214, 0.207819,
		45.737236, 29.635231, 24.992134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358494, 30.100153, 24.703941>,  <45.553299, 30.294781, 24.846661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358494, 30.100153, 24.703941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093483, 29.802799, 24.667191>,  <45.934475, 29.624388, 24.645140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093483, 29.802799, 24.667191>,  <46.358494, 30.100153, 24.703941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093483, 29.802799, 24.667191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318361, -0.168438, -0.932885,
		0.678016, -0.647311, 0.348258,
		-0.662527, -0.743383, -0.091875,
		45.894726, 29.579784, 24.639627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683891, 29.752373, 24.279713>,  <46.358494, 30.100153, 24.703941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683891, 29.752373, 24.279713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374798, 30.000057, 24.223907>,  <46.189342, 30.148668, 24.190424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374798, 30.000057, 24.223907>,  <46.683891, 29.752373, 24.279713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374798, 30.000057, 24.223907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282400, 0.532235, 0.798108,
		0.568454, 0.577322, -0.586139,
		-0.772729, 0.619213, -0.139515,
		46.142979, 30.185822, 24.182053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.886726, 30.504168, 24.194750>,  <46.683891, 29.752373, 24.279713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.886726, 30.504168, 24.194750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519142, 30.537790, 24.348866>,  <46.298592, 30.557964, 24.441336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519142, 30.537790, 24.348866>,  <46.886726, 30.504168, 24.194750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.519142, 30.537790, 24.348866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318565, 0.734124, 0.599648,
		-0.232447, 0.673792, -0.701408,
		-0.918959, 0.084058, 0.385291,
		46.243454, 30.563007, 24.464453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.481022, 31.209044, 24.185064>,  <46.886726, 30.504168, 24.194750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.481022, 31.209044, 24.185064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413906, 30.967981, 24.497129>,  <46.373634, 30.823343, 24.684368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.413906, 30.967981, 24.497129>,  <46.481022, 31.209044, 24.185064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413906, 30.967981, 24.497129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358419, 0.699930, 0.617766,
		-0.918358, 0.383280, 0.098561,
		-0.167792, -0.602656, 0.780161,
		46.363567, 30.787184, 24.731178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273254, 31.659100, 24.800962>,  <46.481022, 31.209044, 24.185064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273254, 31.659100, 24.800962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398811, 31.321991, 24.975872>,  <46.474144, 31.119726, 25.080818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398811, 31.321991, 24.975872>,  <46.273254, 31.659100, 24.800962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398811, 31.321991, 24.975872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537434, 0.537379, 0.649914,
		-0.782711, 0.031002, 0.621613,
		0.313893, -0.842770, 0.437274,
		46.492981, 31.069160, 25.107054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210590, 31.680119, 25.648817>,  <46.273254, 31.659100, 24.800962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.210590, 31.680119, 25.648817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481358, 31.407148, 25.538488>,  <46.643818, 31.243366, 25.472292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481358, 31.407148, 25.538488>,  <46.210590, 31.680119, 25.648817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481358, 31.407148, 25.538488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610313, 0.310904, 0.728599,
		-0.411462, -0.661537, 0.626951,
		0.676917, -0.682428, -0.275820,
		46.684433, 31.202419, 25.455742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.633533, 32.140160, 25.292860>,  <46.210590, 31.680119, 25.648817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.633533, 32.140160, 25.292860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889568, 32.125534, 25.599834>,  <47.043190, 32.116756, 25.784019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.889568, 32.125534, 25.599834>,  <46.633533, 32.140160, 25.292860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.889568, 32.125534, 25.599834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263517, 0.948725, -0.174585,
		-0.721700, 0.313980, 0.616899,
		0.640084, -0.036565, 0.767435,
		47.081593, 32.114563, 25.830065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557972, 32.815269, 25.715387>,  <46.633533, 32.140160, 25.292860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557972, 32.815269, 25.715387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918316, 32.647705, 25.760946>,  <47.134521, 32.547165, 25.788282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918316, 32.647705, 25.760946>,  <46.557972, 32.815269, 25.715387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.918316, 32.647705, 25.760946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430378, 0.896175, -0.107916,
		-0.056864, 0.146235, 0.987614,
		0.900856, -0.418911, 0.113897,
		47.188572, 32.522034, 25.795115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.833282, 33.166313, 26.288147>,  <46.557972, 32.815269, 25.715387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.833282, 33.166313, 26.288147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480751, 32.977783, 26.274778>,  <46.269234, 32.864666, 26.266756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480751, 32.977783, 26.274778>,  <46.833282, 33.166313, 26.288147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480751, 32.977783, 26.274778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110668, -0.274670, 0.955149,
		-0.459365, 0.838099, 0.294234,
		-0.881326, -0.471325, -0.033423,
		46.216354, 32.836388, 26.264751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424747, 33.453438, 26.818247>,  <46.833282, 33.166313, 26.288147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424747, 33.453438, 26.818247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223392, 33.113159, 26.757698>,  <46.102577, 32.908993, 26.721369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223392, 33.113159, 26.757698>,  <46.424747, 33.453438, 26.818247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223392, 33.113159, 26.757698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113320, -0.238674, 0.964465,
		-0.856597, 0.468348, 0.216547,
		-0.503389, -0.850697, -0.151374,
		46.072376, 32.857948, 26.712286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862415, 33.509232, 27.101328>,  <46.424747, 33.453438, 26.818247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862415, 33.509232, 27.101328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903877, 33.112423, 27.072601>,  <45.928753, 32.874340, 27.055367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903877, 33.112423, 27.072601>,  <45.862415, 33.509232, 27.101328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903877, 33.112423, 27.072601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111746, -0.060132, 0.991916,
		-0.988316, -0.110839, 0.104622,
		0.103652, -0.992018, -0.071815,
		45.934975, 32.814819, 27.051056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513939, 33.190178, 27.609648>,  <45.862415, 33.509232, 27.101328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513939, 33.190178, 27.609648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740723, 32.877666, 27.505215>,  <45.876793, 32.690159, 27.442554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740723, 32.877666, 27.505215>,  <45.513939, 33.190178, 27.609648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740723, 32.877666, 27.505215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120939, -0.234563, 0.964548,
		-0.814822, -0.578432, -0.038500,
		0.566956, -0.781279, -0.261082,
		45.910809, 32.643284, 27.426889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144444, 32.664379, 27.930946>,  <45.513939, 33.190178, 27.609648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144444, 32.664379, 27.930946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520901, 32.554825, 27.851717>,  <45.746777, 32.489094, 27.804180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520901, 32.554825, 27.851717>,  <45.144444, 32.664379, 27.930946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520901, 32.554825, 27.851717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109889, -0.306236, 0.945592,
		-0.319647, -0.911703, -0.258114,
		0.941143, -0.273892, -0.198074,
		45.803246, 32.472660, 27.792295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238205, 31.868738, 28.015949>,  <45.144444, 32.664379, 27.930946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238205, 31.868738, 28.015949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582417, 32.068073, 28.058199>,  <45.788944, 32.187675, 28.083549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.582417, 32.068073, 28.058199>,  <45.238205, 31.868738, 28.015949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582417, 32.068073, 28.058199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010978, -0.225442, 0.974195,
		0.509289, -0.837160, -0.199469,
		0.860525, 0.498336, 0.105625,
		45.840572, 32.217575, 28.089886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530098, 31.491982, 28.521759>,  <45.238205, 31.868738, 28.015949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530098, 31.491982, 28.521759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753937, 31.823374, 28.530396>,  <45.888241, 32.022209, 28.535578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753937, 31.823374, 28.530396>,  <45.530098, 31.491982, 28.521759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753937, 31.823374, 28.530396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142860, -0.122090, 0.982184,
		0.816357, -0.546545, -0.186679,
		0.559600, 0.828482, 0.021590,
		45.921818, 32.071918, 28.536873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144638, 31.318760, 28.904182>,  <45.530098, 31.491982, 28.521759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144638, 31.318760, 28.904182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106453, 31.716881, 28.910620>,  <46.083542, 31.955753, 28.914482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.106453, 31.716881, 28.910620>,  <46.144638, 31.318760, 28.904182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106453, 31.716881, 28.910620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067454, -0.009664, 0.997676,
		0.993145, 0.096324, -0.066215,
		-0.095461, 0.995303, 0.016095,
		46.077816, 32.015472, 28.915447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652992, 31.535250, 29.377432>,  <46.144638, 31.318760, 28.904182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652992, 31.535250, 29.377432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456947, 31.883831, 29.369801>,  <46.339321, 32.092979, 29.365223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456947, 31.883831, 29.369801>,  <46.652992, 31.535250, 29.377432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456947, 31.883831, 29.369801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101364, 0.078718, 0.991730,
		0.865746, 0.484124, -0.126915,
		-0.490111, 0.871451, -0.019077,
		46.309914, 32.145267, 29.364077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845455, 31.945835, 29.944996>,  <46.652992, 31.535250, 29.377432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845455, 31.945835, 29.944996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507786, 32.125034, 29.827234>,  <46.305183, 32.232555, 29.756577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.507786, 32.125034, 29.827234>,  <46.845455, 31.945835, 29.944996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.507786, 32.125034, 29.827234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190417, 0.262781, 0.945879,
		0.501118, 0.854542, -0.136525,
		-0.844170, 0.448000, -0.294404,
		46.254536, 32.259434, 29.738913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863598, 32.607597, 30.161621>,  <46.845455, 31.945835, 29.944996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863598, 32.607597, 30.161621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482578, 32.493267, 30.119759>,  <46.253967, 32.424667, 30.094641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482578, 32.493267, 30.119759>,  <46.863598, 32.607597, 30.161621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482578, 32.493267, 30.119759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193858, 0.304597, 0.932545,
		-0.234670, 0.908583, -0.345554,
		-0.952549, -0.285828, -0.104656,
		46.196815, 32.407520, 30.088362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490128, 33.052933, 30.573662>,  <46.863598, 32.607597, 30.161621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490128, 33.052933, 30.573662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.232964, 32.753941, 30.506790>,  <46.078667, 32.574547, 30.466667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.232964, 32.753941, 30.506790>,  <46.490128, 33.052933, 30.573662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.232964, 32.753941, 30.506790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376189, 0.118018, 0.918996,
		-0.667198, 0.653720, -0.357068,
		-0.642906, -0.747477, -0.167181,
		46.040092, 32.529697, 30.456636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948200, 33.358414, 30.664164>,  <46.490128, 33.052933, 30.573662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948200, 33.358414, 30.664164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839649, 32.978821, 30.728392>,  <45.774517, 32.751064, 30.766928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839649, 32.978821, 30.728392>,  <45.948200, 33.358414, 30.664164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839649, 32.978821, 30.728392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508047, 0.282934, 0.813533,
		-0.817461, 0.139198, -0.558911,
		-0.271378, -0.948985, 0.160568,
		45.758236, 32.694126, 30.776562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243557, 33.346142, 31.043196>,  <45.948200, 33.358414, 30.664164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243557, 33.346142, 31.043196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422306, 32.990265, 31.080614>,  <45.529556, 32.776737, 31.103065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422306, 32.990265, 31.080614>,  <45.243557, 33.346142, 31.043196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422306, 32.990265, 31.080614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278277, -0.038864, 0.959714,
		-0.850217, -0.454899, -0.264948,
		0.446870, -0.889695, 0.093545,
		45.556366, 32.723358, 31.108677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770229, 32.961178, 31.381931>,  <45.243557, 33.346142, 31.043196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770229, 32.961178, 31.381931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120628, 32.775269, 31.433504>,  <45.330868, 32.663723, 31.464447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120628, 32.775269, 31.433504>,  <44.770229, 32.961178, 31.381931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120628, 32.775269, 31.433504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152607, -0.013498, 0.988195,
		-0.457543, -0.885328, -0.082752,
		0.875994, -0.464770, 0.128931,
		45.383427, 32.635838, 31.472183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658146, 32.409775, 31.908751>,  <44.770229, 32.961178, 31.381931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658146, 32.409775, 31.908751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056206, 32.445362, 31.925510>,  <45.295044, 32.466713, 31.935566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.056206, 32.445362, 31.925510>,  <44.658146, 32.409775, 31.908751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.056206, 32.445362, 31.925510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046893, 0.054780, 0.997397,
		0.086448, -0.994526, 0.058687,
		0.995152, 0.088975, 0.041901,
		45.354752, 32.472050, 31.938082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698246, 32.109749, 32.538132>,  <44.658146, 32.409775, 31.908751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698246, 32.109749, 32.538132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050797, 32.297836, 32.519917>,  <45.262325, 32.410690, 32.508987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.050797, 32.297836, 32.519917>,  <44.698246, 32.109749, 32.538132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.050797, 32.297836, 32.519917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029792, 0.040872, 0.998720,
		0.471483, -0.881600, 0.022014,
		0.881372, 0.470224, -0.045535,
		45.315208, 32.438904, 32.506256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161339, 31.853500, 33.059269>,  <44.698246, 32.109749, 32.538132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161339, 31.853500, 33.059269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301056, 32.217747, 32.970932>,  <45.384884, 32.436295, 32.917931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.301056, 32.217747, 32.970932>,  <45.161339, 31.853500, 33.059269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301056, 32.217747, 32.970932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053781, 0.254782, 0.965502,
		0.935470, -0.325364, 0.137967,
		0.349291, 0.910618, -0.220843,
		45.405842, 32.490932, 32.904678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505394, 32.044788, 33.692860>,  <45.161339, 31.853500, 33.059269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505394, 32.044788, 33.692860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426926, 32.377663, 33.485409>,  <45.379845, 32.577389, 33.360939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426926, 32.377663, 33.485409>,  <45.505394, 32.044788, 33.692860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426926, 32.377663, 33.485409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290209, 0.455941, 0.841366,
		0.936641, 0.315563, 0.152066,
		-0.196171, 0.832189, -0.518632,
		45.368076, 32.627319, 33.329819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878643, 32.558254, 34.014149>,  <45.505394, 32.044788, 33.692860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878643, 32.558254, 34.014149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608685, 32.748180, 33.788204>,  <45.446709, 32.862137, 33.652637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.608685, 32.748180, 33.788204>,  <45.878643, 32.558254, 34.014149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608685, 32.748180, 33.788204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233715, 0.588531, 0.773957,
		0.699924, 0.654356, -0.286225,
		-0.674895, 0.474816, -0.564859,
		45.406216, 32.890625, 33.618748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859592, 33.184166, 34.284363>,  <45.878643, 32.558254, 34.014149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859592, 33.184166, 34.284363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.528709, 33.174435, 34.059814>,  <45.330177, 33.168594, 33.925087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.528709, 33.174435, 34.059814>,  <45.859592, 33.184166, 34.284363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.528709, 33.174435, 34.059814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372304, 0.772013, 0.515156,
		0.420848, 0.635141, -0.647674,
		-0.827210, -0.024329, -0.561366,
		45.280548, 33.167137, 33.891403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143135, 33.274193, 34.924049>,  <45.859592, 33.184166, 34.284363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143135, 33.274193, 34.924049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084957, 33.667988, 34.963295>,  <46.050049, 33.904266, 34.986843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.084957, 33.667988, 34.963295>,  <46.143135, 33.274193, 34.924049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084957, 33.667988, 34.963295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838508, 0.070023, 0.540372,
		0.525120, 0.160865, -0.835686,
		-0.145444, 0.984489, 0.098117,
		46.041325, 33.963333, 34.992729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766262, 33.643898, 34.793594>,  <46.143135, 33.274193, 34.924049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766262, 33.643898, 34.793594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546932, 33.878250, 35.032284>,  <46.415333, 34.018864, 35.175499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546932, 33.878250, 35.032284>,  <46.766262, 33.643898, 34.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546932, 33.878250, 35.032284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791607, 0.133573, 0.596252,
		0.269628, 0.799312, -0.537031,
		-0.548323, 0.585884, 0.596726,
		46.382435, 34.054016, 35.211300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081539, 34.282028, 34.765259>,  <46.766262, 33.643898, 34.793594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081539, 34.282028, 34.765259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874153, 34.203728, 35.098217>,  <46.749722, 34.156746, 35.297993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874153, 34.203728, 35.098217>,  <47.081539, 34.282028, 34.765259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874153, 34.203728, 35.098217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837334, 0.081183, 0.540631,
		-0.173405, 0.977287, 0.121818,
		-0.518462, -0.195751, 0.832393,
		46.718613, 34.145004, 35.347935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710827, 34.785385, 34.766964>,  <47.081539, 34.282028, 34.765259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710827, 34.785385, 34.766964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577763, 35.122868, 34.935486>,  <47.497925, 35.325356, 35.036598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577763, 35.122868, 34.935486>,  <47.710827, 34.785385, 34.766964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.577763, 35.122868, 34.935486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299307, 0.518113, -0.801233,
		-0.894289, -0.140438, -0.424882,
		-0.332660, 0.843704, 0.421309,
		47.477966, 35.375980, 35.061878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.174507, 32.719978, 45.259129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803795, 32.869244, 45.242069>,  <36.581367, 32.958801, 45.231834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.803795, 32.869244, 45.242069>,  <37.174507, 32.719978, 45.259129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803795, 32.869244, 45.242069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212765, 0.428034, -0.878361,
		-0.309518, -0.823125, -0.476091,
		-0.926784, 0.373164, -0.042648,
		36.525761, 32.981194, 45.229275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063957, 32.688351, 44.583637>,  <37.174507, 32.719978, 45.259129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063957, 32.688351, 44.583637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759953, 32.928741, 44.682602>,  <36.577549, 33.072975, 44.741982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759953, 32.928741, 44.682602>,  <37.063957, 32.688351, 44.583637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759953, 32.928741, 44.682602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026586, 0.351621, -0.935765,
		-0.649370, -0.717766, -0.251257,
		-0.760007, 0.600978, 0.247414,
		36.531952, 33.109035, 44.756824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500435, 32.538265, 44.161957>,  <37.063957, 32.688351, 44.583637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500435, 32.538265, 44.161957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481342, 32.917328, 44.288242>,  <36.469887, 33.144764, 44.364014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481342, 32.917328, 44.288242>,  <36.500435, 32.538265, 44.161957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481342, 32.917328, 44.288242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011818, 0.315520, -0.948845,
		-0.998790, -0.049018, -0.003860,
		-0.047728, 0.947652, 0.315717,
		36.467022, 33.201622, 44.382957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952877, 32.898106, 43.741165>,  <36.500435, 32.538265, 44.161957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952877, 32.898106, 43.741165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124271, 33.213100, 43.918373>,  <36.227108, 33.402096, 44.024700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.124271, 33.213100, 43.918373>,  <35.952877, 32.898106, 43.741165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124271, 33.213100, 43.918373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150926, 0.545805, -0.824208,
		-0.890854, 0.286297, 0.352721,
		0.428485, 0.787484, 0.443023,
		36.252815, 33.449345, 44.051281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456005, 33.454704, 43.795635>,  <35.952877, 32.898106, 43.741165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456005, 33.454704, 43.795635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825489, 33.607815, 43.789330>,  <36.047180, 33.699680, 43.785545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825489, 33.607815, 43.789330>,  <35.456005, 33.454704, 43.795635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825489, 33.607815, 43.789330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238174, 0.541551, -0.806223,
		-0.300070, 0.748467, 0.591401,
		0.923705, 0.382780, -0.015762,
		36.102600, 33.722649, 43.784599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350479, 34.205093, 43.557217>,  <35.456005, 33.454704, 43.795635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350479, 34.205093, 43.557217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742455, 34.138084, 43.514027>,  <35.977638, 34.097878, 43.488113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742455, 34.138084, 43.514027>,  <35.350479, 34.205093, 43.557217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742455, 34.138084, 43.514027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003599, 0.526791, -0.849987,
		0.199271, 0.833323, 0.515619,
		0.979938, -0.167522, -0.107973,
		36.036434, 34.087830, 43.481636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552383, 34.904541, 43.298019>,  <35.350479, 34.205093, 43.557217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552383, 34.904541, 43.298019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821846, 34.629349, 43.190041>,  <35.983524, 34.464233, 43.125256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821846, 34.629349, 43.190041>,  <35.552383, 34.904541, 43.298019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821846, 34.629349, 43.190041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003828, 0.368502, -0.929619,
		0.739036, 0.625209, 0.250877,
		0.673655, -0.687982, -0.269943,
		36.023941, 34.422955, 43.109058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042656, 35.391766, 43.086967>,  <35.552383, 34.904541, 43.298019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042656, 35.391766, 43.086967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113209, 35.033245, 42.924225>,  <36.155540, 34.818130, 42.826580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113209, 35.033245, 42.924225>,  <36.042656, 35.391766, 43.086967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113209, 35.033245, 42.924225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153047, 0.433279, -0.888170,
		0.972351, 0.094390, 0.213599,
		0.176382, -0.896304, -0.406853,
		36.166122, 34.764355, 42.802170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570057, 35.515388, 42.587261>,  <36.042656, 35.391766, 43.086967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570057, 35.515388, 42.587261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404312, 35.173729, 42.461571>,  <36.304867, 34.968735, 42.386154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.404312, 35.173729, 42.461571>,  <36.570057, 35.515388, 42.587261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404312, 35.173729, 42.461571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067139, 0.315635, -0.946502,
		0.907634, -0.413288, -0.073440,
		-0.414358, -0.854147, -0.314229,
		36.280006, 34.917484, 42.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914993, 35.359364, 42.021729>,  <36.570057, 35.515388, 42.587261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914993, 35.359364, 42.021729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581711, 35.139858, 41.994511>,  <36.381741, 35.008156, 41.978180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581711, 35.139858, 41.994511>,  <36.914993, 35.359364, 42.021729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581711, 35.139858, 41.994511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007580, 0.111703, -0.993713,
		0.552915, -0.828480, -0.088911,
		-0.833203, -0.548765, -0.068042,
		36.331749, 34.975227, 41.974098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045471, 34.891430, 41.560249>,  <36.914993, 35.359364, 42.021729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045471, 34.891430, 41.560249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654202, 34.974461, 41.564011>,  <36.419441, 35.024281, 41.566269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654202, 34.974461, 41.564011>,  <37.045471, 34.891430, 41.560249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654202, 34.974461, 41.564011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025811, 0.166278, -0.985741,
		-0.206180, -0.963983, -0.168006,
		-0.978174, 0.207576, 0.009402,
		36.360748, 35.036732, 41.566830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665375, 34.337536, 41.163254>,  <37.045471, 34.891430, 41.560249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665375, 34.337536, 41.163254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428387, 34.659744, 41.167553>,  <36.286194, 34.853069, 41.170132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428387, 34.659744, 41.167553>,  <36.665375, 34.337536, 41.163254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428387, 34.659744, 41.167553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038661, 0.041758, -0.998380,
		-0.804665, -0.591093, -0.055883,
		-0.592469, 0.805522, 0.010750,
		36.250645, 34.901402, 41.170776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143330, 34.181347, 40.633812>,  <36.665375, 34.337536, 41.163254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143330, 34.181347, 40.633812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.127460, 34.578625, 40.677601>,  <36.117939, 34.816994, 40.703873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.127460, 34.578625, 40.677601>,  <36.143330, 34.181347, 40.633812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127460, 34.578625, 40.677601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079526, 0.106072, -0.991173,
		-0.996043, -0.048025, 0.074777,
		-0.039670, 0.993198, 0.109471,
		36.115559, 34.876583, 40.710442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618813, 34.481239, 40.086761>,  <36.143330, 34.181347, 40.633812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618813, 34.481239, 40.086761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859680, 34.770855, 40.221317>,  <36.004200, 34.944626, 40.302052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.859680, 34.770855, 40.221317>,  <35.618813, 34.481239, 40.086761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859680, 34.770855, 40.221317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202940, 0.268687, -0.941606,
		-0.772146, 0.635271, 0.014858,
		0.602168, 0.724042, 0.336388,
		36.040329, 34.988068, 40.322235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359585, 34.949039, 39.709877>,  <35.618813, 34.481239, 40.086761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359585, 34.949039, 39.709877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726715, 35.069363, 39.813496>,  <35.946995, 35.141556, 39.875668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726715, 35.069363, 39.813496>,  <35.359585, 34.949039, 39.709877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726715, 35.069363, 39.813496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144530, 0.354554, -0.923798,
		-0.369728, 0.885329, 0.281945,
		0.917830, 0.300804, 0.259046,
		36.002064, 35.159603, 39.891209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349957, 35.489021, 39.279320>,  <35.359585, 34.949039, 39.709877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349957, 35.489021, 39.279320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730614, 35.431713, 39.388016>,  <35.959007, 35.397327, 39.453232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730614, 35.431713, 39.388016>,  <35.349957, 35.489021, 39.279320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730614, 35.431713, 39.388016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306792, 0.398008, -0.864563,
		0.015713, 0.906125, 0.422717,
		0.951647, -0.143272, 0.271738,
		36.016109, 35.388733, 39.469536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712494, 36.100468, 39.137627>,  <35.349957, 35.489021, 39.279320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712494, 36.100468, 39.137627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011433, 35.834805, 39.145241>,  <36.190796, 35.675407, 39.149807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.011433, 35.834805, 39.145241>,  <35.712494, 36.100468, 39.137627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011433, 35.834805, 39.145241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366907, 0.388644, -0.845184,
		0.553942, 0.638628, 0.534137,
		0.747347, -0.664161, 0.019031,
		36.235638, 35.635555, 39.150951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295914, 36.422798, 38.938000>,  <35.712494, 36.100468, 39.137627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295914, 36.422798, 38.938000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401917, 36.042038, 38.876469>,  <36.465519, 35.813583, 38.839550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401917, 36.042038, 38.876469>,  <36.295914, 36.422798, 38.938000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401917, 36.042038, 38.876469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533443, 0.277625, -0.798976,
		0.803248, 0.129681, 0.581357,
		0.265011, -0.951897, -0.153824,
		36.481419, 35.756470, 38.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052097, 36.330101, 38.869389>,  <36.295914, 36.422798, 38.938000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052097, 36.330101, 38.869389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913773, 36.008293, 38.676243>,  <36.830776, 35.815208, 38.560356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913773, 36.008293, 38.676243>,  <37.052097, 36.330101, 38.869389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913773, 36.008293, 38.676243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475094, 0.293643, -0.829493,
		0.809135, -0.516256, 0.280678,
		-0.345812, -0.804521, -0.482867,
		36.810028, 35.766937, 38.531384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657036, 36.059528, 38.588058>,  <37.052097, 36.330101, 38.869389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657036, 36.059528, 38.588058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357944, 35.898537, 38.376812>,  <37.178490, 35.801941, 38.250065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357944, 35.898537, 38.376812>,  <37.657036, 36.059528, 38.588058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357944, 35.898537, 38.376812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466955, 0.246728, -0.849163,
		0.472073, -0.881552, 0.003455,
		-0.747730, -0.402481, -0.528119,
		37.133625, 35.777794, 38.218376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978355, 35.595497, 38.120228>,  <37.657036, 36.059528, 38.588058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978355, 35.595497, 38.120228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635551, 35.741299, 37.974533>,  <37.429871, 35.828781, 37.887115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635551, 35.741299, 37.974533>,  <37.978355, 35.595497, 38.120228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635551, 35.741299, 37.974533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460335, 0.223901, -0.859046,
		-0.231573, -0.903883, -0.359680,
		-0.857010, 0.364505, -0.364239,
		37.378448, 35.850651, 37.865261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054543, 35.454346, 37.387028>,  <37.978355, 35.595497, 38.120228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054543, 35.454346, 37.387028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734653, 35.694435, 37.392265>,  <37.542721, 35.838490, 37.395409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.734653, 35.694435, 37.392265>,  <38.054543, 35.454346, 37.387028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734653, 35.694435, 37.392265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250847, 0.353874, -0.901027,
		-0.545453, -0.717288, -0.433566,
		-0.799723, 0.600227, 0.013092,
		37.494736, 35.874504, 37.396194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208366, 35.016190, 36.826416>,  <38.054543, 35.454346, 37.387028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208366, 35.016190, 36.826416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478924, 34.745510, 36.710091>,  <38.641258, 34.583103, 36.640297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.478924, 34.745510, 36.710091>,  <38.208366, 35.016190, 36.826416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478924, 34.745510, 36.710091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239656, -0.575554, 0.781858,
		-0.696457, -0.459152, -0.551477,
		0.676397, -0.676695, -0.290810,
		38.681843, 34.542503, 36.622849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877659, 34.375423, 36.887424>,  <38.208366, 35.016190, 36.826416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877659, 34.375423, 36.887424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271503, 34.305939, 36.879757>,  <38.507809, 34.264248, 36.875156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271503, 34.305939, 36.879757>,  <37.877659, 34.375423, 36.887424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271503, 34.305939, 36.879757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103087, -0.665832, 0.738946,
		-0.141130, -0.725597, -0.673492,
		0.984609, -0.173715, -0.019170,
		38.566887, 34.253822, 36.874004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965221, 33.678810, 37.075191>,  <37.877659, 34.375423, 36.887424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965221, 33.678810, 37.075191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334801, 33.815010, 37.144901>,  <38.556549, 33.896732, 37.186726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334801, 33.815010, 37.144901>,  <37.965221, 33.678810, 37.075191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334801, 33.815010, 37.144901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052642, -0.564461, 0.823779,
		0.378870, -0.751958, -0.539459,
		0.923952, 0.340503, 0.174273,
		38.611988, 33.917160, 37.197182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296749, 33.098248, 37.462376>,  <37.965221, 33.678810, 37.075191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296749, 33.098248, 37.462376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500004, 33.434246, 37.538490>,  <38.621956, 33.635845, 37.584160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500004, 33.434246, 37.538490>,  <38.296749, 33.098248, 37.462376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500004, 33.434246, 37.538490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167296, -0.312987, 0.934907,
		0.844875, -0.443222, -0.299567,
		0.508132, 0.839996, 0.190286,
		38.652443, 33.686245, 37.595577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839851, 32.810802, 37.844734>,  <38.296749, 33.098248, 37.462376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839851, 32.810802, 37.844734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821030, 33.205711, 37.905495>,  <38.809738, 33.442657, 37.941952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.821030, 33.205711, 37.905495>,  <38.839851, 32.810802, 37.844734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821030, 33.205711, 37.905495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059404, -0.154565, 0.986195,
		0.997124, 0.037379, 0.065921,
		-0.047052, 0.987275, 0.151900,
		38.806915, 33.501892, 37.951065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306885, 32.835152, 38.410904>,  <38.839851, 32.810802, 37.844734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306885, 32.835152, 38.410904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069256, 33.156414, 38.392937>,  <38.926678, 33.349171, 38.382156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.069256, 33.156414, 38.392937>,  <39.306885, 32.835152, 38.410904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069256, 33.156414, 38.392937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190954, -0.086556, 0.977775,
		0.781420, 0.589446, 0.204786,
		-0.594071, 0.803157, -0.044920,
		38.891033, 33.397362, 38.379459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446125, 33.174835, 38.955776>,  <39.306885, 32.835152, 38.410904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446125, 33.174835, 38.955776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075008, 33.299503, 38.873741>,  <38.852337, 33.374306, 38.824520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075008, 33.299503, 38.873741>,  <39.446125, 33.174835, 38.955776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075008, 33.299503, 38.873741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230803, -0.047565, 0.971837,
		0.293136, 0.948999, 0.116065,
		-0.927794, 0.311669, -0.205089,
		38.796669, 33.393005, 38.812214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350254, 33.713974, 39.409374>,  <39.446125, 33.174835, 38.955776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350254, 33.713974, 39.409374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975918, 33.614227, 39.309753>,  <38.751316, 33.554379, 39.249981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975918, 33.614227, 39.309753>,  <39.350254, 33.713974, 39.409374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975918, 33.614227, 39.309753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264658, 0.030576, 0.963858,
		-0.232737, 0.967927, -0.094610,
		-0.935836, -0.249365, -0.249053,
		38.695168, 33.539417, 39.235039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972206, 34.190891, 39.934689>,  <39.350254, 33.713974, 39.409374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972206, 34.190891, 39.934689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761330, 33.895004, 39.767406>,  <38.634804, 33.717472, 39.667038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.761330, 33.895004, 39.767406>,  <38.972206, 34.190891, 39.934689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761330, 33.895004, 39.767406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233643, -0.347002, 0.908295,
		-0.816998, 0.576552, 0.010105,
		-0.527186, -0.739714, -0.418207,
		38.603172, 33.673092, 39.641945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407036, 34.012447, 40.361538>,  <38.972206, 34.190891, 39.934689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407036, 34.012447, 40.361538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408764, 33.664890, 40.163544>,  <38.409801, 33.456356, 40.044746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408764, 33.664890, 40.163544>,  <38.407036, 34.012447, 40.361538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408764, 33.664890, 40.163544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187518, -0.486910, 0.853085,
		-0.982252, 0.089136, -0.165035,
		0.004317, -0.868892, -0.494983,
		38.410057, 33.404224, 40.015049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802402, 33.614513, 40.582878>,  <38.407036, 34.012447, 40.361538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802402, 33.614513, 40.582878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058964, 33.352070, 40.423824>,  <38.212902, 33.194603, 40.328392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.058964, 33.352070, 40.423824>,  <37.802402, 33.614513, 40.582878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058964, 33.352070, 40.423824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246030, -0.666828, 0.703427,
		-0.726683, -0.353352, -0.589130,
		0.641406, -0.656112, -0.397638,
		38.251385, 33.155235, 40.304535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472183, 32.947487, 40.660637>,  <37.802402, 33.614513, 40.582878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472183, 32.947487, 40.660637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853146, 32.844303, 40.595673>,  <38.081722, 32.782394, 40.556694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.853146, 32.844303, 40.595673>,  <37.472183, 32.947487, 40.660637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853146, 32.844303, 40.595673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055301, -0.670168, 0.740146,
		-0.299768, -0.695940, -0.652539,
		0.952408, -0.257958, -0.162409,
		38.138866, 32.766914, 40.546951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486675, 32.230259, 40.643768>,  <37.472183, 32.947487, 40.660637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486675, 32.230259, 40.643768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862820, 32.336491, 40.728802>,  <38.088505, 32.400230, 40.779823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862820, 32.336491, 40.728802>,  <37.486675, 32.230259, 40.643768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862820, 32.336491, 40.728802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003744, -0.632962, 0.774174,
		0.340162, -0.727206, -0.596206,
		0.940359, 0.265577, 0.212587,
		38.144928, 32.416164, 40.792580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708050, 31.663044, 40.881916>,  <37.486675, 32.230259, 40.643768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708050, 31.663044, 40.881916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965164, 31.940355, 41.012260>,  <38.119434, 32.106743, 41.090469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965164, 31.940355, 41.012260>,  <37.708050, 31.663044, 40.881916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965164, 31.940355, 41.012260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135230, -0.521398, 0.842530,
		0.754014, -0.497501, -0.428901,
		0.642788, 0.693279, 0.325865,
		38.158001, 32.148338, 41.110020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327000, 31.273426, 41.260204>,  <37.708050, 31.663044, 40.881916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327000, 31.273426, 41.260204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292427, 31.648630, 41.394470>,  <38.271683, 31.873753, 41.475029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292427, 31.648630, 41.394470>,  <38.327000, 31.273426, 41.260204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292427, 31.648630, 41.394470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165633, -0.345764, 0.923587,
		0.982393, 0.024228, 0.185249,
		-0.086429, 0.938009, 0.335663,
		38.266499, 31.930033, 41.495171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720203, 31.173513, 41.860657>,  <38.327000, 31.273426, 41.260204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720203, 31.173513, 41.860657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520042, 31.510942, 41.938614>,  <38.399944, 31.713400, 41.985386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520042, 31.510942, 41.938614>,  <38.720203, 31.173513, 41.860657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520042, 31.510942, 41.938614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076969, -0.267551, 0.960465,
		0.862366, 0.465618, 0.198812,
		-0.500401, 0.843574, 0.194889,
		38.369923, 31.764015, 41.997082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047836, 31.414930, 42.463078>,  <38.720203, 31.173513, 41.860657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047836, 31.414930, 42.463078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706123, 31.621447, 42.438946>,  <38.501095, 31.745356, 42.424465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706123, 31.621447, 42.438946>,  <39.047836, 31.414930, 42.463078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706123, 31.621447, 42.438946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189788, -0.201748, 0.960874,
		0.483916, 0.832312, 0.270336,
		-0.854287, 0.516289, -0.060334,
		38.449837, 31.776333, 42.420845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953461, 31.877914, 43.016300>,  <39.047836, 31.414930, 42.463078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953461, 31.877914, 43.016300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572189, 31.842480, 42.900639>,  <38.343426, 31.821218, 42.831242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572189, 31.842480, 42.900639>,  <38.953461, 31.877914, 43.016300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572189, 31.842480, 42.900639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279128, -0.110237, 0.953905,
		-0.116377, 0.989950, 0.080348,
		-0.953176, -0.088586, -0.289152,
		38.286236, 31.815905, 42.813892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.521282, 32.368473, 43.474266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261005, 32.088528, 43.356426>,  <38.104839, 31.920561, 43.285725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.261005, 32.088528, 43.356426>,  <38.521282, 32.368473, 43.474266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261005, 32.088528, 43.356426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070063, -0.330971, 0.941036,
		-0.756101, 0.632966, 0.166326,
		-0.650693, -0.699866, -0.294595,
		38.065796, 31.878569, 43.268047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870419, 32.491379, 43.869995>,  <38.521282, 32.368473, 43.474266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870419, 32.491379, 43.869995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848007, 32.111706, 43.746117>,  <37.834560, 31.883902, 43.671787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.848007, 32.111706, 43.746117>,  <37.870419, 32.491379, 43.869995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848007, 32.111706, 43.746117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284342, -0.282172, 0.916258,
		-0.957084, 0.139397, -0.254083,
		-0.056029, -0.949182, -0.309699,
		37.831200, 31.826952, 43.653206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203041, 32.223362, 43.937298>,  <37.870419, 32.491379, 43.869995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203041, 32.223362, 43.937298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431408, 31.894974, 43.940338>,  <37.568428, 31.697941, 43.942162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431408, 31.894974, 43.940338>,  <37.203041, 32.223362, 43.937298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431408, 31.894974, 43.940338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423121, -0.286287, 0.859656,
		-0.703580, -0.494006, -0.510816,
		0.570915, -0.820974, 0.007599,
		37.602684, 31.648682, 43.942619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738842, 31.588528, 44.151230>,  <37.203041, 32.223362, 43.937298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738842, 31.588528, 44.151230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123798, 31.509243, 44.225540>,  <37.354774, 31.461672, 44.270126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123798, 31.509243, 44.225540>,  <36.738842, 31.588528, 44.151230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123798, 31.509243, 44.225540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248309, -0.364449, 0.897507,
		-0.110188, -0.909885, -0.399961,
		0.962393, -0.198209, 0.185774,
		37.412518, 31.449780, 44.281273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642181, 30.899399, 44.503738>,  <36.738842, 31.588528, 44.151230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642181, 30.899399, 44.503738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.021423, 31.007950, 44.570015>,  <37.248970, 31.073080, 44.609783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.021423, 31.007950, 44.570015>,  <36.642181, 30.899399, 44.503738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021423, 31.007950, 44.570015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043513, -0.626952, 0.777842,
		0.314970, -0.730264, -0.606224,
		0.948104, 0.271376, 0.165695,
		37.305855, 31.089363, 44.619724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993446, 30.282669, 44.606194>,  <36.642181, 30.899399, 44.503738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993446, 30.282669, 44.606194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211712, 30.575809, 44.768764>,  <37.342670, 30.751694, 44.866306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.211712, 30.575809, 44.768764>,  <36.993446, 30.282669, 44.606194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211712, 30.575809, 44.768764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138324, -0.557107, 0.818839,
		0.826512, -0.390588, -0.405362,
		0.545659, 0.732852, 0.406428,
		37.375408, 30.795666, 44.890694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459927, 29.921923, 44.954624>,  <36.993446, 30.282669, 44.606194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459927, 29.921923, 44.954624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513947, 30.281864, 45.120525>,  <37.546356, 30.497829, 45.220066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513947, 30.281864, 45.120525>,  <37.459927, 29.921923, 44.954624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513947, 30.281864, 45.120525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291008, -0.436151, 0.851520,
		0.947141, 0.005703, -0.320766,
		0.135046, 0.899856, 0.414756,
		37.554459, 30.551821, 45.244953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063931, 29.882332, 45.301102>,  <37.459927, 29.921923, 44.954624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063931, 29.882332, 45.301102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879173, 30.193960, 45.470665>,  <37.768318, 30.380938, 45.572403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.879173, 30.193960, 45.470665>,  <38.063931, 29.882332, 45.301102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879173, 30.193960, 45.470665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082478, -0.438149, 0.895110,
		0.883090, 0.448412, 0.138124,
		-0.461897, 0.779071, 0.423910,
		37.740604, 30.427681, 45.597839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429977, 30.090561, 45.859791>,  <38.063931, 29.882332, 45.301102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429977, 30.090561, 45.859791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072289, 30.236509, 45.963509>,  <37.857674, 30.324078, 46.025738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072289, 30.236509, 45.963509>,  <38.429977, 30.090561, 45.859791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072289, 30.236509, 45.963509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032974, -0.631391, 0.774763,
		0.446401, 0.684263, 0.576637,
		-0.894225, 0.364870, 0.259290,
		37.804020, 30.345970, 46.041294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428852, 30.354044, 46.621429>,  <38.429977, 30.090561, 45.859791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428852, 30.354044, 46.621429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058037, 30.245270, 46.518154>,  <37.835548, 30.180006, 46.456188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.058037, 30.245270, 46.518154>,  <38.428852, 30.354044, 46.621429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058037, 30.245270, 46.518154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001768, -0.685355, 0.728207,
		-0.374972, 0.675529, 0.634867,
		-0.927034, -0.271935, -0.258184,
		37.779926, 30.163689, 46.440701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142143, 30.171576, 47.257397>,  <38.428852, 30.354044, 46.621429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142143, 30.171576, 47.257397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856945, 30.043953, 47.007648>,  <37.685825, 29.967381, 46.857800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856945, 30.043953, 47.007648>,  <38.142143, 30.171576, 47.257397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856945, 30.043953, 47.007648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139689, -0.807988, 0.572400,
		-0.687111, 0.495337, 0.531525,
		-0.712997, -0.319055, -0.624371,
		37.643047, 29.948236, 46.820335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577950, 30.116135, 47.772083>,  <38.142143, 30.171576, 47.257397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577950, 30.116135, 47.772083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494801, 29.894367, 47.449741>,  <37.444912, 29.761307, 47.256336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494801, 29.894367, 47.449741>,  <37.577950, 30.116135, 47.772083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494801, 29.894367, 47.449741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275199, -0.757428, 0.592088,
		-0.938645, 0.344849, 0.004871,
		-0.207871, -0.554420, -0.805859,
		37.432438, 29.728041, 47.207985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006069, 29.701700, 48.044605>,  <37.577950, 30.116135, 47.772083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006069, 29.701700, 48.044605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150482, 29.528036, 47.714474>,  <37.237129, 29.423838, 47.516396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150482, 29.528036, 47.714474>,  <37.006069, 29.701700, 48.044605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150482, 29.528036, 47.714474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085069, -0.896658, 0.434473,
		-0.928665, -0.086649, -0.360656,
		0.361032, -0.434161, -0.825324,
		37.258793, 29.397787, 47.466877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482140, 29.287291, 47.827385>,  <37.006069, 29.701700, 48.044605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482140, 29.287291, 47.827385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804386, 29.146402, 47.636841>,  <36.997734, 29.061869, 47.522514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804386, 29.146402, 47.636841>,  <36.482140, 29.287291, 47.827385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804386, 29.146402, 47.636841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236350, -0.928395, 0.286742,
		-0.543245, -0.118418, -0.831182,
		0.805620, -0.352221, -0.476358,
		37.046074, 29.040735, 47.493935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290760, 28.701454, 47.464371>,  <36.482140, 29.287291, 47.827385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290760, 28.701454, 47.464371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.687191, 28.677986, 47.512241>,  <36.925049, 28.663906, 47.540962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.687191, 28.677986, 47.512241>,  <36.290760, 28.701454, 47.464371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687191, 28.677986, 47.512241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116035, -0.821579, 0.558162,
		0.065576, -0.567068, -0.821056,
		0.991078, -0.058669, 0.119676,
		36.984516, 28.660385, 47.548145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544327, 27.994463, 47.223949>,  <36.290760, 28.701454, 47.464371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544327, 27.994463, 47.223949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799557, 28.128130, 47.501423>,  <36.952694, 28.208330, 47.667908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.799557, 28.128130, 47.501423>,  <36.544327, 27.994463, 47.223949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799557, 28.128130, 47.501423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101510, -0.856543, 0.505993,
		0.763254, -0.393277, -0.512617,
		0.638074, 0.334166, 0.693682,
		36.990978, 28.228380, 47.709526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815472, 27.436747, 47.381916>,  <36.544327, 27.994463, 47.223949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815472, 27.436747, 47.381916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956680, 27.667543, 47.676521>,  <37.041405, 27.806021, 47.853287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.956680, 27.667543, 47.676521>,  <36.815472, 27.436747, 47.381916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956680, 27.667543, 47.676521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088672, -0.763023, 0.640260,
		0.931403, -0.291335, -0.218202,
		0.353023, 0.576992, 0.736515,
		37.062588, 27.840641, 47.897476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312248, 27.049688, 47.660164>,  <36.815472, 27.436747, 47.381916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312248, 27.049688, 47.660164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244118, 27.311388, 47.954903>,  <37.203239, 27.468409, 48.131744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244118, 27.311388, 47.954903>,  <37.312248, 27.049688, 47.660164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244118, 27.311388, 47.954903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042007, -0.751916, 0.657919,
		0.984491, 0.081110, 0.155556,
		-0.170329, 0.654250, 0.736848,
		37.193020, 27.507664, 48.175957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707649, 26.772316, 48.258026>,  <37.312248, 27.049688, 47.660164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707649, 26.772316, 48.258026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426380, 27.019281, 48.399082>,  <37.257618, 27.167459, 48.483715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426380, 27.019281, 48.399082>,  <37.707649, 26.772316, 48.258026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426380, 27.019281, 48.399082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338899, -0.727033, 0.597135,
		0.625062, 0.300376, 0.720467,
		-0.703168, 0.617412, 0.352643,
		37.215431, 27.204506, 48.504875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826202, 26.785471, 48.948071>,  <37.707649, 26.772316, 48.258026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826202, 26.785471, 48.948071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446941, 26.912338, 48.939941>,  <37.219383, 26.988459, 48.935066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446941, 26.912338, 48.939941>,  <37.826202, 26.785471, 48.948071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446941, 26.912338, 48.939941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215036, -0.593125, 0.775862,
		0.234026, 0.740005, 0.630575,
		-0.948151, 0.317169, -0.020321,
		37.162495, 27.007488, 48.933846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623608, 27.018328, 49.612961>,  <37.826202, 26.785471, 48.948071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623608, 27.018328, 49.612961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.262596, 26.956415, 49.452221>,  <37.045990, 26.919268, 49.355778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.262596, 26.956415, 49.452221>,  <37.623608, 27.018328, 49.612961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262596, 26.956415, 49.452221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258244, -0.552209, 0.792701,
		-0.344601, 0.819211, 0.458413,
		-0.902530, -0.154783, -0.401849,
		36.991837, 26.909981, 49.331665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225918, 27.072104, 50.111408>,  <37.623608, 27.018328, 49.612961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225918, 27.072104, 50.111408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986137, 26.877378, 49.857265>,  <36.842270, 26.760544, 49.704781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.986137, 26.877378, 49.857265>,  <37.225918, 27.072104, 50.111408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986137, 26.877378, 49.857265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319870, -0.581945, 0.747678,
		-0.733720, 0.651426, 0.193130,
		-0.599448, -0.486811, -0.635357,
		36.806305, 26.731335, 49.666660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692364, 26.791880, 50.532921>,  <37.225918, 27.072104, 50.111408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692364, 26.791880, 50.532921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682652, 26.561359, 50.206169>,  <36.676823, 26.423046, 50.010120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.682652, 26.561359, 50.206169>,  <36.692364, 26.791880, 50.532921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682652, 26.561359, 50.206169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263241, -0.784595, 0.561351,
		-0.964424, 0.228665, -0.132657,
		-0.024279, -0.576301, -0.816876,
		36.675369, 26.388470, 49.961105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051952, 26.430105, 50.524696>,  <36.692364, 26.791880, 50.532921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051952, 26.430105, 50.524696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330601, 26.218983, 50.330318>,  <36.497787, 26.092310, 50.213692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.330601, 26.218983, 50.330318>,  <36.051952, 26.430105, 50.524696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330601, 26.218983, 50.330318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163620, -0.776362, 0.608679,
		-0.698536, -0.344506, -0.627187,
		0.696618, -0.527804, -0.485949,
		36.539585, 26.060642, 50.184532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445999, 26.965763, 50.474968>,  <36.051952, 26.430105, 50.524696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445999, 26.965763, 50.474968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.116653, 27.162077, 50.588947>,  <34.919044, 27.279865, 50.657337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.116653, 27.162077, 50.588947>,  <35.445999, 26.965763, 50.474968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116653, 27.162077, 50.588947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237850, 0.754313, -0.611914,
		-0.515261, -0.436054, -0.737809,
		-0.823367, 0.490784, 0.284953,
		34.869644, 27.309313, 50.674435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131630, 27.171871, 49.809067>,  <35.445999, 26.965763, 50.474968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131630, 27.171871, 49.809067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961452, 27.409891, 50.081806>,  <34.859344, 27.552702, 50.245449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961452, 27.409891, 50.081806>,  <35.131630, 27.171871, 49.809067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961452, 27.409891, 50.081806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035767, 0.763901, -0.644341,
		-0.904276, -0.249746, -0.346283,
		-0.425448, 0.595048, 0.681845,
		34.833817, 27.588406, 50.286358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576256, 27.507195, 49.488346>,  <35.131630, 27.171871, 49.809067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576256, 27.507195, 49.488346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697067, 27.724495, 49.801693>,  <34.769554, 27.854876, 49.989700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697067, 27.724495, 49.801693>,  <34.576256, 27.507195, 49.488346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697067, 27.724495, 49.801693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090944, 0.834410, -0.543589,
		-0.948952, 0.092934, 0.301417,
		0.302024, 0.543252, 0.783364,
		34.787674, 27.887470, 50.036701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037762, 27.872498, 49.559116>,  <34.576256, 27.507195, 49.488346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037762, 27.872498, 49.559116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353771, 28.047754, 49.730648>,  <34.543377, 28.152908, 49.833565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353771, 28.047754, 49.730648>,  <34.037762, 27.872498, 49.559116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353771, 28.047754, 49.730648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064801, 0.755229, -0.652250,
		-0.609639, 0.487506, 0.625042,
		0.790026, 0.438141, 0.428826,
		34.590778, 28.179197, 49.859295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853027, 28.553432, 49.717873>,  <34.037762, 27.872498, 49.559116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853027, 28.553432, 49.717873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250618, 28.585966, 49.747261>,  <34.489174, 28.605486, 49.764893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250618, 28.585966, 49.747261>,  <33.853027, 28.553432, 49.717873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250618, 28.585966, 49.747261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036149, 0.876068, -0.480831,
		-0.103472, 0.475279, 0.873730,
		0.993975, 0.081336, 0.073468,
		34.548809, 28.610367, 49.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955788, 29.271807, 49.771641>,  <33.853027, 28.553432, 49.717873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955788, 29.271807, 49.771641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.317398, 29.133385, 49.671261>,  <34.534367, 29.050331, 49.611031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.317398, 29.133385, 49.671261>,  <33.955788, 29.271807, 49.771641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317398, 29.133385, 49.671261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147774, 0.803865, -0.576163,
		0.401118, 0.483783, 0.777855,
		0.904028, -0.346056, -0.250954,
		34.588608, 29.029568, 49.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504589, 29.895086, 49.806499>,  <33.955788, 29.271807, 49.771641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504589, 29.895086, 49.806499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658207, 29.625422, 49.554146>,  <34.750378, 29.463623, 49.402733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.658207, 29.625422, 49.554146>,  <34.504589, 29.895086, 49.806499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658207, 29.625422, 49.554146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191169, 0.726534, -0.660002,
		0.903306, 0.132867, 0.407902,
		0.384047, -0.674163, -0.630883,
		34.773422, 29.423172, 49.364880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048988, 30.243626, 49.534420>,  <34.504589, 29.895086, 49.806499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048988, 30.243626, 49.534420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039608, 29.928980, 49.287621>,  <35.033981, 29.740192, 49.139542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039608, 29.928980, 49.287621>,  <35.048988, 30.243626, 49.534420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039608, 29.928980, 49.287621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307707, 0.581530, -0.753086,
		0.951192, -0.207514, 0.228411,
		-0.023448, -0.786614, -0.617001,
		35.032574, 29.692995, 49.102520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630180, 30.413002, 49.121056>,  <35.048988, 30.243626, 49.534420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630180, 30.413002, 49.121056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378353, 30.172575, 48.924133>,  <35.227257, 30.028318, 48.805981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.378353, 30.172575, 48.924133>,  <35.630180, 30.413002, 49.121056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378353, 30.172575, 48.924133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171979, 0.510109, -0.842741,
		0.757674, -0.615226, -0.217775,
		-0.629565, -0.601071, -0.492303,
		35.189484, 29.992254, 48.776443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984833, 30.144360, 48.569542>,  <35.630180, 30.413002, 49.121056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984833, 30.144360, 48.569542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599136, 30.128796, 48.464676>,  <35.367718, 30.119457, 48.401756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599136, 30.128796, 48.464676>,  <35.984833, 30.144360, 48.569542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599136, 30.128796, 48.464676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193833, 0.571071, -0.797689,
		0.180751, -0.819978, -0.543107,
		-0.964240, -0.038911, -0.262160,
		35.309864, 30.117123, 48.386028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007080, 30.083813, 47.862995>,  <35.984833, 30.144360, 48.569542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007080, 30.083813, 47.862995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630772, 30.207102, 47.919487>,  <35.404987, 30.281075, 47.953384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.630772, 30.207102, 47.919487>,  <36.007080, 30.083813, 47.862995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630772, 30.207102, 47.919487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090722, 0.630231, -0.771089,
		-0.326677, -0.712606, -0.620867,
		-0.940772, 0.308223, 0.141233,
		35.348541, 30.299568, 47.961857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683105, 30.049278, 47.227020>,  <36.007080, 30.083813, 47.862995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683105, 30.049278, 47.227020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467285, 30.305473, 47.445621>,  <35.337795, 30.459190, 47.576782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467285, 30.305473, 47.445621>,  <35.683105, 30.049278, 47.227020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467285, 30.305473, 47.445621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077974, 0.684308, -0.725012,
		-0.838336, -0.348566, -0.419158,
		-0.539548, 0.640487, 0.546501,
		35.305420, 30.497620, 47.609573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286793, 30.256575, 46.670258>,  <35.683105, 30.049278, 47.227020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286793, 30.256575, 46.670258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284184, 30.525240, 46.966587>,  <35.282616, 30.686440, 47.144386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284184, 30.525240, 46.966587>,  <35.286793, 30.256575, 46.670258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284184, 30.525240, 46.966587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065288, 0.738975, -0.670562,
		-0.997845, -0.052743, 0.039029,
		-0.006526, 0.671665, 0.740826,
		35.282227, 30.726740, 47.188835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864792, 30.779421, 46.468361>,  <35.286793, 30.256575, 46.670258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864792, 30.779421, 46.468361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103554, 30.929930, 46.751801>,  <35.246811, 31.020235, 46.921864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103554, 30.929930, 46.751801>,  <34.864792, 30.779421, 46.468361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103554, 30.929930, 46.751801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183913, 0.795515, -0.577349,
		-0.780945, 0.474946, 0.405649,
		0.596909, 0.376274, 0.708602,
		35.282627, 31.042812, 46.964382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583454, 31.475561, 46.410248>,  <34.864792, 30.779421, 46.468361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583454, 31.475561, 46.410248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927624, 31.503336, 46.612175>,  <35.134125, 31.520000, 46.733330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.927624, 31.503336, 46.612175>,  <34.583454, 31.475561, 46.410248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927624, 31.503336, 46.612175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183907, 0.881588, -0.434720,
		-0.475228, 0.466885, 0.745773,
		0.860428, 0.069438, 0.504819,
		35.185753, 31.524168, 46.763622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649765, 32.205940, 46.578346>,  <34.583454, 31.475561, 46.410248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649765, 32.205940, 46.578346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019314, 32.054775, 46.602486>,  <35.241043, 31.964077, 46.616970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.019314, 32.054775, 46.602486>,  <34.649765, 32.205940, 46.578346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019314, 32.054775, 46.602486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347563, 0.762539, -0.545650,
		0.160188, 0.525087, 0.835837,
		0.923872, -0.377913, 0.060352,
		35.296474, 31.941401, 46.620590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145199, 32.691185, 46.775955>,  <34.649765, 32.205940, 46.578346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145199, 32.691185, 46.775955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375492, 32.415051, 46.600700>,  <35.513668, 32.249371, 46.495548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375492, 32.415051, 46.600700>,  <35.145199, 32.691185, 46.775955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375492, 32.415051, 46.600700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381718, 0.700819, -0.602615,
		0.723063, 0.179700, 0.666999,
		0.575735, -0.690334, -0.438141,
		35.548214, 32.207951, 46.469257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847908, 32.900021, 46.884930>,  <35.145199, 32.691185, 46.775955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847908, 32.900021, 46.884930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840252, 32.670254, 46.557594>,  <35.835659, 32.532394, 46.361191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840252, 32.670254, 46.557594>,  <35.847908, 32.900021, 46.884930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840252, 32.670254, 46.557594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540594, 0.682585, -0.491767,
		0.841066, -0.451801, 0.297463,
		-0.019137, -0.574416, -0.818340,
		35.834511, 32.497929, 46.312092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593437, 32.840542, 46.621613>,  <35.847908, 32.900021, 46.884930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593437, 32.840542, 46.621613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370792, 32.720226, 46.311852>,  <36.237206, 32.648037, 46.125996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370792, 32.720226, 46.311852>,  <36.593437, 32.840542, 46.621613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370792, 32.720226, 46.311852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520060, 0.600761, -0.607145,
		0.647857, -0.740683, -0.177962,
		-0.556614, -0.300792, -0.774406,
		36.203808, 32.629990, 46.079529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056538, 32.982777, 46.040356>,  <36.593437, 32.840542, 46.621613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056538, 32.982777, 46.040356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710373, 32.929184, 45.847229>,  <36.502674, 32.897026, 45.731354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.710373, 32.929184, 45.847229>,  <37.056538, 32.982777, 46.040356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710373, 32.929184, 45.847229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268096, 0.690236, -0.672086,
		0.423305, -0.711072, -0.561418,
		-0.865412, -0.133983, -0.482816,
		36.450748, 32.888988, 45.702385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.037998, 30.520275, 26.572718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753609, 30.324997, 26.370256>,  <45.582977, 30.207830, 26.248779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753609, 30.324997, 26.370256>,  <46.037998, 30.520275, 26.572718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753609, 30.324997, 26.370256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569659, -0.022193, 0.821581,
		-0.412324, 0.872453, -0.262325,
		-0.710969, -0.488194, -0.506152,
		45.540318, 30.178539, 26.218410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479431, 30.890167, 26.665276>,  <46.037998, 30.520275, 26.572718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479431, 30.890167, 26.665276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327133, 30.537560, 26.553591>,  <45.235756, 30.325994, 26.486580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.327133, 30.537560, 26.553591>,  <45.479431, 30.890167, 26.665276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327133, 30.537560, 26.553591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686725, 0.067357, 0.723790,
		-0.619227, 0.467322, -0.631006,
		-0.380745, -0.881518, -0.279213,
		45.212910, 30.273104, 26.469828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671513, 31.007542, 26.534462>,  <45.479431, 30.890167, 26.665276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671513, 31.007542, 26.534462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757812, 30.623499, 26.605621>,  <44.809593, 30.393074, 26.648317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757812, 30.623499, 26.605621>,  <44.671513, 31.007542, 26.534462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757812, 30.623499, 26.605621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653867, -0.006746, 0.756580,
		-0.725198, -0.279550, -0.629238,
		0.215747, -0.960107, 0.177896,
		44.822536, 30.335466, 26.658991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001076, 30.716324, 26.717619>,  <44.671513, 31.007542, 26.534462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001076, 30.716324, 26.717619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275810, 30.468201, 26.869127>,  <44.440651, 30.319326, 26.960033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275810, 30.468201, 26.869127>,  <44.001076, 30.716324, 26.717619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275810, 30.468201, 26.869127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556803, -0.114124, 0.822767,
		-0.467144, -0.776010, -0.423775,
		0.686839, -0.620310, 0.378772,
		44.481861, 30.282108, 26.982759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670807, 30.227280, 27.039562>,  <44.001076, 30.716324, 26.717619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670807, 30.227280, 27.039562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031967, 30.203655, 27.209869>,  <44.248665, 30.189480, 27.312054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.031967, 30.203655, 27.209869>,  <43.670807, 30.227280, 27.039562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031967, 30.203655, 27.209869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418128, 0.109014, 0.901823,
		-0.099679, -0.992284, 0.073733,
		0.902902, -0.059063, 0.425769,
		44.302837, 30.185936, 27.337601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561562, 29.766064, 27.585459>,  <43.670807, 30.227280, 27.039562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561562, 29.766064, 27.585459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884342, 29.974537, 27.696596>,  <44.078011, 30.099621, 27.763279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884342, 29.974537, 27.696596>,  <43.561562, 29.766064, 27.585459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884342, 29.974537, 27.696596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304141, -0.036564, 0.951925,
		0.506287, -0.852661, 0.129008,
		0.806952, 0.521184, 0.277841,
		44.126427, 30.130892, 27.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591923, 29.547384, 28.235149>,  <43.561562, 29.766064, 27.585459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591923, 29.547384, 28.235149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824890, 29.872141, 28.219055>,  <43.964672, 30.066996, 28.209398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.824890, 29.872141, 28.219055>,  <43.591923, 29.547384, 28.235149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824890, 29.872141, 28.219055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293559, 0.256231, 0.920961,
		0.758030, -0.524574, 0.387572,
		0.582420, 0.811891, -0.040238,
		43.999615, 30.115707, 28.206984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111996, 29.502005, 28.748127>,  <43.591923, 29.547384, 28.235149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111996, 29.502005, 28.748127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.105247, 29.897108, 28.686102>,  <44.101196, 30.134171, 28.648888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.105247, 29.897108, 28.686102>,  <44.111996, 29.502005, 28.748127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105247, 29.897108, 28.686102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168442, 0.150058, 0.974223,
		0.985567, 0.042558, 0.163849,
		-0.016874, 0.987761, -0.155060,
		44.100185, 30.193436, 28.639584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398159, 29.799517, 29.328083>,  <44.111996, 29.502005, 28.748127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398159, 29.799517, 29.328083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187195, 30.100647, 29.170555>,  <44.060616, 30.281326, 29.076038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.187195, 30.100647, 29.170555>,  <44.398159, 29.799517, 29.328083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187195, 30.100647, 29.170555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309330, 0.261568, 0.914274,
		0.791301, 0.604014, 0.094919,
		-0.527407, 0.752827, -0.393819,
		44.028973, 30.326496, 29.052410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629532, 30.364647, 29.725964>,  <44.398159, 29.799517, 29.328083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629532, 30.364647, 29.725964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.281750, 30.478338, 29.564341>,  <44.073082, 30.546555, 29.467367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.281750, 30.478338, 29.564341>,  <44.629532, 30.364647, 29.725964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281750, 30.478338, 29.564341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257279, 0.437708, 0.861522,
		0.421729, 0.853009, -0.307441,
		-0.869455, 0.284231, -0.404055,
		44.020912, 30.563608, 29.443125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586174, 31.055353, 29.956055>,  <44.629532, 30.364647, 29.725964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.586174, 31.055353, 29.956055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224434, 30.931173, 29.838909>,  <44.007389, 30.856667, 29.768621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224434, 30.931173, 29.838909>,  <44.586174, 31.055353, 29.956055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224434, 30.931173, 29.838909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418939, 0.514767, 0.748000,
		-0.081459, 0.799148, -0.595590,
		-0.904353, -0.310447, -0.292862,
		43.953129, 30.838039, 29.751051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118122, 31.634331, 29.872524>,  <44.586174, 31.055353, 29.956055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118122, 31.634331, 29.872524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.894978, 31.315697, 29.965689>,  <43.761093, 31.124517, 30.021587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.894978, 31.315697, 29.965689>,  <44.118122, 31.634331, 29.872524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894978, 31.315697, 29.965689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475872, 0.536935, 0.696596,
		-0.679955, 0.277767, -0.678607,
		-0.557859, -0.796584, 0.232910,
		43.727619, 31.076721, 30.035563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461060, 31.957430, 30.124149>,  <44.118122, 31.634331, 29.872524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.461060, 31.957430, 30.124149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451332, 31.578949, 30.253212>,  <43.445496, 31.351860, 30.330650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451332, 31.578949, 30.253212>,  <43.461060, 31.957430, 30.124149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451332, 31.578949, 30.253212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364935, 0.308884, 0.878301,
		-0.930715, -0.096389, -0.352815,
		-0.024320, -0.946203, 0.322659,
		43.444035, 31.295088, 30.350010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795773, 31.931723, 30.424221>,  <43.461060, 31.957430, 30.124149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795773, 31.931723, 30.424221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929363, 31.578007, 30.554752>,  <43.009518, 31.365778, 30.633070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929363, 31.578007, 30.554752>,  <42.795773, 31.931723, 30.424221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929363, 31.578007, 30.554752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393199, 0.183939, 0.900867,
		-0.856651, -0.429184, -0.286270,
		0.333981, -0.884290, 0.326326,
		43.029556, 31.312719, 30.652651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229752, 31.453794, 30.808924>,  <42.795773, 31.931723, 30.424221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229752, 31.453794, 30.808924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590248, 31.330463, 30.930710>,  <42.806545, 31.256464, 31.003782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590248, 31.330463, 30.930710>,  <42.229752, 31.453794, 30.808924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590248, 31.330463, 30.930710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236645, 0.238392, 0.941896,
		-0.362995, -0.920925, 0.141884,
		0.901240, -0.308327, 0.304467,
		42.860619, 31.237965, 31.022051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999874, 31.018261, 31.432222>,  <42.229752, 31.453794, 30.808924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999874, 31.018261, 31.432222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378822, 31.146078, 31.440016>,  <42.606190, 31.222769, 31.444691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378822, 31.146078, 31.440016>,  <41.999874, 31.018261, 31.432222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378822, 31.146078, 31.440016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094786, 0.221850, 0.970463,
		0.305786, -0.921234, 0.240463,
		0.947371, 0.319546, 0.019482,
		42.663033, 31.241941, 31.445860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207500, 30.866896, 32.077038>,  <41.999874, 31.018261, 31.432222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207500, 30.866896, 32.077038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491264, 31.117214, 31.947353>,  <42.661522, 31.267406, 31.869543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.491264, 31.117214, 31.947353>,  <42.207500, 30.866896, 32.077038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491264, 31.117214, 31.947353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035995, 0.427238, 0.903422,
		0.703875, -0.652568, 0.280562,
		0.709412, 0.625797, -0.324211,
		42.704086, 31.304953, 31.850090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802517, 30.763321, 32.514996>,  <42.207500, 30.866896, 32.077038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802517, 30.763321, 32.514996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851181, 31.128775, 32.359833>,  <42.880379, 31.348047, 32.266735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851181, 31.128775, 32.359833>,  <42.802517, 30.763321, 32.514996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851181, 31.128775, 32.359833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027655, 0.393780, 0.918788,
		0.992187, -0.101049, 0.073173,
		0.121656, 0.913634, -0.387909,
		42.887676, 31.402864, 32.243462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311153, 31.094309, 32.936630>,  <42.802517, 30.763321, 32.514996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311153, 31.094309, 32.936630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131386, 31.398527, 32.749187>,  <43.023525, 31.581059, 32.636723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131386, 31.398527, 32.749187>,  <43.311153, 31.094309, 32.936630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131386, 31.398527, 32.749187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054204, 0.546815, 0.835497,
		0.891675, 0.350088, -0.286974,
		-0.449419, 0.760547, -0.468605,
		42.996559, 31.626692, 32.608604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780991, 31.618320, 33.151417>,  <43.311153, 31.094309, 32.936630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780991, 31.618320, 33.151417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423546, 31.737591, 33.017223>,  <43.209080, 31.809153, 32.936707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.423546, 31.737591, 33.017223>,  <43.780991, 31.618320, 33.151417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423546, 31.737591, 33.017223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003960, 0.752653, 0.658405,
		0.448825, 0.587029, -0.673760,
		-0.893611, 0.298177, -0.335485,
		43.155464, 31.827044, 32.916576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833366, 32.345585, 33.188442>,  <43.780991, 31.618320, 33.151417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833366, 32.345585, 33.188442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442886, 32.260841, 33.169891>,  <43.208599, 32.209995, 33.158760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.442886, 32.260841, 33.169891>,  <43.833366, 32.345585, 33.188442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442886, 32.260841, 33.169891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170735, 0.618885, 0.766702,
		-0.133734, 0.756371, -0.640326,
		-0.976199, -0.211860, -0.046373,
		43.150028, 32.197285, 33.155979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158810, 32.988316, 33.317963>,  <43.833366, 32.345585, 33.188442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158810, 32.988316, 33.317963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504139, 33.078030, 33.498791>,  <44.711338, 33.131859, 33.607288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.504139, 33.078030, 33.498791>,  <44.158810, 32.988316, 33.317963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.504139, 33.078030, 33.498791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491256, -0.168487, -0.854564,
		-0.115501, 0.959847, -0.255642,
		0.863324, 0.224289, 0.452070,
		44.763138, 33.145317, 33.634411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478790, 33.506580, 32.892773>,  <44.158810, 32.988316, 33.317963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478790, 33.506580, 32.892773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772675, 33.339294, 33.106426>,  <44.949005, 33.238922, 33.234619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772675, 33.339294, 33.106426>,  <44.478790, 33.506580, 32.892773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772675, 33.339294, 33.106426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449741, -0.289190, -0.845046,
		0.507875, 0.861086, -0.024384,
		0.734708, -0.418211, 0.534138,
		44.993088, 33.213833, 33.266666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220791, 33.782898, 32.734142>,  <44.478790, 33.506580, 32.892773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220791, 33.782898, 32.734142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246105, 33.417225, 32.894276>,  <45.261292, 33.197823, 32.990356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246105, 33.417225, 32.894276>,  <45.220791, 33.782898, 32.734142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246105, 33.417225, 32.894276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496542, -0.319125, -0.807221,
		0.865703, 0.249868, 0.433733,
		0.063283, -0.914180, 0.400338,
		45.265091, 33.142971, 33.014378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953049, 33.626942, 32.569138>,  <45.220791, 33.782898, 32.734142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953049, 33.626942, 32.569138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.772331, 33.287128, 32.678082>,  <45.663898, 33.083241, 32.743446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.772331, 33.287128, 32.678082>,  <45.953049, 33.626942, 32.569138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772331, 33.287128, 32.678082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471163, -0.486460, -0.735773,
		0.757552, -0.204096, 0.620049,
		-0.451797, -0.849530, 0.272356,
		45.636791, 33.032269, 32.759789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407284, 33.122410, 32.396866>,  <45.953049, 33.626942, 32.569138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407284, 33.122410, 32.396866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065861, 32.916424, 32.428497>,  <45.861008, 32.792831, 32.447475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.065861, 32.916424, 32.428497>,  <46.407284, 33.122410, 32.396866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065861, 32.916424, 32.428497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114448, -0.333395, -0.935815,
		0.508279, -0.789718, 0.343508,
		-0.853554, -0.514968, 0.079076,
		45.809795, 32.761932, 32.452221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.611275, 32.760063, 31.784702>,  <46.407284, 33.122410, 32.396866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.611275, 32.760063, 31.784702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223469, 32.680485, 31.841909>,  <45.990784, 32.632736, 31.876234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223469, 32.680485, 31.841909>,  <46.611275, 32.760063, 31.784702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223469, 32.680485, 31.841909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072841, -0.323279, -0.943496,
		0.233941, -0.925154, 0.298934,
		-0.969518, -0.198948, 0.143018,
		45.932613, 32.620800, 31.884815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.544910, 32.029865, 31.602232>,  <46.611275, 32.760063, 31.784702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.544910, 32.029865, 31.602232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191814, 32.213783, 31.563543>,  <45.979958, 32.324135, 31.540331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.191814, 32.213783, 31.563543>,  <46.544910, 32.029865, 31.602232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191814, 32.213783, 31.563543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091947, -0.370915, -0.924104,
		-0.460777, -0.806851, 0.369698,
		-0.882740, 0.459799, -0.096722,
		45.926994, 32.351723, 31.534527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110096, 31.604528, 31.349461>,  <46.544910, 32.029865, 31.602232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110096, 31.604528, 31.349461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.930153, 31.947412, 31.249201>,  <45.822189, 32.153141, 31.189045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.930153, 31.947412, 31.249201>,  <46.110096, 31.604528, 31.349461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930153, 31.947412, 31.249201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139971, -0.344851, -0.928163,
		-0.882066, -0.382453, 0.275117,
		-0.449853, 0.857209, -0.250649,
		45.795197, 32.204575, 31.174006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552940, 31.448187, 30.925983>,  <46.110096, 31.604528, 31.349461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552940, 31.448187, 30.925983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587307, 31.838501, 30.845524>,  <45.607925, 32.072689, 30.797247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.587307, 31.838501, 30.845524>,  <45.552940, 31.448187, 30.925983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.587307, 31.838501, 30.845524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039798, -0.205097, -0.977932,
		-0.995507, 0.076016, -0.056456,
		0.085917, 0.975785, -0.201150,
		45.613083, 32.131237, 30.785179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108536, 31.649727, 30.351849>,  <45.552940, 31.448187, 30.925983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108536, 31.649727, 30.351849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417259, 31.903181, 30.373096>,  <45.602493, 32.055252, 30.385845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.417259, 31.903181, 30.373096>,  <45.108536, 31.649727, 30.351849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417259, 31.903181, 30.373096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142348, -0.090757, -0.985647,
		-0.619720, 0.768289, -0.160243,
		0.771805, 0.633636, 0.053121,
		45.648800, 32.093273, 30.389032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922985, 32.151001, 29.754768>,  <45.108536, 31.649727, 30.351849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922985, 32.151001, 29.754768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.296925, 32.230320, 29.872572>,  <45.521290, 32.277912, 29.943254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.296925, 32.230320, 29.872572>,  <44.922985, 32.151001, 29.754768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296925, 32.230320, 29.872572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267122, 0.153604, -0.951342,
		-0.233885, 0.968031, 0.090627,
		0.934850, 0.198296, 0.294508,
		45.577381, 32.289810, 29.960924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074398, 32.713131, 29.434746>,  <44.922985, 32.151001, 29.754768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074398, 32.713131, 29.434746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.428535, 32.557903, 29.537169>,  <45.641018, 32.464767, 29.598621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.428535, 32.557903, 29.537169>,  <45.074398, 32.713131, 29.434746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428535, 32.557903, 29.537169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303026, 0.063947, -0.950835,
		0.352613, 0.919410, 0.174209,
		0.885347, -0.388067, 0.256056,
		45.694141, 32.441483, 29.613985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582748, 33.216793, 29.336624>,  <45.074398, 32.713131, 29.434746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582748, 33.216793, 29.336624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.797268, 32.879299, 29.345509>,  <45.925980, 32.676804, 29.350840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.797268, 32.879299, 29.345509>,  <45.582748, 33.216793, 29.336624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797268, 32.879299, 29.345509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105773, 0.041075, -0.993542,
		0.837376, 0.535182, 0.111273,
		0.536296, -0.843738, 0.022212,
		45.958157, 32.626179, 29.352173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101162, 33.306850, 28.920971>,  <45.582748, 33.216793, 29.336624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101162, 33.306850, 28.920971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.084698, 32.907257, 28.928267>,  <46.074818, 32.667500, 28.932644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.084698, 32.907257, 28.928267>,  <46.101162, 33.306850, 28.920971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084698, 32.907257, 28.928267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067826, -0.021008, -0.997476,
		0.996848, -0.039821, 0.068622,
		-0.041162, -0.998986, 0.018241,
		46.072350, 32.607563, 28.933739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690178, 33.104614, 28.512331>,  <46.101162, 33.306850, 28.920971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690178, 33.104614, 28.512331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.435387, 32.796265, 28.510620>,  <46.282513, 32.611256, 28.509594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.435387, 32.796265, 28.510620>,  <46.690178, 33.104614, 28.512331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435387, 32.796265, 28.510620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179073, -0.142569, -0.973451,
		0.749795, -0.620832, 0.228856,
		-0.636977, -0.770871, -0.004277,
		46.244293, 32.565002, 28.509336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081505, 32.418697, 28.349850>,  <46.690178, 33.104614, 28.512331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081505, 32.418697, 28.349850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.696117, 32.367043, 28.256002>,  <46.464886, 32.336048, 28.199694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.696117, 32.367043, 28.256002>,  <47.081505, 32.418697, 28.349850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696117, 32.367043, 28.256002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241752, -0.042413, -0.969411,
		0.115240, -0.990719, 0.072084,
		-0.963471, -0.129141, -0.234620,
		46.407078, 32.328300, 28.185616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088219, 32.241570, 27.670879>,  <47.081505, 32.418697, 28.349850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088219, 32.241570, 27.670879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.694401, 32.301613, 27.706957>,  <46.458111, 32.337639, 27.728603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.694401, 32.301613, 27.706957>,  <47.088219, 32.241570, 27.670879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694401, 32.301613, 27.706957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116789, -0.179047, -0.976884,
		-0.130488, -0.972322, 0.193811,
		-0.984547, 0.150107, 0.090193,
		46.399036, 32.346645, 27.734015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835766, 31.865730, 27.113913>,  <47.088219, 32.241570, 27.670879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835766, 31.865730, 27.113913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521053, 32.088898, 27.219511>,  <46.332226, 32.222797, 27.282871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.521053, 32.088898, 27.219511>,  <46.835766, 31.865730, 27.113913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521053, 32.088898, 27.219511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358741, -0.065297, -0.931151,
		-0.502268, -0.827323, 0.251523,
		-0.786786, 0.557919, 0.263998,
		46.285019, 32.256275, 27.298710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191284, 31.602377, 26.786627>,  <46.835766, 31.865730, 27.113913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191284, 31.602377, 26.786627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.103519, 31.979809, 26.885839>,  <46.050861, 32.206268, 26.945368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.103519, 31.979809, 26.885839>,  <46.191284, 31.602377, 26.786627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103519, 31.979809, 26.885839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501380, 0.109038, -0.858329,
		-0.836946, -0.312682, 0.449168,
		-0.219408, 0.943579, 0.248031,
		46.037697, 32.262882, 26.960249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423103, 31.757078, 26.512531>,  <46.191284, 31.602377, 26.786627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423103, 31.757078, 26.512531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630508, 32.094711, 26.567190>,  <45.754951, 32.297291, 26.599985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630508, 32.094711, 26.567190>,  <45.423103, 31.757078, 26.512531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630508, 32.094711, 26.567190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180572, 0.264294, -0.947387,
		-0.835787, 0.466557, 0.289457,
		0.518512, 0.844081, 0.136646,
		45.786060, 32.347935, 26.608185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097382, 32.206226, 26.134943>,  <45.423103, 31.757078, 26.512531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097382, 32.206226, 26.134943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465317, 32.359016, 26.170708>,  <45.686077, 32.450691, 26.192165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.465317, 32.359016, 26.170708>,  <45.097382, 32.206226, 26.134943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465317, 32.359016, 26.170708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066758, 0.376997, -0.923806,
		-0.386582, 0.843780, 0.372276,
		0.919836, 0.381979, 0.089411,
		45.741268, 32.473610, 26.197531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.423225, 32.430176, 40.423031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042969, 32.548840, 40.459389>,  <38.814816, 32.620037, 40.481205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042969, 32.548840, 40.459389>,  <39.423225, 32.430176, 40.423031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042969, 32.548840, 40.459389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038039, 0.402182, -0.914769,
		-0.307937, -0.866164, -0.393618,
		-0.950646, 0.296664, 0.090898,
		38.757774, 32.637840, 40.486660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078617, 32.295158, 39.754475>,  <39.423225, 32.430176, 40.423031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078617, 32.295158, 39.754475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828533, 32.551556, 39.932568>,  <38.678482, 32.705395, 40.039425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828533, 32.551556, 39.932568>,  <39.078617, 32.295158, 39.754475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828533, 32.551556, 39.932568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166941, 0.447442, -0.878593,
		-0.762391, -0.623636, -0.172739,
		-0.625213, 0.640994, 0.445236,
		38.640968, 32.743855, 40.066139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415436, 32.260609, 39.427353>,  <39.078617, 32.295158, 39.754475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415436, 32.260609, 39.427353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429028, 32.614532, 39.613235>,  <38.437183, 32.826889, 39.724766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429028, 32.614532, 39.613235>,  <38.415436, 32.260609, 39.427353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429028, 32.614532, 39.613235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064397, 0.465945, -0.882467,
		-0.997346, 0.000062, 0.072813,
		0.033981, 0.884814, 0.464704,
		38.439220, 32.879978, 39.752647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832966, 32.590721, 39.232769>,  <38.415436, 32.260609, 39.427353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832966, 32.590721, 39.232769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083160, 32.884815, 39.337223>,  <38.233276, 33.061272, 39.399895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083160, 32.884815, 39.337223>,  <37.832966, 32.590721, 39.232769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083160, 32.884815, 39.337223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284644, 0.526651, -0.801010,
		-0.726463, 0.426686, 0.538693,
		0.625483, 0.735240, 0.261139,
		38.270805, 33.105389, 39.415565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494080, 33.181808, 39.035934>,  <37.832966, 32.590721, 39.232769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494080, 33.181808, 39.035934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875423, 33.287411, 39.094467>,  <38.104229, 33.350773, 39.129585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875423, 33.287411, 39.094467>,  <37.494080, 33.181808, 39.035934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875423, 33.287411, 39.094467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004124, 0.473338, -0.880871,
		-0.301816, 0.840389, 0.450171,
		0.953357, 0.264005, 0.146327,
		38.161430, 33.366611, 39.138367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648693, 33.865856, 38.596832>,  <37.494080, 33.181808, 39.035934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648693, 33.865856, 38.596832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017975, 33.732342, 38.673019>,  <38.239544, 33.652233, 38.718731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017975, 33.732342, 38.673019>,  <37.648693, 33.865856, 38.596832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017975, 33.732342, 38.673019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335096, 0.456514, -0.824200,
		0.188150, 0.824733, 0.533306,
		0.923207, -0.333782, 0.190472,
		38.294937, 33.632206, 38.730160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109131, 34.371460, 38.474007>,  <37.648693, 33.865856, 38.596832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109131, 34.371460, 38.474007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356350, 34.057346, 38.488655>,  <38.504681, 33.868877, 38.497444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356350, 34.057346, 38.488655>,  <38.109131, 34.371460, 38.474007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356350, 34.057346, 38.488655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518871, 0.372487, -0.769432,
		0.590583, 0.494549, 0.637677,
		0.618049, -0.785286, 0.036623,
		38.541763, 33.821762, 38.499641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773876, 34.697960, 38.348888>,  <38.109131, 34.371460, 38.474007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773876, 34.697960, 38.348888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802967, 34.320400, 38.220043>,  <38.820423, 34.093864, 38.142735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802967, 34.320400, 38.220043>,  <38.773876, 34.697960, 38.348888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802967, 34.320400, 38.220043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440396, 0.320171, -0.838774,
		0.894853, -0.080857, 0.438976,
		0.072727, -0.943903, -0.322115,
		38.824783, 34.037228, 38.123409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338245, 34.707005, 37.979031>,  <38.773876, 34.697960, 38.348888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338245, 34.707005, 37.979031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137211, 34.389805, 37.841301>,  <39.016590, 34.199486, 37.758663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137211, 34.389805, 37.841301>,  <39.338245, 34.707005, 37.979031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137211, 34.389805, 37.841301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342303, 0.183205, -0.921555,
		0.793874, -0.581025, 0.179369,
		-0.502585, -0.792998, -0.344329,
		38.986435, 34.151905, 37.738003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686443, 34.619926, 37.441982>,  <39.338245, 34.707005, 37.979031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686443, 34.619926, 37.441982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380051, 34.372177, 37.373108>,  <39.196213, 34.223530, 37.331783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380051, 34.372177, 37.373108>,  <39.686443, 34.619926, 37.441982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380051, 34.372177, 37.373108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191048, 0.036423, -0.980905,
		0.613815, -0.784254, 0.090430,
		-0.765984, -0.619370, -0.172187,
		39.150257, 34.186367, 37.321453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881542, 34.081093, 36.988087>,  <39.686443, 34.619926, 37.441982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881542, 34.081093, 36.988087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483814, 34.101917, 36.950974>,  <39.245178, 34.114410, 36.928703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483814, 34.101917, 36.950974>,  <39.881542, 34.081093, 36.988087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483814, 34.101917, 36.950974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102020, 0.219077, -0.970359,
		-0.030192, -0.974318, -0.223145,
		-0.994324, 0.052062, -0.092786,
		39.185516, 34.117535, 36.923138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665199, 33.702538, 36.273052>,  <39.881542, 34.081093, 36.988087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665199, 33.702538, 36.273052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367283, 33.946991, 36.380234>,  <39.188534, 34.093662, 36.444542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367283, 33.946991, 36.380234>,  <39.665199, 33.702538, 36.273052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367283, 33.946991, 36.380234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022380, 0.424200, -0.905292,
		-0.666922, -0.668257, -0.329618,
		-0.744792, 0.611136, 0.267953,
		39.143845, 34.130333, 36.460621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751659, 33.474468, 35.538868>,  <39.665199, 33.702538, 36.273052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751659, 33.474468, 35.538868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107033, 33.640335, 35.617588>,  <40.320259, 33.739857, 35.664822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107033, 33.640335, 35.617588>,  <39.751659, 33.474468, 35.538868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107033, 33.640335, 35.617588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398387, 0.909586, -0.118072,
		-0.227969, 0.026496, 0.973308,
		0.888436, 0.414670, 0.196802,
		40.373562, 33.764736, 35.676628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088730, 33.521252, 35.643265>,  <39.751659, 33.474468, 35.538868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088730, 33.521252, 35.643265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867077, 33.480133, 35.312843>,  <38.734085, 33.455460, 35.114590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867077, 33.480133, 35.312843>,  <39.088730, 33.521252, 35.643265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867077, 33.480133, 35.312843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320936, -0.889243, 0.325955,
		-0.768071, 0.445734, 0.459770,
		-0.554137, -0.102800, -0.826054,
		38.700836, 33.449295, 35.065025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406651, 33.416866, 35.754337>,  <39.088730, 33.521252, 35.643265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406651, 33.416866, 35.754337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429958, 33.223347, 35.405041>,  <38.443943, 33.107235, 35.195465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429958, 33.223347, 35.405041>,  <38.406651, 33.416866, 35.754337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429958, 33.223347, 35.405041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384346, -0.818169, 0.427642,
		-0.921348, 0.310707, -0.233620,
		0.058269, -0.483798, -0.873238,
		38.447441, 33.078209, 35.143070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744804, 33.283421, 35.283310>,  <38.406651, 33.416866, 35.754337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744804, 33.283421, 35.283310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036201, 33.011169, 35.314423>,  <38.211040, 32.847820, 35.333092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036201, 33.011169, 35.314423>,  <37.744804, 33.283421, 35.283310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036201, 33.011169, 35.314423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565776, -0.533738, 0.628507,
		-0.386264, -0.501867, -0.773905,
		0.728490, -0.680627, 0.077781,
		38.254749, 32.806980, 35.337757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392719, 32.786728, 35.217346>,  <37.744804, 33.283421, 35.283310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392719, 32.786728, 35.217346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722546, 32.611935, 35.361084>,  <37.920441, 32.507057, 35.447327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722546, 32.611935, 35.361084>,  <37.392719, 32.786728, 35.217346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722546, 32.611935, 35.361084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558597, -0.528055, 0.639631,
		-0.089756, -0.728149, -0.679517,
		0.824569, -0.436987, 0.359346,
		37.969917, 32.480839, 35.468887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356201, 31.961800, 35.252407>,  <37.392719, 32.786728, 35.217346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356201, 31.961800, 35.252407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628803, 32.049782, 35.531597>,  <37.792366, 32.102573, 35.699112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628803, 32.049782, 35.531597>,  <37.356201, 31.961800, 35.252407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628803, 32.049782, 35.531597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588906, -0.401362, 0.701497,
		0.434440, -0.889116, -0.143997,
		0.681507, 0.219958, 0.697973,
		37.833256, 32.115768, 35.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565773, 31.360010, 35.702068>,  <37.356201, 31.961800, 35.252407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565773, 31.360010, 35.702068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636124, 31.687824, 35.920216>,  <37.678333, 31.884514, 36.051105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636124, 31.687824, 35.920216>,  <37.565773, 31.360010, 35.702068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636124, 31.687824, 35.920216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430580, -0.434153, 0.791272,
		0.885250, -0.373992, 0.276519,
		0.175878, 0.819538, 0.545367,
		37.688889, 31.933685, 36.083824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868439, 31.115528, 36.265026>,  <37.565773, 31.360010, 35.702068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868439, 31.115528, 36.265026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740265, 31.474833, 36.385326>,  <37.663361, 31.690416, 36.457504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740265, 31.474833, 36.385326>,  <37.868439, 31.115528, 36.265026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740265, 31.474833, 36.385326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247793, -0.385917, 0.888632,
		0.914288, 0.210223, 0.346243,
		-0.320432, 0.898262, 0.300747,
		37.644135, 31.744310, 36.475552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198082, 31.142773, 36.798107>,  <37.868439, 31.115528, 36.265026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198082, 31.142773, 36.798107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891888, 31.396910, 36.838848>,  <37.708172, 31.549393, 36.863293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891888, 31.396910, 36.838848>,  <38.198082, 31.142773, 36.798107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891888, 31.396910, 36.838848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202966, -0.388622, 0.898765,
		0.610605, 0.667318, 0.426437,
		-0.765484, 0.635343, 0.101852,
		37.662243, 31.587513, 36.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278915, 31.473383, 37.436077>,  <38.198082, 31.142773, 36.798107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278915, 31.473383, 37.436077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888489, 31.521753, 37.363766>,  <37.654232, 31.550776, 37.320381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888489, 31.521753, 37.363766>,  <38.278915, 31.473383, 37.436077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888489, 31.521753, 37.363766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206616, -0.256028, 0.944330,
		0.067911, 0.959076, 0.274884,
		-0.976062, 0.120926, -0.180774,
		37.595669, 31.558031, 37.309532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028889, 31.897442, 37.968899>,  <38.278915, 31.473383, 37.436077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028889, 31.897442, 37.968899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692417, 31.721289, 37.843376>,  <37.490532, 31.615597, 37.768063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692417, 31.721289, 37.843376>,  <38.028889, 31.897442, 37.968899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692417, 31.721289, 37.843376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257914, -0.183310, 0.948619,
		-0.475281, 0.878896, 0.040616,
		-0.841183, -0.440385, -0.313804,
		37.440063, 31.589172, 37.749233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545975, 32.009357, 38.574223>,  <38.028889, 31.897442, 37.968899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545975, 32.009357, 38.574223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350716, 31.749269, 38.341354>,  <37.233559, 31.593218, 38.201633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350716, 31.749269, 38.341354>,  <37.545975, 32.009357, 38.574223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350716, 31.749269, 38.341354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534320, -0.304776, 0.788425,
		-0.690081, 0.695936, -0.198648,
		-0.488150, -0.650219, -0.582173,
		37.204269, 31.554203, 38.166702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773136, 32.118908, 38.633339>,  <37.545975, 32.009357, 38.574223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773136, 32.118908, 38.633339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872250, 31.743814, 38.535969>,  <36.931717, 31.518759, 38.477547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872250, 31.743814, 38.535969>,  <36.773136, 32.118908, 38.633339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872250, 31.743814, 38.535969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470243, -0.336091, 0.816036,
		-0.847040, -0.087727, -0.524240,
		0.247780, -0.937735, -0.243430,
		36.946583, 31.462494, 38.462940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165344, 31.618797, 38.734486>,  <36.773136, 32.118908, 38.633339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165344, 31.618797, 38.734486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490131, 31.385653, 38.747002>,  <36.685005, 31.245766, 38.754509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490131, 31.385653, 38.747002>,  <36.165344, 31.618797, 38.734486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490131, 31.385653, 38.747002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331945, -0.417002, 0.846122,
		-0.480126, -0.697410, -0.532071,
		0.811968, -0.582863, 0.031288,
		36.733723, 31.210794, 38.756390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047409, 31.102352, 39.191780>,  <36.165344, 31.618797, 38.734486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047409, 31.102352, 39.191780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433258, 31.007904, 39.144863>,  <36.664768, 30.951235, 39.116714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433258, 31.007904, 39.144863>,  <36.047409, 31.102352, 39.191780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433258, 31.007904, 39.144863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053158, -0.609922, 0.790677,
		-0.258232, -0.756467, -0.600894,
		0.964619, -0.236120, -0.117289,
		36.722645, 30.937067, 39.109676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086720, 30.365808, 38.916527>,  <36.047409, 31.102352, 39.191780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086720, 30.365808, 38.916527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404663, 30.495783, 39.121510>,  <36.595428, 30.573767, 39.244499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404663, 30.495783, 39.121510>,  <36.086720, 30.365808, 38.916527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404663, 30.495783, 39.121510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114630, -0.748923, 0.652667,
		0.595868, -0.577522, -0.558041,
		0.794859, 0.324935, 0.512461,
		36.643120, 30.593264, 39.275249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501980, 30.015461, 38.786865>,  <36.086720, 30.365808, 38.916527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501980, 30.015461, 38.786865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151371, 30.126627, 38.944073>,  <34.941006, 30.193327, 39.038399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151371, 30.126627, 38.944073>,  <35.501980, 30.015461, 38.786865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151371, 30.126627, 38.944073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180310, 0.567473, -0.803407,
		-0.446308, -0.775073, -0.447293,
		-0.876525, 0.277916, 0.393021,
		34.888412, 30.210001, 39.061977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013004, 29.841227, 38.323833>,  <35.501980, 30.015461, 38.786865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013004, 29.841227, 38.323833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834480, 30.135887, 38.527069>,  <34.727364, 30.312683, 38.649010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834480, 30.135887, 38.527069>,  <35.013004, 29.841227, 38.323833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834480, 30.135887, 38.527069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287655, 0.419540, -0.860954,
		-0.847383, -0.530409, 0.024654,
		-0.446314, 0.736649, 0.508086,
		34.700584, 30.356882, 38.679497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415985, 30.031649, 37.959682>,  <35.013004, 29.841227, 38.323833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415985, 30.031649, 37.959682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498001, 30.341415, 38.199093>,  <34.547211, 30.527275, 38.342739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498001, 30.341415, 38.199093>,  <34.415985, 30.031649, 37.959682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498001, 30.341415, 38.199093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154753, 0.629480, -0.761451,
		-0.966442, 0.063503, 0.248911,
		0.205039, 0.774418, 0.598528,
		34.559513, 30.573740, 38.378651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815887, 30.442698, 37.840004>,  <34.415985, 30.031649, 37.959682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815887, 30.442698, 37.840004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126461, 30.666374, 37.956245>,  <34.312805, 30.800579, 38.025990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126461, 30.666374, 37.956245>,  <33.815887, 30.442698, 37.840004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126461, 30.666374, 37.956245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227778, 0.678977, -0.697931,
		-0.587590, 0.475706, 0.654554,
		0.776437, 0.559191, 0.290605,
		34.359394, 30.834131, 38.043427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576736, 31.129736, 37.732906>,  <33.815887, 30.442698, 37.840004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576736, 31.129736, 37.732906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961201, 31.214304, 37.803875>,  <34.191879, 31.265045, 37.846455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961201, 31.214304, 37.803875>,  <33.576736, 31.129736, 37.732906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961201, 31.214304, 37.803875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035292, 0.731690, -0.680723,
		-0.273736, 0.648020, 0.710731,
		0.961157, 0.211422, 0.177420,
		34.249546, 31.277731, 37.857101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621231, 31.842134, 37.948185>,  <33.576736, 31.129736, 37.732906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621231, 31.842134, 37.948185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998352, 31.767315, 37.837818>,  <34.224625, 31.722424, 37.771599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998352, 31.767315, 37.837818>,  <33.621231, 31.842134, 37.948185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998352, 31.767315, 37.837818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023829, 0.787792, -0.615480,
		0.332490, 0.586853, 0.738278,
		0.942806, -0.187048, -0.275917,
		34.281193, 31.711201, 37.755043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858292, 32.431965, 37.838100>,  <33.621231, 31.842134, 37.948185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858292, 32.431965, 37.838100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155857, 32.221333, 37.673515>,  <34.334396, 32.094952, 37.574764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155857, 32.221333, 37.673515>,  <33.858292, 32.431965, 37.838100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155857, 32.221333, 37.673515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180115, 0.750913, -0.635364,
		0.643541, 0.398549, 0.653463,
		0.743918, -0.526582, -0.411458,
		34.379032, 32.063358, 37.550079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443100, 32.822720, 38.026115>,  <33.858292, 32.431965, 37.838100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443100, 32.822720, 38.026115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461193, 32.583958, 37.705700>,  <34.472050, 32.440701, 37.513451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461193, 32.583958, 37.705700>,  <34.443100, 32.822720, 38.026115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461193, 32.583958, 37.705700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133499, 0.798276, -0.587310,
		0.990016, -0.080372, 0.115794,
		0.045232, -0.596905, -0.801036,
		34.474762, 32.404884, 37.465389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973713, 33.134068, 37.676556>,  <34.443100, 32.822720, 38.026115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973713, 33.134068, 37.676556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773903, 32.919266, 37.404644>,  <34.654018, 32.790386, 37.241497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773903, 32.919266, 37.404644>,  <34.973713, 33.134068, 37.676556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773903, 32.919266, 37.404644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164183, 0.711788, -0.682936,
		0.850599, -0.452752, -0.267390,
		-0.499526, -0.537004, -0.679780,
		34.624046, 32.758163, 37.200710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443245, 33.107502, 37.151508>,  <34.973713, 33.134068, 37.676556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443245, 33.107502, 37.151508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127842, 32.979195, 36.941608>,  <34.938599, 32.902210, 36.815670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127842, 32.979195, 36.941608>,  <35.443245, 33.107502, 37.151508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127842, 32.979195, 36.941608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177480, 0.698237, -0.693517,
		0.588855, -0.639977, -0.493638,
		-0.788511, -0.320770, -0.524744,
		34.891289, 32.882961, 36.784184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619785, 32.990154, 36.377789>,  <35.443245, 33.107502, 37.151508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619785, 32.990154, 36.377789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224785, 33.044029, 36.410530>,  <34.987785, 33.076355, 36.430176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224785, 33.044029, 36.410530>,  <35.619785, 32.990154, 36.377789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224785, 33.044029, 36.410530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056277, 0.786439, -0.615099,
		-0.147223, -0.602804, -0.784189,
		-0.987501, 0.134689, 0.081858,
		34.928535, 33.084435, 36.435089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394493, 32.991348, 35.705956>,  <35.619785, 32.990154, 36.377789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394493, 32.991348, 35.705956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123539, 33.180065, 35.931721>,  <34.960968, 33.293297, 36.067181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123539, 33.180065, 35.931721>,  <35.394493, 32.991348, 35.705956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123539, 33.180065, 35.931721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084796, 0.712061, -0.696979,
		-0.730727, -0.519982, -0.442332,
		-0.677383, 0.471793, 0.564414,
		34.920322, 33.321602, 36.101044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.594105, 27.277685, 41.476631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466133, 27.614119, 41.651089>,  <34.389351, 27.815979, 41.755764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466133, 27.614119, 41.651089>,  <34.594105, 27.277685, 41.476631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466133, 27.614119, 41.651089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188139, 0.507573, -0.840817,
		-0.928573, -0.186947, -0.320629,
		-0.319931, 0.841083, 0.436146,
		34.370155, 27.866444, 41.781933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071472, 27.611702, 40.981297>,  <34.594105, 27.277685, 41.476631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071472, 27.611702, 40.981297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208916, 27.884476, 41.239567>,  <34.291382, 28.048140, 41.394531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.208916, 27.884476, 41.239567>,  <34.071472, 27.611702, 40.981297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208916, 27.884476, 41.239567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081919, 0.663155, -0.743986,
		-0.935532, 0.308535, 0.172004,
		0.343611, 0.681933, 0.645677,
		34.312000, 28.089056, 41.433270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659138, 28.230673, 40.856426>,  <34.071472, 27.611702, 40.981297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659138, 28.230673, 40.856426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.010906, 28.338692, 41.013241>,  <34.221966, 28.403503, 41.107330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.010906, 28.338692, 41.013241>,  <33.659138, 28.230673, 40.856426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010906, 28.338692, 41.013241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014795, 0.807633, -0.589500,
		-0.475817, 0.524218, 0.706253,
		0.879420, 0.270045, 0.392041,
		34.274731, 28.419704, 41.130852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554661, 28.980947, 41.029556>,  <33.659138, 28.230673, 40.856426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554661, 28.980947, 41.029556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.948563, 28.915277, 41.006550>,  <34.184902, 28.875875, 40.992748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.948563, 28.915277, 41.006550>,  <33.554661, 28.980947, 41.029556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948563, 28.915277, 41.006550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100216, 0.805650, -0.583854,
		0.142189, 0.569188, 0.809819,
		0.984753, -0.164174, -0.057513,
		34.243988, 28.866026, 40.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893314, 29.609331, 41.208099>,  <33.554661, 28.980947, 41.029556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893314, 29.609331, 41.208099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.170265, 29.411196, 40.998241>,  <34.336437, 29.292315, 40.872326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.170265, 29.411196, 40.998241>,  <33.893314, 29.609331, 41.208099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170265, 29.411196, 40.998241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103650, 0.787863, -0.607065,
		0.714050, 0.365940, 0.596842,
		0.692380, -0.495337, -0.524644,
		34.377979, 29.262594, 40.840847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413700, 30.078749, 40.949013>,  <33.893314, 29.609331, 41.208099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413700, 30.078749, 40.949013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484634, 29.762110, 40.715115>,  <34.527195, 29.572126, 40.574776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484634, 29.762110, 40.715115>,  <34.413700, 30.078749, 40.949013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484634, 29.762110, 40.715115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170111, 0.609872, -0.774028,
		0.969337, 0.037794, 0.242813,
		0.177338, -0.791599, -0.584742,
		34.537834, 29.524630, 40.539692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944321, 30.324478, 40.703991>,  <34.413700, 30.078749, 40.949013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944321, 30.324478, 40.703991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793900, 30.040770, 40.465488>,  <34.703648, 29.870544, 40.322388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793900, 30.040770, 40.465488>,  <34.944321, 30.324478, 40.703991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793900, 30.040770, 40.465488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060817, 0.623206, -0.779689,
		0.924600, -0.329468, -0.191223,
		-0.376054, -0.709271, -0.596253,
		34.681084, 29.827988, 40.286613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366661, 30.370377, 40.110622>,  <34.944321, 30.324478, 40.703991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366661, 30.370377, 40.110622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072289, 30.155441, 39.945854>,  <34.895664, 30.026480, 39.846992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.072289, 30.155441, 39.945854>,  <35.366661, 30.370377, 40.110622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072289, 30.155441, 39.945854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061482, 0.552841, -0.831016,
		0.674260, -0.636895, -0.373816,
		-0.735930, -0.537338, -0.411916,
		34.851509, 29.994240, 39.822281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613739, 30.171970, 39.513252>,  <35.366661, 30.370377, 40.110622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613739, 30.171970, 39.513252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217464, 30.125463, 39.484921>,  <34.979698, 30.097559, 39.467922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.217464, 30.125463, 39.484921>,  <35.613739, 30.171970, 39.513252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217464, 30.125463, 39.484921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022471, 0.373489, -0.927362,
		0.134275, -0.920319, -0.367399,
		-0.990689, -0.116266, -0.070830,
		34.920258, 30.090584, 39.463673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165333, 29.770144, 39.292183>,  <35.613739, 30.171970, 39.513252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165333, 29.770144, 39.292183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395542, 30.046715, 39.466858>,  <36.533669, 30.212658, 39.571663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395542, 30.046715, 39.466858>,  <36.165333, 29.770144, 39.292183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395542, 30.046715, 39.466858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091849, -0.585262, 0.805625,
		0.812609, -0.423549, -0.400341,
		0.575527, 0.691429, 0.436687,
		36.568199, 30.254143, 39.597862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774158, 29.446068, 39.569618>,  <36.165333, 29.770144, 39.292183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774158, 29.446068, 39.569618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738930, 29.788778, 39.772861>,  <36.717793, 29.994406, 39.894806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.738930, 29.788778, 39.772861>,  <36.774158, 29.446068, 39.569618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738930, 29.788778, 39.772861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199906, -0.484512, 0.851637,
		0.975849, 0.176579, -0.128604,
		-0.088072, 0.856778, 0.508109,
		36.712509, 30.045813, 39.925293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179615, 29.374037, 40.146046>,  <36.774158, 29.446068, 39.569618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179615, 29.374037, 40.146046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965187, 29.688370, 40.269394>,  <36.836529, 29.876970, 40.343403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965187, 29.688370, 40.269394>,  <37.179615, 29.374037, 40.146046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965187, 29.688370, 40.269394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102737, -0.301850, 0.947803,
		0.837900, 0.539769, 0.081078,
		-0.536068, 0.785834, 0.308374,
		36.804367, 29.924120, 40.361908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588566, 29.739105, 40.813137>,  <37.179615, 29.374037, 40.146046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588566, 29.739105, 40.813137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207645, 29.859739, 40.831749>,  <36.979092, 29.932119, 40.842915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.207645, 29.859739, 40.831749>,  <37.588566, 29.739105, 40.813137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207645, 29.859739, 40.831749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060236, -0.335266, 0.940196,
		0.299150, 0.892549, 0.337441,
		-0.952303, 0.301585, 0.046531,
		36.921955, 29.950214, 40.845707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453739, 30.165213, 41.392250>,  <37.588566, 29.739105, 40.813137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453739, 30.165213, 41.392250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097153, 30.012775, 41.294228>,  <36.883202, 29.921312, 41.235416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097153, 30.012775, 41.294228>,  <37.453739, 30.165213, 41.392250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097153, 30.012775, 41.294228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153312, -0.255233, 0.954647,
		-0.426357, 0.888607, 0.169106,
		-0.891468, -0.381094, -0.245054,
		36.829712, 29.898447, 41.220711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097275, 30.361803, 41.995071>,  <37.453739, 30.165213, 41.392250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097275, 30.361803, 41.995071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885159, 30.082207, 41.803154>,  <36.757889, 29.914448, 41.688004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885159, 30.082207, 41.803154>,  <37.097275, 30.361803, 41.995071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885159, 30.082207, 41.803154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270910, -0.396543, 0.877133,
		-0.803368, 0.595116, 0.020919,
		-0.530291, -0.698993, -0.479793,
		36.726070, 29.872509, 41.659218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489326, 30.278498, 42.459831>,  <37.097275, 30.361803, 41.995071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489326, 30.278498, 42.459831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501633, 29.965748, 42.210762>,  <36.509018, 29.778097, 42.061321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.501633, 29.965748, 42.210762>,  <36.489326, 30.278498, 42.459831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501633, 29.965748, 42.210762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264903, -0.607073, 0.749192,
		-0.963784, 0.141900, -0.225798,
		0.030766, -0.781874, -0.622676,
		36.510864, 29.731186, 42.023960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829845, 29.922644, 42.561813>,  <36.489326, 30.278498, 42.459831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829845, 29.922644, 42.561813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100304, 29.660892, 42.426392>,  <36.262577, 29.503841, 42.345139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.100304, 29.660892, 42.426392>,  <35.829845, 29.922644, 42.561813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100304, 29.660892, 42.426392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188106, -0.597605, 0.779413,
		-0.712355, -0.463308, -0.527158,
		0.676141, -0.654381, -0.338556,
		36.303146, 29.464579, 42.324825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567104, 29.300558, 42.701973>,  <35.829845, 29.922644, 42.561813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567104, 29.300558, 42.701973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952969, 29.225113, 42.628372>,  <36.184486, 29.179846, 42.584213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952969, 29.225113, 42.628372>,  <35.567104, 29.300558, 42.701973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952969, 29.225113, 42.628372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028346, -0.768527, 0.639190,
		-0.261966, -0.611385, -0.746714,
		0.964661, -0.188612, -0.183998,
		36.242367, 29.168530, 42.573174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597897, 28.726685, 42.340927>,  <35.567104, 29.300558, 42.701973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597897, 28.726685, 42.340927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952660, 28.739698, 42.525246>,  <36.165516, 28.747507, 42.635838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.952660, 28.739698, 42.525246>,  <35.597897, 28.726685, 42.340927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952660, 28.739698, 42.525246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165881, -0.908555, 0.383420,
		0.431134, -0.416496, -0.800409,
		0.886908, 0.032533, 0.460798,
		36.218731, 28.749458, 42.663486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652576, 28.056431, 42.489777>,  <35.597897, 28.726685, 42.340927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652576, 28.056431, 42.489777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956783, 28.230652, 42.682404>,  <36.139305, 28.335184, 42.797981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.956783, 28.230652, 42.682404>,  <35.652576, 28.056431, 42.489777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956783, 28.230652, 42.682404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041166, -0.772504, 0.633674,
		0.648014, -0.462094, -0.605431,
		0.760515, 0.435553, 0.481571,
		36.184937, 28.361319, 42.826874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158375, 27.489382, 42.711693>,  <35.652576, 28.056431, 42.489777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158375, 27.489382, 42.711693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251919, 27.808781, 42.933582>,  <36.308044, 28.000420, 43.066715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251919, 27.808781, 42.933582>,  <36.158375, 27.489382, 42.711693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251919, 27.808781, 42.933582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194790, -0.597452, 0.777886,
		0.952559, -0.073858, -0.295257,
		0.233855, 0.798496, 0.554722,
		36.322075, 28.048330, 43.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743629, 27.298309, 42.912380>,  <36.158375, 27.489382, 42.711693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743629, 27.298309, 42.912380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646622, 27.589359, 43.169052>,  <36.588417, 27.763988, 43.323055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646622, 27.589359, 43.169052>,  <36.743629, 27.298309, 42.912380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646622, 27.589359, 43.169052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251014, -0.591836, 0.765978,
		0.937111, 0.346834, -0.039112,
		-0.242519, 0.727624, 0.641676,
		36.573868, 27.807646, 43.361553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246105, 27.322868, 43.408077>,  <36.743629, 27.298309, 42.912380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246105, 27.322868, 43.408077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940727, 27.499689, 43.596436>,  <36.757500, 27.605782, 43.709450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940727, 27.499689, 43.596436>,  <37.246105, 27.322868, 43.408077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940727, 27.499689, 43.596436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269843, -0.444089, 0.854383,
		0.586801, 0.779342, 0.219753,
		-0.763446, 0.442053, 0.470892,
		36.711693, 27.632305, 43.737701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.740829, 32.441257, 46.263851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751148, 32.088623, 46.075321>,  <32.757339, 31.877043, 45.962204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751148, 32.088623, 46.075321>,  <32.740829, 32.441257, 46.263851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751148, 32.088623, 46.075321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183876, 0.467621, -0.864592,
		0.982611, -0.064365, 0.174163,
		0.025793, -0.881582, -0.471325,
		32.758884, 31.824148, 45.933922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057419, 32.685677, 45.660751>,  <32.740829, 32.441257, 46.263851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057419, 32.685677, 45.660751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957352, 32.307384, 45.577793>,  <32.897312, 32.080410, 45.528019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.957352, 32.307384, 45.577793>,  <33.057419, 32.685677, 45.660751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957352, 32.307384, 45.577793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186509, 0.163126, -0.968816,
		0.950068, -0.281050, 0.135578,
		-0.250169, -0.945728, -0.207399,
		32.882301, 32.023666, 45.515572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568096, 32.384998, 45.372723>,  <33.057419, 32.685677, 45.660751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568096, 32.384998, 45.372723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244282, 32.192627, 45.238052>,  <33.049992, 32.077202, 45.157249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.244282, 32.192627, 45.238052>,  <33.568096, 32.384998, 45.372723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244282, 32.192627, 45.238052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320435, 0.118551, -0.939823,
		0.491905, -0.868706, 0.058136,
		-0.809538, -0.480933, -0.336679,
		33.001419, 32.048347, 45.137047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862045, 31.846088, 44.897224>,  <33.568096, 32.384998, 45.372723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862045, 31.846088, 44.897224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484661, 31.954700, 44.821159>,  <33.258232, 32.019867, 44.775520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.484661, 31.954700, 44.821159>,  <33.862045, 31.846088, 44.897224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484661, 31.954700, 44.821159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254301, 0.224819, -0.940631,
		-0.212655, -0.935804, -0.281157,
		-0.943456, 0.271528, -0.190167,
		33.201626, 32.036160, 44.764111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841667, 31.813976, 44.124519>,  <33.862045, 31.846088, 44.897224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841667, 31.813976, 44.124519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497204, 32.005005, 44.194187>,  <33.290527, 32.119621, 44.235989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.497204, 32.005005, 44.194187>,  <33.841667, 31.813976, 44.124519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497204, 32.005005, 44.194187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081642, 0.468113, -0.879889,
		-0.501741, -0.743502, -0.442109,
		-0.861156, 0.477571, 0.174170,
		33.238857, 32.148277, 44.246437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462582, 31.771460, 43.532131>,  <33.841667, 31.813976, 44.124519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462582, 31.771460, 43.532131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311062, 32.092083, 43.717178>,  <33.220150, 32.284458, 43.828205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311062, 32.092083, 43.717178>,  <33.462582, 31.771460, 43.532131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311062, 32.092083, 43.717178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042049, 0.514258, -0.856604,
		-0.924522, -0.305030, -0.228507,
		-0.378801, 0.801558, 0.462617,
		33.197422, 32.332550, 43.855965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938084, 32.094074, 43.049042>,  <33.462582, 31.771460, 43.532131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938084, 32.094074, 43.049042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980194, 32.396381, 43.307568>,  <33.005459, 32.577766, 43.462685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.980194, 32.396381, 43.307568>,  <32.938084, 32.094074, 43.049042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980194, 32.396381, 43.307568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138353, 0.632478, -0.762122,
		-0.984772, 0.169652, -0.037979,
		0.105275, 0.755771, 0.646319,
		33.011776, 32.623112, 43.501465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539577, 32.685993, 42.877113>,  <32.938084, 32.094074, 43.049042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539577, 32.685993, 42.877113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793640, 32.869629, 43.125568>,  <32.946079, 32.979809, 43.274643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793640, 32.869629, 43.125568>,  <32.539577, 32.685993, 42.877113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793640, 32.869629, 43.125568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148028, 0.716925, -0.681254,
		-0.758065, 0.524649, 0.387402,
		0.635158, 0.459089, 0.621138,
		32.984188, 33.007355, 43.311909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407463, 33.345329, 42.703671>,  <32.539577, 32.685993, 42.877113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407463, 33.345329, 42.703671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747723, 33.366066, 42.912941>,  <32.951878, 33.378510, 43.038502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.747723, 33.366066, 42.912941>,  <32.407463, 33.345329, 42.703671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747723, 33.366066, 42.912941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374751, 0.638146, -0.672556,
		-0.368728, 0.768168, 0.523410,
		0.850648, 0.051842, 0.523174,
		33.002918, 33.381618, 43.069893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560329, 34.091759, 42.769760>,  <32.407463, 33.345329, 42.703671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560329, 34.091759, 42.769760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895210, 33.875721, 42.804161>,  <33.096138, 33.746098, 42.824802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895210, 33.875721, 42.804161>,  <32.560329, 34.091759, 42.769760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895210, 33.875721, 42.804161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422154, 0.538231, -0.729447,
		0.347684, 0.646997, 0.678609,
		0.837199, -0.540095, 0.085998,
		33.146370, 33.713692, 42.829960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037876, 34.601753, 42.904064>,  <32.560329, 34.091759, 42.769760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037876, 34.601753, 42.904064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219318, 34.272644, 42.767078>,  <33.328182, 34.075176, 42.684887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219318, 34.272644, 42.767078>,  <33.037876, 34.601753, 42.904064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219318, 34.272644, 42.767078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415804, 0.535267, -0.735252,
		0.788256, 0.191119, 0.584915,
		0.453607, -0.822777, -0.342460,
		33.355400, 34.025810, 42.664341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714371, 34.800522, 42.739719>,  <33.037876, 34.601753, 42.904064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714371, 34.800522, 42.739719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645176, 34.468098, 42.528282>,  <33.603657, 34.268642, 42.401421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645176, 34.468098, 42.528282>,  <33.714371, 34.800522, 42.739719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645176, 34.468098, 42.528282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327822, 0.457504, -0.826573,
		0.928766, -0.316275, 0.193296,
		-0.172991, -0.831059, -0.528597,
		33.593277, 34.218781, 42.369701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321327, 34.791004, 42.372261>,  <33.714371, 34.800522, 42.739719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321327, 34.791004, 42.372261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057503, 34.577721, 42.160347>,  <33.899208, 34.449753, 42.033199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057503, 34.577721, 42.160347>,  <34.321327, 34.791004, 42.372261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057503, 34.577721, 42.160347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270084, 0.489636, -0.829042,
		0.701452, -0.689890, -0.178934,
		-0.659560, -0.533206, -0.529785,
		33.859634, 34.417759, 42.001411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721794, 34.614693, 41.849438>,  <34.321327, 34.791004, 42.372261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721794, 34.614693, 41.849438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346127, 34.576801, 41.717388>,  <34.120724, 34.554066, 41.638157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346127, 34.576801, 41.717388>,  <34.721794, 34.614693, 41.849438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346127, 34.576801, 41.717388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286472, 0.314129, -0.905128,
		0.189440, -0.944643, -0.267885,
		-0.939173, -0.094725, -0.330123,
		34.064373, 34.548382, 41.618351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280296, 34.289055, 41.687298>,  <34.721794, 34.614693, 41.849438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280296, 34.289055, 41.687298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621845, 34.471760, 41.787106>,  <35.826775, 34.581383, 41.846989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621845, 34.471760, 41.787106>,  <35.280296, 34.289055, 41.687298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621845, 34.471760, 41.787106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069937, -0.374366, 0.924640,
		0.515756, -0.806978, -0.287717,
		0.853876, 0.456767, 0.249519,
		35.878010, 34.608791, 41.861961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706165, 33.812305, 42.012295>,  <35.280296, 34.289055, 41.687298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706165, 33.812305, 42.012295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890358, 34.149975, 42.122082>,  <36.000874, 34.352577, 42.187954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890358, 34.149975, 42.122082>,  <35.706165, 33.812305, 42.012295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890358, 34.149975, 42.122082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063048, -0.339521, 0.938483,
		0.885429, -0.414847, -0.209566,
		0.460479, 0.844173, 0.274467,
		36.028503, 34.403225, 42.204422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501587, 33.621368, 42.219482>,  <35.706165, 33.812305, 42.012295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501587, 33.621368, 42.219482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385513, 33.963253, 42.391651>,  <36.315868, 34.168385, 42.494953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385513, 33.963253, 42.391651>,  <36.501587, 33.621368, 42.219482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385513, 33.963253, 42.391651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211994, -0.381185, 0.899865,
		0.933194, 0.352375, -0.070579,
		-0.290186, 0.854711, 0.430421,
		36.298458, 34.219666, 42.520779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976234, 33.596668, 42.739956>,  <36.501587, 33.621368, 42.219482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976234, 33.596668, 42.739956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688629, 33.849648, 42.855213>,  <36.516068, 34.001434, 42.924370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688629, 33.849648, 42.855213>,  <36.976234, 33.596668, 42.739956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688629, 33.849648, 42.855213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197699, -0.211349, 0.957208,
		0.666286, 0.745210, 0.026928,
		-0.719012, 0.632450, 0.288146,
		36.472927, 34.039383, 42.941658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303478, 33.905476, 43.248684>,  <36.976234, 33.596668, 42.739956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303478, 33.905476, 43.248684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912334, 33.957653, 43.314125>,  <36.677647, 33.988960, 43.353390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.912334, 33.957653, 43.314125>,  <37.303478, 33.905476, 43.248684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912334, 33.957653, 43.314125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134568, -0.206688, 0.969109,
		0.160234, 0.969672, 0.184558,
		-0.977863, 0.130448, 0.163605,
		36.618977, 33.996788, 43.363205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291664, 34.263088, 43.883804>,  <37.303478, 33.905476, 43.248684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291664, 34.263088, 43.883804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.936550, 34.082661, 43.847210>,  <36.723480, 33.974403, 43.825253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.936550, 34.082661, 43.847210>,  <37.291664, 34.263088, 43.883804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936550, 34.082661, 43.847210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118348, -0.415820, 0.901714,
		-0.444780, 0.789701, 0.422543,
		-0.887786, -0.451071, -0.091489,
		36.670216, 33.947338, 43.819763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984463, 34.408463, 44.526134>,  <37.291664, 34.263088, 43.883804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984463, 34.408463, 44.526134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758904, 34.112041, 44.380337>,  <36.623566, 33.934189, 44.292858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758904, 34.112041, 44.380337>,  <36.984463, 34.408463, 44.526134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758904, 34.112041, 44.380337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104170, -0.374010, 0.921556,
		-0.819245, 0.557637, 0.133710,
		-0.563902, -0.741052, -0.364495,
		36.589733, 33.889725, 44.270988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299030, 34.393623, 44.876789>,  <36.984463, 34.408463, 44.526134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299030, 34.393623, 44.876789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340744, 34.037899, 44.698685>,  <36.365772, 33.824467, 44.591824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.340744, 34.037899, 44.698685>,  <36.299030, 34.393623, 44.876789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340744, 34.037899, 44.698685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268063, -0.456265, 0.848507,
		-0.957740, 0.030868, -0.285973,
		0.104288, -0.889308, -0.445258,
		36.372032, 33.771107, 44.565105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795025, 34.061077, 45.136002>,  <36.299030, 34.393623, 44.876789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795025, 34.061077, 45.136002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010956, 33.746517, 45.015896>,  <36.140514, 33.557781, 44.943832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010956, 33.746517, 45.015896>,  <35.795025, 34.061077, 45.136002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010956, 33.746517, 45.015896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293881, -0.510325, 0.808210,
		-0.788811, -0.348050, -0.506595,
		0.539826, -0.786403, -0.300264,
		36.172905, 33.510597, 44.925816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341118, 33.503342, 45.252911>,  <35.795025, 34.061077, 45.136002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341118, 33.503342, 45.252911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704910, 33.337090, 45.248924>,  <35.923183, 33.237339, 45.246532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.704910, 33.337090, 45.248924>,  <35.341118, 33.503342, 45.252911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704910, 33.337090, 45.248924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293457, -0.658740, 0.692781,
		-0.294508, -0.627144, -0.721079,
		0.909477, -0.415635, -0.009964,
		35.977753, 33.212399, 45.245934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229118, 32.779831, 45.243046>,  <35.341118, 33.503342, 45.252911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229118, 32.779831, 45.243046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606522, 32.811852, 45.371658>,  <35.832962, 32.831062, 45.448826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606522, 32.811852, 45.371658>,  <35.229118, 32.779831, 45.243046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606522, 32.811852, 45.371658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124831, -0.813007, 0.568714,
		0.306933, -0.576724, -0.757087,
		0.943509, 0.080049, 0.321532,
		35.889576, 32.835865, 45.468117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518513, 32.172394, 45.131611>,  <35.229118, 32.779831, 45.243046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518513, 32.172394, 45.131611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737072, 32.321877, 45.431423>,  <35.868206, 32.411568, 45.611309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.737072, 32.321877, 45.431423>,  <35.518513, 32.172394, 45.131611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737072, 32.321877, 45.431423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214258, -0.802779, 0.556453,
		0.809658, -0.464636, -0.358564,
		0.546396, 0.373711, 0.749528,
		35.900990, 32.433990, 45.656281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022804, 31.670383, 45.322266>,  <35.518513, 32.172394, 45.131611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022804, 31.670383, 45.322266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933445, 31.928837, 45.614185>,  <35.879829, 32.083908, 45.789337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933445, 31.928837, 45.614185>,  <36.022804, 31.670383, 45.322266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933445, 31.928837, 45.614185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211022, -0.763024, 0.610953,
		0.951612, -0.017520, 0.306804,
		-0.223395, 0.646132, 0.729800,
		35.866428, 32.122677, 45.833126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346214, 31.372370, 45.930828>,  <36.022804, 31.670383, 45.322266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346214, 31.372370, 45.930828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084858, 31.625645, 46.096794>,  <35.928043, 31.777609, 46.196373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084858, 31.625645, 46.096794>,  <36.346214, 31.372370, 45.930828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084858, 31.625645, 46.096794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141944, -0.640844, 0.754434,
		0.743595, 0.434045, 0.508598,
		-0.653390, 0.633186, 0.414918,
		35.888840, 31.815601, 46.221268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037594, 31.415316, 46.152283>,  <36.346214, 31.372370, 45.930828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037594, 31.415316, 46.152283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245136, 31.113297, 45.991940>,  <37.369663, 30.932085, 45.895733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245136, 31.113297, 45.991940>,  <37.037594, 31.415316, 46.152283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245136, 31.113297, 45.991940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090947, 0.515014, -0.852343,
		0.850007, 0.405790, 0.335890,
		0.518861, -0.755046, -0.400860,
		37.400795, 30.886784, 45.871681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651085, 31.663654, 45.958496>,  <37.037594, 31.415316, 46.152283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651085, 31.663654, 45.958496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598747, 31.345175, 45.722210>,  <37.567345, 31.154087, 45.580437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598747, 31.345175, 45.722210>,  <37.651085, 31.663654, 45.958496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598747, 31.345175, 45.722210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206924, 0.560786, -0.801686,
		0.969568, -0.227130, 0.091376,
		-0.130844, -0.796198, -0.590719,
		37.559494, 31.106316, 45.544994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126690, 31.677067, 45.491402>,  <37.651085, 31.663654, 45.958496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126690, 31.677067, 45.491402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886089, 31.419964, 45.301643>,  <37.741730, 31.265701, 45.187786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886089, 31.419964, 45.301643>,  <38.126690, 31.677067, 45.491402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886089, 31.419964, 45.301643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250942, 0.411757, -0.876062,
		0.758434, -0.646001, -0.086377,
		-0.601503, -0.642759, -0.474399,
		37.705639, 31.227137, 45.159325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461334, 31.633041, 44.908710>,  <38.126690, 31.677067, 45.491402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461334, 31.633041, 44.908710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115555, 31.447926, 44.830162>,  <37.908089, 31.336857, 44.783031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.115555, 31.447926, 44.830162>,  <38.461334, 31.633041, 44.908710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115555, 31.447926, 44.830162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124298, 0.181736, -0.975460,
		0.487120, -0.867640, -0.099577,
		-0.864445, -0.462789, -0.196373,
		37.856220, 31.309090, 44.771252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553669, 30.979113, 44.483929>,  <38.461334, 31.633041, 44.908710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553669, 30.979113, 44.483929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.196178, 31.143585, 44.412170>,  <37.981686, 31.242270, 44.369114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.196178, 31.143585, 44.412170>,  <38.553669, 30.979113, 44.483929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196178, 31.143585, 44.412170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217586, 0.047606, -0.974880,
		-0.392313, -0.910310, -0.132014,
		-0.893727, 0.411182, -0.179394,
		37.928059, 31.266939, 44.358353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379345, 30.706438, 43.812031>,  <38.553669, 30.979113, 44.483929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379345, 30.706438, 43.812031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108688, 30.997908, 43.854343>,  <37.946293, 31.172789, 43.879730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108688, 30.997908, 43.854343>,  <38.379345, 30.706438, 43.812031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108688, 30.997908, 43.854343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104651, 0.237384, -0.965762,
		-0.728836, -0.642406, -0.236881,
		-0.676644, 0.728672, 0.105786,
		37.905697, 31.216509, 43.886078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868996, 30.631746, 43.193886>,  <38.379345, 30.706438, 43.812031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868996, 30.631746, 43.193886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850754, 31.000570, 43.347626>,  <37.839809, 31.221865, 43.439869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850754, 31.000570, 43.347626>,  <37.868996, 30.631746, 43.193886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850754, 31.000570, 43.347626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015505, 0.384050, -0.923182,
		-0.998839, -0.048059, -0.003217,
		-0.045603, 0.922060, 0.384350,
		37.837074, 31.277189, 43.462929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229885, 31.035328, 42.846165>,  <37.868996, 30.631746, 43.193886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229885, 31.035328, 42.846165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531296, 31.259031, 42.984402>,  <37.712143, 31.393253, 43.067345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531296, 31.259031, 42.984402>,  <37.229885, 31.035328, 42.846165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531296, 31.259031, 42.984402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128968, 0.389711, -0.911862,
		-0.644645, 0.731681, 0.221531,
		0.753525, 0.559257, 0.345589,
		37.757355, 31.426809, 43.088078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045555, 31.734522, 42.587116>,  <37.229885, 31.035328, 42.846165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045555, 31.734522, 42.587116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.438759, 31.779184, 42.645393>,  <37.674683, 31.805983, 42.680359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.438759, 31.779184, 42.645393>,  <37.045555, 31.734522, 42.587116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438759, 31.779184, 42.645393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050553, 0.598328, -0.799655,
		-0.176456, 0.793434, 0.582517,
		0.983009, 0.111656, 0.145689,
		37.733662, 31.812681, 42.689098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260979, 32.396297, 42.313366>,  <37.045555, 31.734522, 42.587116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260979, 32.396297, 42.313366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608318, 32.201447, 42.350601>,  <37.816723, 32.084534, 42.372944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608318, 32.201447, 42.350601>,  <37.260979, 32.396297, 42.313366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608318, 32.201447, 42.350601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364708, 0.500019, -0.785474,
		0.336080, 0.716021, 0.611853,
		0.868354, -0.487130, 0.093092,
		37.868824, 32.055309, 42.378529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716824, 32.889786, 42.228340>,  <37.260979, 32.396297, 42.313366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716824, 32.889786, 42.228340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914211, 32.552719, 42.142181>,  <38.032642, 32.350479, 42.090485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914211, 32.552719, 42.142181>,  <37.716824, 32.889786, 42.228340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914211, 32.552719, 42.142181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109680, 0.305965, -0.945703,
		0.862821, 0.443048, 0.243408,
		0.493467, -0.842670, -0.215400,
		38.062252, 32.299919, 42.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213173, 33.206913, 41.879620>,  <37.716824, 32.889786, 42.228340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213173, 33.206913, 41.879620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228527, 32.820553, 41.777203>,  <38.237740, 32.588737, 41.715752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228527, 32.820553, 41.777203>,  <38.213173, 33.206913, 41.879620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228527, 32.820553, 41.777203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332918, 0.253953, -0.908115,
		0.942174, -0.050386, 0.331314,
		0.038382, -0.965903, -0.256043,
		38.240040, 32.530781, 41.700390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873810, 33.076607, 41.601528>,  <38.213173, 33.206913, 41.879620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873810, 33.076607, 41.601528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663387, 32.766739, 41.461155>,  <38.537136, 32.580818, 41.376930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.663387, 32.766739, 41.461155>,  <38.873810, 33.076607, 41.601528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663387, 32.766739, 41.461155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244625, 0.257377, -0.934835,
		0.814510, -0.577620, 0.054109,
		-0.526053, -0.774669, -0.350937,
		38.505573, 32.534340, 41.355873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344265, 32.768047, 41.146824>,  <38.873810, 33.076607, 41.601528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344265, 32.768047, 41.146824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.966621, 32.675858, 41.052547>,  <38.740036, 32.620544, 40.995983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.966621, 32.675858, 41.052547>,  <39.344265, 32.768047, 41.146824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966621, 32.675858, 41.052547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082001, 0.528309, -0.845083,
		0.319284, -0.817173, -0.479880,
		-0.944104, -0.230471, -0.235690,
		38.683392, 32.606716, 40.981842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.069628, 45.275688, 33.840034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.097273, 45.167053, 33.456062>,  <26.113861, 45.101871, 33.225681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.097273, 45.167053, 33.456062>,  <26.069628, 45.275688, 33.840034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097273, 45.167053, 33.456062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152791, -0.953758, 0.258844,
		-0.985839, 0.128779, -0.107415,
		0.069115, -0.271591, -0.959928,
		26.118008, 45.085575, 33.168083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556847, 44.778095, 33.834305>,  <26.069628, 45.275688, 33.840034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556847, 44.778095, 33.834305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801311, 44.675308, 33.534855>,  <25.947990, 44.613636, 33.355183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.801311, 44.675308, 33.534855>,  <25.556847, 44.778095, 33.834305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801311, 44.675308, 33.534855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043392, -0.955285, 0.292484,
		-0.790313, -0.146271, -0.594987,
		0.611165, -0.256972, -0.748628,
		25.984661, 44.598217, 33.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397257, 44.123070, 33.777279>,  <25.556847, 44.778095, 33.834305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397257, 44.123070, 33.777279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717270, 44.100529, 33.538357>,  <25.909277, 44.087002, 33.395004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717270, 44.100529, 33.538357>,  <25.397257, 44.123070, 33.777279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717270, 44.100529, 33.538357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020000, -0.992520, 0.120433,
		-0.599623, -0.108296, -0.792922,
		0.800033, -0.056356, -0.597304,
		25.957279, 44.083622, 33.359165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234800, 43.560314, 33.321293>,  <25.397257, 44.123070, 33.777279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234800, 43.560314, 33.321293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631367, 43.604034, 33.349983>,  <25.869307, 43.630268, 33.367199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631367, 43.604034, 33.349983>,  <25.234800, 43.560314, 33.321293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631367, 43.604034, 33.349983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092434, -0.974029, 0.206697,
		0.092459, -0.198293, -0.975772,
		0.991417, 0.109305, 0.071729,
		25.928791, 43.636826, 33.371502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582232, 43.144539, 32.800961>,  <25.234800, 43.560314, 33.321293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582232, 43.144539, 32.800961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.821505, 43.209702, 33.114811>,  <25.965069, 43.248798, 33.303120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.821505, 43.209702, 33.114811>,  <25.582232, 43.144539, 32.800961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821505, 43.209702, 33.114811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154804, -0.984168, 0.086314,
		0.786265, 0.069832, -0.613931,
		0.598183, 0.162904, 0.784627,
		26.000959, 43.258572, 33.350201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162258, 42.738235, 32.716671>,  <25.582232, 43.144539, 32.800961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162258, 42.738235, 32.716671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.178749, 42.829636, 33.105740>,  <26.188644, 42.884476, 33.339180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.178749, 42.829636, 33.105740>,  <26.162258, 42.738235, 32.716671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178749, 42.829636, 33.105740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215986, -0.952518, 0.214613,
		0.975526, 0.201235, -0.088623,
		0.041227, 0.228502, 0.972670,
		26.191118, 42.898186, 33.397541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700190, 42.428486, 32.903858>,  <26.162258, 42.738235, 32.716671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700190, 42.428486, 32.903858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528532, 42.494389, 33.259090>,  <26.425537, 42.533932, 33.472229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528532, 42.494389, 33.259090>,  <26.700190, 42.428486, 32.903858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528532, 42.494389, 33.259090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348916, -0.876660, 0.331247,
		0.833122, 0.452019, 0.318728,
		-0.429146, 0.164760, 0.888081,
		26.399788, 42.543816, 33.525517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192682, 42.196682, 33.415192>,  <26.700190, 42.428486, 32.903858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192682, 42.196682, 33.415192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862398, 42.191750, 33.640774>,  <26.664227, 42.188789, 33.776123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862398, 42.191750, 33.640774>,  <27.192682, 42.196682, 33.415192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862398, 42.191750, 33.640774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382470, -0.747099, 0.543654,
		0.414630, 0.664599, 0.621603,
		-0.825711, -0.012329, 0.563958,
		26.614685, 42.188049, 33.809959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368628, 42.134407, 34.031376>,  <27.192682, 42.196682, 33.415192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368628, 42.134407, 34.031376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986240, 42.024155, 34.071671>,  <26.756807, 41.958004, 34.095848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.986240, 42.024155, 34.071671>,  <27.368628, 42.134407, 34.031376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986240, 42.024155, 34.071671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291490, -0.852055, 0.434783,
		-0.034005, 0.445004, 0.894883,
		-0.955969, -0.275634, 0.100740,
		26.699450, 41.941463, 34.101894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292000, 41.791145, 34.716022>,  <27.368628, 42.134407, 34.031376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292000, 41.791145, 34.716022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.978441, 41.658852, 34.505833>,  <26.790306, 41.579475, 34.379719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.978441, 41.658852, 34.505833>,  <27.292000, 41.791145, 34.716022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978441, 41.658852, 34.505833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081393, -0.784280, 0.615045,
		-0.615534, 0.524901, 0.587875,
		-0.783896, -0.330733, -0.525474,
		26.743273, 41.559631, 34.348190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778315, 41.655483, 35.250694>,  <27.292000, 41.791145, 34.716022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778315, 41.655483, 35.250694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722281, 41.433395, 34.922764>,  <26.688660, 41.300144, 34.726006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.722281, 41.433395, 34.922764>,  <26.778315, 41.655483, 35.250694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722281, 41.433395, 34.922764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091544, -0.831704, 0.547621,
		-0.985899, 0.001662, 0.167334,
		-0.140083, -0.555217, -0.819823,
		26.680256, 41.266830, 34.676815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388325, 40.988342, 35.437916>,  <26.778315, 41.655483, 35.250694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388325, 40.988342, 35.437916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.539606, 40.907806, 35.076492>,  <26.630375, 40.859486, 34.859638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.539606, 40.907806, 35.076492>,  <26.388325, 40.988342, 35.437916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539606, 40.907806, 35.076492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127590, -0.955409, 0.266297,
		-0.916887, -0.216001, -0.335653,
		0.378206, -0.201338, -0.903561,
		26.653067, 40.847404, 34.805424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076170, 40.414356, 35.215652>,  <26.388325, 40.988342, 35.437916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076170, 40.414356, 35.215652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390104, 40.421234, 34.967869>,  <26.578465, 40.425362, 34.819199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.390104, 40.421234, 34.967869>,  <26.076170, 40.414356, 35.215652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390104, 40.421234, 34.967869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072178, -0.995348, 0.063822,
		-0.615483, -0.094802, -0.782428,
		0.784838, 0.017193, -0.619462,
		26.625555, 40.426392, 34.782028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.953308, 39.940529, 34.789143>,  <26.076170, 40.414356, 35.215652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.953308, 39.940529, 34.789143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350719, 39.960560, 34.748356>,  <26.589167, 39.972580, 34.723885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.350719, 39.960560, 34.748356>,  <25.953308, 39.940529, 34.789143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350719, 39.960560, 34.748356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050760, -0.998702, 0.004127,
		-0.101631, -0.009276, -0.994779,
		0.993526, 0.050076, -0.101970,
		26.648777, 39.975582, 34.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225754, 39.365360, 34.488182>,  <25.953308, 39.940529, 34.789143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225754, 39.365360, 34.488182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584564, 39.484482, 34.618813>,  <26.799850, 39.555954, 34.697193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584564, 39.484482, 34.618813>,  <26.225754, 39.365360, 34.488182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584564, 39.484482, 34.618813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318395, -0.947904, -0.010162,
		0.306539, 0.113097, -0.945115,
		0.897028, 0.297805, 0.326579,
		26.853672, 39.573822, 34.716785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767830, 38.989994, 34.088451>,  <26.225754, 39.365360, 34.488182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767830, 38.989994, 34.088451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965755, 39.115849, 34.412468>,  <27.084511, 39.191360, 34.606876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965755, 39.115849, 34.412468>,  <26.767830, 38.989994, 34.088451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965755, 39.115849, 34.412468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493555, -0.868968, 0.036036,
		0.715236, 0.381967, -0.585268,
		0.494814, 0.314636, 0.810039,
		27.114201, 39.210239, 34.655479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358555, 38.725956, 34.025227>,  <26.767830, 38.989994, 34.088451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358555, 38.725956, 34.025227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377165, 38.804676, 34.416962>,  <27.388330, 38.851910, 34.652004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.377165, 38.804676, 34.416962>,  <27.358555, 38.725956, 34.025227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377165, 38.804676, 34.416962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344894, -0.923275, 0.169150,
		0.937488, 0.329898, -0.110832,
		0.046526, 0.196801, 0.979339,
		27.391123, 38.863716, 34.710762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068258, 38.622978, 34.245174>,  <27.358555, 38.725956, 34.025227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068258, 38.622978, 34.245174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.844427, 38.609348, 34.576405>,  <27.710129, 38.601170, 34.775143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.844427, 38.609348, 34.576405>,  <28.068258, 38.622978, 34.245174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844427, 38.609348, 34.576405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289247, -0.944358, 0.156604,
		0.776667, 0.327151, 0.538295,
		-0.559576, -0.034071, 0.828078,
		27.676554, 38.599129, 34.824829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494341, 38.250557, 34.570457>,  <28.068258, 38.622978, 34.245174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494341, 38.250557, 34.570457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154961, 38.203110, 34.776783>,  <27.951332, 38.174641, 34.900578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154961, 38.203110, 34.776783>,  <28.494341, 38.250557, 34.570457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154961, 38.203110, 34.776783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249736, -0.948974, 0.192561,
		0.466648, 0.292195, 0.834782,
		-0.848452, -0.118617, 0.515809,
		27.900425, 38.167526, 34.931526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627062, 37.985332, 35.288517>,  <28.494341, 38.250557, 34.570457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627062, 37.985332, 35.288517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256262, 37.888603, 35.173843>,  <28.033781, 37.830566, 35.105038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.256262, 37.888603, 35.173843>,  <28.627062, 37.985332, 35.288517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.256262, 37.888603, 35.173843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153809, -0.942257, 0.297481,
		-0.342068, 0.231670, 0.910669,
		-0.927002, -0.241828, -0.286683,
		27.978161, 37.816055, 35.087837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230143, 38.310730, 35.069118>,  <28.627062, 37.985332, 35.288517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230143, 38.310730, 35.069118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618883, 38.399349, 35.037064>,  <29.852127, 38.452518, 35.017830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618883, 38.399349, 35.037064>,  <29.230143, 38.310730, 35.069118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618883, 38.399349, 35.037064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233814, 0.948714, -0.212775,
		0.028886, 0.225522, 0.973809,
		0.971852, 0.221544, -0.080135,
		29.910439, 38.465813, 35.013023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315678, 39.072411, 35.437145>,  <29.230143, 38.310730, 35.069118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315678, 39.072411, 35.437145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642920, 38.998623, 35.219273>,  <29.839264, 38.954350, 35.088551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.642920, 38.998623, 35.219273>,  <29.315678, 39.072411, 35.437145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642920, 38.998623, 35.219273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159312, 0.982785, -0.093558,
		0.552561, -0.010234, 0.833410,
		0.818105, -0.184469, -0.544679,
		29.888351, 38.943283, 35.055870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802822, 39.379581, 35.829479>,  <29.315678, 39.072411, 35.437145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802822, 39.379581, 35.829479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.941208, 39.344521, 35.455822>,  <30.024239, 39.323486, 35.231628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.941208, 39.344521, 35.455822>,  <29.802822, 39.379581, 35.829479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941208, 39.344521, 35.455822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032452, 0.993913, -0.105276,
		0.937686, 0.066737, 0.341015,
		0.345965, -0.087649, -0.934144,
		30.044998, 39.318226, 35.175579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437424, 39.685913, 35.732933>,  <29.802822, 39.379581, 35.829479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437424, 39.685913, 35.732933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307915, 39.699043, 35.354706>,  <30.230209, 39.706921, 35.127769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307915, 39.699043, 35.354706>,  <30.437424, 39.685913, 35.732933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307915, 39.699043, 35.354706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040809, 0.998952, 0.020709,
		0.945253, -0.031882, -0.324775,
		-0.323774, 0.032829, -0.945565,
		30.210783, 39.708893, 35.071037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778048, 40.298309, 35.365898>,  <30.437424, 39.685913, 35.732933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778048, 40.298309, 35.365898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443958, 40.225063, 35.158485>,  <30.243505, 40.181118, 35.034039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.443958, 40.225063, 35.158485>,  <30.778048, 40.298309, 35.365898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443958, 40.225063, 35.158485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148552, 0.983006, -0.107854,
		0.529468, -0.013053, -0.848229,
		-0.835222, -0.183111, -0.518531,
		30.193392, 40.170132, 35.002926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826796, 40.602829, 34.705570>,  <30.778048, 40.298309, 35.365898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826796, 40.602829, 34.705570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435688, 40.519981, 34.718674>,  <30.201023, 40.470272, 34.726536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435688, 40.519981, 34.718674>,  <30.826796, 40.602829, 34.705570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435688, 40.519981, 34.718674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209217, 0.953105, -0.218673,
		0.014071, -0.220665, -0.975248,
		-0.977768, -0.207115, 0.032755,
		30.142357, 40.457848, 34.728500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497673, 40.887615, 34.111725>,  <30.826796, 40.602829, 34.705570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497673, 40.887615, 34.111725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216818, 40.856297, 34.394814>,  <30.048304, 40.837505, 34.564667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216818, 40.856297, 34.394814>,  <30.497673, 40.887615, 34.111725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216818, 40.856297, 34.394814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254517, 0.955867, -0.146763,
		-0.664998, -0.283175, -0.691079,
		-0.702139, -0.078294, 0.707722,
		30.006176, 40.832809, 34.607132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863136, 41.133461, 33.706215>,  <30.497673, 40.887615, 34.111725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863136, 41.133461, 33.706215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769884, 41.155216, 34.094585>,  <29.713932, 41.168270, 34.327606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769884, 41.155216, 34.094585>,  <29.863136, 41.133461, 33.706215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769884, 41.155216, 34.094585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397976, 0.905657, -0.146291,
		-0.887280, -0.420509, -0.189492,
		-0.233131, 0.054388, 0.970923,
		29.699945, 41.171532, 34.385864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220596, 41.363033, 33.701385>,  <29.863136, 41.133461, 33.706215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220596, 41.363033, 33.701385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360096, 41.446072, 34.066959>,  <29.443796, 41.495895, 34.286304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360096, 41.446072, 34.066959>,  <29.220596, 41.363033, 33.701385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360096, 41.446072, 34.066959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362776, 0.929045, -0.072591,
		-0.864157, -0.306237, 0.399314,
		0.348751, 0.207592, 0.913936,
		29.464722, 41.508350, 34.341141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652594, 41.728477, 33.972065>,  <29.220596, 41.363033, 33.701385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652594, 41.728477, 33.972065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968927, 41.821815, 34.198387>,  <29.158728, 41.877819, 34.334179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968927, 41.821815, 34.198387>,  <28.652594, 41.728477, 33.972065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968927, 41.821815, 34.198387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356140, 0.927283, 0.115368,
		-0.497738, -0.292742, 0.816431,
		0.790835, 0.233341, 0.565801,
		29.206179, 41.891819, 34.368126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339424, 42.193596, 34.475361>,  <28.652594, 41.728477, 33.972065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339424, 42.193596, 34.475361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731752, 42.261478, 34.437004>,  <28.967150, 42.302208, 34.413990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731752, 42.261478, 34.437004>,  <28.339424, 42.193596, 34.475361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731752, 42.261478, 34.437004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140745, 0.956929, 0.253926,
		0.134850, -0.235559, 0.962459,
		0.980819, 0.169704, -0.095888,
		29.025999, 42.312389, 34.408237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469017, 42.653374, 34.958275>,  <28.339424, 42.193596, 34.475361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469017, 42.653374, 34.958275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784512, 42.665775, 34.712696>,  <28.973808, 42.673218, 34.565350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.784512, 42.665775, 34.712696>,  <28.469017, 42.653374, 34.958275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784512, 42.665775, 34.712696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062662, 0.989470, 0.130470,
		0.611530, -0.141378, 0.778488,
		0.788736, 0.031005, -0.613949,
		29.021132, 42.675076, 34.528511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893164, 43.063293, 35.281078>,  <28.469017, 42.653374, 34.958275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893164, 43.063293, 35.281078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035387, 43.069275, 34.907265>,  <29.120720, 43.072865, 34.682976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035387, 43.069275, 34.907265>,  <28.893164, 43.063293, 35.281078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035387, 43.069275, 34.907265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220379, 0.970339, 0.099377,
		0.908301, -0.241286, 0.341715,
		0.355558, 0.014957, -0.934535,
		29.142054, 43.073761, 34.626904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609152, 43.317528, 35.276722>,  <28.893164, 43.063293, 35.281078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609152, 43.317528, 35.276722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444321, 43.398254, 34.921314>,  <29.345423, 43.446690, 34.708069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444321, 43.398254, 34.921314>,  <29.609152, 43.317528, 35.276722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444321, 43.398254, 34.921314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214985, 0.969164, 0.120429,
		0.885423, -0.141391, -0.442759,
		-0.412079, 0.201817, -0.888516,
		29.320698, 43.458801, 34.654758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592157, 43.989361, 35.237011>,  <29.609152, 43.317528, 35.276722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592157, 43.989361, 35.237011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455589, 43.965210, 34.861824>,  <29.373648, 43.950722, 34.636711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455589, 43.965210, 34.861824>,  <29.592157, 43.989361, 35.237011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455589, 43.965210, 34.861824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022590, 0.998174, -0.056025,
		0.939639, 0.002061, -0.342161,
		-0.341421, -0.060373, -0.937970,
		29.353163, 43.947098, 34.580433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006012, 44.434624, 34.830631>,  <29.592157, 43.989361, 35.237011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006012, 44.434624, 34.830631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633955, 44.393116, 34.689735>,  <29.410721, 44.368214, 34.605198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.633955, 44.393116, 34.689735>,  <30.006012, 44.434624, 34.830631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633955, 44.393116, 34.689735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122170, 0.992045, 0.030362,
		0.346286, 0.071274, -0.935417,
		-0.930140, -0.103766, -0.352239,
		29.354914, 44.361988, 34.584064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003668, 45.006508, 34.511143>,  <30.006012, 44.434624, 34.830631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003668, 45.006508, 34.511143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612009, 44.925537, 34.504314>,  <29.377014, 44.876953, 34.500217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.612009, 44.925537, 34.504314>,  <30.003668, 45.006508, 34.511143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612009, 44.925537, 34.504314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200482, 0.976457, -0.079617,
		0.032785, -0.074535, -0.996679,
		-0.979149, -0.202427, -0.017070,
		29.318264, 44.864811, 34.499195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731997, 45.404865, 34.011253>,  <30.003668, 45.006508, 34.511143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731997, 45.404865, 34.011253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431047, 45.312458, 34.258015>,  <29.250479, 45.257011, 34.406071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431047, 45.312458, 34.258015>,  <29.731997, 45.404865, 34.011253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431047, 45.312458, 34.258015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395425, 0.907384, -0.142457,
		-0.526855, -0.351118, -0.774041,
		-0.752372, -0.231021, 0.616900,
		29.205336, 45.243153, 34.443085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263086, 45.883366, 33.780495>,  <29.731997, 45.404865, 34.011253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263086, 45.883366, 33.780495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121300, 45.740921, 34.126335>,  <29.036228, 45.655453, 34.333839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121300, 45.740921, 34.126335>,  <29.263086, 45.883366, 33.780495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121300, 45.740921, 34.126335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435300, 0.881181, 0.184481,
		-0.827566, -0.310968, -0.467368,
		-0.354468, -0.356116, 0.864601,
		29.014959, 45.634087, 34.385715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566774, 45.967949, 33.752972>,  <29.263086, 45.883366, 33.780495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566774, 45.967949, 33.752972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656494, 45.934322, 34.141327>,  <28.710327, 45.914146, 34.374340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656494, 45.934322, 34.141327>,  <28.566774, 45.967949, 33.752972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656494, 45.934322, 34.141327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496175, 0.847619, 0.188025,
		-0.838749, -0.523904, 0.148409,
		0.224301, -0.084069, 0.970887,
		28.723785, 45.909103, 34.432594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012756, 46.233807, 34.137604>,  <28.566774, 45.967949, 33.752972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012756, 46.233807, 34.137604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293352, 46.238224, 34.422642>,  <28.461710, 46.240875, 34.593666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293352, 46.238224, 34.422642>,  <28.012756, 46.233807, 34.137604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293352, 46.238224, 34.422642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280792, 0.923284, 0.262114,
		-0.655032, -0.383960, 0.650774,
		0.701490, 0.011039, 0.712594,
		28.503799, 46.241535, 34.636421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615246, 46.373299, 34.762745>,  <28.012756, 46.233807, 34.137604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615246, 46.373299, 34.762745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.000574, 46.479412, 34.778942>,  <28.231771, 46.543079, 34.788662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.000574, 46.479412, 34.778942>,  <27.615246, 46.373299, 34.762745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000574, 46.479412, 34.778942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268330, 0.954398, 0.130860,
		-0.003933, -0.136926, 0.990574,
		0.963319, 0.265286, 0.040495,
		28.289570, 46.558998, 34.791092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.617653, 27.653366, 43.947937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234207, 27.570717, 44.026283>,  <37.004139, 27.521128, 44.073292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234207, 27.570717, 44.026283>,  <37.617653, 27.653366, 43.947937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234207, 27.570717, 44.026283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282879, -0.613497, 0.737293,
		-0.032180, 0.762187, 0.646557,
		-0.958616, -0.206623, 0.195864,
		36.946621, 27.508730, 44.085041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585648, 27.598764, 44.610966>,  <37.617653, 27.653366, 43.947937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585648, 27.598764, 44.610966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236530, 27.421619, 44.528893>,  <37.027058, 27.315332, 44.479649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.236530, 27.421619, 44.528893>,  <37.585648, 27.598764, 44.610966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236530, 27.421619, 44.528893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099669, -0.573241, 0.813303,
		-0.477798, 0.689398, 0.544462,
		-0.872797, -0.442861, -0.205182,
		36.974689, 27.288761, 44.467339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233486, 27.636883, 45.262718>,  <37.585648, 27.598764, 44.610966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233486, 27.636883, 45.262718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059261, 27.353220, 45.040951>,  <36.954727, 27.183022, 44.907890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.059261, 27.353220, 45.040951>,  <37.233486, 27.636883, 45.262718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059261, 27.353220, 45.040951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030236, -0.627091, 0.778359,
		-0.899649, 0.322264, 0.294582,
		-0.435566, -0.709157, -0.554417,
		36.928593, 27.140472, 44.874626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622795, 27.419514, 45.652382>,  <37.233486, 27.636883, 45.262718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622795, 27.419514, 45.652382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712872, 27.127031, 45.394814>,  <36.766918, 26.951542, 45.240273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.712872, 27.127031, 45.394814>,  <36.622795, 27.419514, 45.652382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712872, 27.127031, 45.394814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018231, -0.663939, 0.747565,
		-0.974144, -0.156607, -0.162845,
		0.225193, -0.731204, -0.643917,
		36.780430, 26.907671, 45.201637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101734, 26.938875, 45.781342>,  <36.622795, 27.419514, 45.652382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101734, 26.938875, 45.781342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381069, 26.709976, 45.609360>,  <36.548672, 26.572638, 45.506172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381069, 26.709976, 45.609360>,  <36.101734, 26.938875, 45.781342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381069, 26.709976, 45.609360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114057, -0.681976, 0.722427,
		-0.706626, -0.455456, -0.541516,
		0.698335, -0.572249, -0.429953,
		36.590572, 26.538301, 45.480373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877789, 26.150274, 45.788940>,  <36.101734, 26.938875, 45.781342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877789, 26.150274, 45.788940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275928, 26.148695, 45.750443>,  <36.514812, 26.147747, 45.727345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.275928, 26.148695, 45.750443>,  <35.877789, 26.150274, 45.788940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275928, 26.148695, 45.750443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061134, -0.746248, 0.662856,
		-0.074437, -0.665657, -0.742536,
		0.995350, -0.003947, -0.096243,
		36.574535, 26.147511, 45.721569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057480, 25.535944, 45.512989>,  <35.877789, 26.150274, 45.788940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057480, 25.535944, 45.512989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368793, 25.680420, 45.718441>,  <36.555584, 25.767105, 45.841713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368793, 25.680420, 45.718441>,  <36.057480, 25.535944, 45.512989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368793, 25.680420, 45.718441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178862, -0.656583, 0.732740,
		0.601896, -0.662150, -0.446407,
		0.778286, 0.361188, 0.513628,
		36.602280, 25.788776, 45.872528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315651, 25.011959, 45.935753>,  <36.057480, 25.535944, 45.512989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315651, 25.011959, 45.935753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528008, 25.302141, 46.110962>,  <36.655422, 25.476252, 46.216087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528008, 25.302141, 46.110962>,  <36.315651, 25.011959, 45.935753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528008, 25.302141, 46.110962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123656, -0.445033, 0.886936,
		0.838370, -0.525031, -0.146557,
		0.530891, 0.725457, 0.438025,
		36.687275, 25.519779, 46.242371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877502, 24.649006, 46.319736>,  <36.315651, 25.011959, 45.935753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877502, 24.649006, 46.319736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790764, 25.005796, 46.478409>,  <36.738720, 25.219870, 46.573612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790764, 25.005796, 46.478409>,  <36.877502, 24.649006, 46.319736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790764, 25.005796, 46.478409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015328, -0.409412, 0.912221,
		0.976085, 0.191734, 0.102453,
		-0.216849, 0.891975, 0.396682,
		36.725708, 25.273390, 46.597412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289886, 24.616293, 46.919018>,  <36.877502, 24.649006, 46.319736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289886, 24.616293, 46.919018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012169, 24.898838, 46.974167>,  <36.845539, 25.068365, 47.007256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.012169, 24.898838, 46.974167>,  <37.289886, 24.616293, 46.919018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012169, 24.898838, 46.974167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010993, -0.201954, 0.979334,
		0.719606, 0.678432, 0.147980,
		-0.694296, 0.706361, 0.137869,
		36.803879, 25.110746, 47.015526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503090, 25.088486, 47.518806>,  <37.289886, 24.616293, 46.919018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503090, 25.088486, 47.518806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105408, 25.128559, 47.503250>,  <36.866798, 25.152603, 47.493916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105408, 25.128559, 47.503250>,  <37.503090, 25.088486, 47.518806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105408, 25.128559, 47.503250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060829, -0.226227, 0.972173,
		0.088597, 0.968909, 0.231011,
		-0.994208, 0.100184, -0.038895,
		36.807144, 25.158615, 47.491581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423660, 25.498512, 48.118645>,  <37.503090, 25.088486, 47.518806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423660, 25.498512, 48.118645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078110, 25.312716, 48.040707>,  <36.870781, 25.201237, 47.993946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.078110, 25.312716, 48.040707>,  <37.423660, 25.498512, 48.118645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078110, 25.312716, 48.040707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105315, -0.211709, 0.971642,
		-0.492571, 0.859898, 0.133972,
		-0.863876, -0.464494, -0.194842,
		36.818947, 25.173367, 47.982254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772972, 25.859745, 48.399170>,  <37.423660, 25.498512, 48.118645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772972, 25.859745, 48.399170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753555, 25.460814, 48.377354>,  <36.741905, 25.221455, 48.364265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753555, 25.460814, 48.377354>,  <36.772972, 25.859745, 48.399170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753555, 25.460814, 48.377354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070693, -0.057897, 0.995816,
		-0.996316, 0.044480, 0.073315,
		-0.048539, -0.997331, -0.054540,
		36.738995, 25.161613, 48.360992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540749, 25.690681, 49.091122>,  <36.772972, 25.859745, 48.399170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540749, 25.690681, 49.091122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421036, 25.968460, 49.352859>,  <36.349209, 26.135128, 49.509903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.421036, 25.968460, 49.352859>,  <36.540749, 25.690681, 49.091122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421036, 25.968460, 49.352859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145251, 0.710948, -0.688081,
		-0.943044, -0.110886, -0.313644,
		-0.299283, 0.694447, 0.654349,
		36.331249, 26.176794, 49.549164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043274, 26.071238, 48.790810>,  <36.540749, 25.690681, 49.091122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043274, 26.071238, 48.790810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241947, 26.301235, 49.050869>,  <36.361149, 26.439234, 49.206905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241947, 26.301235, 49.050869>,  <36.043274, 26.071238, 48.790810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241947, 26.301235, 49.050869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057706, 0.725538, -0.685758,
		-0.866014, 0.378119, 0.327179,
		0.496679, 0.574996, 0.650146,
		36.390949, 26.473734, 49.245914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867813, 26.710169, 48.651783>,  <36.043274, 26.071238, 48.790810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867813, 26.710169, 48.651783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211094, 26.760403, 48.850868>,  <36.417061, 26.790543, 48.970322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.211094, 26.760403, 48.850868>,  <35.867813, 26.710169, 48.651783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211094, 26.760403, 48.850868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185067, 0.828702, -0.528207,
		-0.478794, 0.545418, 0.687950,
		0.858200, 0.125585, 0.497716,
		36.468555, 26.798079, 49.000183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938457, 27.418842, 48.985889>,  <35.867813, 26.710169, 48.651783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938457, 27.418842, 48.985889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316807, 27.291117, 48.962692>,  <36.543816, 27.214481, 48.948772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316807, 27.291117, 48.962692>,  <35.938457, 27.418842, 48.985889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316807, 27.291117, 48.962692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209498, 0.737236, -0.642334,
		0.247861, 0.595417, 0.764227,
		0.945873, -0.319314, -0.057994,
		36.600567, 27.195322, 48.945293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398533, 28.046104, 49.024120>,  <35.938457, 27.418842, 48.985889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398533, 28.046104, 49.024120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666698, 27.792637, 48.869713>,  <36.827599, 27.640556, 48.777069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666698, 27.792637, 48.869713>,  <36.398533, 28.046104, 49.024120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666698, 27.792637, 48.869713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399459, 0.746657, -0.531917,
		0.625286, 0.202403, 0.753692,
		0.670411, -0.633669, -0.386022,
		36.867821, 27.602535, 48.753906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011810, 28.408140, 49.166847>,  <36.398533, 28.046104, 49.024120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011810, 28.408140, 49.166847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063580, 28.147928, 48.867496>,  <37.094639, 27.991802, 48.687885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063580, 28.147928, 48.867496>,  <37.011810, 28.408140, 49.166847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063580, 28.147928, 48.867496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489232, 0.698358, -0.522444,
		0.862498, -0.298513, 0.408641,
		0.129421, -0.650528, -0.748374,
		37.102406, 27.952770, 48.642982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608719, 28.632635, 48.793064>,  <37.011810, 28.408140, 49.166847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608719, 28.632635, 48.793064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469410, 28.375292, 48.520359>,  <37.385822, 28.220886, 48.356735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469410, 28.375292, 48.520359>,  <37.608719, 28.632635, 48.793064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469410, 28.375292, 48.520359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281236, 0.622074, -0.730705,
		0.894210, -0.446220, -0.035716,
		-0.348274, -0.643359, -0.681758,
		37.364929, 28.182283, 48.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141552, 28.455057, 48.262280>,  <37.608719, 28.632635, 48.793064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141552, 28.455057, 48.262280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771999, 28.422337, 48.112743>,  <37.550270, 28.402704, 48.023022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.771999, 28.422337, 48.112743>,  <38.141552, 28.455057, 48.262280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771999, 28.422337, 48.112743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237942, 0.642318, -0.728568,
		0.299724, -0.762060, -0.573960,
		-0.923877, -0.081800, -0.373844,
		37.494835, 28.397797, 48.000591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294888, 28.405191, 47.639160>,  <38.141552, 28.455057, 48.262280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294888, 28.405191, 47.639160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.902615, 28.472328, 47.598972>,  <37.667252, 28.512609, 47.574860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.902615, 28.472328, 47.598972>,  <38.294888, 28.405191, 47.639160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902615, 28.472328, 47.598972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183414, 0.610408, -0.770559,
		-0.068002, -0.774101, -0.629399,
		-0.980681, 0.167840, -0.100473,
		37.608410, 28.522680, 47.568829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191574, 28.486958, 46.929249>,  <38.294888, 28.405191, 47.639160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191574, 28.486958, 46.929249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864685, 28.651770, 47.090431>,  <37.668552, 28.750656, 47.187141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864685, 28.651770, 47.090431>,  <38.191574, 28.486958, 46.929249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864685, 28.651770, 47.090431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013220, 0.685607, -0.727852,
		-0.576168, -0.600145, -0.554848,
		-0.817224, 0.412030, 0.402959,
		37.619518, 28.775379, 47.211319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827705, 28.714382, 46.428394>,  <38.191574, 28.486958, 46.929249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827705, 28.714382, 46.428394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659538, 28.924000, 46.724674>,  <37.558640, 29.049770, 46.902443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659538, 28.924000, 46.724674>,  <37.827705, 28.714382, 46.428394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659538, 28.924000, 46.724674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015161, 0.812174, -0.583218,
		-0.907205, -0.256424, -0.333507,
		-0.420416, 0.524042, 0.740696,
		37.533413, 29.081213, 46.946884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288403, 29.151136, 45.964169>,  <37.827705, 28.714382, 46.428394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288403, 29.151136, 45.964169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308945, 29.305239, 46.332722>,  <37.321270, 29.397699, 46.553852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.308945, 29.305239, 46.332722>,  <37.288403, 29.151136, 45.964169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308945, 29.305239, 46.332722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143087, 0.915917, -0.374997,
		-0.988377, -0.112580, 0.102162,
		0.051355, 0.385256, 0.921380,
		37.324352, 29.420816, 46.609135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705688, 29.528910, 46.033772>,  <37.288403, 29.151136, 45.964169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705688, 29.528910, 46.033772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964176, 29.663008, 46.308002>,  <37.119267, 29.743465, 46.472542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964176, 29.663008, 46.308002>,  <36.705688, 29.528910, 46.033772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964176, 29.663008, 46.308002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030672, 0.909031, -0.415599,
		-0.762538, 0.247538, 0.597713,
		0.646216, 0.335243, 0.685578,
		37.158043, 29.763580, 46.513676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463737, 30.069551, 46.253174>,  <36.705688, 29.528910, 46.033772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463737, 30.069551, 46.253174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.860878, 30.095608, 46.293198>,  <37.099163, 30.111242, 46.317211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.860878, 30.095608, 46.293198>,  <36.463737, 30.069551, 46.253174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860878, 30.095608, 46.293198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004906, 0.815083, -0.579323,
		-0.119294, 0.575670, 0.808933,
		0.992847, 0.065142, 0.100059,
		37.158733, 30.115150, 46.323215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633453, 30.816931, 46.334648>,  <36.463737, 30.069551, 46.253174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633453, 30.816931, 46.334648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982250, 30.665310, 46.210743>,  <37.191528, 30.574337, 46.136402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982250, 30.665310, 46.210743>,  <36.633453, 30.816931, 46.334648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982250, 30.665310, 46.210743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024201, 0.665388, -0.746105,
		0.488921, 0.643101, 0.589387,
		0.871992, -0.379050, -0.309759,
		37.243847, 30.551596, 46.117817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518658, 31.413183, 46.844719>,  <36.633453, 30.816931, 46.334648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518658, 31.413183, 46.844719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149666, 31.553698, 46.780674>,  <35.928272, 31.638006, 46.742249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149666, 31.553698, 46.780674>,  <36.518658, 31.413183, 46.844719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149666, 31.553698, 46.780674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345320, -0.565422, 0.749034,
		0.172595, 0.746255, 0.642895,
		-0.922478, 0.351284, -0.160108,
		35.872921, 31.659082, 46.732643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334999, 31.529182, 47.450371>,  <36.518658, 31.413183, 46.844719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334999, 31.529182, 47.450371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990738, 31.536114, 47.246807>,  <35.784184, 31.540274, 47.124668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990738, 31.536114, 47.246807>,  <36.334999, 31.529182, 47.450371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990738, 31.536114, 47.246807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380641, -0.685740, 0.620382,
		-0.338225, 0.727641, 0.596777,
		-0.860649, 0.017329, -0.508905,
		35.732544, 31.541313, 47.094135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924160, 31.670771, 47.909920>,  <36.334999, 31.529182, 47.450371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924160, 31.670771, 47.909920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734467, 31.493029, 47.605907>,  <35.620651, 31.386383, 47.423500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734467, 31.493029, 47.605907>,  <35.924160, 31.670771, 47.909920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734467, 31.493029, 47.605907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403360, -0.657683, 0.636202,
		-0.782561, 0.608276, 0.132661,
		-0.474236, -0.444357, -0.760031,
		35.592197, 31.359722, 47.377899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227680, 31.628031, 48.117516>,  <35.924160, 31.670771, 47.909920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227680, 31.628031, 48.117516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259312, 31.337072, 47.844856>,  <35.278290, 31.162497, 47.681263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259312, 31.337072, 47.844856>,  <35.227680, 31.628031, 48.117516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259312, 31.337072, 47.844856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370358, -0.656282, 0.657366,
		-0.925517, 0.200469, -0.321294,
		0.079078, -0.727397, -0.681645,
		35.283035, 31.118853, 47.640362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575298, 31.355974, 48.281734>,  <35.227680, 31.628031, 48.117516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575298, 31.355974, 48.281734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802097, 31.095638, 48.079777>,  <34.938175, 30.939436, 47.958603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802097, 31.095638, 48.079777>,  <34.575298, 31.355974, 48.281734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802097, 31.095638, 48.079777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207130, -0.705904, 0.677345,
		-0.797253, -0.279473, -0.535054,
		0.566996, -0.650841, -0.504897,
		34.972198, 30.900387, 47.928307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119690, 30.664503, 48.202179>,  <34.575298, 31.355974, 48.281734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119690, 30.664503, 48.202179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496830, 30.553534, 48.128345>,  <34.723114, 30.486952, 48.084045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.496830, 30.553534, 48.128345>,  <34.119690, 30.664503, 48.202179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496830, 30.553534, 48.128345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149471, -0.847199, 0.509816,
		-0.297817, -0.453089, -0.840247,
		0.942848, -0.277424, -0.184586,
		34.779686, 30.470306, 48.072971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169487, 30.001579, 47.807034>,  <34.119690, 30.664503, 48.202179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169487, 30.001579, 47.807034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499374, 30.052608, 48.027420>,  <34.697308, 30.083227, 48.159653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499374, 30.052608, 48.027420>,  <34.169487, 30.001579, 47.807034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499374, 30.052608, 48.027420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187479, -0.857462, 0.479176,
		0.533562, -0.498481, -0.683248,
		0.824720, 0.127575, 0.550964,
		34.746792, 30.090881, 48.192711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791512, 29.314589, 47.553993>,  <34.169487, 30.001579, 47.807034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791512, 29.314589, 47.553993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465328, 29.532215, 47.633015>,  <33.269619, 29.662790, 47.680428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.465328, 29.532215, 47.633015>,  <33.791512, 29.314589, 47.553993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465328, 29.532215, 47.633015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270337, 0.659775, -0.701152,
		-0.511813, -0.518352, -0.685098,
		-0.815454, 0.544066, 0.197551,
		33.220692, 29.695435, 47.692280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544426, 29.441992, 46.941532>,  <33.791512, 29.314589, 47.553993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544426, 29.441992, 46.941532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394291, 29.730042, 47.174957>,  <33.304211, 29.902872, 47.315010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.394291, 29.730042, 47.174957>,  <33.544426, 29.441992, 46.941532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394291, 29.730042, 47.174957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075462, 0.651241, -0.755110,
		-0.923810, -0.239386, -0.298779,
		-0.375340, 0.720125, 0.583558,
		33.281689, 29.946079, 47.350025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030735, 29.754314, 46.556980>,  <33.544426, 29.441992, 46.941532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030735, 29.754314, 46.556980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073723, 30.015295, 46.857048>,  <33.099518, 30.171883, 47.037090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.073723, 30.015295, 46.857048>,  <33.030735, 29.754314, 46.556980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073723, 30.015295, 46.857048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144509, 0.756780, -0.637496,
		-0.983650, -0.039893, 0.175619,
		0.107473, 0.652452, 0.750171,
		33.105965, 30.211031, 47.082100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406792, 30.092819, 46.504913>,  <33.030735, 29.754314, 46.556980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406792, 30.092819, 46.504913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648827, 30.342636, 46.702427>,  <32.794048, 30.492525, 46.820934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648827, 30.342636, 46.702427>,  <32.406792, 30.092819, 46.504913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648827, 30.342636, 46.702427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281083, 0.747841, -0.601436,
		-0.744891, 0.225128, 0.628057,
		0.605087, 0.624541, 0.493781,
		32.830353, 30.529999, 46.850559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995405, 30.721539, 46.702267>,  <32.406792, 30.092819, 46.504913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995405, 30.721539, 46.702267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375950, 30.844679, 46.706970>,  <32.604279, 30.918562, 46.709793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375950, 30.844679, 46.706970>,  <31.995405, 30.721539, 46.702267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375950, 30.844679, 46.706970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229853, 0.734699, -0.638267,
		-0.205126, 0.604521, 0.769726,
		0.951363, 0.307849, 0.011754,
		32.661358, 30.937033, 46.710495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891140, 31.459839, 46.791611>,  <31.995405, 30.721539, 46.702267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891140, 31.459839, 46.791611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253750, 31.351675, 46.661938>,  <32.471317, 31.286776, 46.584133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.253750, 31.351675, 46.661938>,  <31.891140, 31.459839, 46.791611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253750, 31.351675, 46.661938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089626, 0.627130, -0.773741,
		0.412531, 0.730470, 0.544272,
		0.906524, -0.270411, -0.324179,
		32.525707, 31.270552, 46.564682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182068, 32.087635, 46.580662>,  <31.891140, 31.459839, 46.791611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182068, 32.087635, 46.580662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431190, 31.835373, 46.395454>,  <32.580666, 31.684015, 46.284328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431190, 31.835373, 46.395454>,  <32.182068, 32.087635, 46.580662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431190, 31.835373, 46.395454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050485, 0.622975, -0.780611,
		0.780746, 0.462793, 0.419831,
		0.622805, -0.630655, -0.463021,
		32.618031, 31.646177, 46.256550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.586792, 24.856213, 47.916607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952118, 24.733797, 47.809135>,  <34.171314, 24.660347, 47.744652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.952118, 24.733797, 47.809135>,  <33.586792, 24.856213, 47.916607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952118, 24.733797, 47.809135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129172, 0.843381, -0.521558,
		0.386219, 0.441642, 0.809807,
		0.913318, -0.306040, -0.268682,
		34.226112, 24.641985, 47.728531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117916, 25.412006, 47.928200>,  <33.586792, 24.856213, 47.916607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117916, 25.412006, 47.928200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.190552, 25.144106, 47.640182>,  <34.234135, 24.983366, 47.467373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.190552, 25.144106, 47.640182>,  <34.117916, 25.412006, 47.928200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190552, 25.144106, 47.640182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050497, 0.737601, -0.673346,
		0.982077, 0.085913, 0.167762,
		0.181590, -0.669749, -0.720043,
		34.245029, 24.943182, 47.424171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272087, 25.826183, 47.384785>,  <34.117916, 25.412006, 47.928200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272087, 25.826183, 47.384785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262829, 25.473053, 47.197132>,  <34.257275, 25.261175, 47.084541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262829, 25.473053, 47.197132>,  <34.272087, 25.826183, 47.384785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262829, 25.473053, 47.197132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042391, 0.467967, -0.882729,
		0.998833, -0.040316, 0.026593,
		-0.023143, -0.882826, -0.469130,
		34.255886, 25.208204, 47.056393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752441, 25.925772, 46.891262>,  <34.272087, 25.826183, 47.384785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752441, 25.925772, 46.891262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568817, 25.604597, 46.739182>,  <34.458645, 25.411892, 46.647934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.568817, 25.604597, 46.739182>,  <34.752441, 25.925772, 46.891262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568817, 25.604597, 46.739182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049121, 0.450248, -0.891552,
		0.887048, -0.390597, -0.246131,
		-0.459057, -0.802939, -0.380205,
		34.431099, 25.363716, 46.625118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103218, 25.633392, 46.145851>,  <34.752441, 25.925772, 46.891262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103218, 25.633392, 46.145851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715244, 25.540958, 46.176399>,  <34.482460, 25.485498, 46.194729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.715244, 25.540958, 46.176399>,  <35.103218, 25.633392, 46.145851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715244, 25.540958, 46.176399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166962, 0.403468, -0.899632,
		0.177079, -0.885332, -0.429919,
		-0.969932, -0.231085, 0.076371,
		34.424263, 25.471632, 46.199310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915421, 25.224966, 45.553375>,  <35.103218, 25.633392, 46.145851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915421, 25.224966, 45.553375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563663, 25.366026, 45.681316>,  <34.352608, 25.450663, 45.758080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.563663, 25.366026, 45.681316>,  <34.915421, 25.224966, 45.553375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563663, 25.366026, 45.681316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176399, 0.382660, -0.906893,
		-0.442212, -0.853936, -0.274301,
		-0.879393, 0.352652, 0.319851,
		34.299847, 25.471821, 45.777271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565483, 25.028831, 45.088291>,  <34.915421, 25.224966, 45.553375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565483, 25.028831, 45.088291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.333763, 25.313210, 45.247776>,  <34.194733, 25.483837, 45.343468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.333763, 25.313210, 45.247776>,  <34.565483, 25.028831, 45.088291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333763, 25.313210, 45.247776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289036, 0.278199, -0.916004,
		-0.762150, -0.645881, 0.044328,
		-0.579298, 0.710945, 0.398712,
		34.159973, 25.526493, 45.367390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990627, 25.066370, 44.635811>,  <34.565483, 25.028831, 45.088291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990627, 25.066370, 44.635811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974899, 25.402050, 44.852772>,  <33.965462, 25.603458, 44.982948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.974899, 25.402050, 44.852772>,  <33.990627, 25.066370, 44.635811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974899, 25.402050, 44.852772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274565, 0.512851, -0.813387,
		-0.960764, -0.180905, 0.210250,
		-0.039319, 0.839200, 0.542399,
		33.963104, 25.653811, 45.015491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346405, 25.404634, 44.507683>,  <33.990627, 25.066370, 44.635811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346405, 25.404634, 44.507683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.591656, 25.694838, 44.632717>,  <33.738808, 25.868959, 44.707737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.591656, 25.694838, 44.632717>,  <33.346405, 25.404634, 44.507683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591656, 25.694838, 44.632717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225666, 0.540052, -0.810814,
		-0.757065, 0.426594, 0.494844,
		0.613129, 0.725508, 0.312587,
		33.775593, 25.912491, 44.726494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010075, 25.974634, 44.382473>,  <33.346405, 25.404634, 44.507683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010075, 25.974634, 44.382473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360298, 26.153584, 44.455410>,  <33.570435, 26.260954, 44.499172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.360298, 26.153584, 44.455410>,  <33.010075, 25.974634, 44.382473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360298, 26.153584, 44.455410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216929, 0.701324, -0.679033,
		-0.431665, 0.554979, 0.711100,
		0.875561, 0.447373, 0.182347,
		33.622967, 26.287796, 44.510113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841160, 26.625111, 44.450512>,  <33.010075, 25.974634, 44.382473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841160, 26.625111, 44.450512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234665, 26.637524, 44.379799>,  <33.470768, 26.644972, 44.337372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.234665, 26.637524, 44.379799>,  <32.841160, 26.625111, 44.450512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234665, 26.637524, 44.379799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145989, 0.711343, -0.687516,
		0.104418, 0.702159, 0.704322,
		0.983760, 0.031034, -0.176785,
		33.529793, 26.646833, 44.326763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049786, 27.358433, 44.454174>,  <32.841160, 26.625111, 44.450512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049786, 27.358433, 44.454174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.281723, 27.137083, 44.214989>,  <33.420887, 27.004272, 44.071480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.281723, 27.137083, 44.214989>,  <33.049786, 27.358433, 44.454174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281723, 27.137083, 44.214989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250586, 0.577228, -0.777183,
		0.775234, 0.600485, 0.196034,
		0.579843, -0.553376, -0.597961,
		33.455677, 26.971069, 44.035599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546219, 27.851437, 44.422817>,  <33.049786, 27.358433, 44.454174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546219, 27.851437, 44.422817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.159271, 27.912476, 44.341904>,  <31.927103, 27.949099, 44.293358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.159271, 27.912476, 44.341904>,  <32.546219, 27.851437, 44.422817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159271, 27.912476, 44.341904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236292, -0.255039, 0.937615,
		0.091487, 0.954814, 0.282773,
		-0.967366, 0.152597, -0.202282,
		31.869062, 27.958254, 44.281219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308918, 28.240442, 44.966457>,  <32.546219, 27.851437, 44.422817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308918, 28.240442, 44.966457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.984228, 28.055483, 44.823750>,  <31.789413, 27.944508, 44.738125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.984228, 28.055483, 44.823750>,  <32.308918, 28.240442, 44.966457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984228, 28.055483, 44.823750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227997, -0.311518, 0.922482,
		-0.537695, 0.830147, 0.147442,
		-0.811727, -0.462398, -0.356773,
		31.740709, 27.916763, 44.716717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840134, 28.342756, 45.449448>,  <32.308918, 28.240442, 44.966457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840134, 28.342756, 45.449448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.685780, 28.031385, 45.251400>,  <31.593168, 27.844563, 45.132572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.685780, 28.031385, 45.251400>,  <31.840134, 28.342756, 45.449448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685780, 28.031385, 45.251400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313926, -0.393867, 0.863897,
		-0.867493, 0.488796, -0.092382,
		-0.385883, -0.778426, -0.495123,
		31.570015, 27.797857, 45.102863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156305, 28.227682, 45.564068>,  <31.840134, 28.342756, 45.449448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156305, 28.227682, 45.564068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.187426, 27.868921, 45.389935>,  <31.206099, 27.653666, 45.285454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.187426, 27.868921, 45.389935>,  <31.156305, 28.227682, 45.564068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187426, 27.868921, 45.389935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278864, -0.438804, 0.854217,
		-0.957174, 0.054939, -0.284253,
		0.077801, -0.896902, -0.435333,
		31.210766, 27.599852, 45.259335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529280, 27.827591, 45.819729>,  <31.156305, 28.227682, 45.564068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529280, 27.827591, 45.819729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820021, 27.568027, 45.729752>,  <30.994465, 27.412289, 45.675766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.820021, 27.568027, 45.729752>,  <30.529280, 27.827591, 45.819729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820021, 27.568027, 45.729752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379868, -0.652720, 0.655482,
		-0.572176, -0.390989, -0.720931,
		0.726853, -0.648910, -0.224946,
		31.038076, 27.373354, 45.662266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175768, 27.219507, 45.694248>,  <30.529280, 27.827591, 45.819729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175768, 27.219507, 45.694248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554176, 27.133402, 45.791164>,  <30.781221, 27.081739, 45.849316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.554176, 27.133402, 45.791164>,  <30.175768, 27.219507, 45.694248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554176, 27.133402, 45.791164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323988, -0.608236, 0.724624,
		-0.008614, -0.764010, -0.645147,
		0.946022, -0.215262, 0.242291,
		30.837982, 27.068823, 45.863853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098408, 26.652349, 45.988960>,  <30.175768, 27.219507, 45.694248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098408, 26.652349, 45.988960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.459333, 26.759850, 46.123783>,  <30.675888, 26.824348, 46.204678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.459333, 26.759850, 46.123783>,  <30.098408, 26.652349, 45.988960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459333, 26.759850, 46.123783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198543, -0.434936, 0.878300,
		0.382639, -0.859421, -0.339090,
		0.902312, 0.268748, 0.337056,
		30.730026, 26.840473, 46.224899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392162, 26.000526, 46.215580>,  <30.098408, 26.652349, 45.988960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392162, 26.000526, 46.215580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.590227, 26.292130, 46.404629>,  <30.709066, 26.467091, 46.518059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.590227, 26.292130, 46.404629>,  <30.392162, 26.000526, 46.215580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590227, 26.292130, 46.404629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130189, -0.475585, 0.869982,
		0.858992, -0.492310, -0.140582,
		0.495160, 0.729006, 0.472618,
		30.738775, 26.510832, 46.546413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764849, 25.710020, 46.691242>,  <30.392162, 26.000526, 46.215580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764849, 25.710020, 46.691242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.774939, 26.086098, 46.827122>,  <30.780993, 26.311745, 46.908649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.774939, 26.086098, 46.827122>,  <30.764849, 25.710020, 46.691242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774939, 26.086098, 46.827122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074986, -0.337072, 0.938488,
		0.996865, -0.049144, 0.061999,
		0.025222, 0.940195, 0.339701,
		30.782505, 26.368156, 46.929031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271086, 25.724216, 47.218845>,  <30.764849, 25.710020, 46.691242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271086, 25.724216, 47.218845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.031507, 26.040529, 47.269325>,  <30.887760, 26.230318, 47.299614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.031507, 26.040529, 47.269325>,  <31.271086, 25.724216, 47.218845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031507, 26.040529, 47.269325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073174, -0.210986, 0.974746,
		0.797440, 0.574584, 0.184233,
		-0.598945, 0.790783, 0.126204,
		30.851824, 26.277763, 47.307186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328768, 26.050539, 47.861763>,  <31.271086, 25.724216, 47.218845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328768, 26.050539, 47.861763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.975689, 26.228342, 47.800762>,  <30.763842, 26.335024, 47.764160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.975689, 26.228342, 47.800762>,  <31.328768, 26.050539, 47.861763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975689, 26.228342, 47.800762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184219, -0.028756, 0.982464,
		0.432326, 0.895314, 0.107270,
		-0.882699, 0.444506, -0.152502,
		30.710878, 26.361694, 47.755013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246120, 26.516445, 48.447666>,  <31.328768, 26.050539, 47.861763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246120, 26.516445, 48.447666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.886066, 26.456392, 48.284096>,  <30.670034, 26.420361, 48.185951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.886066, 26.456392, 48.284096>,  <31.246120, 26.516445, 48.447666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886066, 26.456392, 48.284096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398430, -0.095769, 0.912185,
		-0.176110, 0.984017, 0.026388,
		-0.900133, -0.150131, -0.408928,
		30.616026, 26.411352, 48.161419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801500, 26.913355, 48.809261>,  <31.246120, 26.516445, 48.447666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801500, 26.913355, 48.809261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.549496, 26.649874, 48.644730>,  <30.398293, 26.491785, 48.546009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.549496, 26.649874, 48.644730>,  <30.801500, 26.913355, 48.809261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549496, 26.649874, 48.644730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255777, -0.324111, 0.910786,
		-0.733255, 0.679015, 0.035712,
		-0.630012, -0.658704, -0.411332,
		30.360493, 26.452263, 48.521332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526241, 27.252068, 48.783226>,  <30.801500, 26.913355, 48.809261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526241, 27.252068, 48.783226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385412, 27.475863, 49.083366>,  <31.300915, 27.610140, 49.263451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.385412, 27.475863, 49.083366>,  <31.526241, 27.252068, 48.783226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385412, 27.475863, 49.083366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332309, 0.824167, -0.458605,
		-0.874995, 0.087886, -0.476088,
		-0.352071, 0.559486, 0.750348,
		31.279791, 27.643707, 49.308472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117472, 27.880396, 48.520084>,  <31.526241, 27.252068, 48.783226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117472, 27.880396, 48.520084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.298544, 27.950480, 48.869801>,  <31.407187, 27.992531, 49.079632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.298544, 27.950480, 48.869801>,  <31.117472, 27.880396, 48.520084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298544, 27.950480, 48.869801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534876, 0.731152, -0.423468,
		-0.713435, 0.659331, 0.237262,
		0.452680, 0.175211, 0.874289,
		31.434347, 28.003042, 49.132088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023325, 28.691433, 48.729679>,  <31.117472, 27.880396, 48.520084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023325, 28.691433, 48.729679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344385, 28.516190, 48.891575>,  <31.537022, 28.411043, 48.988712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344385, 28.516190, 48.891575>,  <31.023325, 28.691433, 48.729679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344385, 28.516190, 48.891575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568067, 0.768346, -0.294864,
		-0.181797, 0.466591, 0.865588,
		0.802651, -0.438107, 0.404738,
		31.585180, 28.384758, 49.012997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267666, 29.228062, 49.042007>,  <31.023325, 28.691433, 48.729679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267666, 29.228062, 49.042007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.565016, 28.963348, 49.003147>,  <31.743425, 28.804522, 48.979832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.565016, 28.963348, 49.003147>,  <31.267666, 29.228062, 49.042007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565016, 28.963348, 49.003147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646740, 0.748209, -0.148023,
		0.170648, 0.047206, 0.984201,
		0.743375, -0.661782, -0.097150,
		31.788029, 28.764814, 48.974003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876410, 29.564421, 49.237911>,  <31.267666, 29.228062, 49.042007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876410, 29.564421, 49.237911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.019238, 29.259981, 49.021309>,  <32.104935, 29.077318, 48.891346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.019238, 29.259981, 49.021309>,  <31.876410, 29.564421, 49.237911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019238, 29.259981, 49.021309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655080, 0.617303, -0.435669,
		0.665860, -0.199164, 0.719002,
		0.357072, -0.761098, -0.541506,
		32.126358, 29.031652, 48.858856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657726, 29.630133, 49.198627>,  <31.876410, 29.564421, 49.237911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657726, 29.630133, 49.198627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565716, 29.400404, 48.884369>,  <32.510509, 29.262566, 48.695812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565716, 29.400404, 48.884369>,  <32.657726, 29.630133, 49.198627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565716, 29.400404, 48.884369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566689, 0.577260, -0.587906,
		0.791171, -0.580451, 0.192678,
		-0.230025, -0.574323, -0.785647,
		32.496708, 29.228107, 48.648674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285976, 29.494305, 48.904099>,  <32.657726, 29.630133, 49.198627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285976, 29.494305, 48.904099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.028999, 29.396982, 48.613426>,  <32.874813, 29.338589, 48.439022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.028999, 29.396982, 48.613426>,  <33.285976, 29.494305, 48.904099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028999, 29.396982, 48.613426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558792, 0.500186, -0.661487,
		0.524423, -0.831032, -0.185381,
		-0.642442, -0.243310, -0.726683,
		32.836266, 29.323990, 48.395420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651257, 29.238066, 48.297161>,  <33.285976, 29.494305, 48.904099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651257, 29.238066, 48.297161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303352, 29.354616, 48.137856>,  <33.094608, 29.424547, 48.042271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303352, 29.354616, 48.137856>,  <33.651257, 29.238066, 48.297161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303352, 29.354616, 48.137856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490472, 0.599318, -0.632657,
		0.054347, -0.745599, -0.664175,
		-0.869761, 0.291376, -0.398266,
		33.042423, 29.442030, 48.018375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412437, 29.283009, 47.988800>,  <33.651257, 29.238066, 48.297161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412437, 29.283009, 47.988800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.661232, 29.485592, 48.227676>,  <34.810509, 29.607141, 48.371002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.661232, 29.485592, 48.227676>,  <34.412437, 29.283009, 47.988800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661232, 29.485592, 48.227676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004320, -0.764875, 0.644165,
		0.783018, -0.398081, -0.477928,
		0.621985, 0.506457, 0.597191,
		34.847828, 29.637529, 48.406834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749207, 28.718098, 48.313183>,  <34.412437, 29.283009, 47.988800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749207, 28.718098, 48.313183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.909893, 29.007097, 48.538258>,  <35.006306, 29.180498, 48.673302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.909893, 29.007097, 48.538258>,  <34.749207, 28.718098, 48.313183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909893, 29.007097, 48.538258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035979, -0.626423, 0.778652,
		0.915058, -0.292551, -0.277638,
		0.401714, 0.722501, 0.562688,
		35.030407, 29.223848, 48.707066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359520, 28.531368, 48.662434>,  <34.749207, 28.718098, 48.313183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359520, 28.531368, 48.662434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155849, 28.802046, 48.875160>,  <35.033646, 28.964453, 49.002796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155849, 28.802046, 48.875160>,  <35.359520, 28.531368, 48.662434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155849, 28.802046, 48.875160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050361, -0.640280, 0.766489,
		0.859186, 0.363497, 0.360096,
		-0.509179, 0.676692, 0.531813,
		35.003098, 29.005053, 49.034702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795315, 28.572577, 49.271172>,  <35.359520, 28.531368, 48.662434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795315, 28.572577, 49.271172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430634, 28.713654, 49.355465>,  <35.211826, 28.798300, 49.406040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430634, 28.713654, 49.355465>,  <35.795315, 28.572577, 49.271172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430634, 28.713654, 49.355465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085312, -0.664258, 0.742620,
		0.401899, 0.659069, 0.635693,
		-0.911701, 0.352690, 0.210738,
		35.157124, 28.819460, 49.418686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846088, 28.666052, 49.912415>,  <35.795315, 28.572577, 49.271172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846088, 28.666052, 49.912415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448055, 28.657166, 49.873814>,  <35.209236, 28.651834, 49.850651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.448055, 28.657166, 49.873814>,  <35.846088, 28.666052, 49.912415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448055, 28.657166, 49.873814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049215, -0.734699, 0.676606,
		-0.085933, 0.678030, 0.729994,
		-0.995085, -0.022216, -0.096505,
		35.149529, 28.650501, 49.844864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481911, 28.838953, 50.601295>,  <35.846088, 28.666052, 49.912415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481911, 28.838953, 50.601295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221283, 28.636057, 50.375671>,  <35.064907, 28.514318, 50.240299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221283, 28.636057, 50.375671>,  <35.481911, 28.838953, 50.601295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221283, 28.636057, 50.375671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174533, -0.623374, 0.762196,
		-0.738235, 0.595073, 0.317643,
		-0.651572, -0.507241, -0.564057,
		35.025810, 28.483885, 50.206455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883522, 28.726984, 50.985989>,  <35.481911, 28.838953, 50.601295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883522, 28.726984, 50.985989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.883198, 28.445047, 50.702244>,  <34.883003, 28.275885, 50.531998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.883198, 28.445047, 50.702244>,  <34.883522, 28.726984, 50.985989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883198, 28.445047, 50.702244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422979, -0.642542, 0.638928,
		-0.906139, 0.300563, -0.297614,
		-0.000809, -0.704842, -0.709364,
		34.882954, 28.233595, 50.489433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284119, 28.374426, 51.187855>,  <34.883522, 28.726984, 50.985989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284119, 28.374426, 51.187855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.477001, 28.140818, 50.926659>,  <34.592731, 28.000652, 50.769939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.477001, 28.140818, 50.926659>,  <34.284119, 28.374426, 51.187855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477001, 28.140818, 50.926659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304072, -0.810613, 0.500446,
		-0.821591, -0.042765, -0.568471,
		0.482212, -0.584018, -0.652989,
		34.621662, 27.965612, 50.730762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800674, 27.893328, 51.204300>,  <34.284119, 28.374426, 51.187855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800674, 27.893328, 51.204300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.135082, 27.734407, 51.052917>,  <34.335728, 27.639055, 50.962086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.135082, 27.734407, 51.052917>,  <33.800674, 27.893328, 51.204300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135082, 27.734407, 51.052917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190986, -0.857295, 0.478089,
		-0.514396, -0.327410, -0.792590,
		0.836015, -0.397301, -0.378459,
		34.385887, 27.615217, 50.939381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.640953, 36.757320, 37.504841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894539, 36.452183, 37.453987>,  <37.046688, 36.269100, 37.423473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894539, 36.452183, 37.453987>,  <36.640953, 36.757320, 37.504841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894539, 36.452183, 37.453987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504497, -0.532531, 0.679628,
		-0.586155, -0.366715, -0.722456,
		0.633960, -0.762844, -0.127139,
		37.084728, 36.223331, 37.415848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197926, 36.153080, 37.331635>,  <36.640953, 36.757320, 37.504841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197926, 36.153080, 37.331635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540684, 36.043900, 37.506550>,  <36.746338, 35.978390, 37.611500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540684, 36.043900, 37.506550>,  <36.197926, 36.153080, 37.331635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540684, 36.043900, 37.506550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515078, -0.487094, 0.705290,
		0.020491, -0.829600, -0.557981,
		0.856898, -0.272952, 0.437290,
		36.797752, 35.962013, 37.637737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143826, 35.334961, 37.476513>,  <36.197926, 36.153080, 37.331635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143826, 35.334961, 37.476513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431885, 35.489777, 37.706848>,  <36.604721, 35.582664, 37.845051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431885, 35.489777, 37.706848>,  <36.143826, 35.334961, 37.476513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431885, 35.489777, 37.706848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360660, -0.500186, 0.787235,
		0.592713, -0.774608, -0.220621,
		0.720150, 0.387035, 0.575837,
		36.647930, 35.605888, 37.879601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359173, 34.743595, 37.912407>,  <36.143826, 35.334961, 37.476513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359173, 34.743595, 37.912407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479282, 35.072449, 38.105873>,  <36.551350, 35.269760, 38.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479282, 35.072449, 38.105873>,  <36.359173, 34.743595, 37.912407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479282, 35.072449, 38.105873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232624, -0.428638, 0.873015,
		0.925051, -0.374658, 0.062538,
		0.300276, 0.822132, 0.483667,
		36.569366, 35.319088, 38.250973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753361, 34.554802, 38.494579>,  <36.359173, 34.743595, 37.912407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753361, 34.554802, 38.494579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668362, 34.927635, 38.611927>,  <36.617363, 35.151337, 38.682335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668362, 34.927635, 38.611927>,  <36.753361, 34.554802, 38.494579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668362, 34.927635, 38.611927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131917, -0.324845, 0.936522,
		0.968217, 0.160305, 0.191986,
		-0.212495, 0.932082, 0.293373,
		36.604614, 35.207260, 38.699940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126968, 34.700481, 39.192558>,  <36.753361, 34.554802, 38.494579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126968, 34.700481, 39.192558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871178, 35.007778, 39.180717>,  <36.717705, 35.192158, 39.173615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871178, 35.007778, 39.180717>,  <37.126968, 34.700481, 39.192558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871178, 35.007778, 39.180717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150029, -0.086936, 0.984852,
		0.754031, 0.634230, 0.170852,
		-0.639476, 0.768241, -0.029600,
		36.679337, 35.238251, 39.171837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344753, 35.331188, 39.721226>,  <37.126968, 34.700481, 39.192558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344753, 35.331188, 39.721226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950508, 35.333065, 39.653637>,  <36.713963, 35.334190, 39.613083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.950508, 35.333065, 39.653637>,  <37.344753, 35.331188, 39.721226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950508, 35.333065, 39.653637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163580, -0.278316, 0.946458,
		-0.042588, 0.960478, 0.275078,
		-0.985610, 0.004690, -0.168968,
		36.654823, 35.334473, 39.602947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119331, 35.676857, 40.253593>,  <37.344753, 35.331188, 39.721226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119331, 35.676857, 40.253593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758381, 35.541031, 40.147457>,  <36.541809, 35.459534, 40.083775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758381, 35.541031, 40.147457>,  <37.119331, 35.676857, 40.253593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758381, 35.541031, 40.147457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269351, -0.036219, 0.962361,
		-0.336396, 0.939885, -0.058779,
		-0.902379, -0.339566, -0.265343,
		36.487667, 35.439159, 40.067856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706974, 36.020088, 40.732162>,  <37.119331, 35.676857, 40.253593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706974, 36.020088, 40.732162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510784, 35.699928, 40.594296>,  <36.393070, 35.507832, 40.511574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510784, 35.699928, 40.594296>,  <36.706974, 36.020088, 40.732162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510784, 35.699928, 40.594296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424478, -0.125991, 0.896630,
		-0.761088, 0.586076, -0.277957,
		-0.490473, -0.800401, -0.344666,
		36.363644, 35.459808, 40.490894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967896, 36.089092, 40.930622>,  <36.706974, 36.020088, 40.732162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967896, 36.089092, 40.930622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045616, 35.702763, 40.862000>,  <36.092247, 35.470966, 40.820824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045616, 35.702763, 40.862000>,  <35.967896, 36.089092, 40.930622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045616, 35.702763, 40.862000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369811, -0.234108, 0.899129,
		-0.908564, -0.111254, -0.402659,
		0.194297, -0.965824, -0.171559,
		36.103905, 35.413017, 40.810532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363148, 35.774998, 41.139633>,  <35.967896, 36.089092, 40.930622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363148, 35.774998, 41.139633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661522, 35.508812, 41.150551>,  <35.840546, 35.349102, 41.157101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661522, 35.508812, 41.150551>,  <35.363148, 35.774998, 41.139633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661522, 35.508812, 41.150551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353649, -0.361024, 0.862899,
		-0.564375, -0.653315, -0.504640,
		0.745931, -0.665464, 0.027291,
		35.885300, 35.309174, 41.158737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065285, 35.209980, 41.474472>,  <35.363148, 35.774998, 41.139633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065285, 35.209980, 41.474472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457508, 35.143059, 41.515480>,  <35.692844, 35.102905, 41.540085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457508, 35.143059, 41.515480>,  <35.065285, 35.209980, 41.474472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457508, 35.143059, 41.515480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171659, -0.478343, 0.861233,
		-0.095049, -0.862089, -0.497763,
		0.980560, -0.167304, 0.102519,
		35.751675, 35.092869, 41.546234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841938, 34.639164, 40.982121>,  <35.065285, 35.209980, 41.474472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841938, 34.639164, 40.982121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458782, 34.678177, 41.090153>,  <34.228889, 34.701584, 41.154972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458782, 34.678177, 41.090153>,  <34.841938, 34.639164, 40.982121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458782, 34.678177, 41.090153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228259, 0.312052, -0.922237,
		-0.174225, -0.945046, -0.276648,
		-0.957885, 0.097529, 0.270082,
		34.171417, 34.707436, 41.171177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510471, 34.510826, 40.465324>,  <34.841938, 34.639164, 40.982121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510471, 34.510826, 40.465324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217960, 34.715355, 40.645897>,  <34.042454, 34.838070, 40.754242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217960, 34.715355, 40.645897>,  <34.510471, 34.510826, 40.465324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217960, 34.715355, 40.645897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271255, 0.389250, -0.880287,
		-0.625827, -0.766184, -0.145950,
		-0.731273, 0.511318, 0.451435,
		33.998577, 34.868752, 40.781326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920006, 34.354908, 40.053322>,  <34.510471, 34.510826, 40.465324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920006, 34.354908, 40.053322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870773, 34.700901, 40.247913>,  <33.841232, 34.908497, 40.364670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870773, 34.700901, 40.247913>,  <33.920006, 34.354908, 40.053322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870773, 34.700901, 40.247913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271943, 0.442047, -0.854776,
		-0.954410, -0.237503, 0.180817,
		-0.123082, 0.864978, 0.486481,
		33.833847, 34.960396, 40.393856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382298, 34.694447, 39.687393>,  <33.920006, 34.354908, 40.053322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382298, 34.694447, 39.687393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539417, 34.999100, 39.893547>,  <33.633690, 35.181892, 40.017239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539417, 34.999100, 39.893547>,  <33.382298, 34.694447, 39.687393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539417, 34.999100, 39.893547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140979, 0.603679, -0.784664,
		-0.908756, 0.235554, 0.344497,
		0.392796, 0.761634, 0.515388,
		33.657257, 35.227589, 40.048164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853935, 35.205383, 39.725548>,  <33.382298, 34.694447, 39.687393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853935, 35.205383, 39.725548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194870, 35.407490, 39.779545>,  <33.399433, 35.528751, 39.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194870, 35.407490, 39.779545>,  <32.853935, 35.205383, 39.725548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194870, 35.407490, 39.779545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182773, 0.529622, -0.828308,
		-0.490008, 0.681329, 0.543767,
		0.852341, 0.505264, 0.134991,
		33.450573, 35.559071, 39.820042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681774, 35.794628, 39.505257>,  <32.853935, 35.205383, 39.725548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681774, 35.794628, 39.505257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077309, 35.843357, 39.539597>,  <33.314629, 35.872597, 39.560200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077309, 35.843357, 39.539597>,  <32.681774, 35.794628, 39.505257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077309, 35.843357, 39.539597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016393, 0.661456, -0.749805,
		-0.148131, 0.740024, 0.656066,
		0.988832, 0.121824, 0.085850,
		33.373959, 35.879906, 39.565353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876144, 36.503128, 39.541565>,  <32.681774, 35.794628, 39.505257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876144, 36.503128, 39.541565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177399, 36.295670, 39.379681>,  <33.358150, 36.171192, 39.282551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177399, 36.295670, 39.379681>,  <32.876144, 36.503128, 39.541565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177399, 36.295670, 39.379681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039686, 0.649890, -0.758992,
		0.656669, 0.555561, 0.510037,
		0.753134, -0.518648, -0.404715,
		33.403339, 36.140076, 39.258266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355621, 37.054592, 39.273445>,  <32.876144, 36.503128, 39.541565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355621, 37.054592, 39.273445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433392, 36.723724, 39.062546>,  <33.480053, 36.525204, 38.936008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433392, 36.723724, 39.062546>,  <33.355621, 37.054592, 39.273445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433392, 36.723724, 39.062546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103594, 0.551811, -0.827510,
		0.975431, 0.106273, 0.192978,
		0.194429, -0.827170, -0.527245,
		33.491722, 36.475574, 38.904373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823032, 37.266045, 38.776443>,  <33.355621, 37.054592, 39.273445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823032, 37.266045, 38.776443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719906, 36.906605, 38.634434>,  <33.658028, 36.690941, 38.549229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719906, 36.906605, 38.634434>,  <33.823032, 37.266045, 38.776443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719906, 36.906605, 38.634434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049829, 0.354594, -0.933692,
		0.964907, -0.258416, -0.046645,
		-0.257821, -0.898601, -0.355027,
		33.642559, 36.637024, 38.527927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253021, 37.103424, 38.301716>,  <33.823032, 37.266045, 38.776443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253021, 37.103424, 38.301716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924583, 36.892879, 38.213398>,  <33.727520, 36.766552, 38.160408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924583, 36.892879, 38.213398>,  <34.253021, 37.103424, 38.301716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924583, 36.892879, 38.213398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042856, 0.442584, -0.895703,
		0.569185, -0.725991, -0.385959,
		-0.821091, -0.526361, -0.220799,
		33.678257, 36.734970, 38.147160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379246, 36.758690, 37.635746>,  <34.253021, 37.103424, 38.301716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379246, 36.758690, 37.635746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984051, 36.772343, 37.696030>,  <33.746933, 36.780537, 37.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984051, 36.772343, 37.696030>,  <34.379246, 36.758690, 37.635746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984051, 36.772343, 37.696030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126072, 0.385933, -0.913872,
		-0.089361, -0.921895, -0.376994,
		-0.987988, 0.034136, 0.150713,
		33.687653, 36.782585, 37.741245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129234, 36.488346, 37.031475>,  <34.379246, 36.758690, 37.635746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129234, 36.488346, 37.031475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811260, 36.672432, 37.189606>,  <33.620476, 36.782883, 37.284485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811260, 36.672432, 37.189606>,  <34.129234, 36.488346, 37.031475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811260, 36.672432, 37.189606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196516, 0.421155, -0.885443,
		-0.573990, -0.781555, -0.244350,
		-0.794932, 0.460217, 0.395327,
		33.572781, 36.810497, 37.308205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583836, 36.463039, 36.507069>,  <34.129234, 36.488346, 37.031475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583836, 36.463039, 36.507069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460411, 36.757244, 36.748337>,  <33.386356, 36.933765, 36.893097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460411, 36.757244, 36.748337>,  <33.583836, 36.463039, 36.507069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460411, 36.757244, 36.748337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216745, 0.563061, -0.797486,
		-0.926180, -0.376810, -0.014323,
		-0.308565, 0.735511, 0.603167,
		33.367840, 36.977898, 36.929287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901691, 36.542408, 36.383400>,  <33.583836, 36.463039, 36.507069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901691, 36.542408, 36.383400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053749, 36.884350, 36.524662>,  <33.144985, 37.089516, 36.609417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053749, 36.884350, 36.524662>,  <32.901691, 36.542408, 36.383400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053749, 36.884350, 36.524662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423402, 0.500296, -0.755271,
		-0.822327, 0.137585, 0.552131,
		0.380143, 0.854853, 0.353153,
		33.167793, 37.140804, 36.630608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501301, 35.989975, 36.208588>,  <32.901691, 36.542408, 36.383400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501301, 35.989975, 36.208588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703648, 35.645187, 36.195255>,  <32.825058, 35.438316, 36.187256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703648, 35.645187, 36.195255>,  <32.501301, 35.989975, 36.208588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703648, 35.645187, 36.195255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853781, -0.494805, -0.161943,
		0.123096, 0.110382, -0.986237,
		0.505870, -0.861965, -0.033333,
		32.855408, 35.386597, 36.185257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146786, 35.605282, 35.694695>,  <32.501301, 35.989975, 36.208588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146786, 35.605282, 35.694695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356449, 35.378242, 35.948650>,  <32.482246, 35.242020, 36.101025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356449, 35.378242, 35.948650>,  <32.146786, 35.605282, 35.694695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356449, 35.378242, 35.948650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835784, -0.485948, 0.255577,
		0.163460, -0.664597, -0.729104,
		0.524162, -0.567597, 0.634892,
		32.513699, 35.207962, 36.139118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784782, 34.919571, 35.786301>,  <32.146786, 35.605282, 35.694695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784782, 34.919571, 35.786301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014156, 34.871891, 36.110512>,  <32.151779, 34.843281, 36.305038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014156, 34.871891, 36.110512>,  <31.784782, 34.919571, 35.786301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014156, 34.871891, 36.110512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616790, -0.713981, 0.331363,
		0.539205, -0.689944, -0.482945,
		0.573435, -0.119203, 0.810532,
		32.186188, 34.836128, 36.353672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482857, 34.424191, 36.343346>,  <31.784782, 34.919571, 35.786301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482857, 34.424191, 36.343346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780388, 34.411156, 36.610374>,  <31.958906, 34.403336, 36.770592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780388, 34.411156, 36.610374>,  <31.482857, 34.424191, 36.343346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780388, 34.411156, 36.610374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367889, -0.853852, 0.368231,
		0.558011, -0.519495, -0.647108,
		0.743829, -0.032587, 0.667575,
		32.003536, 34.401379, 36.810646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731852, 33.639290, 36.378838>,  <31.482857, 34.424191, 36.343346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731852, 33.639290, 36.378838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870918, 33.824139, 36.705170>,  <31.954359, 33.935047, 36.900967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870918, 33.824139, 36.705170>,  <31.731852, 33.639290, 36.378838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870918, 33.824139, 36.705170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199291, -0.813803, 0.545901,
		0.916194, -0.352378, -0.190835,
		0.347666, 0.462120, 0.815827,
		31.975218, 33.962776, 36.949917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134705, 33.154160, 36.752308>,  <31.731852, 33.639290, 36.378838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134705, 33.154160, 36.752308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044910, 33.417801, 37.039417>,  <31.991034, 33.575985, 37.211681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044910, 33.417801, 37.039417>,  <32.134705, 33.154160, 36.752308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044910, 33.417801, 37.039417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202321, -0.752043, 0.627294,
		0.953242, -0.004399, 0.302175,
		-0.224489, 0.659100, 0.717769,
		31.977564, 33.615532, 37.254749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405426, 32.803226, 37.283592>,  <32.134705, 33.154160, 36.752308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405426, 32.803226, 37.283592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176743, 33.087452, 37.447666>,  <32.039532, 33.257988, 37.546112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176743, 33.087452, 37.447666>,  <32.405426, 32.803226, 37.283592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176743, 33.087452, 37.447666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416063, -0.681981, 0.601493,
		0.707136, 0.173216, 0.685533,
		-0.571708, 0.710562, 0.410185,
		32.005230, 33.300621, 37.570721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561916, 32.702953, 37.976910>,  <32.405426, 32.803226, 37.283592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561916, 32.702953, 37.976910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225285, 32.918438, 37.961212>,  <32.023308, 33.047729, 37.951794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225285, 32.918438, 37.961212>,  <32.561916, 32.702953, 37.976910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225285, 32.918438, 37.961212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353962, -0.495152, 0.793433,
		0.407998, 0.681626, 0.607391,
		-0.841575, 0.538713, -0.039248,
		31.972813, 33.080051, 37.949436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445545, 33.018867, 38.634464>,  <32.561916, 32.702953, 37.976910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445545, 33.018867, 38.634464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077808, 32.984661, 38.480846>,  <31.857166, 32.964138, 38.388676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077808, 32.984661, 38.480846>,  <32.445545, 33.018867, 38.634464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077808, 32.984661, 38.480846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316258, -0.420070, 0.850601,
		-0.234067, 0.903454, 0.359144,
		-0.919344, -0.085516, -0.384049,
		31.802006, 32.959007, 38.365631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057888, 33.080685, 39.207294>,  <32.445545, 33.018867, 38.634464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057888, 33.080685, 39.207294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805334, 32.918663, 38.942783>,  <31.653803, 32.821449, 38.784077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805334, 32.918663, 38.942783>,  <32.057888, 33.080685, 39.207294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805334, 32.918663, 38.942783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386347, -0.575069, 0.721132,
		-0.672380, 0.710791, 0.206595,
		-0.631381, -0.405058, -0.661277,
		31.615919, 32.797146, 38.744400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396673, 32.888218, 39.516319>,  <32.057888, 33.080685, 39.207294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396673, 32.888218, 39.516319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421473, 32.622566, 39.218304>,  <31.436352, 32.463173, 39.039494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421473, 32.622566, 39.218304>,  <31.396673, 32.888218, 39.516319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421473, 32.622566, 39.218304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302096, -0.723948, 0.620191,
		-0.951259, 0.186622, -0.245517,
		0.062000, -0.664132, -0.745039,
		31.440073, 32.423325, 38.994793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822971, 32.468243, 39.662804>,  <31.396673, 32.888218, 39.516319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822971, 32.468243, 39.662804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059816, 32.250851, 39.424801>,  <31.201923, 32.120415, 39.281998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059816, 32.250851, 39.424801>,  <30.822971, 32.468243, 39.662804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059816, 32.250851, 39.424801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301665, -0.834156, 0.461717,
		-0.747260, -0.093897, -0.657864,
		0.592115, -0.543478, -0.595006,
		31.237450, 32.087807, 39.246300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534199, 31.812189, 39.594387>,  <30.822971, 32.468243, 39.662804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534199, 31.812189, 39.594387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925463, 31.742992, 39.548290>,  <31.160221, 31.701475, 39.520634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925463, 31.742992, 39.548290>,  <30.534199, 31.812189, 39.594387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925463, 31.742992, 39.548290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108539, -0.897911, 0.426585,
		-0.177273, -0.404760, -0.897075,
		0.978158, -0.172989, -0.115243,
		31.218910, 31.691095, 39.513718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497913, 31.081142, 39.406319>,  <30.534199, 31.812189, 39.594387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497913, 31.081142, 39.406319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881329, 31.179695, 39.463593>,  <31.111378, 31.238827, 39.497955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881329, 31.179695, 39.463593>,  <30.497913, 31.081142, 39.406319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881329, 31.179695, 39.463593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148155, -0.860086, 0.488162,
		0.243427, -0.446708, -0.860927,
		0.958537, 0.246383, 0.143186,
		31.168890, 31.253611, 39.506550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784271, 30.402637, 39.511482>,  <30.497913, 31.081142, 39.406319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784271, 30.402637, 39.511482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058414, 30.666645, 39.634552>,  <31.222900, 30.825050, 39.708393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058414, 30.666645, 39.634552>,  <30.784271, 30.402637, 39.511482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058414, 30.666645, 39.634552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355368, -0.671918, 0.649799,
		0.635610, -0.336008, -0.695053,
		0.685357, 0.660018, 0.307671,
		31.264021, 30.864651, 39.726852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437860, 30.088947, 39.545811>,  <30.784271, 30.402637, 39.511482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437860, 30.088947, 39.545811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458187, 30.397875, 39.799091>,  <31.470383, 30.583231, 39.951057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458187, 30.397875, 39.799091>,  <31.437860, 30.088947, 39.545811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458187, 30.397875, 39.799091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406988, -0.595000, 0.693063,
		0.912019, 0.222485, -0.344560,
		0.050817, 0.772318, 0.633200,
		31.473433, 30.629570, 39.989052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046841, 29.925035, 39.836929>,  <31.437860, 30.088947, 39.545811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046841, 29.925035, 39.836929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872900, 30.199068, 40.070705>,  <31.768536, 30.363487, 40.210972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872900, 30.199068, 40.070705>,  <32.046841, 29.925035, 39.836929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872900, 30.199068, 40.070705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335117, -0.479282, 0.811163,
		0.835824, 0.548589, -0.021167,
		-0.434851, 0.685083, 0.584437,
		31.742445, 30.404593, 40.246037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549923, 29.961290, 40.315418>,  <32.046841, 29.925035, 39.836929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549923, 29.961290, 40.315418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222092, 30.132071, 40.468262>,  <32.025394, 30.234539, 40.559967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222092, 30.132071, 40.468262>,  <32.549923, 29.961290, 40.315418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222092, 30.132071, 40.468262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158936, -0.471322, 0.867522,
		0.550488, 0.771731, 0.318425,
		-0.819574, 0.426951, 0.382113,
		31.976219, 30.260157, 40.582897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650253, 29.794098, 41.035755>,  <32.549923, 29.961290, 40.315418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650253, 29.794098, 41.035755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279804, 29.944529, 41.024002>,  <32.057533, 30.034786, 41.016949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279804, 29.944529, 41.024002>,  <32.650253, 29.794098, 41.035755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279804, 29.944529, 41.024002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213863, -0.459290, 0.862157,
		0.310741, 0.804748, 0.505788,
		-0.926123, 0.376077, -0.029385,
		32.001968, 30.057352, 41.015186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571846, 30.333702, 41.478653>,  <32.650253, 29.794098, 41.035755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571846, 30.333702, 41.478653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225933, 30.144131, 41.412262>,  <32.018387, 30.030388, 41.372425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225933, 30.144131, 41.412262>,  <32.571846, 30.333702, 41.478653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225933, 30.144131, 41.412262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022194, -0.294141, 0.955504,
		-0.501663, 0.829984, 0.243849,
		-0.864779, -0.473929, -0.165980,
		31.966499, 30.001951, 41.362469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038937, 30.623791, 41.877697>,  <32.571846, 30.333702, 41.478653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038937, 30.623791, 41.877697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912035, 30.255539, 41.786671>,  <31.835894, 30.034588, 41.732056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912035, 30.255539, 41.786671>,  <32.038937, 30.623791, 41.877697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912035, 30.255539, 41.786671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035690, -0.228205, 0.972959,
		-0.947668, 0.316801, 0.039542,
		-0.317258, -0.920630, -0.227569,
		31.816858, 29.979349, 41.718399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422319, 30.470062, 42.334682>,  <32.038937, 30.623791, 41.877697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422319, 30.470062, 42.334682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574381, 30.125105, 42.200958>,  <31.665617, 29.918131, 42.120724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574381, 30.125105, 42.200958>,  <31.422319, 30.470062, 42.334682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574381, 30.125105, 42.200958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142741, -0.411815, 0.900019,
		-0.913843, -0.294425, -0.279651,
		0.380153, -0.862393, -0.334308,
		31.688427, 29.866386, 42.100666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910383, 29.906406, 42.492245>,  <31.422319, 30.470062, 42.334682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910383, 29.906406, 42.492245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228643, 29.688265, 42.386772>,  <31.419600, 29.557381, 42.323490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228643, 29.688265, 42.386772>,  <30.910383, 29.906406, 42.492245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228643, 29.688265, 42.386772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236710, -0.680597, 0.693366,
		-0.557590, -0.489262, -0.670609,
		0.795652, -0.545354, -0.263682,
		31.467339, 29.524658, 42.307667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751757, 29.131756, 42.429966>,  <30.910383, 29.906406, 42.492245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751757, 29.131756, 42.429966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141932, 29.173147, 42.507748>,  <31.376036, 29.197983, 42.554417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141932, 29.173147, 42.507748>,  <30.751757, 29.131756, 42.429966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141932, 29.173147, 42.507748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082216, -0.647960, 0.757224,
		0.204358, -0.754612, -0.623537,
		0.975437, 0.103480, 0.194457,
		31.434563, 29.204191, 42.566086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038261, 28.470741, 42.440315>,  <30.751757, 29.131756, 42.429966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038261, 28.470741, 42.440315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342321, 28.654226, 42.624382>,  <31.524757, 28.764317, 42.734821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342321, 28.654226, 42.624382>,  <31.038261, 28.470741, 42.440315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342321, 28.654226, 42.624382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093182, -0.623942, 0.775895,
		0.643029, -0.632677, -0.431547,
		0.760151, 0.458711, 0.460167,
		31.570366, 28.791840, 42.762432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494381, 27.905245, 42.518597>,  <31.038261, 28.470741, 42.440315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494381, 27.905245, 42.518597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587725, 28.188837, 42.784794>,  <31.643732, 28.358994, 42.944511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587725, 28.188837, 42.784794>,  <31.494381, 27.905245, 42.518597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587725, 28.188837, 42.784794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138687, -0.701663, 0.698881,
		0.962449, -0.070796, -0.262068,
		0.233361, 0.708983, 0.665497,
		31.657734, 28.401531, 42.984444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097923, 27.673746, 42.964890>,  <31.494381, 27.905245, 42.518597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097923, 27.673746, 42.964890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929579, 27.960598, 43.187096>,  <31.828571, 28.132710, 43.320419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929579, 27.960598, 43.187096>,  <32.097923, 27.673746, 42.964890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929579, 27.960598, 43.187096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127333, -0.559623, 0.818907,
		0.898142, 0.415384, 0.144211,
		-0.420864, 0.717132, 0.555513,
		31.803320, 28.175737, 43.353748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466103, 27.711821, 43.697479>,  <32.097923, 27.673746, 42.964890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466103, 27.711821, 43.697479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116383, 27.897848, 43.753059>,  <31.906549, 28.009464, 43.786407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116383, 27.897848, 43.753059>,  <32.466103, 27.711821, 43.697479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116383, 27.897848, 43.753059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049705, -0.370541, 0.927485,
		0.482828, 0.803997, 0.347082,
		-0.874303, 0.465068, 0.138946,
		31.854092, 28.037369, 43.794743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207802, 27.922182, 43.913059>,  <32.466103, 27.711821, 43.697479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207802, 27.922182, 43.913059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405766, 27.602140, 43.777473>,  <33.524544, 27.410116, 43.696121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405766, 27.602140, 43.777473>,  <33.207802, 27.922182, 43.913059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405766, 27.602140, 43.777473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318581, 0.530003, -0.785877,
		0.808436, 0.280951, 0.517202,
		0.494912, -0.800102, -0.338968,
		33.554237, 27.362110, 43.675781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929306, 28.127731, 43.747097>,  <33.207802, 27.922182, 43.913059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929306, 28.127731, 43.747097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847126, 27.799755, 43.533371>,  <33.797817, 27.602970, 43.405136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847126, 27.799755, 43.533371>,  <33.929306, 28.127731, 43.747097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847126, 27.799755, 43.533371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286089, 0.471796, -0.834004,
		0.935919, -0.324205, 0.137647,
		-0.205447, -0.819939, -0.534314,
		33.785492, 27.553774, 43.373077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501476, 28.140074, 43.336803>,  <33.929306, 28.127731, 43.747097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501476, 28.140074, 43.336803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267494, 27.874218, 43.150864>,  <34.127106, 27.714705, 43.039299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267494, 27.874218, 43.150864>,  <34.501476, 28.140074, 43.336803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267494, 27.874218, 43.150864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294493, 0.359971, -0.885265,
		0.755715, -0.654733, -0.014834,
		-0.584952, -0.664639, -0.464850,
		34.092007, 27.674826, 43.011410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950993, 27.730156, 42.834167>,  <34.501476, 28.140074, 43.336803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950993, 27.730156, 42.834167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561813, 27.728601, 42.741776>,  <34.328304, 27.727669, 42.686340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561813, 27.728601, 42.741776>,  <34.950993, 27.730156, 42.834167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561813, 27.728601, 42.741776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221579, 0.267099, -0.937849,
		0.065340, -0.963661, -0.259013,
		-0.972951, -0.003887, -0.230979,
		34.269928, 27.727434, 42.672482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008423, 27.364326, 42.256096>,  <34.950993, 27.730156, 42.834167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008423, 27.364326, 42.256096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664997, 27.569347, 42.261169>,  <34.458942, 27.692360, 42.264214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664997, 27.569347, 42.261169>,  <35.008423, 27.364326, 42.256096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664997, 27.569347, 42.261169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152210, 0.278433, -0.948318,
		-0.489595, -0.812259, -0.317068,
		-0.858562, 0.512552, 0.012685,
		34.407429, 27.723112, 42.264977>
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
