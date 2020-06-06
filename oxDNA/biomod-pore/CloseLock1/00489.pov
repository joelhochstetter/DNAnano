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
	<24.042803, 35.032909, 34.713356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334270, 34.974022, 34.980900>,  <24.509151, 34.938690, 35.141426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334270, 34.974022, 34.980900>,  <24.042803, 35.032909, 34.713356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334270, 34.974022, 34.980900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058875, -0.959544, -0.275336,
		0.682331, 0.240007, -0.690522,
		0.728668, -0.147216, 0.668857,
		24.552872, 34.929855, 35.181557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763624, 34.722034, 34.412201>,  <24.042803, 35.032909, 34.713356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763624, 34.722034, 34.412201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685116, 34.624531, 34.792107>,  <24.638010, 34.566029, 35.020050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.685116, 34.624531, 34.792107>,  <24.763624, 34.722034, 34.412201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685116, 34.624531, 34.792107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218009, -0.955211, -0.200109,
		0.956007, 0.167782, 0.240623,
		-0.196271, -0.243763, 0.949767,
		24.626234, 34.551403, 35.077038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738888, 34.012218, 34.602699>,  <24.763624, 34.722034, 34.412201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738888, 34.012218, 34.602699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119164, 33.945667, 34.498001>,  <25.347328, 33.905739, 34.435181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119164, 33.945667, 34.498001>,  <24.738888, 34.012218, 34.602699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119164, 33.945667, 34.498001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066944, -0.713974, 0.696965,
		-0.302837, -0.680119, -0.667629,
		0.950688, -0.166373, -0.261748,
		25.404369, 33.895756, 34.419476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832382, 33.257626, 34.491749>,  <24.738888, 34.012218, 34.602699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832382, 33.257626, 34.491749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186199, 33.419182, 34.585094>,  <25.398489, 33.516117, 34.641102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186199, 33.419182, 34.585094>,  <24.832382, 33.257626, 34.491749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186199, 33.419182, 34.585094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082483, -0.627827, 0.773970,
		0.459109, -0.665362, -0.588654,
		0.884543, 0.403890, 0.233360,
		25.451563, 33.540348, 34.655102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483898, 32.781815, 34.401573>,  <24.832382, 33.257626, 34.491749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483898, 32.781815, 34.401573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510633, 33.051834, 34.695469>,  <25.526674, 33.213844, 34.871807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.510633, 33.051834, 34.695469>,  <25.483898, 32.781815, 34.401573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510633, 33.051834, 34.695469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088980, -0.737485, 0.669477,
		0.993788, 0.020631, -0.109358,
		0.066837, 0.675049, 0.734739,
		25.530685, 33.254349, 34.915890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237532, 32.888695, 34.274796>,  <25.483898, 32.781815, 34.401573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237532, 32.888695, 34.274796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594913, 32.950657, 34.106155>,  <26.809343, 32.987835, 34.004971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594913, 32.950657, 34.106155>,  <26.237532, 32.888695, 34.274796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594913, 32.950657, 34.106155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131553, -0.807233, -0.575385,
		-0.429457, 0.569543, -0.700848,
		0.893454, 0.154905, -0.421597,
		26.862949, 32.997128, 33.979675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156351, 32.809692, 33.533566>,  <26.237532, 32.888695, 34.274796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156351, 32.809692, 33.533566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555113, 32.787342, 33.555676>,  <26.794371, 32.773933, 33.568943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555113, 32.787342, 33.555676>,  <26.156351, 32.809692, 33.533566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555113, 32.787342, 33.555676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003756, -0.736351, -0.676589,
		0.078508, 0.674288, -0.734283,
		0.996907, -0.055875, 0.055277,
		26.854185, 32.770580, 33.572258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533062, 32.961224, 32.892918>,  <26.156351, 32.809692, 33.533566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533062, 32.961224, 32.892918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741114, 32.693714, 33.105408>,  <26.865946, 32.533207, 33.232903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741114, 32.693714, 33.105408>,  <26.533062, 32.961224, 32.892918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741114, 32.693714, 33.105408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010875, -0.627120, -0.778847,
		0.854017, 0.399326, -0.333458,
		0.520132, -0.668775, 0.531229,
		26.897154, 32.493080, 33.264778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900070, 32.645901, 32.370678>,  <26.533062, 32.961224, 32.892918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900070, 32.645901, 32.370678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982948, 32.415348, 32.686867>,  <27.032675, 32.277016, 32.876579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982948, 32.415348, 32.686867>,  <26.900070, 32.645901, 32.370678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982948, 32.415348, 32.686867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260139, -0.746459, -0.612476,
		0.943079, 0.332534, -0.004721,
		0.207193, -0.576385, 0.790475,
		27.045107, 32.242432, 32.924007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549599, 32.418205, 32.345348>,  <26.900070, 32.645901, 32.370678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549599, 32.418205, 32.345348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360577, 32.152405, 32.576912>,  <27.247164, 31.992926, 32.715851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360577, 32.152405, 32.576912>,  <27.549599, 32.418205, 32.345348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360577, 32.152405, 32.576912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105575, -0.694831, -0.711382,
		0.874955, -0.275049, 0.398500,
		-0.472555, -0.664498, 0.578908,
		27.218811, 31.953054, 32.750584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952911, 31.817364, 32.266220>,  <27.549599, 32.418205, 32.345348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952911, 31.817364, 32.266220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603321, 31.683020, 32.406715>,  <27.393568, 31.602413, 32.491013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603321, 31.683020, 32.406715>,  <27.952911, 31.817364, 32.266220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603321, 31.683020, 32.406715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082323, -0.814622, -0.574119,
		0.478949, -0.472850, 0.739608,
		-0.873974, -0.335861, 0.351236,
		27.341129, 31.582262, 32.512085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990179, 31.079071, 32.533684>,  <27.952911, 31.817364, 32.266220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990179, 31.079071, 32.533684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600508, 31.116846, 32.451649>,  <27.366705, 31.139511, 32.402428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600508, 31.116846, 32.451649>,  <27.990179, 31.079071, 32.533684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600508, 31.116846, 32.451649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004508, -0.900012, -0.435842,
		-0.225737, -0.425513, 0.876346,
		-0.974178, 0.094435, -0.205084,
		27.308254, 31.145176, 32.390125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805487, 30.453180, 32.705345>,  <27.990179, 31.079071, 32.533684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805487, 30.453180, 32.705345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518322, 30.606022, 32.472588>,  <27.346024, 30.697727, 32.332932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518322, 30.606022, 32.472588>,  <27.805487, 30.453180, 32.705345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518322, 30.606022, 32.472588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017509, -0.825718, -0.563812,
		-0.695915, -0.414955, 0.586101,
		-0.717910, 0.382103, -0.581895,
		27.302950, 30.720654, 32.298019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181324, 29.879009, 32.680485>,  <27.805487, 30.453180, 32.705345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181324, 29.879009, 32.680485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136290, 30.123661, 32.367249>,  <27.109268, 30.270452, 32.179306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136290, 30.123661, 32.367249>,  <27.181324, 29.879009, 32.680485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136290, 30.123661, 32.367249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199295, -0.785989, -0.585238,
		-0.973450, 0.090176, 0.210387,
		-0.112587, 0.611629, -0.783093,
		27.102514, 30.307150, 32.132320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486433, 29.820707, 32.401001>,  <27.181324, 29.879009, 32.680485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486433, 29.820707, 32.401001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713120, 29.954611, 32.099865>,  <26.849131, 30.034954, 31.919184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713120, 29.954611, 32.099865>,  <26.486433, 29.820707, 32.401001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713120, 29.954611, 32.099865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314831, -0.756412, -0.573343,
		-0.761391, 0.561940, -0.323277,
		0.566715, 0.334760, -0.752841,
		26.883135, 30.055038, 31.874012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197790, 29.500656, 31.892874>,  <26.486433, 29.820707, 32.401001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197790, 29.500656, 31.892874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512964, 29.667458, 31.711651>,  <26.702068, 29.767538, 31.602917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512964, 29.667458, 31.711651>,  <26.197790, 29.500656, 31.892874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512964, 29.667458, 31.711651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081859, -0.658306, -0.748286,
		-0.610290, 0.626689, -0.484568,
		0.787937, 0.417006, -0.453058,
		26.749346, 29.792559, 31.575733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003670, 29.522720, 31.217178>,  <26.197790, 29.500656, 31.892874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003670, 29.522720, 31.217178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403616, 29.520540, 31.211010>,  <26.643583, 29.519232, 31.207310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403616, 29.520540, 31.211010>,  <26.003670, 29.522720, 31.217178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403616, 29.520540, 31.211010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014643, -0.718309, -0.695570,
		-0.007284, 0.695703, -0.718293,
		0.999866, -0.005451, -0.015419,
		26.703575, 29.518906, 31.206385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218571, 29.544214, 30.547331>,  <26.003670, 29.522720, 31.217178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218571, 29.544214, 30.547331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530190, 29.392578, 30.747080>,  <26.717161, 29.301596, 30.866928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.530190, 29.392578, 30.747080>,  <26.218571, 29.544214, 30.547331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530190, 29.392578, 30.747080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194030, -0.611612, -0.766996,
		0.596183, 0.694421, -0.402921,
		0.779049, -0.379092, 0.499371,
		26.763905, 29.278851, 30.896891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749338, 29.405588, 29.920298>,  <26.218571, 29.544214, 30.547331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749338, 29.405588, 29.920298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835024, 29.196251, 30.250200>,  <26.886435, 29.070648, 30.448143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835024, 29.196251, 30.250200>,  <26.749338, 29.405588, 29.920298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835024, 29.196251, 30.250200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143867, -0.818246, -0.556575,
		0.966134, 0.237881, -0.099987,
		0.214212, -0.523342, 0.824758,
		26.899288, 29.039248, 30.497627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299942, 29.096909, 29.690086>,  <26.749338, 29.405588, 29.920298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299942, 29.096909, 29.690086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145466, 28.897963, 30.000824>,  <27.052780, 28.778595, 30.187265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145466, 28.897963, 30.000824>,  <27.299942, 29.096909, 29.690086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145466, 28.897963, 30.000824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146290, -0.798495, -0.583956,
		0.910745, -0.339163, 0.235611,
		-0.386191, -0.497367, 0.776842,
		27.029608, 28.748753, 30.233877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704878, 28.466373, 29.718655>,  <27.299942, 29.096909, 29.690086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704878, 28.466373, 29.718655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369806, 28.380648, 29.919598>,  <27.168764, 28.329212, 30.040163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369806, 28.380648, 29.919598>,  <27.704878, 28.466373, 29.718655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369806, 28.380648, 29.919598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092767, -0.850597, -0.517570,
		0.538227, -0.480160, 0.692646,
		-0.837679, -0.214315, 0.502357,
		27.118502, 28.316353, 30.070305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761984, 27.711990, 29.795420>,  <27.704878, 28.466373, 29.718655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761984, 27.711990, 29.795420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382824, 27.813318, 29.872683>,  <27.155327, 27.874115, 29.919041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382824, 27.813318, 29.872683>,  <27.761984, 27.711990, 29.795420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382824, 27.813318, 29.872683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313535, -0.849170, -0.424978,
		0.056367, -0.463399, 0.884355,
		-0.947902, 0.253322, 0.193157,
		27.098454, 27.889315, 29.930630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468422, 27.180431, 30.113941>,  <27.761984, 27.711990, 29.795420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468422, 27.180431, 30.113941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138807, 27.372925, 29.994358>,  <26.941038, 27.488420, 29.922607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138807, 27.372925, 29.994358>,  <27.468422, 27.180431, 30.113941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138807, 27.372925, 29.994358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358294, -0.851441, -0.382980,
		-0.438849, -0.208475, 0.874042,
		-0.824037, 0.481235, -0.298959,
		26.891596, 27.517296, 29.904671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862226, 26.724064, 30.294338>,  <27.468422, 27.180431, 30.113941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862226, 26.724064, 30.294338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748484, 26.974976, 30.004328>,  <26.680239, 27.125523, 29.830322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748484, 26.974976, 30.004328>,  <26.862226, 26.724064, 30.294338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748484, 26.974976, 30.004328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431091, -0.759137, -0.487720,
		-0.856331, 0.173866, 0.486280,
		-0.284356, 0.627281, -0.725025,
		26.663177, 27.163160, 29.786821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067097, 26.742632, 30.231260>,  <26.862226, 26.724064, 30.294338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067097, 26.742632, 30.231260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206709, 26.860260, 29.875351>,  <26.290476, 26.930838, 29.661804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206709, 26.860260, 29.875351>,  <26.067097, 26.742632, 30.231260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206709, 26.860260, 29.875351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292870, -0.867696, -0.401659,
		-0.890171, 0.400780, -0.216727,
		0.349030, 0.294073, -0.889775,
		26.311419, 26.948483, 29.608418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609760, 26.496763, 29.697905>,  <26.067097, 26.742632, 30.231260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609760, 26.496763, 29.697905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970413, 26.556269, 29.535458>,  <26.186806, 26.591972, 29.437990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970413, 26.556269, 29.535458>,  <25.609760, 26.496763, 29.697905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970413, 26.556269, 29.535458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079381, -0.866117, -0.493498,
		-0.425158, 0.477191, -0.769110,
		0.901632, 0.148762, -0.406116,
		26.240902, 26.600897, 29.413622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489548, 26.524145, 28.935135>,  <25.609760, 26.496763, 29.697905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489548, 26.524145, 28.935135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856390, 26.405325, 29.041479>,  <26.076494, 26.334034, 29.105286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.856390, 26.405325, 29.041479>,  <25.489548, 26.524145, 28.935135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.856390, 26.405325, 29.041479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139425, -0.863795, -0.484168,
		0.373472, 0.406964, -0.833606,
		0.917104, -0.297049, 0.265862,
		26.131521, 26.316210, 29.121239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889380, 26.044807, 28.775146>,  <25.489548, 26.524145, 28.935135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889380, 26.044807, 28.775146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073048, 25.874405, 29.086964>,  <25.183249, 25.772163, 29.274054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073048, 25.874405, 29.086964>,  <24.889380, 26.044807, 28.775146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073048, 25.874405, 29.086964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867689, -0.026922, 0.496377,
		-0.190472, -0.904320, -0.382002,
		0.459169, -0.426005, 0.779541,
		25.210798, 25.746603, 29.320826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556555, 25.429020, 28.985554>,  <24.889380, 26.044807, 28.775146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556555, 25.429020, 28.985554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708141, 25.577278, 29.324730>,  <24.799093, 25.666233, 29.528236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708141, 25.577278, 29.324730>,  <24.556555, 25.429020, 28.985554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708141, 25.577278, 29.324730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826926, -0.275699, 0.490085,
		0.415424, -0.886912, 0.202014,
		0.378967, 0.370644, 0.847943,
		24.821831, 25.688471, 29.579113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460976, 24.911604, 29.550627>,  <24.556555, 25.429020, 28.985554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460976, 24.911604, 29.550627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456999, 25.291677, 29.675240>,  <24.454613, 25.519722, 29.750008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456999, 25.291677, 29.675240>,  <24.460976, 24.911604, 29.550627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456999, 25.291677, 29.675240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931142, -0.122369, 0.343513,
		0.364522, -0.286667, 0.885972,
		-0.009942, 0.950183, 0.311533,
		24.454016, 25.576733, 29.768700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877365, 24.498930, 29.940939>,  <24.460976, 24.911604, 29.550627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877365, 24.498930, 29.940939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493780, 24.406555, 30.006742>,  <24.263630, 24.351131, 30.046225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493780, 24.406555, 30.006742>,  <24.877365, 24.498930, 29.940939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493780, 24.406555, 30.006742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278329, 0.877409, -0.390751,
		-0.054102, -0.420502, -0.905677,
		-0.958961, -0.230936, 0.164508,
		24.206091, 24.337275, 30.056095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717409, 24.268757, 30.638857>,  <24.877365, 24.498930, 29.940939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717409, 24.268757, 30.638857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531609, 24.237995, 30.991749>,  <24.420128, 24.219538, 31.203484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531609, 24.237995, 30.991749>,  <24.717409, 24.268757, 30.638857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531609, 24.237995, 30.991749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840604, 0.275137, 0.466567,
		-0.278614, 0.958324, -0.063156,
		-0.464499, -0.076903, 0.882228,
		24.392260, 24.214924, 31.256416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659678, 24.926775, 30.987080>,  <24.717409, 24.268757, 30.638857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659678, 24.926775, 30.987080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662323, 24.655876, 31.281370>,  <24.663910, 24.493336, 31.457945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662323, 24.655876, 31.281370>,  <24.659678, 24.926775, 30.987080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662323, 24.655876, 31.281370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950434, 0.232972, 0.205911,
		-0.310856, 0.697896, 0.645221,
		0.006614, -0.677248, 0.735725,
		24.664307, 24.452702, 31.502087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788086, 25.241419, 31.672089>,  <24.659678, 24.926775, 30.987080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788086, 25.241419, 31.672089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915918, 24.864767, 31.629747>,  <24.992617, 24.638777, 31.604343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915918, 24.864767, 31.629747>,  <24.788086, 25.241419, 31.672089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915918, 24.864767, 31.629747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947247, 0.314604, 0.061224,
		-0.024349, -0.119834, 0.992495,
		0.319579, -0.941629, -0.105852,
		25.011791, 24.582279, 31.597992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150589, 24.961922, 32.341148>,  <24.788086, 25.241419, 31.672089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150589, 24.961922, 32.341148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263283, 24.800421, 31.992987>,  <25.330898, 24.703520, 31.784088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263283, 24.800421, 31.992987>,  <25.150589, 24.961922, 32.341148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263283, 24.800421, 31.992987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938382, 0.305188, 0.162169,
		0.200162, -0.862464, 0.464856,
		0.281733, -0.403753, -0.870408,
		25.347803, 24.679295, 31.731865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686108, 24.540625, 32.411125>,  <25.150589, 24.961922, 32.341148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686108, 24.540625, 32.411125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675013, 24.717018, 32.052292>,  <25.668356, 24.822853, 31.836990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675013, 24.717018, 32.052292>,  <25.686108, 24.540625, 32.411125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675013, 24.717018, 32.052292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712523, 0.638154, 0.291667,
		0.701100, -0.631105, -0.331911,
		-0.027738, 0.440983, -0.897087,
		25.666691, 24.849314, 31.783165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362257, 24.649206, 32.096935>,  <25.686108, 24.540625, 32.411125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362257, 24.649206, 32.096935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128931, 24.936729, 31.945642>,  <25.988935, 25.109243, 31.854866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128931, 24.936729, 31.945642>,  <26.362257, 24.649206, 32.096935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128931, 24.936729, 31.945642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680996, 0.686602, 0.254601,
		0.442705, -0.109062, -0.890010,
		-0.583315, 0.718807, -0.378233,
		25.953936, 25.152372, 31.832172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811754, 25.087427, 31.815842>,  <26.362257, 24.649206, 32.096935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811754, 25.087427, 31.815842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473921, 25.291039, 31.882259>,  <26.271221, 25.413206, 31.922110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473921, 25.291039, 31.882259>,  <26.811754, 25.087427, 31.815842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473921, 25.291039, 31.882259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535258, 0.810479, 0.237956,
		-0.013450, 0.289850, -0.956978,
		-0.844582, 0.509029, 0.166046,
		26.220547, 25.443747, 31.932074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945917, 25.718515, 31.708431>,  <26.811754, 25.087427, 31.815842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945917, 25.718515, 31.708431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617918, 25.771193, 31.931236>,  <26.421118, 25.802799, 32.064919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617918, 25.771193, 31.931236>,  <26.945917, 25.718515, 31.708431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617918, 25.771193, 31.931236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424728, 0.792358, 0.437922,
		-0.383680, 0.595673, -0.705666,
		-0.819998, 0.131694, 0.557011,
		26.371920, 25.810701, 32.098339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736145, 26.422371, 31.609695>,  <26.945917, 25.718515, 31.708431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736145, 26.422371, 31.609695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569782, 26.280825, 31.944790>,  <26.469965, 26.195896, 32.145847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569782, 26.280825, 31.944790>,  <26.736145, 26.422371, 31.609695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569782, 26.280825, 31.944790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502957, 0.677975, 0.536083,
		-0.757666, 0.644304, -0.103993,
		-0.415905, -0.353868, 0.837736,
		26.445011, 26.174664, 32.196110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679020, 26.964186, 32.002735>,  <26.736145, 26.422371, 31.609695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679020, 26.964186, 32.002735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620096, 26.696575, 32.294132>,  <26.584742, 26.536009, 32.468971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620096, 26.696575, 32.294132>,  <26.679020, 26.964186, 32.002735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620096, 26.696575, 32.294132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400455, 0.633123, 0.662413,
		-0.904398, 0.389309, 0.174651,
		-0.147308, -0.669025, 0.728496,
		26.575905, 26.495867, 32.512680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209393, 27.280615, 32.380699>,  <26.679020, 26.964186, 32.002735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209393, 27.280615, 32.380699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444668, 27.037493, 32.594093>,  <26.585833, 26.891621, 32.722130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444668, 27.037493, 32.594093>,  <26.209393, 27.280615, 32.380699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444668, 27.037493, 32.594093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260404, 0.766872, 0.586598,
		-0.765652, -0.206109, 0.609341,
		0.588190, -0.607804, 0.533485,
		26.621124, 26.855152, 32.754139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196688, 27.511694, 33.162746>,  <26.209393, 27.280615, 32.380699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196688, 27.511694, 33.162746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519321, 27.276758, 33.136055>,  <26.712902, 27.135798, 33.120041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519321, 27.276758, 33.136055>,  <26.196688, 27.511694, 33.162746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519321, 27.276758, 33.136055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547343, 0.699454, 0.459542,
		-0.223235, -0.407182, 0.885646,
		0.806586, -0.587338, -0.066726,
		26.761297, 27.100557, 33.116035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524624, 27.495880, 33.915283>,  <26.196688, 27.511694, 33.162746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524624, 27.495880, 33.915283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821676, 27.369049, 33.679329>,  <26.999907, 27.292950, 33.537758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821676, 27.369049, 33.679329>,  <26.524624, 27.495880, 33.915283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821676, 27.369049, 33.679329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635935, 0.610041, 0.472691,
		0.209972, -0.726161, 0.654676,
		0.742629, -0.317080, -0.589883,
		27.044464, 27.273926, 33.502365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994154, 27.316553, 34.368446>,  <26.524624, 27.495880, 33.915283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994154, 27.316553, 34.368446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181116, 27.372562, 34.019295>,  <27.293293, 27.406168, 33.809803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181116, 27.372562, 34.019295>,  <26.994154, 27.316553, 34.368446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181116, 27.372562, 34.019295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711664, 0.526174, 0.465484,
		0.524464, -0.838770, 0.146294,
		0.467410, 0.140017, -0.872882,
		27.321337, 27.414570, 33.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606436, 27.096703, 34.417435>,  <26.994154, 27.316553, 34.368446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606436, 27.096703, 34.417435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611313, 27.397612, 34.153938>,  <27.614239, 27.578157, 33.995842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611313, 27.397612, 34.153938>,  <27.606436, 27.096703, 34.417435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611313, 27.397612, 34.153938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624869, 0.508581, 0.592354,
		0.780634, -0.418848, -0.463871,
		0.012191, 0.752271, -0.658741,
		27.614969, 27.623293, 33.956314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294910, 27.456293, 34.572624>,  <27.606436, 27.096703, 34.417435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294910, 27.456293, 34.572624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102995, 27.709305, 34.329411>,  <27.987846, 27.861113, 34.183483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102995, 27.709305, 34.329411>,  <28.294910, 27.456293, 34.572624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102995, 27.709305, 34.329411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424609, 0.773846, 0.469967,
		0.767795, -0.032693, -0.639860,
		-0.479789, 0.632530, -0.608037,
		27.959059, 27.899063, 34.146999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822905, 27.870052, 34.296604>,  <28.294910, 27.456293, 34.572624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822905, 27.870052, 34.296604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484533, 28.075472, 34.239094>,  <28.281509, 28.198723, 34.204590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484533, 28.075472, 34.239094>,  <28.822905, 27.870052, 34.296604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484533, 28.075472, 34.239094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461660, 0.840146, 0.284649,
		0.266971, 0.174418, -0.947789,
		-0.845929, 0.513550, -0.143773,
		28.230755, 28.229536, 34.195961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075232, 28.368088, 33.915707>,  <28.822905, 27.870052, 34.296604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075232, 28.368088, 33.915707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740742, 28.484657, 34.101524>,  <28.540049, 28.554600, 34.213017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740742, 28.484657, 34.101524>,  <29.075232, 28.368088, 33.915707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740742, 28.484657, 34.101524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422778, 0.882122, 0.207652,
		-0.349272, 0.370044, -0.860858,
		-0.836222, 0.291425, 0.464547,
		28.489876, 28.572084, 34.240887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063242, 29.069653, 33.782688>,  <29.075232, 28.368088, 33.915707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063242, 29.069653, 33.782688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767811, 29.062277, 34.052254>,  <28.590551, 29.057852, 34.213993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767811, 29.062277, 34.052254>,  <29.063242, 29.069653, 33.782688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767811, 29.062277, 34.052254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174706, 0.960243, 0.217740,
		-0.651137, 0.278555, -0.705994,
		-0.738579, -0.018437, 0.673915,
		28.546238, 29.056746, 34.254429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611279, 29.644855, 33.632263>,  <29.063242, 29.069653, 33.782688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611279, 29.644855, 33.632263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532661, 29.578417, 34.018791>,  <28.485491, 29.538553, 34.250710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532661, 29.578417, 34.018791>,  <28.611279, 29.644855, 33.632263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532661, 29.578417, 34.018791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241086, 0.947104, 0.211830,
		-0.950394, 0.274601, -0.146103,
		-0.196543, -0.166099, 0.966324,
		28.473698, 29.528587, 34.308689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102951, 30.122217, 33.871895>,  <28.611279, 29.644855, 33.632263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102951, 30.122217, 33.871895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311190, 29.996836, 34.189568>,  <28.436132, 29.921606, 34.380173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311190, 29.996836, 34.189568>,  <28.102951, 30.122217, 33.871895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311190, 29.996836, 34.189568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375291, 0.919505, 0.116911,
		-0.766901, 0.237186, 0.596327,
		0.520596, -0.313455, 0.794183,
		28.467369, 29.902800, 34.427822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885090, 30.506556, 34.435024>,  <28.102951, 30.122217, 33.871895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885090, 30.506556, 34.435024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237055, 30.364874, 34.561699>,  <28.448235, 30.279865, 34.637703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237055, 30.364874, 34.561699>,  <27.885090, 30.506556, 34.435024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237055, 30.364874, 34.561699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265646, 0.919360, 0.290188,
		-0.393933, -0.171215, 0.903052,
		0.879914, -0.354206, 0.316684,
		28.501030, 30.258612, 34.656704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968386, 30.671263, 35.171486>,  <27.885090, 30.506556, 34.435024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968386, 30.671263, 35.171486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332981, 30.649813, 35.008362>,  <28.551739, 30.636942, 34.910488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332981, 30.649813, 35.008362>,  <27.968386, 30.671263, 35.171486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332981, 30.649813, 35.008362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285093, 0.797041, 0.532398,
		0.296492, -0.601540, 0.741783,
		0.911490, -0.053625, -0.407811,
		28.606428, 30.633726, 34.886017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484539, 30.949070, 35.737625>,  <27.968386, 30.671263, 35.171486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484539, 30.949070, 35.737625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691292, 30.960089, 35.395378>,  <28.815344, 30.966700, 35.190029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691292, 30.960089, 35.395378>,  <28.484539, 30.949070, 35.737625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691292, 30.960089, 35.395378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315022, 0.923227, 0.220032,
		0.795988, -0.383267, 0.468519,
		0.516880, 0.027549, -0.855614,
		28.846355, 30.968353, 35.138695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170616, 31.104748, 35.941116>,  <28.484539, 30.949070, 35.737625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170616, 31.104748, 35.941116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146458, 31.187101, 35.550430>,  <29.131964, 31.236513, 35.316021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146458, 31.187101, 35.550430>,  <29.170616, 31.104748, 35.941116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146458, 31.187101, 35.550430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271703, 0.944941, 0.182386,
		0.960484, -0.254360, -0.113009,
		-0.060395, 0.205884, -0.976711,
		29.128340, 31.248867, 35.257416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740641, 31.552805, 35.838692>,  <29.170616, 31.104748, 35.941116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740641, 31.552805, 35.838692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533525, 31.590828, 35.498608>,  <29.409256, 31.613642, 35.294556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.533525, 31.590828, 35.498608>,  <29.740641, 31.552805, 35.838692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533525, 31.590828, 35.498608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139233, 0.989921, 0.025885,
		0.844102, -0.104974, -0.525805,
		-0.517789, 0.095059, -0.850211,
		29.378189, 31.619347, 35.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145815, 31.853495, 35.350990>,  <29.740641, 31.552805, 35.838692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145815, 31.853495, 35.350990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759224, 31.951828, 35.321358>,  <29.527269, 32.010826, 35.303577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759224, 31.951828, 35.321358>,  <30.145815, 31.853495, 35.350990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759224, 31.951828, 35.321358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232349, 0.960194, 0.155051,
		0.109248, 0.132641, -0.985125,
		-0.966477, 0.245832, -0.074080,
		29.469280, 32.025578, 35.299133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676640, 32.231438, 35.711124>,  <30.145815, 31.853495, 35.350990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676640, 32.231438, 35.711124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948284, 32.483589, 35.560692>,  <31.111271, 32.634880, 35.470432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948284, 32.483589, 35.560692>,  <30.676640, 32.231438, 35.711124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948284, 32.483589, 35.560692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632600, -0.242736, 0.735457,
		0.372325, -0.737365, -0.563620,
		0.679110, 0.630375, -0.376081,
		31.152018, 32.672703, 35.447868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340052, 31.864021, 35.847179>,  <30.676640, 32.231438, 35.711124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340052, 31.864021, 35.847179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357174, 32.263611, 35.853107>,  <31.367447, 32.503365, 35.856667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357174, 32.263611, 35.853107>,  <31.340052, 31.864021, 35.847179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357174, 32.263611, 35.853107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463480, -0.033000, 0.885492,
		0.885073, -0.031036, -0.464417,
		0.042808, 0.998973, 0.014823,
		31.370016, 32.563301, 35.857555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068867, 32.134865, 36.046654>,  <31.340052, 31.864021, 35.847179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068867, 32.134865, 36.046654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763609, 32.369793, 36.154472>,  <31.580454, 32.510750, 36.219166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763609, 32.369793, 36.154472>,  <32.068867, 32.134865, 36.046654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763609, 32.369793, 36.154472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238969, -0.131063, 0.962142,
		0.600417, 0.798670, -0.040332,
		-0.763147, 0.587324, 0.269550,
		31.534664, 32.545990, 36.235336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393940, 32.665775, 36.507973>,  <32.068867, 32.134865, 36.046654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393940, 32.665775, 36.507973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004879, 32.599976, 36.573559>,  <31.771442, 32.560493, 36.612911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004879, 32.599976, 36.573559>,  <32.393940, 32.665775, 36.507973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004879, 32.599976, 36.573559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210279, -0.323880, 0.922434,
		-0.098636, 0.931687, 0.349614,
		-0.972653, -0.164502, 0.163968,
		31.713083, 32.550625, 36.622749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142830, 33.039825, 37.159004>,  <32.393940, 32.665775, 36.507973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142830, 33.039825, 37.159004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953449, 32.706364, 37.045261>,  <31.839821, 32.506287, 36.977016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953449, 32.706364, 37.045261>,  <32.142830, 33.039825, 37.159004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953449, 32.706364, 37.045261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009331, -0.327566, 0.944782,
		-0.880769, 0.444658, 0.162867,
		-0.473454, -0.833655, -0.284361,
		31.811413, 32.456268, 36.959953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460550, 32.989540, 37.432514>,  <32.142830, 33.039825, 37.159004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460550, 32.989540, 37.432514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569708, 32.611130, 37.362579>,  <31.635202, 32.384083, 37.320618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569708, 32.611130, 37.362579>,  <31.460550, 32.989540, 37.432514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569708, 32.611130, 37.362579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055090, -0.196805, 0.978894,
		-0.960466, -0.257500, -0.105823,
		0.272892, -0.946024, -0.174839,
		31.651575, 32.327324, 37.310127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051765, 32.624798, 37.869370>,  <31.460550, 32.989540, 37.432514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051765, 32.624798, 37.869370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349918, 32.367249, 37.800278>,  <31.528811, 32.212719, 37.758823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349918, 32.367249, 37.800278>,  <31.051765, 32.624798, 37.869370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349918, 32.367249, 37.800278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016559, -0.276906, 0.960754,
		-0.666431, -0.713270, -0.217063,
		0.745383, -0.643871, -0.172728,
		31.573534, 32.174088, 37.748459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870419, 31.891144, 38.227844>,  <31.051765, 32.624798, 37.869370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870419, 31.891144, 38.227844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262560, 31.953321, 38.179276>,  <31.497845, 31.990629, 38.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262560, 31.953321, 38.179276>,  <30.870419, 31.891144, 38.227844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262560, 31.953321, 38.179276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156195, -0.235896, 0.959143,
		0.120453, -0.959265, -0.255542,
		0.980354, 0.155446, -0.121418,
		31.556665, 31.999956, 38.142849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095150, 31.411341, 38.519985>,  <30.870419, 31.891144, 38.227844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095150, 31.411341, 38.519985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416962, 31.644571, 38.474815>,  <31.610048, 31.784510, 38.447712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416962, 31.644571, 38.474815>,  <31.095150, 31.411341, 38.519985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416962, 31.644571, 38.474815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367576, -0.339497, 0.865812,
		0.466496, -0.738081, -0.487460,
		0.804531, 0.583076, -0.112927,
		31.658321, 31.819494, 38.440937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582479, 31.122862, 38.858757>,  <31.095150, 31.411341, 38.519985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582479, 31.122862, 38.858757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776350, 31.472546, 38.847099>,  <31.892672, 31.682356, 38.840103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776350, 31.472546, 38.847099>,  <31.582479, 31.122862, 38.858757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776350, 31.472546, 38.847099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403776, -0.194056, 0.894040,
		0.775921, -0.445088, -0.447038,
		0.484677, 0.874208, -0.029144,
		31.921753, 31.734808, 38.838356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327671, 31.022432, 39.012901>,  <31.582479, 31.122862, 38.858757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327671, 31.022432, 39.012901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212799, 31.391699, 39.115112>,  <32.143875, 31.613258, 39.176437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212799, 31.391699, 39.115112>,  <32.327671, 31.022432, 39.012901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212799, 31.391699, 39.115112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605531, -0.031734, 0.795189,
		0.742199, 0.383092, -0.549892,
		-0.287180, 0.923165, 0.255527,
		32.126644, 31.668648, 39.191769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864273, 31.196264, 39.378418>,  <32.327671, 31.022432, 39.012901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864273, 31.196264, 39.378418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641891, 31.512857, 39.479977>,  <32.508461, 31.702814, 39.540913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641891, 31.512857, 39.479977>,  <32.864273, 31.196264, 39.378418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641891, 31.512857, 39.479977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380688, -0.029081, 0.924246,
		0.738910, 0.610496, -0.285141,
		-0.555957, 0.791485, 0.253897,
		32.475105, 31.750303, 39.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294292, 31.600351, 39.807983>,  <32.864273, 31.196264, 39.378418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294292, 31.600351, 39.807983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911797, 31.685631, 39.888130>,  <32.682297, 31.736797, 39.936218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911797, 31.685631, 39.888130>,  <33.294292, 31.600351, 39.807983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911797, 31.685631, 39.888130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152829, -0.219987, 0.963457,
		0.249483, 0.951921, 0.177778,
		-0.956243, 0.213196, 0.200364,
		32.624924, 31.749590, 39.948238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307934, 31.966515, 40.368298>,  <33.294292, 31.600351, 39.807983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307934, 31.966515, 40.368298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926113, 31.848141, 40.382515>,  <32.697021, 31.777117, 40.391045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926113, 31.848141, 40.382515>,  <33.307934, 31.966515, 40.368298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926113, 31.848141, 40.382515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117738, -0.264810, 0.957086,
		-0.273820, 0.917769, 0.287616,
		-0.954547, -0.295933, 0.035546,
		32.639748, 31.759361, 40.393177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056828, 32.236050, 41.009487>,  <33.307934, 31.966515, 40.368298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056828, 32.236050, 41.009487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821793, 31.926086, 40.916313>,  <32.680771, 31.740108, 40.860409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821793, 31.926086, 40.916313>,  <33.056828, 32.236050, 41.009487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821793, 31.926086, 40.916313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109504, -0.361374, 0.925968,
		-0.801720, 0.518576, 0.297194,
		-0.587583, -0.774911, -0.232934,
		32.645519, 31.693613, 40.846432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506298, 32.181652, 41.666985>,  <33.056828, 32.236050, 41.009487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506298, 32.181652, 41.666985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539188, 31.839842, 41.461842>,  <32.558922, 31.634756, 41.338757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539188, 31.839842, 41.461842>,  <32.506298, 32.181652, 41.666985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539188, 31.839842, 41.461842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146117, -0.498706, 0.854367,
		-0.985845, -0.145185, 0.083856,
		0.082222, -0.854526, -0.512860,
		32.563854, 31.583485, 41.307983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101398, 31.704815, 42.134716>,  <32.506298, 32.181652, 41.666985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101398, 31.704815, 42.134716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303326, 31.470060, 41.881504>,  <32.424480, 31.329208, 41.729576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303326, 31.470060, 41.881504>,  <32.101398, 31.704815, 42.134716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303326, 31.470060, 41.881504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239571, -0.609269, 0.755908,
		-0.829317, -0.533250, -0.166968,
		0.504817, -0.586886, -0.633028,
		32.454769, 31.293995, 41.691597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760015, 31.076101, 42.135296>,  <32.101398, 31.704815, 42.134716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760015, 31.076101, 42.135296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142410, 31.013025, 42.036324>,  <32.371849, 30.975180, 41.976940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142410, 31.013025, 42.036324>,  <31.760015, 31.076101, 42.135296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142410, 31.013025, 42.036324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043985, -0.756747, 0.652227,
		-0.290092, -0.634404, -0.716504,
		0.955987, -0.157691, -0.247431,
		32.429207, 30.965717, 41.962093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872751, 30.398438, 42.130436>,  <31.760015, 31.076101, 42.135296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872751, 30.398438, 42.130436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250870, 30.524538, 42.163979>,  <32.477741, 30.600199, 42.184105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250870, 30.524538, 42.163979>,  <31.872751, 30.398438, 42.130436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250870, 30.524538, 42.163979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177814, -0.713462, 0.677757,
		0.273495, -0.625769, -0.730489,
		0.945295, 0.315254, 0.083858,
		32.534458, 30.619114, 42.189137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308304, 29.757988, 42.121319>,  <31.872751, 30.398438, 42.130436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308304, 29.757988, 42.121319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523117, 30.047537, 42.294575>,  <32.652004, 30.221266, 42.398529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523117, 30.047537, 42.294575>,  <32.308304, 29.757988, 42.121319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523117, 30.047537, 42.294575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174646, -0.597744, 0.782432,
		0.825286, -0.344544, -0.447428,
		0.537030, 0.723872, 0.433137,
		32.684227, 30.264698, 42.424515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896889, 29.447369, 42.362358>,  <32.308304, 29.757988, 42.121319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896889, 29.447369, 42.362358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885006, 29.789061, 42.569977>,  <32.877876, 29.994076, 42.694546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885006, 29.789061, 42.569977>,  <32.896889, 29.447369, 42.362358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885006, 29.789061, 42.569977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239277, -0.498098, 0.833454,
		0.970497, 0.148957, -0.189600,
		-0.029710, 0.854231, 0.519044,
		32.876095, 30.045330, 42.725689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282993, 29.368200, 42.980980>,  <32.896889, 29.447369, 42.362358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282993, 29.368200, 42.980980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120731, 29.716225, 43.093006>,  <33.023376, 29.925039, 43.160221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120731, 29.716225, 43.093006>,  <33.282993, 29.368200, 42.980980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120731, 29.716225, 43.093006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105100, -0.259979, 0.959877,
		0.907964, 0.418813, 0.014018,
		-0.405653, 0.870061, 0.280069,
		32.999035, 29.977243, 43.177029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696182, 29.559727, 43.567215>,  <33.282993, 29.368200, 42.980980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696182, 29.559727, 43.567215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342236, 29.744801, 43.588871>,  <33.129868, 29.855844, 43.601864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342236, 29.744801, 43.588871>,  <33.696182, 29.559727, 43.567215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342236, 29.744801, 43.588871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044400, -0.199453, 0.978901,
		0.463721, 0.863795, 0.197032,
		-0.884868, 0.462685, 0.054138,
		33.076775, 29.883606, 43.605114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710285, 30.136734, 44.084164>,  <33.696182, 29.559727, 43.567215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710285, 30.136734, 44.084164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329838, 30.029011, 44.023701>,  <33.101570, 29.964376, 43.987423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329838, 30.029011, 44.023701>,  <33.710285, 30.136734, 44.084164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329838, 30.029011, 44.023701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101317, -0.190254, 0.976493,
		-0.291734, 0.944075, 0.153669,
		-0.951118, -0.269306, -0.151155,
		33.044502, 29.948219, 43.978355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319527, 30.391964, 44.686707>,  <33.710285, 30.136734, 44.084164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319527, 30.391964, 44.686707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107296, 30.087124, 44.538277>,  <32.979958, 29.904221, 44.449219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107296, 30.087124, 44.538277>,  <33.319527, 30.391964, 44.686707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107296, 30.087124, 44.538277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124512, -0.362953, 0.923451,
		-0.838444, 0.536163, 0.097683,
		-0.530575, -0.762099, -0.371074,
		32.948124, 29.858494, 44.426956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919342, 30.333506, 45.248348>,  <33.319527, 30.391964, 44.686707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919342, 30.333506, 45.248348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861092, 29.996943, 45.040184>,  <32.826141, 29.795006, 44.915283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861092, 29.996943, 45.040184>,  <32.919342, 30.333506, 45.248348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861092, 29.996943, 45.040184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097854, -0.511191, 0.853878,
		-0.984489, 0.175270, -0.007893,
		-0.145625, -0.841406, -0.520413,
		32.817406, 29.744520, 44.884060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269238, 30.051945, 45.461403>,  <32.919342, 30.333506, 45.248348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269238, 30.051945, 45.461403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493633, 29.754946, 45.314983>,  <32.628269, 29.576746, 45.227131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493633, 29.754946, 45.314983>,  <32.269238, 30.051945, 45.461403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493633, 29.754946, 45.314983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044416, -0.468540, 0.882325,
		-0.826633, -0.478714, -0.295824,
		0.560987, -0.742498, -0.366048,
		32.661930, 29.532196, 45.205170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848640, 29.421780, 45.397030>,  <32.269238, 30.051945, 45.461403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848640, 29.421780, 45.397030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224926, 29.291536, 45.435047>,  <32.450699, 29.213390, 45.457859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224926, 29.291536, 45.435047>,  <31.848640, 29.421780, 45.397030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224926, 29.291536, 45.435047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244485, -0.456662, 0.855387,
		-0.235118, -0.827913, -0.509195,
		0.940716, -0.325608, 0.095043,
		32.507141, 29.193853, 45.463558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781040, 28.906313, 45.811050>,  <31.848640, 29.421780, 45.397030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781040, 28.906313, 45.811050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180759, 28.918583, 45.802483>,  <32.420593, 28.925945, 45.797344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180759, 28.918583, 45.802483>,  <31.781040, 28.906313, 45.811050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180759, 28.918583, 45.802483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031111, -0.363403, 0.931112,
		0.020777, -0.931127, -0.364103,
		0.999300, 0.030674, -0.021418,
		32.480549, 28.927784, 45.796059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105080, 28.218721, 46.165092>,  <31.781040, 28.906313, 45.811050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105080, 28.218721, 46.165092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404778, 28.482698, 46.187382>,  <32.584595, 28.641085, 46.200756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404778, 28.482698, 46.187382>,  <32.105080, 28.218721, 46.165092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404778, 28.482698, 46.187382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294289, -0.407116, 0.864668,
		0.593317, -0.631450, -0.499244,
		0.749245, 0.659945, 0.055720,
		32.629551, 28.680681, 46.204098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650455, 27.849785, 46.431824>,  <32.105080, 28.218721, 46.165092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650455, 27.849785, 46.431824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738346, 28.230452, 46.517666>,  <32.791080, 28.458851, 46.569172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738346, 28.230452, 46.517666>,  <32.650455, 27.849785, 46.431824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738346, 28.230452, 46.517666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443949, -0.293424, 0.846647,
		0.868695, -0.090754, -0.486963,
		0.219724, 0.951665, 0.214606,
		32.804264, 28.515951, 46.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413563, 27.924360, 46.632999>,  <32.650455, 27.849785, 46.431824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413563, 27.924360, 46.632999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212952, 28.230263, 46.794800>,  <33.092583, 28.413803, 46.891880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212952, 28.230263, 46.794800>,  <33.413563, 27.924360, 46.632999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212952, 28.230263, 46.794800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399712, -0.209826, 0.892302,
		0.767266, 0.609200, -0.200447,
		-0.501531, 0.764754, 0.404497,
		33.062492, 28.459688, 46.916149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879932, 28.347155, 47.020313>,  <33.413563, 27.924360, 46.632999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879932, 28.347155, 47.020313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523129, 28.437117, 47.177151>,  <33.309048, 28.491095, 47.271255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523129, 28.437117, 47.177151>,  <33.879932, 28.347155, 47.020313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523129, 28.437117, 47.177151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395332, -0.032421, 0.917966,
		0.219169, 0.973841, -0.059993,
		-0.892008, 0.224907, 0.392096,
		33.255527, 28.504589, 47.294781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997459, 28.903753, 47.514297>,  <33.879932, 28.347155, 47.020313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997459, 28.903753, 47.514297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652699, 28.728542, 47.616478>,  <33.445843, 28.623417, 47.677788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652699, 28.728542, 47.616478>,  <33.997459, 28.903753, 47.514297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652699, 28.728542, 47.616478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294613, -0.022552, 0.955351,
		-0.412708, 0.898679, 0.148486,
		-0.861902, -0.438026, 0.255455,
		33.394127, 28.597134, 47.693115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687923, 29.259050, 48.120380>,  <33.997459, 28.903753, 47.514297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687923, 29.259050, 48.120380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536598, 28.888824, 48.114651>,  <33.445805, 28.666689, 48.111214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536598, 28.888824, 48.114651>,  <33.687923, 29.259050, 48.120380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536598, 28.888824, 48.114651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095238, -0.054315, 0.993972,
		-0.920765, 0.374669, 0.108698,
		-0.378314, -0.925566, -0.014328,
		33.423103, 28.611155, 48.110352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128597, 29.226006, 48.714767>,  <33.687923, 29.259050, 48.120380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128597, 29.226006, 48.714767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200356, 28.840828, 48.634216>,  <33.243412, 28.609720, 48.585884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200356, 28.840828, 48.634216>,  <33.128597, 29.226006, 48.714767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200356, 28.840828, 48.634216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150844, -0.175354, 0.972881,
		-0.972143, -0.204909, 0.113796,
		0.179397, -0.962945, -0.201378,
		33.254173, 28.551945, 48.573803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711834, 28.923689, 49.178558>,  <33.128597, 29.226006, 48.714767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711834, 28.923689, 49.178558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968079, 28.643511, 49.052704>,  <33.121826, 28.475405, 48.977192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968079, 28.643511, 49.052704>,  <32.711834, 28.923689, 49.178558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968079, 28.643511, 49.052704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237856, -0.208585, 0.948639,
		-0.730097, -0.682547, 0.032982,
		0.640611, -0.700444, -0.314635,
		33.160263, 28.433378, 48.958313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629440, 28.374548, 49.480949>,  <32.711834, 28.923689, 49.178558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629440, 28.374548, 49.480949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006004, 28.313021, 49.360889>,  <33.231941, 28.276104, 49.288853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006004, 28.313021, 49.360889>,  <32.629440, 28.374548, 49.480949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006004, 28.313021, 49.360889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258240, -0.243675, 0.934845,
		-0.216932, -0.957582, -0.189677,
		0.941410, -0.153815, -0.300147,
		33.288425, 28.266874, 49.270844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772823, 27.725643, 49.680870>,  <32.629440, 28.374548, 49.480949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772823, 27.725643, 49.680870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127140, 27.906454, 49.638828>,  <33.339729, 28.014940, 49.613602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127140, 27.906454, 49.638828>,  <32.772823, 27.725643, 49.680870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127140, 27.906454, 49.638828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220265, -0.210143, 0.952535,
		0.408483, -0.866898, -0.285709,
		0.885790, 0.452026, -0.105108,
		33.392876, 28.042063, 49.607296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319553, 27.301558, 49.902466>,  <32.772823, 27.725643, 49.680870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319553, 27.301558, 49.902466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520477, 27.647072, 49.918247>,  <33.641033, 27.854380, 49.927715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520477, 27.647072, 49.918247>,  <33.319553, 27.301558, 49.902466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520477, 27.647072, 49.918247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446388, -0.298119, 0.843719,
		0.740553, -0.406202, -0.535333,
		0.502314, 0.863785, 0.039450,
		33.671173, 27.906208, 49.930080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959816, 27.099724, 50.027470>,  <33.319553, 27.301558, 49.902466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959816, 27.099724, 50.027470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935230, 27.481859, 50.143089>,  <33.920479, 27.711140, 50.212460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935230, 27.481859, 50.143089>,  <33.959816, 27.099724, 50.027470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935230, 27.481859, 50.143089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574169, -0.203041, 0.793161,
		0.816427, 0.214715, -0.536046,
		-0.061465, 0.955338, 0.289051,
		33.916790, 27.768461, 50.229805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669819, 27.325396, 50.201126>,  <33.959816, 27.099724, 50.027470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669819, 27.325396, 50.201126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426197, 27.586908, 50.380737>,  <34.280025, 27.743816, 50.488503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426197, 27.586908, 50.380737>,  <34.669819, 27.325396, 50.201126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426197, 27.586908, 50.380737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484885, -0.141096, 0.863121,
		0.627649, 0.743412, -0.231074,
		-0.609051, 0.653781, 0.449028,
		34.243481, 27.783043, 50.515446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138195, 27.744799, 50.522427>,  <34.669819, 27.325396, 50.201126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138195, 27.744799, 50.522427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794029, 27.774044, 50.724155>,  <34.587528, 27.791592, 50.845192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794029, 27.774044, 50.724155>,  <35.138195, 27.744799, 50.522427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794029, 27.774044, 50.724155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479623, -0.218190, 0.849915,
		0.172176, 0.973164, 0.152668,
		-0.860417, 0.073112, 0.504318,
		34.535904, 27.795979, 50.875450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337772, 28.209044, 51.012215>,  <35.138195, 27.744799, 50.522427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337772, 28.209044, 51.012215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001644, 28.029949, 51.134453>,  <34.799965, 27.922493, 51.207794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001644, 28.029949, 51.134453>,  <35.337772, 28.209044, 51.012215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001644, 28.029949, 51.134453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417859, -0.175894, 0.891322,
		-0.345324, 0.876695, 0.334898,
		-0.840324, -0.447735, 0.305595,
		34.749546, 27.895628, 51.226131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261547, 28.502081, 51.680470>,  <35.337772, 28.209044, 51.012215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261547, 28.502081, 51.680470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026196, 28.180107, 51.649784>,  <34.884983, 27.986923, 51.631371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026196, 28.180107, 51.649784>,  <35.261547, 28.502081, 51.680470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026196, 28.180107, 51.649784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212121, -0.245212, 0.945979,
		-0.780265, 0.540322, 0.315022,
		-0.588380, -0.804937, -0.076717,
		34.849682, 27.938625, 51.626770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873753, 28.491753, 52.253773>,  <35.261547, 28.502081, 51.680470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873753, 28.491753, 52.253773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890213, 28.107838, 52.142693>,  <34.900089, 27.877489, 52.076042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890213, 28.107838, 52.142693>,  <34.873753, 28.491753, 52.253773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890213, 28.107838, 52.142693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484916, -0.223825, 0.845434,
		-0.873592, -0.169453, 0.456205,
		0.041151, -0.959785, -0.277702,
		34.902557, 27.819902, 52.059383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703758, 28.130901, 52.882370>,  <34.873753, 28.491753, 52.253773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703758, 28.130901, 52.882370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863564, 27.857428, 52.638084>,  <34.959446, 27.693344, 52.491512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863564, 27.857428, 52.638084>,  <34.703758, 28.130901, 52.882370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863564, 27.857428, 52.638084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600411, -0.308273, 0.737885,
		-0.692745, -0.661472, 0.287332,
		0.399513, -0.683683, -0.610710,
		34.983418, 27.652323, 52.454872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561737, 27.352409, 53.087643>,  <34.703758, 28.130901, 52.882370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561737, 27.352409, 53.087643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913544, 27.414206, 52.907608>,  <35.124630, 27.451283, 52.799587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913544, 27.414206, 52.907608>,  <34.561737, 27.352409, 53.087643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913544, 27.414206, 52.907608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475754, -0.305491, 0.824823,
		-0.010069, -0.939578, -0.342185,
		0.879520, 0.154491, -0.450084,
		35.177399, 27.460552, 52.772583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098396, 26.668468, 53.115116>,  <34.561737, 27.352409, 53.087643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098396, 26.668468, 53.115116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258976, 27.034203, 53.136406>,  <35.355324, 27.253643, 53.149181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258976, 27.034203, 53.136406>,  <35.098396, 26.668468, 53.115116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258976, 27.034203, 53.136406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316510, -0.193029, 0.928742,
		0.859454, -0.355995, -0.366887,
		0.401447, 0.914335, 0.053223,
		35.379410, 27.308502, 53.152374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814899, 26.535643, 53.262085>,  <35.098396, 26.668468, 53.115116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814899, 26.535643, 53.262085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629726, 26.856636, 53.412663>,  <35.518623, 27.049232, 53.503010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629726, 26.856636, 53.412663>,  <35.814899, 26.535643, 53.262085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629726, 26.856636, 53.412663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242656, -0.293733, 0.924575,
		0.852532, 0.519364, -0.058749,
		-0.462934, 0.802485, 0.376443,
		35.490845, 27.097382, 53.525597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373802, 26.686691, 53.758930>,  <35.814899, 26.535643, 53.262085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373802, 26.686691, 53.758930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035446, 26.870316, 53.867550>,  <35.832432, 26.980490, 53.932720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035446, 26.870316, 53.867550>,  <36.373802, 26.686691, 53.758930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035446, 26.870316, 53.867550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190286, -0.215874, 0.957700,
		0.498264, 0.861777, 0.095252,
		-0.845886, 0.459063, 0.271547,
		35.781681, 27.008034, 53.949013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527905, 26.170668, 53.394707>,  <36.373802, 26.686691, 53.758930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527905, 26.170668, 53.394707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772560, 25.983658, 53.649994>,  <36.919353, 25.871452, 53.803165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772560, 25.983658, 53.649994>,  <36.527905, 26.170668, 53.394707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772560, 25.983658, 53.649994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560453, -0.313311, -0.766635,
		0.558380, 0.826594, 0.070392,
		0.611641, -0.467525, 0.638213,
		36.956051, 25.843401, 53.841457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209663, 26.281834, 53.136398>,  <36.527905, 26.170668, 53.394707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209663, 26.281834, 53.136398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158966, 25.949806, 52.919170>,  <37.128548, 25.750589, 52.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158966, 25.949806, 52.919170>,  <37.209663, 26.281834, 53.136398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158966, 25.949806, 52.919170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867078, 0.358623, -0.345782,
		0.481780, 0.427056, -0.765187,
		-0.126745, -0.830068, -0.543068,
		37.120941, 25.700787, 52.756248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711193, 26.463617, 52.727768>,  <37.209663, 26.281834, 53.136398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711193, 26.463617, 52.727768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687782, 26.069139, 52.665813>,  <36.673737, 25.832453, 52.628639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687782, 26.069139, 52.665813>,  <36.711193, 26.463617, 52.727768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687782, 26.069139, 52.665813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916330, 0.114640, -0.383663,
		0.396124, 0.119475, -0.910391,
		-0.058529, -0.986196, -0.154890,
		36.670223, 25.773281, 52.619347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567551, 26.409445, 51.926334>,  <36.711193, 26.463617, 52.727768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567551, 26.409445, 51.926334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417717, 26.099888, 52.130600>,  <36.327816, 25.914154, 52.253159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417717, 26.099888, 52.130600>,  <36.567551, 26.409445, 51.926334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417717, 26.099888, 52.130600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911364, 0.205971, -0.356358,
		0.170600, -0.598889, -0.782450,
		-0.374581, -0.773891, 0.510667,
		36.305344, 25.867720, 52.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652752, 25.653027, 51.740402>,  <36.567551, 26.409445, 51.926334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652752, 25.653027, 51.740402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355122, 25.385969, 51.750237>,  <36.176544, 25.225735, 51.756138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355122, 25.385969, 51.750237>,  <36.652752, 25.653027, 51.740402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355122, 25.385969, 51.750237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300007, 0.301018, -0.905198,
		0.596951, -0.680909, -0.424278,
		-0.744073, -0.667646, 0.024585,
		36.131901, 25.185675, 51.757610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714222, 25.208214, 51.125725>,  <36.652752, 25.653027, 51.740402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714222, 25.208214, 51.125725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330357, 25.205236, 51.238152>,  <36.100037, 25.203449, 51.305607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330357, 25.205236, 51.238152>,  <36.714222, 25.208214, 51.125725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330357, 25.205236, 51.238152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264472, 0.363190, -0.893391,
		-0.095429, -0.931685, -0.350508,
		-0.959661, -0.007444, 0.281063,
		36.042458, 25.203003, 51.322472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351238, 24.746922, 50.626678>,  <36.714222, 25.208214, 51.125725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351238, 24.746922, 50.626678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144943, 25.059769, 50.766571>,  <36.021168, 25.247477, 50.850506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144943, 25.059769, 50.766571>,  <36.351238, 24.746922, 50.626678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144943, 25.059769, 50.766571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261240, 0.245209, -0.933609,
		-0.815949, -0.572858, 0.077858,
		-0.515734, 0.782117, 0.349731,
		35.990223, 25.294403, 50.871490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655235, 24.679737, 50.435394>,  <36.351238, 24.746922, 50.626678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655235, 24.679737, 50.435394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754333, 25.065346, 50.473942>,  <35.813793, 25.296711, 50.497070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754333, 25.065346, 50.473942>,  <35.655235, 24.679737, 50.435394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754333, 25.065346, 50.473942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276973, 0.165794, -0.946466,
		-0.928389, 0.207793, 0.308083,
		0.247747, 0.964020, 0.096369,
		35.828659, 25.354551, 50.502853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083057, 24.941479, 50.221153>,  <35.655235, 24.679737, 50.435394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083057, 24.941479, 50.221153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378067, 25.207581, 50.174686>,  <35.555073, 25.367241, 50.146805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378067, 25.207581, 50.174686>,  <35.083057, 24.941479, 50.221153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378067, 25.207581, 50.174686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253318, 0.113066, -0.960753,
		-0.626010, 0.738006, 0.251910,
		0.737524, 0.665254, -0.116170,
		35.599323, 25.407156, 50.139835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866718, 25.485329, 49.906040>,  <35.083057, 24.941479, 50.221153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866718, 25.485329, 49.906040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250660, 25.564566, 49.826611>,  <35.481026, 25.612108, 49.778954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250660, 25.564566, 49.826611>,  <34.866718, 25.485329, 49.906040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250660, 25.564566, 49.826611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235025, 0.181613, -0.954872,
		-0.153091, 0.963211, 0.220880,
		0.959857, 0.198095, -0.198575,
		35.538616, 25.623995, 49.767036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889404, 26.087069, 49.459568>,  <34.866718, 25.485329, 49.906040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889404, 26.087069, 49.459568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226288, 25.881765, 49.393543>,  <35.428417, 25.758583, 49.353928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226288, 25.881765, 49.393543>,  <34.889404, 26.087069, 49.459568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226288, 25.881765, 49.393543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025062, 0.268561, -0.962937,
		0.538563, 0.815134, 0.213323,
		0.842213, -0.513256, -0.165066,
		35.478951, 25.727789, 49.344025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336731, 26.553488, 49.074898>,  <34.889404, 26.087069, 49.459568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336731, 26.553488, 49.074898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476124, 26.184916, 49.006168>,  <35.559761, 25.963772, 48.964931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476124, 26.184916, 49.006168>,  <35.336731, 26.553488, 49.074898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476124, 26.184916, 49.006168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111319, 0.222704, -0.968510,
		0.930681, 0.318384, 0.180182,
		0.348485, -0.921431, -0.171824,
		35.580669, 25.908485, 48.954620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820702, 26.673092, 48.639805>,  <35.336731, 26.553488, 49.074898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820702, 26.673092, 48.639805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780914, 26.279089, 48.583420>,  <35.757042, 26.042688, 48.549587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780914, 26.279089, 48.583420>,  <35.820702, 26.673092, 48.639805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780914, 26.279089, 48.583420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051575, 0.146577, -0.987854,
		0.993703, -0.090992, -0.065381,
		-0.099470, -0.985005, -0.140961,
		35.751072, 25.983587, 48.541130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205814, 26.544224, 48.071564>,  <35.820702, 26.673092, 48.639805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205814, 26.544224, 48.071564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969135, 26.223495, 48.104992>,  <35.827129, 26.031059, 48.125050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969135, 26.223495, 48.104992>,  <36.205814, 26.544224, 48.071564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969135, 26.223495, 48.104992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061093, -0.058768, -0.996400,
		0.803844, -0.594670, -0.014213,
		-0.591694, -0.801819, 0.083570,
		35.791626, 25.982950, 48.130062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494175, 26.128016, 47.582790>,  <36.205814, 26.544224, 48.071564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494175, 26.128016, 47.582790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122574, 25.993782, 47.645187>,  <35.899612, 25.913242, 47.682625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122574, 25.993782, 47.645187>,  <36.494175, 26.128016, 47.582790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122574, 25.993782, 47.645187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162431, -0.008984, -0.986679,
		0.332517, -0.941967, -0.046164,
		-0.929004, -0.335586, 0.155992,
		35.843872, 25.893106, 47.691986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350430, 25.643595, 47.166092>,  <36.494175, 26.128016, 47.582790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350430, 25.643595, 47.166092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978031, 25.753933, 47.261719>,  <35.754593, 25.820137, 47.319096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978031, 25.753933, 47.261719>,  <36.350430, 25.643595, 47.166092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978031, 25.753933, 47.261719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276438, -0.105098, -0.955268,
		-0.238381, -0.955439, 0.174101,
		-0.930997, 0.275846, 0.239066,
		35.698730, 25.836687, 47.333439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933704, 25.242163, 46.728760>,  <36.350430, 25.643595, 47.166092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933704, 25.242163, 46.728760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710960, 25.551462, 46.850086>,  <35.577316, 25.737041, 46.922882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710960, 25.551462, 46.850086>,  <35.933704, 25.242163, 46.728760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710960, 25.551462, 46.850086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327965, 0.130808, -0.935590,
		-0.763118, -0.620465, 0.180757,
		-0.556856, 0.773248, 0.303313,
		35.543903, 25.783436, 46.941082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314014, 25.065294, 46.430580>,  <35.933704, 25.242163, 46.728760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314014, 25.065294, 46.430580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286827, 25.452993, 46.525188>,  <35.270515, 25.685612, 46.581955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286827, 25.452993, 46.525188>,  <35.314014, 25.065294, 46.430580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286827, 25.452993, 46.525188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588418, 0.152504, -0.794045,
		-0.805695, -0.193146, 0.559955,
		-0.067971, 0.969246, 0.236522,
		35.266438, 25.743767, 46.596146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594929, 25.343683, 46.209011>,  <35.314014, 25.065294, 46.430580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594929, 25.343683, 46.209011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846222, 25.654585, 46.222881>,  <34.996998, 25.841125, 46.231205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846222, 25.654585, 46.222881>,  <34.594929, 25.343683, 46.209011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846222, 25.654585, 46.222881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448425, 0.398154, -0.800242,
		-0.635799, 0.487186, 0.598673,
		0.628231, 0.777253, 0.034679,
		35.034691, 25.887760, 46.233284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213264, 25.887302, 46.005882>,  <34.594929, 25.343683, 46.209011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213264, 25.887302, 46.005882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581116, 26.034786, 45.951706>,  <34.801826, 26.123276, 45.919201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581116, 26.034786, 45.951706>,  <34.213264, 25.887302, 46.005882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581116, 26.034786, 45.951706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313285, 0.480483, -0.819139,
		-0.236945, 0.795733, 0.557374,
		0.919625, 0.368708, -0.135443,
		34.857002, 26.145399, 45.911072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065506, 26.505415, 45.738216>,  <34.213264, 25.887302, 46.005882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065506, 26.505415, 45.738216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451389, 26.448275, 45.649738>,  <34.682919, 26.413990, 45.596649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451389, 26.448275, 45.649738>,  <34.065506, 26.505415, 45.738216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451389, 26.448275, 45.649738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141710, 0.426362, -0.893383,
		0.221931, 0.893202, 0.391073,
		0.964710, -0.142850, -0.221199,
		34.740803, 26.405420, 45.583378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263954, 27.118286, 45.303745>,  <34.065506, 26.505415, 45.738216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263954, 27.118286, 45.303745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519127, 26.824543, 45.211006>,  <34.672230, 26.648296, 45.155361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519127, 26.824543, 45.211006>,  <34.263954, 27.118286, 45.303745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519127, 26.824543, 45.211006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104961, 0.215343, -0.970881,
		0.762903, 0.643696, 0.060296,
		0.637936, -0.734359, -0.231849,
		34.710506, 26.604235, 45.141453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659893, 27.403000, 44.731472>,  <34.263954, 27.118286, 45.303745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659893, 27.403000, 44.731472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761051, 27.016758, 44.707321>,  <34.821747, 26.785013, 44.692829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761051, 27.016758, 44.707321>,  <34.659893, 27.403000, 44.731472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761051, 27.016758, 44.707321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156882, 0.102508, -0.982283,
		0.954688, 0.238946, 0.177411,
		0.252899, -0.965607, -0.060377,
		34.836922, 26.727076, 44.689209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301441, 27.395781, 44.381058>,  <34.659893, 27.403000, 44.731472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301441, 27.395781, 44.381058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162941, 27.021475, 44.354359>,  <35.079842, 26.796890, 44.338341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162941, 27.021475, 44.354359>,  <35.301441, 27.395781, 44.381058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162941, 27.021475, 44.354359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020920, 0.063430, -0.997767,
		0.937910, -0.346871, -0.002386,
		-0.346247, -0.935766, -0.066748,
		35.059067, 26.740746, 44.334335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735809, 27.009495, 44.024063>,  <35.301441, 27.395781, 44.381058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735809, 27.009495, 44.024063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379871, 26.831379, 43.984268>,  <35.166309, 26.724510, 43.960392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379871, 26.831379, 43.984268>,  <35.735809, 27.009495, 44.024063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379871, 26.831379, 43.984268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027147, 0.269324, -0.962667,
		0.455459, -0.853921, -0.251744,
		-0.889843, -0.445289, -0.099485,
		35.112919, 26.697792, 43.954422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651817, 26.637505, 43.375076>,  <35.735809, 27.009495, 44.024063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651817, 26.637505, 43.375076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270256, 26.654268, 43.493942>,  <35.041317, 26.664326, 43.565262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270256, 26.654268, 43.493942>,  <35.651817, 26.637505, 43.375076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270256, 26.654268, 43.493942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270055, 0.312009, -0.910890,
		-0.130891, -0.949154, -0.286310,
		-0.953907, 0.041908, 0.297163,
		34.984085, 26.666840, 43.583092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319439, 26.180399, 42.847176>,  <35.651817, 26.637505, 43.375076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319439, 26.180399, 42.847176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093155, 26.466759, 43.010864>,  <34.957386, 26.638575, 43.109077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093155, 26.466759, 43.010864>,  <35.319439, 26.180399, 42.847176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093155, 26.466759, 43.010864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200423, 0.362009, -0.910374,
		-0.799876, -0.597026, -0.061311,
		-0.565711, 0.715898, 0.409220,
		34.923443, 26.681528, 43.133629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805725, 26.166214, 42.478016>,  <35.319439, 26.180399, 42.847176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805725, 26.166214, 42.478016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772968, 26.525986, 42.649746>,  <34.753315, 26.741848, 42.752785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772968, 26.525986, 42.649746>,  <34.805725, 26.166214, 42.478016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772968, 26.525986, 42.649746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381457, 0.369688, -0.847243,
		-0.920752, -0.233154, 0.312818,
		-0.081893, 0.899428, 0.429329,
		34.748402, 26.795815, 42.778545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129261, 26.449467, 42.309631>,  <34.805725, 26.166214, 42.478016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129261, 26.449467, 42.309631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304092, 26.779249, 42.453423>,  <34.408993, 26.977119, 42.539700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304092, 26.779249, 42.453423>,  <34.129261, 26.449467, 42.309631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304092, 26.779249, 42.453423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545982, 0.560828, -0.622395,
		-0.714747, 0.075767, 0.695267,
		0.437083, 0.824458, 0.359483,
		34.435219, 27.026587, 42.561268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621925, 26.950993, 42.609325>,  <34.129261, 26.449467, 42.309631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621925, 26.950993, 42.609325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942741, 27.134781, 42.456688>,  <34.135231, 27.245054, 42.365105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942741, 27.134781, 42.456688>,  <33.621925, 26.950993, 42.609325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942741, 27.134781, 42.456688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576677, 0.429435, -0.695004,
		-0.155466, 0.777478, 0.609392,
		0.802044, 0.459471, -0.381591,
		34.183353, 27.272623, 42.342209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342197, 27.473236, 42.271393>,  <33.621925, 26.950993, 42.609325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342197, 27.473236, 42.271393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718960, 27.512957, 42.143047>,  <33.945019, 27.536789, 42.066040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718960, 27.512957, 42.143047>,  <33.342197, 27.473236, 42.271393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718960, 27.512957, 42.143047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329335, 0.460689, -0.824199,
		0.065975, 0.881989, 0.466629,
		0.941905, 0.099301, -0.320864,
		34.001530, 27.542747, 42.046787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438206, 28.105879, 41.943966>,  <33.342197, 27.473236, 42.271393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438206, 28.105879, 41.943966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737595, 27.901096, 41.775352>,  <33.917229, 27.778227, 41.674183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737595, 27.901096, 41.775352>,  <33.438206, 28.105879, 41.943966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737595, 27.901096, 41.775352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363216, 0.215358, -0.906474,
		0.554855, 0.831579, -0.024761,
		0.748472, -0.511955, -0.421535,
		33.962135, 27.747509, 41.648891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590771, 28.566391, 41.410091>,  <33.438206, 28.105879, 41.943966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590771, 28.566391, 41.410091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781929, 28.226841, 41.319733>,  <33.896622, 28.023111, 41.265518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781929, 28.226841, 41.319733>,  <33.590771, 28.566391, 41.410091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781929, 28.226841, 41.319733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093736, 0.206413, -0.973965,
		0.873403, 0.486624, 0.019072,
		0.477891, -0.848876, -0.225896,
		33.925297, 27.972178, 41.251965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014851, 28.811647, 40.892361>,  <33.590771, 28.566391, 41.410091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014851, 28.811647, 40.892361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020184, 28.413372, 40.855652>,  <34.023384, 28.174406, 40.833626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020184, 28.413372, 40.855652>,  <34.014851, 28.811647, 40.892361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020184, 28.413372, 40.855652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074421, 0.092515, -0.992926,
		0.997138, 0.006407, 0.075334,
		0.013331, -0.995691, -0.091774,
		34.024181, 28.114664, 40.828121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637783, 28.654705, 40.409725>,  <34.014851, 28.811647, 40.892361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637783, 28.654705, 40.409725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378654, 28.350113, 40.418430>,  <34.223175, 28.167358, 40.423653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378654, 28.350113, 40.418430>,  <34.637783, 28.654705, 40.409725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378654, 28.350113, 40.418430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141959, 0.092603, -0.985531,
		0.748446, -0.641540, -0.168089,
		-0.647824, -0.761479, 0.021764,
		34.184307, 28.121670, 40.424961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801113, 28.164734, 39.921753>,  <34.637783, 28.654705, 40.409725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801113, 28.164734, 39.921753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407379, 28.122866, 39.978512>,  <34.171139, 28.097744, 40.012569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407379, 28.122866, 39.978512>,  <34.801113, 28.164734, 39.921753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407379, 28.122866, 39.978512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160827, 0.203000, -0.965881,
		0.072293, -0.973568, -0.216653,
		-0.984332, -0.104670, 0.141901,
		34.112080, 28.091465, 40.021084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639671, 27.998487, 39.326355>,  <34.801113, 28.164734, 39.921753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639671, 27.998487, 39.326355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288620, 28.078976, 39.500385>,  <34.077991, 28.127268, 39.604801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288620, 28.078976, 39.500385>,  <34.639671, 27.998487, 39.326355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288620, 28.078976, 39.500385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412834, 0.143973, -0.899355,
		-0.243608, -0.968907, -0.043283,
		-0.877623, 0.201221, 0.435071,
		34.025333, 28.139341, 39.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102135, 27.691305, 38.960552>,  <34.639671, 27.998487, 39.326355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102135, 27.691305, 38.960552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905430, 27.988359, 39.142391>,  <33.787407, 28.166592, 39.251495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905430, 27.988359, 39.142391>,  <34.102135, 27.691305, 38.960552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905430, 27.988359, 39.142391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314912, 0.335058, -0.888013,
		-0.811787, -0.579852, 0.069095,
		-0.491766, 0.742635, 0.454598,
		33.757900, 28.211149, 39.278770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431641, 27.727882, 38.603725>,  <34.102135, 27.691305, 38.960552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431641, 27.727882, 38.603725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496181, 28.072865, 38.795616>,  <33.534908, 28.279854, 38.910751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496181, 28.072865, 38.795616>,  <33.431641, 27.727882, 38.603725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496181, 28.072865, 38.795616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420329, 0.499857, -0.757276,
		-0.892910, -0.079452, 0.443169,
		0.161354, 0.862456, 0.479723,
		33.544586, 28.331602, 38.939533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874241, 28.159225, 38.440140>,  <33.431641, 27.727882, 38.603725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874241, 28.159225, 38.440140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130890, 28.429886, 38.584618>,  <33.284878, 28.592281, 38.671307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130890, 28.429886, 38.584618>,  <32.874241, 28.159225, 38.440140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130890, 28.429886, 38.584618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248465, 0.628874, -0.736738,
		-0.725663, 0.382962, 0.571623,
		0.641622, 0.676652, 0.361198,
		33.323376, 28.632881, 38.692978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565392, 28.773775, 38.354050>,  <32.874241, 28.159225, 38.440140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565392, 28.773775, 38.354050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950562, 28.872051, 38.398628>,  <33.181664, 28.931017, 38.425377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950562, 28.872051, 38.398628>,  <32.565392, 28.773775, 38.354050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950562, 28.872051, 38.398628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027679, 0.500897, -0.865064,
		-0.268362, 0.829903, 0.489124,
		0.962920, 0.245689, 0.111450,
		33.239437, 28.945759, 38.432064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576710, 29.430037, 38.427937>,  <32.565392, 28.773775, 38.354050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576710, 29.430037, 38.427937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952435, 29.369270, 38.304901>,  <33.177872, 29.332811, 38.231079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952435, 29.369270, 38.304901>,  <32.576710, 29.430037, 38.427937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952435, 29.369270, 38.304901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144216, 0.638679, -0.755838,
		0.311273, 0.754329, 0.578012,
		0.939314, -0.151913, -0.307589,
		33.234230, 29.323696, 38.212624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781605, 29.988564, 38.181835>,  <32.576710, 29.430037, 38.427937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781605, 29.988564, 38.181835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053123, 29.755310, 38.003311>,  <33.216034, 29.615358, 37.896198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053123, 29.755310, 38.003311>,  <32.781605, 29.988564, 38.181835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053123, 29.755310, 38.003311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207367, 0.430821, -0.878289,
		0.704438, 0.688729, 0.171518,
		0.678797, -0.583134, -0.446306,
		33.256763, 29.580370, 37.869419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457890, 30.418406, 37.869171>,  <32.781605, 29.988564, 38.181835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457890, 30.418406, 37.869171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424393, 30.070244, 37.675106>,  <33.404297, 29.861347, 37.558666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424393, 30.070244, 37.675106>,  <33.457890, 30.418406, 37.869171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424393, 30.070244, 37.675106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115368, 0.492069, -0.862878,
		0.989787, -0.016283, -0.141621,
		-0.083738, -0.870404, -0.485165,
		33.399273, 29.809122, 37.529556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808907, 30.618961, 37.323212>,  <33.457890, 30.418406, 37.869171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808907, 30.618961, 37.323212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604599, 30.287411, 37.231926>,  <33.482014, 30.088480, 37.177155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604599, 30.287411, 37.231926>,  <33.808907, 30.618961, 37.323212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604599, 30.287411, 37.231926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264770, 0.404209, -0.875506,
		0.817934, -0.386753, -0.425918,
		-0.510765, -0.828877, -0.228216,
		33.451370, 30.038748, 37.163460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138290, 30.339375, 36.690521>,  <33.808907, 30.618961, 37.323212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138290, 30.339375, 36.690521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762646, 30.206697, 36.726410>,  <33.537258, 30.127090, 36.747944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762646, 30.206697, 36.726410>,  <34.138290, 30.339375, 36.690521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762646, 30.206697, 36.726410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251147, 0.484382, -0.838033,
		0.234510, -0.809539, -0.538192,
		-0.939112, -0.331692, 0.089721,
		33.480911, 30.107189, 36.753326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819332, 30.171228, 36.966057>,  <34.138290, 30.339375, 36.690521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819332, 30.171228, 36.966057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160816, 30.074001, 36.781841>,  <35.365707, 30.015665, 36.671310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160816, 30.074001, 36.781841>,  <34.819332, 30.171228, 36.966057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160816, 30.074001, 36.781841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199577, -0.664133, 0.720483,
		-0.480982, -0.706998, -0.518469,
		0.853713, -0.243065, -0.460537,
		35.416931, 30.001081, 36.643681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848816, 29.428629, 36.970402>,  <34.819332, 30.171228, 36.966057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848816, 29.428629, 36.970402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233715, 29.503284, 36.891167>,  <35.464657, 29.548077, 36.843624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233715, 29.503284, 36.891167>,  <34.848816, 29.428629, 36.970402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233715, 29.503284, 36.891167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264919, -0.809113, 0.524551,
		-0.062377, -0.557227, -0.828014,
		0.962251, 0.186637, -0.198090,
		35.522392, 29.559275, 36.831741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177216, 28.808340, 36.646004>,  <34.848816, 29.428629, 36.970402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177216, 28.808340, 36.646004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469578, 29.027256, 36.809101>,  <35.644997, 29.158606, 36.906960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469578, 29.027256, 36.809101>,  <35.177216, 28.808340, 36.646004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469578, 29.027256, 36.809101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316664, -0.801194, 0.507753,
		0.604568, -0.242002, -0.758903,
		0.730905, 0.547288, 0.407743,
		35.688850, 29.191442, 36.931423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683338, 28.377344, 36.756012>,  <35.177216, 28.808340, 36.646004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683338, 28.377344, 36.756012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824551, 28.673309, 36.985062>,  <35.909279, 28.850887, 37.122490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824551, 28.673309, 36.985062>,  <35.683338, 28.377344, 36.756012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824551, 28.673309, 36.985062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433528, -0.671731, 0.600692,
		0.829109, 0.036184, -0.557915,
		0.353033, 0.739911, 0.572625,
		35.930462, 28.895283, 37.156849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239880, 28.130899, 37.083195>,  <35.683338, 28.377344, 36.756012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239880, 28.130899, 37.083195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172485, 28.443123, 37.323975>,  <36.132050, 28.630457, 37.468441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172485, 28.443123, 37.323975>,  <36.239880, 28.130899, 37.083195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172485, 28.443123, 37.323975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351526, -0.522944, 0.776504,
		0.920892, 0.342428, -0.186280,
		-0.168482, 0.780559, 0.601948,
		36.121941, 28.677290, 37.504559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869759, 28.300001, 37.431683>,  <36.239880, 28.130899, 37.083195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869759, 28.300001, 37.431683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571945, 28.470100, 37.637531>,  <36.393257, 28.572161, 37.761040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571945, 28.470100, 37.637531>,  <36.869759, 28.300001, 37.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571945, 28.470100, 37.637531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364359, -0.387082, 0.847001,
		0.559386, 0.818126, 0.133252,
		-0.744533, 0.425249, 0.514620,
		36.348587, 28.597675, 37.791916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245449, 28.533773, 37.987171>,  <36.869759, 28.300001, 37.431683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245449, 28.533773, 37.987171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864410, 28.503330, 38.104996>,  <36.635788, 28.485065, 38.175690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864410, 28.503330, 38.104996>,  <37.245449, 28.533773, 37.987171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864410, 28.503330, 38.104996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303321, -0.312636, 0.900142,
		0.023584, 0.946819, 0.320901,
		-0.952597, -0.076107, 0.294563,
		36.578632, 28.480497, 38.193363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184937, 28.886820, 38.511959>,  <37.245449, 28.533773, 37.987171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184937, 28.886820, 38.511959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868435, 28.644138, 38.542496>,  <36.678535, 28.498529, 38.560818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868435, 28.644138, 38.542496>,  <37.184937, 28.886820, 38.511959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868435, 28.644138, 38.542496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362248, -0.364495, 0.857858,
		-0.492640, 0.706438, 0.508185,
		-0.791254, -0.606704, 0.076341,
		36.631058, 28.462128, 38.565399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954742, 28.990734, 39.215427>,  <37.184937, 28.886820, 38.511959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954742, 28.990734, 39.215427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814392, 28.642862, 39.076553>,  <36.730183, 28.434139, 38.993229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814392, 28.642862, 39.076553>,  <36.954742, 28.990734, 39.215427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814392, 28.642862, 39.076553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333417, -0.462491, 0.821544,
		-0.875054, 0.172502, 0.452244,
		-0.350877, -0.869681, -0.347190,
		36.709129, 28.381958, 38.972397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441837, 28.830029, 39.690456>,  <36.954742, 28.990734, 39.215427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441837, 28.830029, 39.690456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570293, 28.487423, 39.528835>,  <36.647366, 28.281860, 39.431862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570293, 28.487423, 39.528835>,  <36.441837, 28.830029, 39.690456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570293, 28.487423, 39.528835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105502, -0.391637, 0.914051,
		-0.941138, -0.336164, -0.035406,
		0.321138, -0.856513, -0.404050,
		36.666634, 28.230469, 39.407619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159607, 28.322899, 40.082592>,  <36.441837, 28.830029, 39.690456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159607, 28.322899, 40.082592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432636, 28.105888, 39.886730>,  <36.596455, 27.975681, 39.769215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432636, 28.105888, 39.886730>,  <36.159607, 28.322899, 40.082592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432636, 28.105888, 39.886730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120079, -0.577645, 0.807408,
		-0.720887, -0.609910, -0.329137,
		0.682570, -0.542528, -0.489655,
		36.637409, 27.943130, 39.739834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986233, 27.607708, 40.155334>,  <36.159607, 28.322899, 40.082592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986233, 27.607708, 40.155334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376644, 27.625366, 40.070084>,  <36.610889, 27.635962, 40.018932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376644, 27.625366, 40.070084>,  <35.986233, 27.607708, 40.155334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376644, 27.625366, 40.070084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211002, -0.432056, 0.876815,
		-0.053374, -0.900765, -0.431014,
		0.976027, 0.044146, -0.213124,
		36.669453, 27.638611, 40.006145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200684, 27.001572, 40.390606>,  <35.986233, 27.607708, 40.155334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200684, 27.001572, 40.390606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523056, 27.238152, 40.380329>,  <36.716480, 27.380098, 40.374165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523056, 27.238152, 40.380329>,  <36.200684, 27.001572, 40.390606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523056, 27.238152, 40.380329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325347, -0.406246, 0.853881,
		0.494592, -0.696529, -0.519833,
		0.805933, 0.591449, -0.025688,
		36.764835, 27.415586, 40.372623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725052, 26.511738, 40.328869>,  <36.200684, 27.001572, 40.390606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725052, 26.511738, 40.328869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881992, 26.856930, 40.456200>,  <36.976158, 27.064045, 40.532597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881992, 26.856930, 40.456200>,  <36.725052, 26.511738, 40.328869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881992, 26.856930, 40.456200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258708, -0.435638, 0.862143,
		0.882684, -0.255909, -0.394182,
		0.392350, 0.862978, 0.318325,
		36.999699, 27.115824, 40.551697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479198, 26.442621, 40.511742>,  <36.725052, 26.511738, 40.328869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479198, 26.442621, 40.511742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316154, 26.739384, 40.724693>,  <37.218330, 26.917442, 40.852463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316154, 26.739384, 40.724693>,  <37.479198, 26.442621, 40.511742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316154, 26.739384, 40.724693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195127, -0.498778, 0.844480,
		0.892065, 0.448098, 0.058540,
		-0.407608, 0.741908, 0.532379,
		37.193871, 26.961956, 40.884407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854416, 26.460629, 41.199020>,  <37.479198, 26.442621, 40.511742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854416, 26.460629, 41.199020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531834, 26.682119, 41.281975>,  <37.338284, 26.815014, 41.331745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531834, 26.682119, 41.281975>,  <37.854416, 26.460629, 41.199020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531834, 26.682119, 41.281975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005554, -0.343619, 0.939093,
		0.591263, 0.758493, 0.274040,
		-0.806460, 0.553728, 0.207382,
		37.289894, 26.848238, 41.344189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120285, 26.760994, 41.778683>,  <37.854416, 26.460629, 41.199020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120285, 26.760994, 41.778683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724415, 26.814856, 41.798298>,  <37.486893, 26.847172, 41.810066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724415, 26.814856, 41.798298>,  <38.120285, 26.760994, 41.778683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724415, 26.814856, 41.798298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005296, -0.376306, 0.926480,
		0.143205, 0.916658, 0.373135,
		-0.989679, 0.134653, 0.049034,
		37.427509, 26.855251, 41.813007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884968, 27.122976, 42.457909>,  <38.120285, 26.760994, 41.778683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884968, 27.122976, 42.457909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549538, 26.954599, 42.319580>,  <37.348278, 26.853573, 42.236584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549538, 26.954599, 42.319580>,  <37.884968, 27.122976, 42.457909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549538, 26.954599, 42.319580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202496, -0.348461, 0.915189,
		-0.505749, 0.837485, 0.206973,
		-0.838579, -0.420944, -0.345821,
		37.297966, 26.828316, 42.215836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373955, 27.363380, 42.900684>,  <37.884968, 27.122976, 42.457909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373955, 27.363380, 42.900684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263523, 27.012688, 42.743141>,  <37.197266, 26.802273, 42.648617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263523, 27.012688, 42.743141>,  <37.373955, 27.363380, 42.900684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263523, 27.012688, 42.743141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136454, -0.369881, 0.919004,
		-0.951400, 0.307459, -0.017518,
		-0.276076, -0.876731, -0.393859,
		37.180698, 26.749668, 42.624985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868782, 27.138498, 43.304478>,  <37.373955, 27.363380, 42.900684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868782, 27.138498, 43.304478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958153, 26.798302, 43.114006>,  <37.011776, 26.594183, 42.999725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958153, 26.798302, 43.114006>,  <36.868782, 27.138498, 43.304478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958153, 26.798302, 43.114006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007371, -0.489986, 0.871699,
		-0.974693, -0.191249, -0.115744,
		0.223424, -0.850492, -0.476177,
		37.025181, 26.543154, 42.971153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358299, 26.697060, 43.600452>,  <36.868782, 27.138498, 43.304478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358299, 26.697060, 43.600452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658104, 26.490055, 43.435326>,  <36.837986, 26.365852, 43.336250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658104, 26.490055, 43.435326>,  <36.358299, 26.697060, 43.600452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658104, 26.490055, 43.435326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092765, -0.535336, 0.839530,
		-0.655462, -0.667530, -0.353233,
		0.749509, -0.517512, -0.412816,
		36.882957, 26.334801, 43.311481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196247, 26.022284, 43.771938>,  <36.358299, 26.697060, 43.600452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196247, 26.022284, 43.771938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587364, 26.050938, 43.693165>,  <36.822037, 26.068130, 43.645901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587364, 26.050938, 43.693165>,  <36.196247, 26.022284, 43.771938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587364, 26.050938, 43.693165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205791, -0.505581, 0.837877,
		-0.039543, -0.859800, -0.509097,
		0.977797, 0.071635, -0.196931,
		36.880703, 26.072428, 43.634087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459679, 25.374825, 44.019218>,  <36.196247, 26.022284, 43.771938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459679, 25.374825, 44.019218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792957, 25.595955, 44.014034>,  <36.992924, 25.728632, 44.010921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792957, 25.595955, 44.014034>,  <36.459679, 25.374825, 44.019218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792957, 25.595955, 44.014034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275326, -0.394400, 0.876723,
		0.479561, -0.734053, -0.480820,
		0.833197, 0.552825, -0.012965,
		37.042915, 25.761803, 44.010143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959133, 24.981218, 44.336040>,  <36.459679, 25.374825, 44.019218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959133, 24.981218, 44.336040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135193, 25.340363, 44.340389>,  <37.240829, 25.555849, 44.342999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135193, 25.340363, 44.340389>,  <36.959133, 24.981218, 44.336040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135193, 25.340363, 44.340389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359629, -0.187368, 0.914090,
		0.822761, -0.398425, -0.405366,
		0.440149, 0.897859, 0.010874,
		37.267239, 25.609720, 44.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718712, 24.857826, 44.543476>,  <36.959133, 24.981218, 44.336040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718712, 24.857826, 44.543476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571262, 25.216024, 44.643238>,  <37.482792, 25.430944, 44.703094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571262, 25.216024, 44.643238>,  <37.718712, 24.857826, 44.543476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571262, 25.216024, 44.643238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398713, -0.090055, 0.912643,
		0.839730, 0.435862, -0.323850,
		-0.368622, 0.895497, 0.249406,
		37.460674, 25.484673, 44.718060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082851, 25.041515, 45.093292>,  <37.718712, 24.857826, 44.543476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082851, 25.041515, 45.093292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819809, 25.342762, 45.100929>,  <37.661983, 25.523510, 45.105511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819809, 25.342762, 45.100929>,  <38.082851, 25.041515, 45.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819809, 25.342762, 45.100929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254821, 0.198508, 0.946394,
		0.708956, 0.627222, -0.322451,
		-0.657608, 0.753119, 0.019095,
		37.622528, 25.568697, 45.106659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342133, 25.678211, 45.246803>,  <38.082851, 25.041515, 45.093292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342133, 25.678211, 45.246803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964069, 25.710245, 45.373463>,  <37.737232, 25.729465, 45.449459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964069, 25.710245, 45.373463>,  <38.342133, 25.678211, 45.246803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964069, 25.710245, 45.373463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323367, 0.365922, 0.872660,
		-0.045980, 0.927193, -0.371750,
		-0.945156, 0.080087, 0.316649,
		37.680523, 25.734272, 45.468456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487854, 26.086700, 45.692303>,  <38.342133, 25.678211, 45.246803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487854, 26.086700, 45.692303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109253, 25.984957, 45.771729>,  <37.882092, 25.923910, 45.819386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109253, 25.984957, 45.771729>,  <38.487854, 26.086700, 45.692303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109253, 25.984957, 45.771729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118372, 0.298769, 0.946956,
		-0.300194, 0.919803, -0.252677,
		-0.946505, -0.254360, 0.198567,
		37.825302, 25.908649, 45.831299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166752, 26.709362, 45.981323>,  <38.487854, 26.086700, 45.692303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166752, 26.709362, 45.981323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956348, 26.388781, 46.095154>,  <37.830105, 26.196432, 46.163452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956348, 26.388781, 46.095154>,  <38.166752, 26.709362, 45.981323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956348, 26.388781, 46.095154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026293, 0.349773, 0.936465,
		-0.850072, 0.485107, -0.205056,
		-0.526009, -0.801455, 0.284578,
		37.798546, 26.148344, 46.180527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657185, 26.965385, 46.451408>,  <38.166752, 26.709362, 45.981323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657185, 26.965385, 46.451408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645546, 26.589409, 46.587444>,  <37.638561, 26.363823, 46.669067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645546, 26.589409, 46.587444>,  <37.657185, 26.965385, 46.451408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645546, 26.589409, 46.587444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050832, 0.338404, 0.939627,
		-0.998283, 0.044627, 0.037933,
		-0.029096, -0.939942, 0.340092,
		37.636818, 26.307426, 46.689472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384232, 27.098866, 47.023159>,  <37.657185, 26.965385, 46.451408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384232, 27.098866, 47.023159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518303, 26.727148, 47.085220>,  <37.598743, 26.504118, 47.122459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518303, 26.727148, 47.085220>,  <37.384232, 27.098866, 47.023159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518303, 26.727148, 47.085220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069471, 0.188611, 0.979591,
		-0.939591, -0.317555, 0.127777,
		0.335174, -0.929293, 0.155157,
		37.618855, 26.448360, 47.131767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987846, 26.758055, 47.507355>,  <37.384232, 27.098866, 47.023159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987846, 26.758055, 47.507355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342052, 26.572447, 47.516739>,  <37.554577, 26.461082, 47.522369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342052, 26.572447, 47.516739>,  <36.987846, 26.758055, 47.507355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342052, 26.572447, 47.516739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100592, 0.240766, 0.965356,
		-0.453590, -0.852478, 0.259879,
		0.885516, -0.464018, 0.023456,
		37.607708, 26.433241, 47.523777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042236, 26.355749, 48.130436>,  <36.987846, 26.758055, 47.507355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042236, 26.355749, 48.130436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421230, 26.423229, 48.021759>,  <37.648624, 26.463718, 47.956554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421230, 26.423229, 48.021759>,  <37.042236, 26.355749, 48.130436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421230, 26.423229, 48.021759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171770, 0.448158, 0.877297,
		0.269762, -0.877892, 0.395644,
		0.947483, 0.168701, -0.271691,
		37.705475, 26.473841, 47.940250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375500, 26.085310, 48.785454>,  <37.042236, 26.355749, 48.130436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375500, 26.085310, 48.785454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641762, 26.292162, 48.570240>,  <37.801517, 26.416273, 48.441113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641762, 26.292162, 48.570240>,  <37.375500, 26.085310, 48.785454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641762, 26.292162, 48.570240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497914, 0.229264, 0.836373,
		0.555864, -0.824631, -0.104875,
		0.665655, 0.517129, -0.538035,
		37.841457, 26.447300, 48.408829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003490, 26.049143, 49.139240>,  <37.375500, 26.085310, 48.785454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003490, 26.049143, 49.139240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047424, 26.380234, 48.919128>,  <38.073784, 26.578888, 48.787064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047424, 26.380234, 48.919128>,  <38.003490, 26.049143, 49.139240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047424, 26.380234, 48.919128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472168, 0.443718, 0.761690,
		0.874639, -0.343483, -0.342090,
		0.109836, 0.827728, -0.550275,
		38.080376, 26.628551, 48.754047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675381, 26.270287, 49.347622>,  <38.003490, 26.049143, 49.139240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675381, 26.270287, 49.347622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470432, 26.587185, 49.215061>,  <38.347462, 26.777323, 49.135525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470432, 26.587185, 49.215061>,  <38.675381, 26.270287, 49.347622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470432, 26.587185, 49.215061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155491, 0.465109, 0.871491,
		0.844570, 0.394996, -0.361495,
		-0.512370, 0.792245, -0.331399,
		38.316723, 26.824858, 49.115643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102219, 26.971668, 49.525177>,  <38.675381, 26.270287, 49.347622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102219, 26.971668, 49.525177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711746, 27.034225, 49.465019>,  <38.477463, 27.071760, 49.428925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711746, 27.034225, 49.465019>,  <39.102219, 26.971668, 49.525177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711746, 27.034225, 49.465019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060973, 0.467484, 0.881896,
		0.208229, 0.870057, -0.446812,
		-0.976178, 0.156393, -0.150393,
		38.418892, 27.081142, 49.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056625, 27.692284, 49.570374>,  <39.102219, 26.971668, 49.525177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056625, 27.692284, 49.570374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744675, 27.473246, 49.691650>,  <38.557503, 27.341824, 49.764416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744675, 27.473246, 49.691650>,  <39.056625, 27.692284, 49.570374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744675, 27.473246, 49.691650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086993, 0.384863, 0.918865,
		-0.619855, 0.742980, -0.252510,
		-0.779880, -0.547596, 0.303194,
		38.510712, 27.308968, 49.782608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429970, 27.741188, 50.304184>,  <39.056625, 27.692284, 49.570374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429970, 27.741188, 50.304184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742569, 27.990734, 50.301094>,  <39.930126, 28.140463, 50.299240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742569, 27.990734, 50.301094>,  <39.429970, 27.741188, 50.304184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742569, 27.990734, 50.301094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119886, 0.137999, -0.983150,
		-0.612287, 0.769252, 0.182638,
		0.781493, 0.623866, -0.007728,
		39.977016, 28.177895, 50.298775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242691, 28.373219, 50.112972>,  <39.429970, 27.741188, 50.304184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242691, 28.373219, 50.112972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619480, 28.320219, 49.989605>,  <39.845554, 28.288420, 49.915585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619480, 28.320219, 49.989605>,  <39.242691, 28.373219, 50.112972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619480, 28.320219, 49.989605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289213, 0.146054, -0.946057,
		0.170396, 0.980364, 0.099259,
		0.941977, -0.132497, -0.308421,
		39.902073, 28.280470, 49.897079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366142, 28.833773, 49.528358>,  <39.242691, 28.373219, 50.112972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366142, 28.833773, 49.528358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645958, 28.548447, 49.511265>,  <39.813847, 28.377251, 49.501007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645958, 28.548447, 49.511265>,  <39.366142, 28.833773, 49.528358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645958, 28.548447, 49.511265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113810, -0.052174, -0.992132,
		0.705473, 0.698898, -0.117680,
		0.699539, -0.713315, -0.042734,
		39.855820, 28.334452, 49.498444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885525, 29.092873, 49.040966>,  <39.366142, 28.833773, 49.528358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885525, 29.092873, 49.040966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920883, 28.694450, 49.044094>,  <39.942097, 28.455397, 49.045971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920883, 28.694450, 49.044094>,  <39.885525, 29.092873, 49.040966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920883, 28.694450, 49.044094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025607, -0.010120, -0.999621,
		0.995756, 0.088162, -0.026400,
		0.088395, -0.996055, 0.007819,
		39.947403, 28.395634, 49.046440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486893, 28.979977, 48.502274>,  <39.885525, 29.092873, 49.040966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486893, 28.979977, 48.502274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291931, 28.632021, 48.532555>,  <40.174953, 28.423246, 48.550724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291931, 28.632021, 48.532555>,  <40.486893, 28.979977, 48.502274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291931, 28.632021, 48.532555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133871, -0.160116, -0.977978,
		0.862855, -0.466534, 0.194494,
		-0.487402, -0.869890, 0.075701,
		40.145710, 28.371054, 48.555264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888885, 28.446600, 48.069588>,  <40.486893, 28.979977, 48.502274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888885, 28.446600, 48.069588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525368, 28.290537, 48.128738>,  <40.307259, 28.196899, 48.164227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525368, 28.290537, 48.128738>,  <40.888885, 28.446600, 48.069588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525368, 28.290537, 48.128738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129558, -0.073013, -0.988880,
		0.396618, -0.917848, 0.015805,
		-0.908795, -0.390160, 0.147873,
		40.252728, 28.173489, 48.173100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821445, 27.788782, 47.527538>,  <40.888885, 28.446600, 48.069588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821445, 27.788782, 47.527538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464840, 27.937824, 47.630581>,  <40.250877, 28.027250, 47.692406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464840, 27.937824, 47.630581>,  <40.821445, 27.788782, 47.527538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464840, 27.937824, 47.630581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307881, -0.081271, -0.947948,
		-0.332277, -0.924423, 0.187173,
		-0.891517, 0.372609, 0.257608,
		40.197384, 28.049606, 47.707863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361481, 27.369417, 47.150883>,  <40.821445, 27.788782, 47.527538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361481, 27.369417, 47.150883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118580, 27.674156, 47.241074>,  <39.972839, 27.857000, 47.295189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118580, 27.674156, 47.241074>,  <40.361481, 27.369417, 47.150883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118580, 27.674156, 47.241074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586301, -0.238168, -0.774291,
		-0.536191, -0.602382, 0.591299,
		-0.607248, 0.761847, 0.225474,
		39.936405, 27.902710, 47.308716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679661, 27.179632, 47.020493>,  <40.361481, 27.369417, 47.150883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679661, 27.179632, 47.020493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690239, 27.579475, 47.024117>,  <39.696587, 27.819382, 47.026291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690239, 27.579475, 47.024117>,  <39.679661, 27.179632, 47.020493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690239, 27.579475, 47.024117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610316, 0.023322, -0.791815,
		-0.791717, 0.015407, 0.610694,
		0.026442, 0.999609, 0.009061,
		39.698174, 27.879358, 47.026836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062538, 27.378178, 46.604717>,  <39.679661, 27.179632, 47.020493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062538, 27.378178, 46.604717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249290, 27.730255, 46.638847>,  <39.361343, 27.941502, 46.659325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249290, 27.730255, 46.638847>,  <39.062538, 27.378178, 46.604717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249290, 27.730255, 46.638847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466816, 0.327255, -0.821576,
		-0.751068, 0.343751, 0.563678,
		0.466884, 0.880193, 0.085322,
		39.389355, 27.994312, 46.664444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551693, 27.890005, 46.707565>,  <39.062538, 27.378178, 46.604717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551693, 27.890005, 46.707565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879673, 28.057693, 46.551647>,  <39.076462, 28.158306, 46.458096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879673, 28.057693, 46.551647>,  <38.551693, 27.890005, 46.707565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879673, 28.057693, 46.551647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499360, 0.190906, -0.845101,
		-0.279870, 0.887586, 0.365875,
		0.819947, 0.419222, -0.389796,
		39.125656, 28.183460, 46.434708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242165, 28.442835, 46.388401>,  <38.551693, 27.890005, 46.707565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242165, 28.442835, 46.388401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610825, 28.421732, 46.234631>,  <38.832020, 28.409069, 46.142368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610825, 28.421732, 46.234631>,  <38.242165, 28.442835, 46.388401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610825, 28.421732, 46.234631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356996, 0.272925, -0.893345,
		0.152052, 0.960587, 0.232706,
		0.921647, -0.052759, -0.384425,
		38.887318, 28.405905, 46.119305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353474, 28.997431, 45.897205>,  <38.242165, 28.442835, 46.388401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353474, 28.997431, 45.897205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630222, 28.731543, 45.784451>,  <38.796272, 28.572010, 45.716797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630222, 28.731543, 45.784451>,  <38.353474, 28.997431, 45.897205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630222, 28.731543, 45.784451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253161, 0.142290, -0.956903,
		0.676180, 0.733419, -0.069834,
		0.691874, -0.664718, -0.281886,
		38.837784, 28.532127, 45.699886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720333, 29.324402, 45.382778>,  <38.353474, 28.997431, 45.897205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720333, 29.324402, 45.382778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816769, 28.941381, 45.319569>,  <38.874630, 28.711569, 45.281643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816769, 28.941381, 45.319569>,  <38.720333, 29.324402, 45.382778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816769, 28.941381, 45.319569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006589, 0.161205, -0.986899,
		0.970482, 0.238968, 0.032555,
		0.241086, -0.957553, -0.158021,
		38.889095, 28.654116, 45.272163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313305, 29.302471, 44.944057>,  <38.720333, 29.324402, 45.382778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313305, 29.302471, 44.944057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144730, 28.942127, 44.902412>,  <39.043583, 28.725922, 44.877426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144730, 28.942127, 44.902412>,  <39.313305, 29.302471, 44.944057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144730, 28.942127, 44.902412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089448, 0.072953, -0.993316,
		0.902435, -0.427934, 0.049835,
		-0.421438, -0.900860, -0.104113,
		39.018299, 28.671869, 44.871178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584229, 29.091753, 44.345844>,  <39.313305, 29.302471, 44.944057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584229, 29.091753, 44.345844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275768, 28.841742, 44.394302>,  <39.090694, 28.691734, 44.423378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275768, 28.841742, 44.394302>,  <39.584229, 29.091753, 44.345844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275768, 28.841742, 44.394302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175408, 0.025668, -0.984161,
		0.612017, -0.780181, -0.129429,
		-0.771146, -0.625027, 0.121141,
		39.044426, 28.654234, 44.430645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541248, 28.881607, 43.710526>,  <39.584229, 29.091753, 44.345844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541248, 28.881607, 43.710526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213135, 28.705793, 43.856915>,  <39.016266, 28.600306, 43.944748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213135, 28.705793, 43.856915>,  <39.541248, 28.881607, 43.710526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213135, 28.705793, 43.856915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350057, -0.120208, -0.928983,
		0.452314, -0.890145, -0.055257,
		-0.820288, -0.439536, 0.365973,
		38.967049, 28.573933, 43.966705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526936, 28.159227, 43.480083>,  <39.541248, 28.881607, 43.710526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526936, 28.159227, 43.480083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159245, 28.288759, 43.569668>,  <38.938629, 28.366478, 43.623421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159245, 28.288759, 43.569668>,  <39.526936, 28.159227, 43.480083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159245, 28.288759, 43.569668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255384, -0.057437, -0.965132,
		-0.299674, -0.944371, 0.135498,
		-0.919225, 0.323829, 0.223965,
		38.883476, 28.385908, 43.636856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102459, 27.794785, 42.970623>,  <39.526936, 28.159227, 43.480083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102459, 27.794785, 42.970623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904072, 28.126854, 43.072468>,  <38.785042, 28.326096, 43.133575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904072, 28.126854, 43.072468>,  <39.102459, 27.794785, 42.970623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904072, 28.126854, 43.072468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348573, 0.078216, -0.934012,
		-0.795308, -0.551990, 0.250584,
		-0.495966, 0.830174, 0.254615,
		38.755283, 28.375906, 43.148853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527111, 27.689972, 42.538490>,  <39.102459, 27.794785, 42.970623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527111, 27.689972, 42.538490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527233, 28.068363, 42.668179>,  <38.527306, 28.295399, 42.745991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527233, 28.068363, 42.668179>,  <38.527111, 27.689972, 42.538490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527233, 28.068363, 42.668179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219707, 0.316366, -0.922844,
		-0.975566, -0.070953, 0.207935,
		0.000305, 0.945980, 0.324225,
		38.527325, 28.352158, 42.765446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937622, 27.943722, 42.330189>,  <38.527111, 27.689972, 42.538490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937622, 27.943722, 42.330189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179157, 28.256516, 42.392006>,  <38.324078, 28.444191, 42.429096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179157, 28.256516, 42.392006>,  <37.937622, 27.943722, 42.330189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179157, 28.256516, 42.392006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196548, 0.333964, -0.921866,
		-0.772497, 0.526279, 0.355357,
		0.603835, 0.781983, 0.154547,
		38.360310, 28.491110, 42.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544807, 28.563454, 42.034195>,  <37.937622, 27.943722, 42.330189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544807, 28.563454, 42.034195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930210, 28.665901, 42.065323>,  <38.161453, 28.727369, 42.084000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930210, 28.665901, 42.065323>,  <37.544807, 28.563454, 42.034195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930210, 28.665901, 42.065323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022959, 0.368725, -0.929255,
		-0.266696, 0.893557, 0.361149,
		0.963507, 0.256121, 0.077822,
		38.219261, 28.742737, 42.088669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583344, 29.031788, 41.590416>,  <37.544807, 28.563454, 42.034195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583344, 29.031788, 41.590416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967690, 28.938999, 41.650990>,  <38.198296, 28.883326, 41.687332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967690, 28.938999, 41.650990>,  <37.583344, 29.031788, 41.590416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967690, 28.938999, 41.650990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219285, 0.302864, -0.927463,
		0.169281, 0.924372, 0.341879,
		0.960863, -0.231971, 0.151432,
		38.255947, 28.869408, 41.696419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008015, 29.566116, 41.280563>,  <37.583344, 29.031788, 41.590416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008015, 29.566116, 41.280563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291580, 29.285086, 41.305305>,  <38.461720, 29.116467, 41.320148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291580, 29.285086, 41.305305>,  <38.008015, 29.566116, 41.280563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291580, 29.285086, 41.305305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209794, 0.126329, -0.969550,
		0.673371, 0.700304, 0.236953,
		0.708914, -0.702578, 0.061853,
		38.504253, 29.074312, 41.323860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505611, 29.812666, 40.892166>,  <38.008015, 29.566116, 41.280563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505611, 29.812666, 40.892166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599979, 29.424252, 40.907303>,  <38.656601, 29.191204, 40.916386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599979, 29.424252, 40.907303>,  <38.505611, 29.812666, 40.892166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599979, 29.424252, 40.907303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255115, 0.024315, -0.966605,
		0.937687, 0.237699, 0.253462,
		0.235924, -0.971035, 0.037841,
		38.670757, 29.132940, 40.918655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180546, 29.705898, 40.647373>,  <38.505611, 29.812666, 40.892166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180546, 29.705898, 40.647373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005009, 29.352814, 40.580158>,  <38.899685, 29.140963, 40.539829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005009, 29.352814, 40.580158>,  <39.180546, 29.705898, 40.647373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005009, 29.352814, 40.580158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414755, -0.033089, -0.909331,
		0.797117, -0.468748, 0.380631,
		-0.438842, -0.882712, -0.168040,
		38.873356, 29.087999, 40.529747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688519, 29.216457, 40.277615>,  <39.180546, 29.705898, 40.647373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688519, 29.216457, 40.277615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358105, 29.012171, 40.182255>,  <39.159855, 28.889599, 40.125038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358105, 29.012171, 40.182255>,  <39.688519, 29.216457, 40.277615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358105, 29.012171, 40.182255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235062, 0.072276, -0.969289,
		0.512265, -0.856705, 0.060348,
		-0.826033, -0.510718, -0.238403,
		39.110294, 28.858955, 40.110733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896553, 28.759739, 39.702049>,  <39.688519, 29.216457, 40.277615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896553, 28.759739, 39.702049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499172, 28.803761, 39.689785>,  <39.260742, 28.830173, 39.682426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499172, 28.803761, 39.689785>,  <39.896553, 28.759739, 39.702049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499172, 28.803761, 39.689785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034201, 0.030440, -0.998951,
		-0.109010, -0.993459, -0.034005,
		-0.993452, 0.110058, -0.030659,
		39.201138, 28.836777, 39.680588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695431, 28.382347, 39.126583>,  <39.896553, 28.759739, 39.702049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695431, 28.382347, 39.126583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386707, 28.626432, 39.198082>,  <39.201473, 28.772884, 39.240982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386707, 28.626432, 39.198082>,  <39.695431, 28.382347, 39.126583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386707, 28.626432, 39.198082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021089, 0.305518, -0.951953,
		-0.635505, -0.730956, -0.248670,
		-0.771809, 0.610215, 0.178743,
		39.155163, 28.809496, 39.251705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199108, 28.316128, 38.658878>,  <39.695431, 28.382347, 39.126583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199108, 28.316128, 38.658878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112694, 28.675323, 38.812210>,  <39.060844, 28.890841, 38.904209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112694, 28.675323, 38.812210>,  <39.199108, 28.316128, 38.658878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112694, 28.675323, 38.812210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018668, 0.388730, -0.921162,
		-0.976207, -0.206159, -0.067216,
		-0.216035, 0.897991, 0.383330,
		39.047882, 28.944721, 38.927208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662560, 28.537851, 38.250370>,  <39.199108, 28.316128, 38.658878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662560, 28.537851, 38.250370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852470, 28.852623, 38.408016>,  <38.966419, 29.041485, 38.502605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852470, 28.852623, 38.408016>,  <38.662560, 28.537851, 38.250370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852470, 28.852623, 38.408016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153911, 0.366667, -0.917533,
		-0.866542, 0.496285, 0.052970,
		0.474780, 0.786928, 0.394116,
		38.994904, 29.088701, 38.526253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390282, 29.095934, 37.861908>,  <38.662560, 28.537851, 38.250370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390282, 29.095934, 37.861908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710018, 29.279440, 38.017132>,  <38.901859, 29.389544, 38.110268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710018, 29.279440, 38.017132>,  <38.390282, 29.095934, 37.861908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710018, 29.279440, 38.017132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166338, 0.451642, -0.876556,
		-0.577397, 0.765216, 0.284706,
		0.799340, 0.458763, 0.388062,
		38.949821, 29.417068, 38.133549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394505, 29.840437, 37.670361>,  <38.390282, 29.095934, 37.861908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394505, 29.840437, 37.670361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773006, 29.776588, 37.782871>,  <39.000107, 29.738279, 37.850376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773006, 29.776588, 37.782871>,  <38.394505, 29.840437, 37.670361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773006, 29.776588, 37.782871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323313, 0.488556, -0.810421,
		-0.008059, 0.857808, 0.513908,
		0.946258, -0.159622, 0.281277,
		39.056885, 29.728703, 37.867256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699749, 30.477686, 37.639050>,  <38.394505, 29.840437, 37.670361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699749, 30.477686, 37.639050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015789, 30.232533, 37.643219>,  <39.205414, 30.085440, 37.645721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015789, 30.232533, 37.643219>,  <38.699749, 30.477686, 37.639050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015789, 30.232533, 37.643219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498826, 0.632997, -0.592020,
		0.356244, 0.472955, 0.805856,
		0.790103, -0.612885, 0.010421,
		39.252819, 30.048666, 37.646347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070610, 30.997032, 37.319931>,  <38.699749, 30.477686, 37.639050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070610, 30.997032, 37.319931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312069, 30.682091, 37.370018>,  <39.456944, 30.493126, 37.400070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312069, 30.682091, 37.370018>,  <39.070610, 30.997032, 37.319931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312069, 30.682091, 37.370018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676158, 0.422394, -0.603651,
		0.422394, 0.449064, 0.787353,
		0.603651, -0.787353, 0.125221,
		39.493164, 30.445885, 37.407585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666809, 31.250025, 37.544804>,  <39.070610, 30.997032, 37.319931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666809, 31.250025, 37.544804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739220, 30.902916, 37.359676>,  <39.782665, 30.694651, 37.248600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739220, 30.902916, 37.359676>,  <39.666809, 31.250025, 37.544804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739220, 30.902916, 37.359676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628646, 0.464003, -0.624103,
		0.756328, -0.177965, 0.629521,
		0.181031, -0.867773, -0.462816,
		39.793530, 30.642584, 37.220833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406380, 31.142879, 37.537331>,  <39.666809, 31.250025, 37.544804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406380, 31.142879, 37.537331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260578, 30.932493, 37.229954>,  <40.173096, 30.806261, 37.045528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260578, 30.932493, 37.229954>,  <40.406380, 31.142879, 37.537331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260578, 30.932493, 37.229954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541931, 0.551256, -0.634372,
		0.757263, -0.647673, 0.084101,
		-0.364504, -0.525963, -0.768439,
		40.151226, 30.774704, 36.999420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971966, 31.049923, 37.114330>,  <40.406380, 31.142879, 37.537331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971966, 31.049923, 37.114330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648777, 30.986872, 36.887234>,  <40.454865, 30.949041, 36.750977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648777, 30.986872, 36.887234>,  <40.971966, 31.049923, 37.114330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648777, 30.986872, 36.887234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378198, 0.600128, -0.704850,
		0.451819, -0.784220, -0.425276,
		-0.807977, -0.157626, -0.567739,
		40.406384, 30.939583, 36.716911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222042, 30.941883, 36.509598>,  <40.971966, 31.049923, 37.114330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222042, 30.941883, 36.509598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841011, 31.056684, 36.469147>,  <40.612392, 31.125566, 36.444874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841011, 31.056684, 36.469147>,  <41.222042, 30.941883, 36.509598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841011, 31.056684, 36.469147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244661, 0.524742, -0.815345,
		-0.180941, -0.801420, -0.570076,
		-0.952576, 0.287005, -0.101129,
		40.555237, 31.142786, 36.438808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968830, 30.833122, 35.806770>,  <41.222042, 30.941883, 36.509598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968830, 30.833122, 35.806770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779278, 31.139183, 35.981117>,  <40.665546, 31.322821, 36.085724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779278, 31.139183, 35.981117>,  <40.968830, 30.833122, 35.806770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779278, 31.139183, 35.981117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266353, 0.596330, -0.757263,
		-0.839343, -0.242754, -0.486388,
		-0.473877, 0.765154, 0.435867,
		40.637115, 31.368729, 36.111877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684517, 31.238522, 35.338131>,  <40.968830, 30.833122, 35.806770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684517, 31.238522, 35.338131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743843, 31.500973, 35.634102>,  <40.779438, 31.658443, 35.811684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743843, 31.500973, 35.634102>,  <40.684517, 31.238522, 35.338131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743843, 31.500973, 35.634102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280004, 0.689729, -0.667736,
		-0.948472, 0.306221, -0.081419,
		0.148318, 0.656127, 0.739932,
		40.788338, 31.697811, 35.856083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465961, 31.900707, 35.109776>,  <40.684517, 31.238522, 35.338131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465961, 31.900707, 35.109776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729683, 31.949924, 35.406471>,  <40.887917, 31.979456, 35.584488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729683, 31.949924, 35.406471>,  <40.465961, 31.900707, 35.109776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729683, 31.949924, 35.406471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529443, 0.624493, -0.574194,
		-0.533864, 0.771277, 0.346585,
		0.659303, 0.123045, 0.741741,
		40.927475, 31.986837, 35.628994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866234, 32.106956, 34.440018>,  <40.465961, 31.900707, 35.109776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866234, 32.106956, 34.440018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909924, 32.265690, 34.804565>,  <40.936138, 32.360928, 35.023293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909924, 32.265690, 34.804565>,  <40.866234, 32.106956, 34.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909924, 32.265690, 34.804565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825823, 0.474079, -0.305394,
		-0.553251, 0.785986, -0.275932,
		0.109222, 0.396830, 0.911371,
		40.942692, 32.384739, 35.077976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126255, 32.855427, 34.467098>,  <40.866234, 32.106956, 34.440018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126255, 32.855427, 34.467098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255424, 32.718002, 34.819843>,  <41.332928, 32.635548, 35.031490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255424, 32.718002, 34.819843>,  <41.126255, 32.855427, 34.467098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255424, 32.718002, 34.819843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916974, 0.344211, -0.201684,
		-0.234258, 0.873777, 0.426188,
		0.322925, -0.343557, 0.881866,
		41.352303, 32.614937, 35.084404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466076, 33.347790, 34.935452>,  <41.126255, 32.855427, 34.467098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466076, 33.347790, 34.935452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610909, 32.980247, 34.998203>,  <41.697807, 32.759724, 35.035854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610909, 32.980247, 34.998203>,  <41.466076, 33.347790, 34.935452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610909, 32.980247, 34.998203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886678, 0.287580, -0.362078,
		0.287580, 0.270205, 0.918851,
		0.362078, -0.918851, 0.156883,
		41.719532, 32.704594, 35.045269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078072, 33.252674, 35.380684>,  <41.466076, 33.347790, 34.935452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078072, 33.252674, 35.380684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038265, 32.974041, 35.096466>,  <42.014381, 32.806862, 34.925938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038265, 32.974041, 35.096466>,  <42.078072, 33.252674, 35.380684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038265, 32.974041, 35.096466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946443, 0.154167, -0.283688,
		0.307154, -0.700716, 0.643936,
		-0.099511, -0.696584, -0.710541,
		42.008411, 32.765064, 34.883305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671185, 32.782013, 35.291748>,  <42.078072, 33.252674, 35.380684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671185, 32.782013, 35.291748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488667, 32.773102, 34.935928>,  <42.379154, 32.767754, 34.722435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488667, 32.773102, 34.935928>,  <42.671185, 32.782013, 35.291748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488667, 32.773102, 34.935928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877176, -0.179246, -0.445459,
		-0.149525, -0.983552, 0.101329,
		-0.456295, -0.022276, -0.889549,
		42.351776, 32.766418, 34.669064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794258, 32.251438, 35.851856>,  <42.671185, 32.782013, 35.291748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794258, 32.251438, 35.851856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630508, 31.931524, 35.676239>,  <42.532261, 31.739576, 35.570869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630508, 31.931524, 35.676239>,  <42.794258, 32.251438, 35.851856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630508, 31.931524, 35.676239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903389, -0.422670, -0.072377,
		-0.127686, -0.426259, 0.895544,
		-0.409372, -0.799783, -0.439046,
		42.507698, 31.691589, 35.544525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725021, 32.806328, 36.346970>,  <42.794258, 32.251438, 35.851856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725021, 32.806328, 36.346970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061623, 32.966236, 36.201614>,  <43.263584, 33.062180, 36.114399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061623, 32.966236, 36.201614>,  <42.725021, 32.806328, 36.346970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061623, 32.966236, 36.201614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433520, 0.901055, -0.012638,
		0.322384, 0.168172, 0.931551,
		0.841504, 0.399772, -0.363392,
		43.314075, 33.086166, 36.092598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953846, 33.385620, 36.866398>,  <42.725021, 32.806328, 36.346970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953846, 33.385620, 36.866398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040443, 33.414627, 36.476963>,  <43.092403, 33.432034, 36.243301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.040443, 33.414627, 36.476963>,  <42.953846, 33.385620, 36.866398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040443, 33.414627, 36.476963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387314, 0.921783, -0.017463,
		0.896169, 0.380864, 0.227648,
		0.216493, 0.072522, -0.973587,
		43.105392, 33.436382, 36.184887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344109, 33.945316, 36.799957>,  <42.953846, 33.385620, 36.866398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344109, 33.945316, 36.799957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205189, 33.899864, 36.427620>,  <43.121838, 33.872593, 36.204216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205189, 33.899864, 36.427620>,  <43.344109, 33.945316, 36.799957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205189, 33.899864, 36.427620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283476, 0.958913, -0.011289,
		0.893882, 0.259952, -0.365239,
		-0.347298, -0.113628, -0.930845,
		43.100998, 33.865776, 36.148365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580894, 34.515053, 36.438427>,  <43.344109, 33.945316, 36.799957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580894, 34.515053, 36.438427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307556, 34.409275, 36.166222>,  <43.143551, 34.345806, 36.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307556, 34.409275, 36.166222>,  <43.580894, 34.515053, 36.438427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307556, 34.409275, 36.166222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363735, 0.931496, 0.003271,
		0.633031, 0.249762, -0.732728,
		-0.683351, -0.264449, -0.680514,
		43.102551, 34.329941, 35.962067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566734, 35.060261, 35.896721>,  <43.580894, 34.515053, 36.438427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566734, 35.060261, 35.896721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214539, 34.870647, 35.894398>,  <43.003223, 34.756878, 35.893005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214539, 34.870647, 35.894398>,  <43.566734, 35.060261, 35.896721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214539, 34.870647, 35.894398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474068, 0.880455, 0.007662,
		0.001477, 0.009497, -0.999954,
		-0.880487, -0.474035, -0.005803,
		42.950394, 34.728436, 35.892658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208714, 35.387199, 35.412491>,  <43.566734, 35.060261, 35.896721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208714, 35.387199, 35.412491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925854, 35.219852, 35.640491>,  <42.756138, 35.119442, 35.777290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925854, 35.219852, 35.640491>,  <43.208714, 35.387199, 35.412491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925854, 35.219852, 35.640491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439394, 0.891618, 0.109315,
		-0.553957, -0.173153, -0.814340,
		-0.707152, -0.418372, 0.570001,
		42.713707, 35.094341, 35.811493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538849, 35.620716, 35.047829>,  <43.208714, 35.387199, 35.412491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538849, 35.620716, 35.047829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465054, 35.527241, 35.429688>,  <42.420776, 35.471157, 35.658802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465054, 35.527241, 35.429688>,  <42.538849, 35.620716, 35.047829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465054, 35.527241, 35.429688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790206, 0.612836, -0.002695,
		-0.584413, -0.754866, -0.297721,
		-0.184489, -0.233686, 0.954649,
		42.409706, 35.457134, 35.716084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896397, 35.368217, 35.048908>,  <42.538849, 35.620716, 35.047829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896397, 35.368217, 35.048908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956535, 35.466637, 35.431919>,  <41.992619, 35.525688, 35.661724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956535, 35.466637, 35.431919>,  <41.896397, 35.368217, 35.048908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956535, 35.466637, 35.431919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827968, 0.560600, -0.014049,
		-0.540246, -0.790689, 0.288002,
		0.150346, 0.246046, 0.957527,
		42.001640, 35.540451, 35.719177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287807, 35.407940, 35.304939>,  <41.896397, 35.368217, 35.048908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287807, 35.407940, 35.304939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515278, 35.618099, 35.558098>,  <41.651760, 35.744194, 35.709995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515278, 35.618099, 35.558098>,  <41.287807, 35.407940, 35.304939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515278, 35.618099, 35.558098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718746, 0.691564, 0.071719,
		-0.400009, -0.495679, 0.770906,
		0.568680, 0.525397, 0.632899,
		41.685883, 35.775719, 35.747967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816895, 35.709557, 35.921799>,  <41.287807, 35.407940, 35.304939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816895, 35.709557, 35.921799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138832, 35.941269, 35.870159>,  <41.331993, 36.080296, 35.839176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138832, 35.941269, 35.870159>,  <40.816895, 35.709557, 35.921799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138832, 35.941269, 35.870159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590274, 0.803929, -0.072627,
		0.061711, 0.134654, 0.988969,
		0.804840, 0.579281, -0.129094,
		41.380283, 36.115055, 35.831432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599396, 36.443108, 35.997501>,  <40.816895, 35.709557, 35.921799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599396, 36.443108, 35.997501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974373, 36.542686, 35.900154>,  <41.199360, 36.602432, 35.841747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974373, 36.542686, 35.900154>,  <40.599396, 36.443108, 35.997501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974373, 36.542686, 35.900154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279883, 0.954647, -0.101561,
		0.207046, 0.163322, 0.964603,
		0.937442, 0.248948, -0.243367,
		41.255604, 36.617371, 35.827145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857460, 37.080654, 36.431664>,  <40.599396, 36.443108, 35.997501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857460, 37.080654, 36.431664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050201, 37.044109, 36.083073>,  <41.165848, 37.022182, 35.873920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050201, 37.044109, 36.083073>,  <40.857460, 37.080654, 36.431664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050201, 37.044109, 36.083073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262317, 0.933899, -0.242944,
		0.836064, 0.345667, 0.426041,
		0.481857, -0.091359, -0.871474,
		41.194759, 37.016701, 35.821629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343960, 37.634678, 36.334599>,  <40.857460, 37.080654, 36.431664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343960, 37.634678, 36.334599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289589, 37.502441, 35.961025>,  <41.256966, 37.423100, 35.736881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289589, 37.502441, 35.961025>,  <41.343960, 37.634678, 36.334599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289589, 37.502441, 35.961025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207932, 0.931207, -0.299363,
		0.968653, 0.153503, -0.195316,
		-0.135927, -0.330591, -0.933934,
		41.248810, 37.403263, 35.680843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764000, 38.152546, 35.843967>,  <41.343960, 37.634678, 36.334599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764000, 38.152546, 35.843967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515038, 37.945454, 35.609169>,  <41.365658, 37.821198, 35.468288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515038, 37.945454, 35.609169>,  <41.764000, 38.152546, 35.843967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515038, 37.945454, 35.609169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219814, 0.835413, -0.503752,
		0.751192, -0.184510, -0.633772,
		-0.622409, -0.517727, -0.586998,
		41.328316, 37.790134, 35.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933788, 38.353443, 35.204903>,  <41.764000, 38.152546, 35.843967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933788, 38.353443, 35.204903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553623, 38.234875, 35.167259>,  <41.325523, 38.163734, 35.144672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553623, 38.234875, 35.167259>,  <41.933788, 38.353443, 35.204903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553623, 38.234875, 35.167259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167895, 0.743730, -0.647052,
		0.261792, -0.599164, -0.756616,
		-0.950408, -0.296425, -0.094106,
		41.268501, 38.145947, 35.139027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754261, 38.542053, 34.560299>,  <41.933788, 38.353443, 35.204903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754261, 38.542053, 34.560299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392944, 38.468906, 34.715542>,  <41.176155, 38.425018, 34.808685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392944, 38.468906, 34.715542>,  <41.754261, 38.542053, 34.560299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392944, 38.468906, 34.715542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409623, 0.636602, -0.653412,
		-0.127577, -0.749197, -0.649944,
		-0.903290, -0.182872, 0.388104,
		41.121956, 38.414043, 34.831974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253357, 38.227097, 34.059944>,  <41.754261, 38.542053, 34.560299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253357, 38.227097, 34.059944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014572, 38.392342, 34.335037>,  <40.871300, 38.491489, 34.500092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014572, 38.392342, 34.335037>,  <41.253357, 38.227097, 34.059944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014572, 38.392342, 34.335037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451925, 0.535126, -0.713725,
		-0.662869, -0.736872, -0.132757,
		-0.596966, 0.413110, 0.687729,
		40.835484, 38.516273, 34.541355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594578, 38.305649, 33.747223>,  <41.253357, 38.227097, 34.059944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594578, 38.305649, 33.747223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570324, 38.559711, 34.055225>,  <40.555771, 38.712147, 34.240025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570324, 38.559711, 34.055225>,  <40.594578, 38.305649, 33.747223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570324, 38.559711, 34.055225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115154, 0.761820, -0.637472,
		-0.991495, -0.127324, 0.026945,
		-0.060638, 0.635153, 0.770002,
		40.552132, 38.750256, 34.286224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946892, 38.741783, 33.746822>,  <40.594578, 38.305649, 33.747223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946892, 38.741783, 33.746822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221924, 38.952435, 33.946777>,  <40.386944, 39.078827, 34.066750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.221924, 38.952435, 33.946777>,  <39.946892, 38.741783, 33.746822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221924, 38.952435, 33.946777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192194, 0.795894, -0.574120,
		-0.700207, 0.298680, 0.648459,
		0.687584, 0.526633, 0.499886,
		40.428200, 39.110424, 34.096745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608234, 39.422115, 33.869823>,  <39.946892, 38.741783, 33.746822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608234, 39.422115, 33.869823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999496, 39.481003, 33.928539>,  <40.234253, 39.516335, 33.963768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999496, 39.481003, 33.928539>,  <39.608234, 39.422115, 33.869823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999496, 39.481003, 33.928539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037101, 0.818337, -0.573540,
		-0.204558, 0.555563, 0.805919,
		0.978151, 0.147222, 0.146785,
		40.292942, 39.525169, 33.972576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781727, 40.175072, 34.135757>,  <39.608234, 39.422115, 33.869823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781727, 40.175072, 34.135757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082008, 40.024956, 33.918282>,  <40.262177, 39.934887, 33.787796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082008, 40.024956, 33.918282>,  <39.781727, 40.175072, 34.135757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082008, 40.024956, 33.918282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140835, 0.713146, -0.686722,
		0.645453, 0.592095, 0.482507,
		0.750703, -0.375293, -0.543691,
		40.307220, 39.912369, 33.755173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178196, 40.652390, 33.989315>,  <39.781727, 40.175072, 34.135757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178196, 40.652390, 33.989315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220409, 40.385799, 33.694107>,  <40.245739, 40.225845, 33.516983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220409, 40.385799, 33.694107>,  <40.178196, 40.652390, 33.989315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220409, 40.385799, 33.694107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089649, 0.732765, -0.674551,
		0.990367, 0.137350, 0.017581,
		0.105532, -0.666476, -0.738019,
		40.252068, 40.185856, 33.472702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767189, 40.875084, 33.530193>,  <40.178196, 40.652390, 33.989315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767189, 40.875084, 33.530193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469658, 40.705070, 33.323864>,  <40.291142, 40.603062, 33.200066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469658, 40.705070, 33.323864>,  <40.767189, 40.875084, 33.530193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469658, 40.705070, 33.323864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008588, 0.777772, -0.628488,
		0.668320, -0.463055, -0.582176,
		-0.743825, -0.425031, -0.515823,
		40.246510, 40.577560, 33.169117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339211, 41.261456, 33.036442>,  <40.767189, 40.875084, 33.530193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339211, 41.261456, 33.036442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398293, 41.187416, 32.647820>,  <40.433743, 41.142994, 32.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398293, 41.187416, 32.647820>,  <40.339211, 41.261456, 33.036442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398293, 41.187416, 32.647820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443155, 0.890589, -0.102298,
		0.884193, -0.415441, 0.213569,
		0.147704, -0.185095, -0.971557,
		40.442604, 41.131889, 32.356354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974117, 41.458092, 32.660778>,  <40.339211, 41.261456, 33.036442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974117, 41.458092, 32.660778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777161, 41.387665, 32.319828>,  <40.658985, 41.345409, 32.115257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777161, 41.387665, 32.319828>,  <40.974117, 41.458092, 32.660778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777161, 41.387665, 32.319828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452882, 0.784481, -0.423660,
		0.743268, -0.594634, -0.306534,
		-0.492392, -0.176069, -0.852379,
		40.629444, 41.334843, 32.064114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367622, 41.380417, 32.122272>,  <40.974117, 41.458092, 32.660778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367622, 41.380417, 32.122272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017509, 41.529102, 31.998528>,  <40.807442, 41.618313, 31.924280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017509, 41.529102, 31.998528>,  <41.367622, 41.380417, 32.122272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017509, 41.529102, 31.998528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455704, 0.848102, -0.270290,
		0.161899, -0.377558, -0.911723,
		-0.875284, 0.371716, -0.309361,
		40.754925, 41.640617, 31.905720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072048, 41.305824, 32.239944>,  <41.367622, 41.380417, 32.122272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072048, 41.305824, 32.239944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028316, 41.679649, 32.104507>,  <42.002079, 41.903942, 32.023247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028316, 41.679649, 32.104507>,  <42.072048, 41.305824, 32.239944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028316, 41.679649, 32.104507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983539, 0.151008, 0.099234,
		0.143870, -0.322169, -0.935686,
		-0.109326, 0.934561, -0.338591,
		41.995518, 41.960018, 32.002930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574505, 41.813534, 32.188313>,  <42.072048, 41.305824, 32.239944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574505, 41.813534, 32.188313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965462, 41.897812, 32.181229>,  <43.200035, 41.948380, 32.176979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965462, 41.897812, 32.181229>,  <42.574505, 41.813534, 32.188313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965462, 41.897812, 32.181229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185464, -0.814105, 0.550306,
		0.101531, -0.541149, -0.834775,
		0.977392, 0.210694, -0.017707,
		43.258678, 41.961021, 32.175915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108849, 41.270489, 31.986656>,  <42.574505, 41.813534, 32.188313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108849, 41.270489, 31.986656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345684, 41.495747, 32.217236>,  <43.487785, 41.630901, 32.355583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345684, 41.495747, 32.217236>,  <43.108849, 41.270489, 31.986656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345684, 41.495747, 32.217236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306077, -0.818857, 0.485581,
		0.745481, -0.111072, -0.657206,
		0.592093, 0.563148, 0.576446,
		43.523312, 41.664692, 32.390171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834068, 41.020657, 32.029293>,  <43.108849, 41.270489, 31.986656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834068, 41.020657, 32.029293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693653, 41.195866, 32.360329>,  <43.609402, 41.300991, 32.558949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693653, 41.195866, 32.360329>,  <43.834068, 41.020657, 32.029293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693653, 41.195866, 32.360329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275962, -0.796184, 0.538456,
		0.894771, 0.417404, 0.158616,
		-0.351041, 0.438023, 0.827590,
		43.588341, 41.327274, 32.608604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297737, 40.938854, 32.699970>,  <43.834068, 41.020657, 32.029293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297737, 40.938854, 32.699970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906570, 40.977154, 32.774277>,  <43.671871, 41.000134, 32.818859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906570, 40.977154, 32.774277>,  <44.297737, 40.938854, 32.699970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906570, 40.977154, 32.774277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013498, -0.858088, 0.513325,
		0.208551, 0.504497, 0.837848,
		-0.977919, 0.095745, 0.185765,
		43.613194, 41.005878, 32.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133186, 41.072163, 33.457874>,  <44.297737, 40.938854, 32.699970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133186, 41.072163, 33.457874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793266, 40.926559, 33.305386>,  <43.589314, 40.839199, 33.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793266, 40.926559, 33.305386>,  <44.133186, 41.072163, 33.457874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793266, 40.926559, 33.305386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078060, -0.802184, 0.591953,
		-0.521287, 0.473285, 0.710113,
		-0.849804, -0.364009, -0.381223,
		43.538326, 40.817356, 33.191017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845394, 40.841957, 34.033783>,  <44.133186, 41.072163, 33.457874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845394, 40.841957, 34.033783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685352, 40.654026, 33.719032>,  <43.589325, 40.541267, 33.530182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685352, 40.654026, 33.719032>,  <43.845394, 40.841957, 34.033783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685352, 40.654026, 33.719032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193877, -0.882559, 0.428372,
		-0.895727, 0.018837, 0.444206,
		-0.400107, -0.469825, -0.786879,
		43.565319, 40.513077, 33.482967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455624, 40.245659, 34.334511>,  <43.845394, 40.841957, 34.033783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455624, 40.245659, 34.334511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485638, 40.132877, 33.951916>,  <43.503647, 40.065208, 33.722359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485638, 40.132877, 33.951916>,  <43.455624, 40.245659, 34.334511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485638, 40.132877, 33.951916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161583, -0.943079, 0.290677,
		-0.984003, -0.176362, -0.025201,
		0.075031, -0.281955, -0.956489,
		43.508148, 40.048290, 33.664970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876213, 39.784649, 34.186302>,  <43.455624, 40.245659, 34.334511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876213, 39.784649, 34.186302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197361, 39.712467, 33.959030>,  <43.390049, 39.669159, 33.822666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197361, 39.712467, 33.959030>,  <42.876213, 39.784649, 34.186302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197361, 39.712467, 33.959030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054071, -0.927116, 0.370853,
		-0.593695, -0.328470, -0.734598,
		0.802872, -0.180453, -0.568184,
		43.438221, 39.658333, 33.788574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862736, 39.098633, 34.194206>,  <42.876213, 39.784649, 34.186302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862736, 39.098633, 34.194206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225010, 39.174217, 34.042400>,  <43.442375, 39.219566, 33.951317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.225010, 39.174217, 34.042400>,  <42.862736, 39.098633, 34.194206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225010, 39.174217, 34.042400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317134, -0.896048, 0.310683,
		-0.281354, -0.401737, -0.871463,
		0.905685, 0.188958, -0.379511,
		43.496716, 39.230904, 33.928547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126141, 38.536598, 33.711483>,  <42.862736, 39.098633, 34.194206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126141, 38.536598, 33.711483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464142, 38.725304, 33.812206>,  <43.666943, 38.838528, 33.872639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464142, 38.725304, 33.812206>,  <43.126141, 38.536598, 33.711483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464142, 38.725304, 33.812206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406421, -0.872588, 0.270948,
		0.347547, -0.126613, -0.929075,
		0.845005, 0.471763, 0.251807,
		43.717644, 38.866833, 33.887749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663731, 38.232250, 33.345211>,  <43.126141, 38.536598, 33.711483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663731, 38.232250, 33.345211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831799, 38.405315, 33.664276>,  <43.932640, 38.509155, 33.855713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831799, 38.405315, 33.664276>,  <43.663731, 38.232250, 33.345211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831799, 38.405315, 33.664276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554112, -0.818438, 0.152048,
		0.718621, 0.378107, -0.583627,
		0.420172, 0.432660, 0.797660,
		43.957851, 38.535114, 33.903576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294933, 37.988564, 33.254810>,  <43.663731, 38.232250, 33.345211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294933, 37.988564, 33.254810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263332, 38.083046, 33.642204>,  <44.244373, 38.139736, 33.874641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263332, 38.083046, 33.642204>,  <44.294933, 37.988564, 33.254810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263332, 38.083046, 33.642204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524187, -0.816525, 0.241900,
		0.847932, 0.526777, -0.059312,
		-0.078998, 0.236205, 0.968487,
		44.239632, 38.153908, 33.932751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872635, 37.685101, 33.615681>,  <44.294933, 37.988564, 33.254810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872635, 37.685101, 33.615681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665432, 37.781078, 33.944092>,  <44.541111, 37.838665, 34.141140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.665432, 37.781078, 33.944092>,  <44.872635, 37.685101, 33.615681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665432, 37.781078, 33.944092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389724, -0.788226, 0.476250,
		0.761432, 0.566678, 0.314797,
		-0.518012, 0.239948, 0.821029,
		44.510029, 37.853062, 34.190399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360184, 37.523129, 34.123089>,  <44.872635, 37.685101, 33.615681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360184, 37.523129, 34.123089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996548, 37.532089, 34.289486>,  <44.778366, 37.537468, 34.389324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996548, 37.532089, 34.289486>,  <45.360184, 37.523129, 34.123089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996548, 37.532089, 34.289486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243426, -0.781776, 0.574081,
		0.338075, 0.623156, 0.705253,
		-0.909092, 0.022406, 0.415992,
		44.723820, 37.538811, 34.414284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420971, 37.632370, 34.888077>,  <45.360184, 37.523129, 34.123089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420971, 37.632370, 34.888077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073448, 37.452435, 34.805302>,  <44.864937, 37.344475, 34.755634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073448, 37.452435, 34.805302>,  <45.420971, 37.632370, 34.888077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073448, 37.452435, 34.805302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230717, -0.737559, 0.634647,
		-0.438120, 0.503638, 0.744580,
		-0.868804, -0.449839, -0.206942,
		44.812805, 37.317482, 34.743217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992466, 37.518082, 35.585819>,  <45.420971, 37.632370, 34.888077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992466, 37.518082, 35.585819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874207, 37.250290, 35.313236>,  <44.803249, 37.089615, 35.149685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.874207, 37.250290, 35.313236>,  <44.992466, 37.518082, 35.585819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874207, 37.250290, 35.313236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138841, -0.735886, 0.662718,
		-0.945154, 0.101317, 0.310514,
		-0.295648, -0.669482, -0.681459,
		44.785511, 37.049446, 35.108799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641556, 36.897690, 36.044315>,  <44.992466, 37.518082, 35.585819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641556, 36.897690, 36.044315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648003, 36.775688, 35.663429>,  <44.651871, 36.702488, 35.434898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648003, 36.775688, 35.663429>,  <44.641556, 36.897690, 36.044315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648003, 36.775688, 35.663429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102416, -0.947832, 0.301870,
		-0.994611, 0.092655, -0.046518,
		0.016121, -0.305007, -0.952213,
		44.652840, 36.684185, 35.377766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034695, 36.442791, 35.920910>,  <44.641556, 36.897690, 36.044315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034695, 36.442791, 35.920910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339375, 36.362591, 35.674461>,  <44.522182, 36.314472, 35.526592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339375, 36.362591, 35.674461>,  <44.034695, 36.442791, 35.920910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339375, 36.362591, 35.674461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057243, -0.926373, 0.372232,
		-0.645395, -0.318798, -0.694142,
		0.761701, -0.200502, -0.616125,
		44.567886, 36.302441, 35.489624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846718, 35.766594, 35.575279>,  <44.034695, 36.442791, 35.920910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846718, 35.766594, 35.575279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240269, 35.830841, 35.543827>,  <44.476398, 35.869389, 35.524956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240269, 35.830841, 35.543827>,  <43.846718, 35.766594, 35.575279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240269, 35.830841, 35.543827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163904, -0.985772, 0.037267,
		-0.071523, -0.049554, -0.996207,
		0.983880, 0.160617, -0.078627,
		44.535431, 35.879025, 35.520237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.043530, 35.108032, 35.216583>,  <43.846718, 35.766594, 35.575279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.043530, 35.108032, 35.216583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380260, 35.268959, 35.360508>,  <44.582298, 35.365517, 35.446861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380260, 35.268959, 35.360508>,  <44.043530, 35.108032, 35.216583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380260, 35.268959, 35.360508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351127, -0.914495, 0.201020,
		0.409917, -0.042886, -0.911114,
		0.841830, 0.402318, 0.359809,
		44.632809, 35.389656, 35.468449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500393, 34.705441, 34.891548>,  <44.043530, 35.108032, 35.216583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500393, 34.705441, 34.891548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713921, 34.858765, 35.193039>,  <44.842037, 34.950760, 35.373936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713921, 34.858765, 35.193039>,  <44.500393, 34.705441, 34.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713921, 34.858765, 35.193039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485656, -0.868662, 0.097798,
		0.692223, 0.313847, -0.649867,
		0.533822, 0.383310, 0.753729,
		44.874065, 34.973759, 35.419159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142246, 34.464321, 34.837666>,  <44.500393, 34.705441, 34.891548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142246, 34.464321, 34.837666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168755, 34.546768, 35.228176>,  <45.184662, 34.596237, 35.462482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168755, 34.546768, 35.228176>,  <45.142246, 34.464321, 34.837666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168755, 34.546768, 35.228176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397458, -0.902911, 0.163643,
		0.915224, 0.377185, -0.141762,
		0.066275, 0.206115, 0.976281,
		45.188637, 34.608604, 35.521061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742306, 34.143242, 35.062798>,  <45.142246, 34.464321, 34.837666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742306, 34.143242, 35.062798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546246, 34.219406, 35.403034>,  <45.428608, 34.265102, 35.607174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546246, 34.219406, 35.403034>,  <45.742306, 34.143242, 35.062798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546246, 34.219406, 35.403034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225950, -0.914735, 0.334971,
		0.841843, 0.356376, 0.405334,
		-0.490149, 0.190408, 0.850587,
		45.399200, 34.276527, 35.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.118393, 33.930073, 35.639584>,  <45.742306, 34.143242, 35.062798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.118393, 33.930073, 35.639584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732594, 33.936085, 35.745049>,  <45.501114, 33.939693, 35.808327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732594, 33.936085, 35.745049>,  <46.118393, 33.930073, 35.639584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732594, 33.936085, 35.745049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056181, -0.963849, 0.260458,
		0.258042, 0.266024, 0.928787,
		-0.964499, 0.015029, 0.263659,
		45.443245, 33.940594, 35.824146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381668, 34.617531, 35.726326>,  <46.118393, 33.930073, 35.639584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381668, 34.617531, 35.726326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585915, 34.934055, 35.860847>,  <46.708462, 35.123970, 35.941559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.585915, 34.934055, 35.860847>,  <46.381668, 34.617531, 35.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.585915, 34.934055, 35.860847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763834, -0.237905, -0.599966,
		-0.394749, 0.563235, -0.725906,
		0.510618, 0.791307, 0.336305,
		46.739101, 35.171448, 35.961739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.531578, 35.063286, 35.163773>,  <46.381668, 34.617531, 35.726326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.531578, 35.063286, 35.163773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828758, 35.080246, 35.430973>,  <47.007069, 35.090420, 35.591293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.828758, 35.080246, 35.430973>,  <46.531578, 35.063286, 35.163773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.828758, 35.080246, 35.430973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629154, -0.384844, -0.675323,
		0.228445, 0.922007, -0.312594,
		0.742952, 0.042396, 0.668000,
		47.051643, 35.092964, 35.631374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.156342, 35.141624, 34.822586>,  <46.531578, 35.063286, 35.163773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.156342, 35.141624, 34.822586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325649, 35.018242, 35.163338>,  <47.427235, 34.944210, 35.367790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325649, 35.018242, 35.163338>,  <47.156342, 35.141624, 34.822586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325649, 35.018242, 35.163338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731852, -0.437866, -0.522175,
		0.534078, 0.844468, 0.040412,
		0.423265, -0.308458, 0.851880,
		47.452629, 34.925705, 35.418903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.820164, 35.376041, 34.984550>,  <47.156342, 35.141624, 34.822586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.820164, 35.376041, 34.984550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.832722, 35.016327, 35.159046>,  <47.840256, 34.800499, 35.263744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.832722, 35.016327, 35.159046>,  <47.820164, 35.376041, 34.984550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.832722, 35.016327, 35.159046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808279, -0.233901, -0.540348,
		0.587962, 0.369569, 0.719527,
		0.031398, -0.899283, 0.436239,
		47.842140, 34.746544, 35.289917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.165905, 31.879862, 46.050892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768002, 31.918903, 46.063095>,  <35.529259, 31.942329, 46.070415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.768002, 31.918903, 46.063095>,  <36.165905, 31.879862, 46.050892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768002, 31.918903, 46.063095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017197, 0.134421, -0.990775,
		-0.100807, -0.986105, -0.132038,
		-0.994757, 0.097607, 0.030509,
		35.469574, 31.948185, 46.072247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961040, 31.736750, 45.348557>,  <36.165905, 31.879862, 46.050892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961040, 31.736750, 45.348557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612568, 31.876045, 45.486992>,  <35.403484, 31.959623, 45.570053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612568, 31.876045, 45.486992>,  <35.961040, 31.736750, 45.348557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612568, 31.876045, 45.486992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341441, 0.076804, -0.936760,
		-0.352798, -0.934254, 0.051994,
		-0.871178, 0.348240, 0.346088,
		35.351215, 31.980516, 45.590820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490643, 31.418697, 44.896374>,  <35.961040, 31.736750, 45.348557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490643, 31.418697, 44.896374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292198, 31.730255, 45.049839>,  <35.173130, 31.917191, 45.141918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.292198, 31.730255, 45.049839>,  <35.490643, 31.418697, 44.896374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292198, 31.730255, 45.049839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416409, 0.174299, -0.892313,
		-0.761891, -0.602445, 0.237868,
		-0.496110, 0.778897, 0.383661,
		35.143364, 31.963924, 45.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777740, 31.239380, 44.814735>,  <35.490643, 31.418697, 44.896374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777740, 31.239380, 44.814735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828831, 31.634859, 44.846149>,  <34.859486, 31.872147, 44.864998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828831, 31.634859, 44.846149>,  <34.777740, 31.239380, 44.814735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828831, 31.634859, 44.846149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282164, 0.112134, -0.952790,
		-0.950826, 0.099532, 0.293297,
		0.127721, 0.988696, 0.078535,
		34.867146, 31.931467, 44.869709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210258, 31.477882, 44.488464>,  <34.777740, 31.239380, 44.814735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210258, 31.477882, 44.488464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509369, 31.743385, 44.482014>,  <34.688835, 31.902687, 44.478146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509369, 31.743385, 44.482014>,  <34.210258, 31.477882, 44.488464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509369, 31.743385, 44.482014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203482, 0.205988, -0.957165,
		-0.632002, 0.719026, 0.289095,
		0.747776, 0.663755, -0.016124,
		34.733704, 31.942513, 44.477177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915539, 32.260807, 44.282707>,  <34.210258, 31.477882, 44.488464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915539, 32.260807, 44.282707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294064, 32.178215, 44.183220>,  <34.521179, 32.128658, 44.123528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294064, 32.178215, 44.183220>,  <33.915539, 32.260807, 44.282707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294064, 32.178215, 44.183220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182374, 0.294259, -0.938164,
		0.266901, 0.933154, 0.240803,
		0.946310, -0.206481, -0.248721,
		34.577957, 32.116272, 44.108604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990700, 32.645111, 43.738400>,  <33.915539, 32.260807, 44.282707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990700, 32.645111, 43.738400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331425, 32.436283, 43.721157>,  <34.535858, 32.310986, 43.710812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331425, 32.436283, 43.721157>,  <33.990700, 32.645111, 43.738400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331425, 32.436283, 43.721157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027513, 0.126764, -0.991551,
		0.523127, 0.843427, 0.122343,
		0.851810, -0.522074, -0.043109,
		34.586967, 32.279659, 43.708225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333553, 32.952206, 43.144753>,  <33.990700, 32.645111, 43.738400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333553, 32.952206, 43.144753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509491, 32.602741, 43.227943>,  <34.615055, 32.393063, 43.277859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.509491, 32.602741, 43.227943>,  <34.333553, 32.952206, 43.144753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509491, 32.602741, 43.227943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274460, -0.089731, -0.957403,
		0.855107, 0.478189, 0.200317,
		0.439845, -0.873661, 0.207974,
		34.641445, 32.340645, 43.290337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032730, 33.009232, 43.035923>,  <34.333553, 32.952206, 43.144753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032730, 33.009232, 43.035923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.996990, 32.611946, 43.006138>,  <34.975544, 32.373573, 42.988266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.996990, 32.611946, 43.006138>,  <35.032730, 33.009232, 43.035923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996990, 32.611946, 43.006138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505180, 0.019238, -0.862800,
		0.858376, -0.114710, 0.500032,
		-0.089352, -0.993213, -0.074462,
		34.970184, 32.313984, 42.983799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629074, 32.671200, 42.830433>,  <35.032730, 33.009232, 43.035923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629074, 32.671200, 42.830433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346840, 32.418648, 42.701740>,  <35.177498, 32.267117, 42.624527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346840, 32.418648, 42.701740>,  <35.629074, 32.671200, 42.830433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346840, 32.418648, 42.701740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439402, -0.033630, -0.897661,
		0.555945, -0.774744, 0.301158,
		-0.705585, -0.631380, -0.321728,
		35.135166, 32.229233, 42.605221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978760, 32.206043, 42.292366>,  <35.629074, 32.671200, 42.830433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978760, 32.206043, 42.292366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601120, 32.098534, 42.216007>,  <35.374535, 32.034027, 42.170193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.601120, 32.098534, 42.216007>,  <35.978760, 32.206043, 42.292366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601120, 32.098534, 42.216007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208167, -0.037024, -0.977392,
		0.255628, -0.962492, 0.090904,
		-0.944098, -0.268772, -0.190895,
		35.317890, 32.017902, 42.158737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992447, 31.591234, 41.667252>,  <35.978760, 32.206043, 42.292366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992447, 31.591234, 41.667252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607815, 31.697344, 41.695518>,  <35.377037, 31.761009, 41.712479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607815, 31.697344, 41.695518>,  <35.992447, 31.591234, 41.667252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607815, 31.697344, 41.695518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106843, -0.124511, -0.986449,
		-0.252881, -0.956100, 0.148069,
		-0.961580, 0.265275, 0.070666,
		35.319340, 31.776926, 41.716717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664318, 31.041513, 41.355030>,  <35.992447, 31.591234, 41.667252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664318, 31.041513, 41.355030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424610, 31.361567, 41.344711>,  <35.280785, 31.553598, 41.338520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424610, 31.361567, 41.344711>,  <35.664318, 31.041513, 41.355030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424610, 31.361567, 41.344711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119267, -0.121096, -0.985449,
		-0.791616, -0.587470, 0.167999,
		-0.599266, 0.800135, -0.025796,
		35.244831, 31.601606, 41.336971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048843, 30.828747, 41.075043>,  <35.664318, 31.041513, 41.355030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048843, 30.828747, 41.075043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050369, 31.226688, 41.034550>,  <35.051285, 31.465454, 41.010254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.050369, 31.226688, 41.034550>,  <35.048843, 30.828747, 41.075043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050369, 31.226688, 41.034550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171819, -0.099074, -0.980134,
		-0.985121, 0.021135, 0.170557,
		0.003818, 0.994856, -0.101231,
		35.051514, 31.525145, 41.004181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566570, 30.911692, 40.532036>,  <35.048843, 30.828747, 41.075043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566570, 30.911692, 40.532036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782562, 31.247576, 40.555050>,  <34.912159, 31.449106, 40.568859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.782562, 31.247576, 40.555050>,  <34.566570, 30.911692, 40.532036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782562, 31.247576, 40.555050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072029, 0.114205, -0.990843,
		-0.838591, 0.530891, 0.122151,
		0.539979, 0.839710, 0.057532,
		34.944557, 31.499489, 40.572311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269268, 31.387419, 40.006088>,  <34.566570, 30.911692, 40.532036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269268, 31.387419, 40.006088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632942, 31.550980, 40.037521>,  <34.851147, 31.649117, 40.056381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.632942, 31.550980, 40.037521>,  <34.269268, 31.387419, 40.006088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632942, 31.550980, 40.037521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085775, 0.000760, -0.996314,
		-0.407457, 0.912577, -0.034383,
		0.909187, 0.408905, 0.078586,
		34.905697, 31.673651, 40.061096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384228, 32.062328, 39.564041>,  <34.269268, 31.387419, 40.006088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384228, 32.062328, 39.564041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757175, 31.929804, 39.621887>,  <34.980946, 31.850288, 39.656597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.757175, 31.929804, 39.621887>,  <34.384228, 32.062328, 39.564041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757175, 31.929804, 39.621887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159709, 0.018623, -0.986988,
		0.324312, 0.943336, 0.070278,
		0.932371, -0.331316, 0.144620,
		35.036888, 31.830410, 39.665272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732883, 32.373260, 39.008633>,  <34.384228, 32.062328, 39.564041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732883, 32.373260, 39.008633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995068, 32.105362, 39.148239>,  <35.152378, 31.944622, 39.232002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.995068, 32.105362, 39.148239>,  <34.732883, 32.373260, 39.008633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995068, 32.105362, 39.148239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449955, -0.024842, -0.892706,
		0.606558, 0.742172, 0.285074,
		0.655460, -0.669748, 0.349012,
		35.191704, 31.904438, 39.252941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323666, 32.676220, 38.938152>,  <34.732883, 32.373260, 39.008633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323666, 32.676220, 38.938152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391598, 32.282417, 38.920723>,  <35.432358, 32.046135, 38.910263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391598, 32.282417, 38.920723>,  <35.323666, 32.676220, 38.938152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391598, 32.282417, 38.920723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424491, 0.112989, -0.898355,
		0.889363, 0.134068, 0.437104,
		0.169829, -0.984510, -0.043577,
		35.442547, 31.987064, 38.907650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966042, 32.599567, 38.517250>,  <35.323666, 32.676220, 38.938152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966042, 32.599567, 38.517250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815048, 32.229328, 38.528461>,  <35.724453, 32.007187, 38.535191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.815048, 32.229328, 38.528461>,  <35.966042, 32.599567, 38.517250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815048, 32.229328, 38.528461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312935, -0.155996, -0.936876,
		0.871539, -0.344880, 0.348536,
		-0.377480, -0.925593, 0.028032,
		35.701805, 31.951651, 38.536869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470104, 32.165367, 38.152866>,  <35.966042, 32.599567, 38.517250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470104, 32.165367, 38.152866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123230, 31.966595, 38.139938>,  <35.915104, 31.847332, 38.132183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123230, 31.966595, 38.139938>,  <36.470104, 32.165367, 38.152866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123230, 31.966595, 38.139938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150290, -0.199297, -0.968346,
		0.474761, -0.844595, 0.247512,
		-0.867188, -0.496931, -0.032316,
		35.863075, 31.817516, 38.130245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023327, 32.136032, 37.684067>,  <36.470104, 32.165367, 38.152866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023327, 32.136032, 37.684067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951145, 32.331364, 37.342548>,  <36.907837, 32.448563, 37.137638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951145, 32.331364, 37.342548>,  <37.023327, 32.136032, 37.684067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951145, 32.331364, 37.342548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131099, -0.848362, -0.512928,
		-0.974807, -0.204493, 0.089073,
		-0.180457, 0.488328, -0.853798,
		36.897007, 32.477863, 37.086411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813374, 32.071606, 37.525490>,  <37.023327, 32.136032, 37.684067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813374, 32.071606, 37.525490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159042, 32.272770, 37.532242>,  <38.366444, 32.393467, 37.536293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159042, 32.272770, 37.532242>,  <37.813374, 32.071606, 37.525490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159042, 32.272770, 37.532242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068530, -0.150865, 0.986176,
		0.498503, -0.851072, -0.164838,
		0.864175, 0.502908, 0.016883,
		38.418293, 32.423641, 37.537308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311172, 31.710251, 37.851963>,  <37.813374, 32.071606, 37.525490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311172, 31.710251, 37.851963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428646, 32.089458, 37.900974>,  <38.499130, 32.316982, 37.930382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428646, 32.089458, 37.900974>,  <38.311172, 31.710251, 37.851963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428646, 32.089458, 37.900974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114146, -0.162046, 0.980159,
		0.949064, -0.273867, -0.155802,
		0.293681, 0.948018, 0.122532,
		38.516750, 32.373863, 37.937733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960808, 31.737858, 38.352692>,  <38.311172, 31.710251, 37.851963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960808, 31.737858, 38.352692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851231, 32.122517, 38.358150>,  <38.785484, 32.353313, 38.361423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851231, 32.122517, 38.358150>,  <38.960808, 31.737858, 38.352692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851231, 32.122517, 38.358150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371390, 0.092690, 0.923839,
		0.887143, 0.258150, -0.382538,
		-0.273947, 0.961648, 0.013645,
		38.769047, 32.411011, 38.362244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500977, 32.052387, 38.661446>,  <38.960808, 31.737858, 38.352692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500977, 32.052387, 38.661446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180908, 32.288795, 38.702271>,  <38.988865, 32.430641, 38.726765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.180908, 32.288795, 38.702271>,  <39.500977, 32.052387, 38.661446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180908, 32.288795, 38.702271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247382, 0.170206, 0.953851,
		0.546374, 0.788495, -0.282402,
		-0.800174, 0.591020, 0.102063,
		38.940857, 32.466103, 38.732891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697002, 32.529644, 39.092972>,  <39.500977, 32.052387, 38.661446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697002, 32.529644, 39.092972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297562, 32.550629, 39.095795>,  <39.057899, 32.563221, 39.097488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.297562, 32.550629, 39.095795>,  <39.697002, 32.529644, 39.092972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297562, 32.550629, 39.095795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021331, 0.276747, 0.960706,
		0.048449, 0.959510, -0.277478,
		-0.998598, 0.052464, 0.007059,
		38.997982, 32.566368, 39.097912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431145, 33.155125, 39.554390>,  <39.697002, 32.529644, 39.092972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431145, 33.155125, 39.554390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133438, 32.888214, 39.543053>,  <38.954815, 32.728069, 39.536251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.133438, 32.888214, 39.543053>,  <39.431145, 33.155125, 39.554390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133438, 32.888214, 39.543053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173250, 0.151910, 0.973092,
		-0.645017, 0.729153, -0.228669,
		-0.744270, -0.667277, -0.028341,
		38.910156, 32.688030, 39.534550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855186, 33.480404, 39.871437>,  <39.431145, 33.155125, 39.554390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855186, 33.480404, 39.871437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795094, 33.086262, 39.903694>,  <38.759037, 32.849777, 39.923050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795094, 33.086262, 39.903694>,  <38.855186, 33.480404, 39.871437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795094, 33.086262, 39.903694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246165, 0.116281, 0.962228,
		-0.957515, 0.124703, -0.260029,
		-0.150229, -0.985357, 0.080644,
		38.750027, 32.790653, 39.927887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399902, 33.446381, 40.393574>,  <38.855186, 33.480404, 39.871437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399902, 33.446381, 40.393574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520222, 33.066074, 40.363735>,  <38.592415, 32.837891, 40.345833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.520222, 33.066074, 40.363735>,  <38.399902, 33.446381, 40.393574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520222, 33.066074, 40.363735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300409, -0.168699, 0.938773,
		-0.905137, -0.259972, -0.336363,
		0.300799, -0.950765, -0.074598,
		38.610462, 32.780846, 40.341354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791355, 33.055374, 40.633350>,  <38.399902, 33.446381, 40.393574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791355, 33.055374, 40.633350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106239, 32.809464, 40.652714>,  <38.295170, 32.661915, 40.664333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106239, 32.809464, 40.652714>,  <37.791355, 33.055374, 40.633350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106239, 32.809464, 40.652714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248839, -0.244845, 0.937086,
		-0.564249, -0.749731, -0.345726,
		0.787212, -0.614780, 0.048409,
		38.342403, 32.625031, 40.667236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610428, 32.361176, 40.884842>,  <37.791355, 33.055374, 40.633350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610428, 32.361176, 40.884842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990120, 32.422291, 40.994839>,  <38.217934, 32.458961, 41.060837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990120, 32.422291, 40.994839>,  <37.610428, 32.361176, 40.884842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990120, 32.422291, 40.994839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227986, -0.268215, 0.935993,
		0.216765, -0.951166, -0.219764,
		0.949229, 0.152788, 0.274992,
		38.274887, 32.468128, 41.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637508, 31.962725, 41.495567>,  <37.610428, 32.361176, 40.884842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637508, 31.962725, 41.495567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989719, 32.152252, 41.490246>,  <38.201046, 32.265968, 41.487053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.989719, 32.152252, 41.490246>,  <37.637508, 31.962725, 41.495567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989719, 32.152252, 41.490246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105265, -0.168096, 0.980134,
		0.462167, -0.864432, -0.197889,
		0.880523, 0.473817, -0.013306,
		38.253876, 32.294395, 41.486256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091515, 31.506727, 41.918633>,  <37.637508, 31.962725, 41.495567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091515, 31.506727, 41.918633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244930, 31.875597, 41.898659>,  <38.336979, 32.096920, 41.886673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244930, 31.875597, 41.898659>,  <38.091515, 31.506727, 41.918633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244930, 31.875597, 41.898659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028183, 0.065736, 0.997439,
		0.923094, -0.381152, 0.051203,
		0.383541, 0.922173, -0.049939,
		38.359993, 32.152248, 41.883678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849422, 31.608051, 42.284893>,  <38.091515, 31.506727, 41.918633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849422, 31.608051, 42.284893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620693, 31.935875, 42.270245>,  <38.483456, 32.132568, 42.261456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620693, 31.935875, 42.270245>,  <38.849422, 31.608051, 42.284893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620693, 31.935875, 42.270245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021216, 0.059394, 0.998009,
		0.820101, 0.569910, -0.051351,
		-0.571825, 0.819558, -0.036617,
		38.449146, 32.181744, 42.259258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151085, 32.165524, 42.638702>,  <38.849422, 31.608051, 42.284893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151085, 32.165524, 42.638702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759670, 32.247498, 42.647301>,  <38.524822, 32.296680, 42.652462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.759670, 32.247498, 42.647301>,  <39.151085, 32.165524, 42.638702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759670, 32.247498, 42.647301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065708, 0.211439, 0.975180,
		0.195300, 0.955665, -0.220367,
		-0.978540, 0.204933, 0.021500,
		38.466106, 32.308979, 42.653751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151711, 32.542637, 43.220753>,  <39.151085, 32.165524, 42.638702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151711, 32.542637, 43.220753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758518, 32.522240, 43.150146>,  <38.522602, 32.510002, 43.107784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.758518, 32.522240, 43.150146>,  <39.151711, 32.542637, 43.220753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758518, 32.522240, 43.150146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180830, 0.098497, 0.978570,
		-0.032515, 0.993830, -0.106041,
		-0.982977, -0.050994, -0.176511,
		38.463627, 32.506943, 43.097195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891918, 32.863964, 43.720886>,  <39.151711, 32.542637, 43.220753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891918, 32.863964, 43.720886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578976, 32.644497, 43.602982>,  <38.391209, 32.512817, 43.532238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.578976, 32.644497, 43.602982>,  <38.891918, 32.863964, 43.720886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578976, 32.644497, 43.602982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357973, 0.008830, 0.933690,
		-0.509681, 0.835995, -0.203316,
		-0.782355, -0.548666, -0.294764,
		38.344269, 32.479897, 43.514553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365986, 33.136868, 44.101665>,  <38.891918, 32.863964, 43.720886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365986, 33.136868, 44.101665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206394, 32.789070, 43.985191>,  <38.110638, 32.580391, 43.915306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.206394, 32.789070, 43.985191>,  <38.365986, 33.136868, 44.101665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206394, 32.789070, 43.985191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520119, -0.046933, 0.852803,
		-0.755177, 0.491702, -0.433517,
		-0.398979, -0.869498, -0.291186,
		38.086700, 32.528221, 43.897835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675217, 33.215553, 44.327774>,  <38.365986, 33.136868, 44.101665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675217, 33.215553, 44.327774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755501, 32.824818, 44.298088>,  <37.803669, 32.590378, 44.280277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755501, 32.824818, 44.298088>,  <37.675217, 33.215553, 44.327774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755501, 32.824818, 44.298088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421202, -0.154443, 0.893720,
		-0.884480, -0.148117, -0.442444,
		0.200707, -0.976836, -0.074215,
		37.815712, 32.531765, 44.275826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.077438, 32.880119, 44.615414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355751, 32.592903, 44.622536>,  <37.522739, 32.420574, 44.626808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355751, 32.592903, 44.622536>,  <37.077438, 32.880119, 44.615414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355751, 32.592903, 44.622536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289524, -0.257697, 0.921829,
		-0.657320, -0.646542, -0.387188,
		0.695778, -0.718036, 0.017800,
		37.564484, 32.377491, 44.627876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768227, 32.248394, 44.783615>,  <37.077438, 32.880119, 44.615414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768227, 32.248394, 44.783615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151745, 32.225086, 44.894840>,  <37.381855, 32.211102, 44.961575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.151745, 32.225086, 44.894840>,  <36.768227, 32.248394, 44.783615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151745, 32.225086, 44.894840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283869, -0.236447, 0.929253,
		0.011597, -0.969895, -0.243245,
		0.958793, -0.058273, 0.278066,
		37.439384, 32.207603, 44.978260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782982, 31.810135, 45.326698>,  <36.768227, 32.248394, 44.783615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782982, 31.810135, 45.326698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148701, 31.965508, 45.372631>,  <37.368130, 32.058731, 45.400188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148701, 31.965508, 45.372631>,  <36.782982, 31.810135, 45.326698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148701, 31.965508, 45.372631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003831, -0.291772, 0.956480,
		0.405031, -0.874065, -0.268254,
		0.914295, 0.388431, 0.114828,
		37.422989, 32.082035, 45.407078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105324, 31.350128, 45.684258>,  <36.782982, 31.810135, 45.326698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105324, 31.350128, 45.684258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340542, 31.668736, 45.740486>,  <37.481670, 31.859900, 45.774223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340542, 31.668736, 45.740486>,  <37.105324, 31.350128, 45.684258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340542, 31.668736, 45.740486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112943, -0.252961, 0.960861,
		0.800906, -0.549150, -0.238713,
		0.588042, 0.796520, 0.140576,
		37.516956, 31.907692, 45.782658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731689, 31.120882, 46.064320>,  <37.105324, 31.350128, 45.684258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731689, 31.120882, 46.064320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689339, 31.511646, 46.138542>,  <37.663929, 31.746105, 46.183075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689339, 31.511646, 46.138542>,  <37.731689, 31.120882, 46.064320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689339, 31.511646, 46.138542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166026, -0.166622, 0.971942,
		0.980421, 0.133716, -0.144551,
		-0.105879, 0.976912, 0.185560,
		37.657574, 31.804720, 46.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239124, 31.186039, 46.497231>,  <37.731689, 31.120882, 46.064320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239124, 31.186039, 46.497231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030827, 31.519653, 46.570118>,  <37.905846, 31.719822, 46.613850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030827, 31.519653, 46.570118>,  <38.239124, 31.186039, 46.497231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030827, 31.519653, 46.570118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095506, -0.155193, 0.983256,
		0.848352, 0.529430, 0.001161,
		-0.520746, 0.834037, 0.182222,
		37.874603, 31.769865, 46.624786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586205, 31.640577, 47.013817>,  <38.239124, 31.186039, 46.497231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586205, 31.640577, 47.013817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197128, 31.733208, 47.020100>,  <37.963684, 31.788786, 47.023869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197128, 31.733208, 47.020100>,  <38.586205, 31.640577, 47.013817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197128, 31.733208, 47.020100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009915, -0.109075, 0.993984,
		0.231897, 0.966682, 0.108392,
		-0.972690, 0.231577, 0.015709,
		37.905323, 31.802681, 47.024811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542988, 32.105469, 47.581985>,  <38.586205, 31.640577, 47.013817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542988, 32.105469, 47.581985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161587, 32.002113, 47.519936>,  <37.932747, 31.940102, 47.482708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161587, 32.002113, 47.519936>,  <38.542988, 32.105469, 47.581985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161587, 32.002113, 47.519936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175852, 0.059007, 0.982647,
		-0.244747, 0.964238, -0.101701,
		-0.953507, -0.258384, -0.155121,
		37.875534, 31.924599, 47.473400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019043, 32.668404, 47.729279>,  <38.542988, 32.105469, 47.581985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019043, 32.668404, 47.729279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.825169, 32.319157, 47.750195>,  <37.708843, 32.109608, 47.762745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.825169, 32.319157, 47.750195>,  <38.019043, 32.668404, 47.729279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825169, 32.319157, 47.750195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075388, 0.101262, 0.991999,
		-0.871432, 0.476869, -0.114904,
		-0.484689, -0.873122, 0.052292,
		37.679760, 32.057220, 47.765881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303715, 32.796059, 48.149025>,  <38.019043, 32.668404, 47.729279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303715, 32.796059, 48.149025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431934, 32.417240, 48.156528>,  <37.508865, 32.189949, 48.161030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.431934, 32.417240, 48.156528>,  <37.303715, 32.796059, 48.149025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431934, 32.417240, 48.156528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152394, -0.032020, 0.987801,
		-0.934893, -0.319496, -0.154588,
		0.320549, -0.947047, 0.018755,
		37.528099, 32.133125, 48.162155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104008, 32.578449, 48.778591>,  <37.303715, 32.796059, 48.149025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104008, 32.578449, 48.778591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.315453, 32.257648, 48.667332>,  <37.442322, 32.065170, 48.600578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.315453, 32.257648, 48.667332>,  <37.104008, 32.578449, 48.778591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315453, 32.257648, 48.667332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139942, -0.240850, 0.960420,
		-0.837246, -0.546618, -0.015084,
		0.528616, -0.801998, -0.278145,
		37.474037, 32.017048, 48.583889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809425, 31.934988, 49.128357>,  <37.104008, 32.578449, 48.778591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809425, 31.934988, 49.128357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.187504, 31.851542, 49.027893>,  <37.414352, 31.801474, 48.967617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.187504, 31.851542, 49.027893>,  <36.809425, 31.934988, 49.128357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187504, 31.851542, 49.027893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143525, -0.425456, 0.893525,
		-0.293257, -0.880607, -0.372199,
		0.945199, -0.208612, -0.251157,
		37.471062, 31.788958, 48.952545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806999, 31.240974, 49.360779>,  <36.809425, 31.934988, 49.128357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806999, 31.240974, 49.360779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192406, 31.344379, 49.333042>,  <37.423649, 31.406422, 49.316402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192406, 31.344379, 49.333042>,  <36.806999, 31.240974, 49.360779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192406, 31.344379, 49.333042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197982, -0.514055, 0.834596,
		0.180110, -0.817875, -0.546481,
		0.963516, 0.258512, -0.069338,
		37.481461, 31.421932, 49.312241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197285, 30.673662, 49.528015>,  <36.806999, 31.240974, 49.360779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197285, 30.673662, 49.528015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452126, 30.977365, 49.581123>,  <37.605030, 31.159588, 49.612988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.452126, 30.977365, 49.581123>,  <37.197285, 30.673662, 49.528015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452126, 30.977365, 49.581123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424267, -0.489252, 0.761991,
		0.643504, -0.429139, -0.633832,
		0.637103, 0.759258, 0.132766,
		37.643257, 31.205143, 49.620953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935452, 30.449303, 49.411812>,  <37.197285, 30.673662, 49.528015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935452, 30.449303, 49.411812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.981323, 30.784712, 49.624878>,  <38.008846, 30.985958, 49.752716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.981323, 30.784712, 49.624878>,  <37.935452, 30.449303, 49.411812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981323, 30.784712, 49.624878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462196, -0.519666, 0.718555,
		0.879331, 0.163792, -0.447156,
		0.114679, 0.838522, 0.532663,
		38.015728, 31.036268, 49.784676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725857, 30.482479, 49.577305>,  <37.935452, 30.449303, 49.411812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725857, 30.482479, 49.577305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520092, 30.697948, 49.844204>,  <38.396633, 30.827230, 50.004341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520092, 30.697948, 49.844204>,  <38.725857, 30.482479, 49.577305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520092, 30.697948, 49.844204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455681, -0.487441, 0.744819,
		0.726457, 0.687192, 0.005281,
		-0.514408, 0.538672, 0.667245,
		38.365768, 30.859550, 50.044376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189342, 30.586102, 50.105576>,  <38.725857, 30.482479, 49.577305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189342, 30.586102, 50.105576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825024, 30.652035, 50.256989>,  <38.606434, 30.691595, 50.347836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.825024, 30.652035, 50.256989>,  <39.189342, 30.586102, 50.105576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825024, 30.652035, 50.256989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288993, -0.400248, 0.869646,
		0.294854, 0.901461, 0.316907,
		-0.910793, 0.164835, 0.378531,
		38.551785, 30.701485, 50.370548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294968, 30.792604, 50.829014>,  <39.189342, 30.586102, 50.105576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294968, 30.792604, 50.829014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910511, 30.683075, 50.814949>,  <38.679836, 30.617357, 50.806511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910511, 30.683075, 50.814949>,  <39.294968, 30.792604, 50.829014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910511, 30.683075, 50.814949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100722, -0.466402, 0.878820,
		-0.257042, 0.841125, 0.475856,
		-0.961137, -0.273823, -0.035165,
		38.622169, 30.600927, 50.804401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977951, 31.139593, 51.391914>,  <39.294968, 30.792604, 50.829014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977951, 31.139593, 51.391914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793415, 30.795427, 51.305332>,  <38.682693, 30.588928, 51.253384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793415, 30.795427, 51.305332>,  <38.977951, 31.139593, 51.391914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793415, 30.795427, 51.305332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218691, -0.346720, 0.912118,
		-0.859846, 0.373464, 0.348122,
		-0.461344, -0.860413, -0.216452,
		38.655010, 30.537304, 51.240395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747589, 30.841719, 52.084286>,  <38.977951, 31.139593, 51.391914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747589, 30.841719, 52.084286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670052, 30.522957, 51.855419>,  <38.623531, 30.331699, 51.718102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670052, 30.522957, 51.855419>,  <38.747589, 30.841719, 52.084286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670052, 30.522957, 51.855419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184842, -0.602447, 0.776461,
		-0.963462, 0.044751, 0.264080,
		-0.193841, -0.796903, -0.572163,
		38.611900, 30.283886, 51.683769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376629, 30.489702, 52.482082>,  <38.747589, 30.841719, 52.084286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376629, 30.489702, 52.482082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513783, 30.222263, 52.218143>,  <38.596077, 30.061800, 52.059780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513783, 30.222263, 52.218143>,  <38.376629, 30.489702, 52.482082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513783, 30.222263, 52.218143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155892, -0.652194, 0.741849,
		-0.926351, -0.357237, -0.119400,
		0.342888, -0.668599, -0.659851,
		38.616650, 30.021683, 52.020187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111076, 29.885557, 52.695015>,  <38.376629, 30.489702, 52.482082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111076, 29.885557, 52.695015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398582, 29.742424, 52.456577>,  <38.571087, 29.656544, 52.313515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.398582, 29.742424, 52.456577>,  <38.111076, 29.885557, 52.695015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398582, 29.742424, 52.456577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094133, -0.799400, 0.593378,
		-0.688847, -0.482614, -0.540900,
		0.718769, -0.357830, -0.596095,
		38.614212, 29.635075, 52.277748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284966, 30.397417, 53.191608>,  <38.111076, 29.885557, 52.695015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284966, 30.397417, 53.191608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270061, 29.999943, 53.149281>,  <38.261120, 29.761457, 53.123882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270061, 29.999943, 53.149281>,  <38.284966, 30.397417, 53.191608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270061, 29.999943, 53.149281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555059, 0.067479, -0.829069,
		0.830976, -0.089624, 0.549041,
		-0.037256, -0.993687, -0.105820,
		38.258884, 29.701838, 53.117535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766247, 29.831289, 53.651718>,  <38.284966, 30.397417, 53.191608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766247, 29.831289, 53.651718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525341, 29.946138, 53.949669>,  <37.380798, 30.015047, 54.128441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525341, 29.946138, 53.949669>,  <37.766247, 29.831289, 53.651718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525341, 29.946138, 53.949669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775148, 0.012755, -0.631651,
		-0.190862, -0.957809, 0.214881,
		-0.602260, 0.287122, 0.744878,
		37.344662, 30.032276, 54.173134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324497, 30.102633, 53.147022>,  <37.766247, 29.831289, 53.651718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324497, 30.102633, 53.147022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008865, 30.317553, 53.266125>,  <36.819485, 30.446505, 53.337585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.008865, 30.317553, 53.266125>,  <37.324497, 30.102633, 53.147022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008865, 30.317553, 53.266125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545809, -0.390831, -0.741177,
		-0.281859, -0.747370, 0.601660,
		-0.789081, 0.537299, 0.297762,
		36.772141, 30.478743, 53.355453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799278, 29.657274, 53.263405>,  <37.324497, 30.102633, 53.147022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799278, 29.657274, 53.263405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618713, 30.009111, 53.203342>,  <36.510376, 30.220213, 53.167305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.618713, 30.009111, 53.203342>,  <36.799278, 29.657274, 53.263405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618713, 30.009111, 53.203342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585984, -0.419122, -0.693513,
		-0.672941, -0.225071, 0.704622,
		-0.451412, 0.879591, -0.150157,
		36.483288, 30.272989, 53.158295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035938, 29.547220, 53.263161>,  <36.799278, 29.657274, 53.263405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035938, 29.547220, 53.263161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085480, 29.894995, 53.071854>,  <36.115204, 30.103659, 52.957069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.085480, 29.894995, 53.071854>,  <36.035938, 29.547220, 53.263161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085480, 29.894995, 53.071854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642212, -0.297194, -0.706569,
		-0.756455, 0.394660, 0.521554,
		0.123851, 0.869436, -0.478269,
		36.122635, 30.155825, 52.928371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391918, 29.809107, 53.077896>,  <36.035938, 29.547220, 53.263161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391918, 29.809107, 53.077896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641827, 30.001919, 52.832191>,  <35.791771, 30.117605, 52.684769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.641827, 30.001919, 52.832191>,  <35.391918, 29.809107, 53.077896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641827, 30.001919, 52.832191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701469, 0.000983, -0.712699,
		-0.342938, 0.876155, 0.338742,
		0.624768, 0.482028, -0.614259,
		35.829258, 30.146528, 52.647915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958519, 30.092566, 52.562321>,  <35.391918, 29.809107, 53.077896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958519, 30.092566, 52.562321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319160, 30.123802, 52.392143>,  <35.535545, 30.142544, 52.290035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319160, 30.123802, 52.392143>,  <34.958519, 30.092566, 52.562321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319160, 30.123802, 52.392143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409638, -0.161752, -0.897794,
		-0.138929, 0.983737, -0.113847,
		0.901607, 0.078094, -0.425447,
		35.589642, 30.147230, 52.264507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836655, 30.570534, 52.005611>,  <34.958519, 30.092566, 52.562321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836655, 30.570534, 52.005611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186901, 30.393976, 51.927158>,  <35.397049, 30.288040, 51.880089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186901, 30.393976, 51.927158>,  <34.836655, 30.570534, 52.005611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186901, 30.393976, 51.927158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343735, -0.284187, -0.895033,
		0.339327, 0.851121, -0.400563,
		0.875616, -0.441396, -0.196128,
		35.449585, 30.261557, 51.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032349, 30.949879, 51.514629>,  <34.836655, 30.570534, 52.005611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032349, 30.949879, 51.514629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226036, 30.602299, 51.473713>,  <35.342247, 30.393751, 51.449165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226036, 30.602299, 51.473713>,  <35.032349, 30.949879, 51.514629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226036, 30.602299, 51.473713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252132, -0.026630, -0.967326,
		0.837833, 0.494184, -0.231985,
		0.484215, -0.868949, -0.102288,
		35.371300, 30.341614, 51.443027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403191, 31.034163, 51.017387>,  <35.032349, 30.949879, 51.514629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403191, 31.034163, 51.017387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395428, 30.634790, 51.038387>,  <35.390770, 30.395166, 51.050987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.395428, 30.634790, 51.038387>,  <35.403191, 31.034163, 51.017387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395428, 30.634790, 51.038387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181403, -0.048119, -0.982231,
		0.983217, -0.028583, -0.180185,
		-0.019405, -0.998433, 0.052496,
		35.389606, 30.335260, 51.054134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917816, 30.834352, 50.559246>,  <35.403191, 31.034163, 51.017387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917816, 30.834352, 50.559246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707355, 30.500967, 50.626774>,  <35.581078, 30.300936, 50.667290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.707355, 30.500967, 50.626774>,  <35.917816, 30.834352, 50.559246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707355, 30.500967, 50.626774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162482, -0.096335, -0.981997,
		0.834724, -0.544109, -0.084737,
		-0.526151, -0.833466, 0.168821,
		35.549511, 30.250927, 50.677422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264294, 30.320959, 50.107407>,  <35.917816, 30.834352, 50.559246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264294, 30.320959, 50.107407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883148, 30.217047, 50.170094>,  <35.654461, 30.154699, 50.207706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883148, 30.217047, 50.170094>,  <36.264294, 30.320959, 50.107407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883148, 30.217047, 50.170094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131574, -0.111601, -0.985004,
		0.273377, -0.959197, 0.072160,
		-0.952866, -0.259783, 0.156714,
		35.597290, 30.139112, 50.217110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134277, 29.836460, 49.611549>,  <36.264294, 30.320959, 50.107407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134277, 29.836460, 49.611549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776226, 29.983349, 49.712666>,  <35.561398, 30.071482, 49.773335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.776226, 29.983349, 49.712666>,  <36.134277, 29.836460, 49.611549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776226, 29.983349, 49.712666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226028, 0.114921, -0.967318,
		-0.384271, -0.923007, -0.019867,
		-0.895124, 0.367222, 0.252787,
		35.507690, 30.093515, 49.788502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736210, 29.617128, 49.131577>,  <36.134277, 29.836460, 49.611549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736210, 29.617128, 49.131577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520287, 29.910473, 49.296883>,  <35.390732, 30.086479, 49.396065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.520287, 29.910473, 49.296883>,  <35.736210, 29.617128, 49.131577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520287, 29.910473, 49.296883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169277, 0.386335, -0.906692,
		-0.824592, -0.559396, -0.084405,
		-0.539808, 0.733363, 0.413262,
		35.358345, 30.130482, 49.420860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132885, 29.615431, 48.881634>,  <35.736210, 29.617128, 49.131577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132885, 29.615431, 48.881634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192760, 29.992094, 49.002213>,  <35.228687, 30.218092, 49.074562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.192760, 29.992094, 49.002213>,  <35.132885, 29.615431, 48.881634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192760, 29.992094, 49.002213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097857, 0.317497, -0.943197,
		-0.983879, 0.111687, 0.139674,
		0.149689, 0.941659, 0.301449,
		35.237667, 30.274591, 49.092648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840702, 29.946081, 48.394291>,  <35.132885, 29.615431, 48.881634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840702, 29.946081, 48.394291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033417, 30.252630, 48.564259>,  <35.149044, 30.436560, 48.666241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033417, 30.252630, 48.564259>,  <34.840702, 29.946081, 48.394291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033417, 30.252630, 48.564259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103483, 0.531274, -0.840856,
		-0.870159, 0.361138, 0.335265,
		0.481783, 0.766373, 0.424921,
		35.177952, 30.482542, 48.691734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646984, 30.523342, 47.832294>,  <34.840702, 29.946081, 48.394291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646984, 30.523342, 47.832294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890671, 30.691689, 48.101135>,  <35.036884, 30.792696, 48.262440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.890671, 30.691689, 48.101135>,  <34.646984, 30.523342, 47.832294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890671, 30.691689, 48.101135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174243, 0.755786, -0.631210,
		-0.773620, 0.501656, 0.387108,
		0.609221, 0.420866, 0.672102,
		35.073437, 30.817949, 48.302765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414577, 31.306120, 47.964184>,  <34.646984, 30.523342, 47.832294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414577, 31.306120, 47.964184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810699, 31.257807, 47.991615>,  <35.048374, 31.228819, 48.008072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810699, 31.257807, 47.991615>,  <34.414577, 31.306120, 47.964184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810699, 31.257807, 47.991615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134649, 0.713771, -0.687314,
		0.034068, 0.689885, 0.723116,
		0.990307, -0.120783, 0.068576,
		35.107792, 31.221573, 48.012188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731060, 31.933344, 48.036560>,  <34.414577, 31.306120, 47.964184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731060, 31.933344, 48.036560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988903, 31.680426, 47.864662>,  <35.143608, 31.528675, 47.761524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.988903, 31.680426, 47.864662>,  <34.731060, 31.933344, 48.036560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988903, 31.680426, 47.864662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128165, 0.643541, -0.754605,
		0.753693, 0.431346, 0.495870,
		0.644609, -0.632294, -0.429748,
		35.182285, 31.490738, 47.735737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125702, 32.422993, 47.703400>,  <34.731060, 31.933344, 48.036560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125702, 32.422993, 47.703400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263145, 32.084312, 47.540905>,  <35.345612, 31.881105, 47.443409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263145, 32.084312, 47.540905>,  <35.125702, 32.422993, 47.703400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263145, 32.084312, 47.540905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301180, 0.509085, -0.806302,
		0.889507, 0.154703, 0.429936,
		0.343611, -0.846699, -0.406241,
		35.366230, 31.830303, 47.419033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690170, 32.640640, 47.274696>,  <35.125702, 32.422993, 47.703400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690170, 32.640640, 47.274696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547173, 32.291985, 47.140560>,  <35.461376, 32.082790, 47.060078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.547173, 32.291985, 47.140560>,  <35.690170, 32.640640, 47.274696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547173, 32.291985, 47.140560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027473, 0.349096, -0.936684,
		0.933513, -0.344067, -0.100852,
		-0.357489, -0.871636, -0.335338,
		35.439926, 32.030495, 47.039959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039936, 32.382351, 46.685154>,  <35.690170, 32.640640, 47.274696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039936, 32.382351, 46.685154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699272, 32.179226, 46.633301>,  <35.494873, 32.057350, 46.602188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699272, 32.179226, 46.633301>,  <36.039936, 32.382351, 46.685154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699272, 32.179226, 46.633301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027148, 0.289764, -0.956713,
		0.523391, -0.811275, -0.260566,
		-0.851660, -0.507809, -0.129635,
		35.443775, 32.026882, 46.594410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.627399, 39.540833, 34.051651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228554, 39.556702, 34.025768>,  <40.989246, 39.566223, 34.010239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.228554, 39.556702, 34.025768>,  <41.627399, 39.540833, 34.051651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228554, 39.556702, 34.025768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075643, -0.588909, 0.804652,
		-0.006185, 0.807225, 0.590211,
		-0.997116, 0.039668, -0.064703,
		40.929420, 39.568604, 34.006359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241825, 39.825615, 34.738720>,  <41.627399, 39.540833, 34.051651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241825, 39.825615, 34.738720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.995705, 39.595093, 34.523586>,  <40.848030, 39.456779, 34.394505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.995705, 39.595093, 34.523586>,  <41.241825, 39.825615, 34.738720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995705, 39.595093, 34.523586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000454, -0.682544, 0.730845,
		-0.788289, 0.449449, 0.420234,
		-0.615306, -0.576307, -0.537837,
		40.811111, 39.422199, 34.362236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630234, 39.576984, 35.266121>,  <41.241825, 39.825615, 34.738720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630234, 39.576984, 35.266121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.614380, 39.326946, 34.954304>,  <40.604866, 39.176922, 34.767212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.614380, 39.326946, 34.954304>,  <40.630234, 39.576984, 35.266121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614380, 39.326946, 34.954304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076844, -0.775937, 0.626112,
		-0.996255, 0.084718, -0.017281,
		-0.039634, -0.625096, -0.779541,
		40.602489, 39.139416, 34.720440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158882, 39.114929, 35.452530>,  <40.630234, 39.576984, 35.266121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158882, 39.114929, 35.452530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375732, 38.925873, 35.174618>,  <40.505844, 38.812439, 35.007870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375732, 38.925873, 35.174618>,  <40.158882, 39.114929, 35.452530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375732, 38.925873, 35.174618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067740, -0.799549, 0.596768,
		-0.837565, -0.370585, -0.401436,
		0.542122, -0.472639, -0.694778,
		40.538368, 38.784081, 34.966187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968082, 38.365791, 35.410484>,  <40.158882, 39.114929, 35.452530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968082, 38.365791, 35.410484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.334518, 38.378300, 35.250580>,  <40.554379, 38.385807, 35.154636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.334518, 38.378300, 35.250580>,  <39.968082, 38.365791, 35.410484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334518, 38.378300, 35.250580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231680, -0.854983, 0.464035,
		-0.327275, -0.517712, -0.790484,
		0.916087, 0.031273, -0.399758,
		40.609344, 38.387680, 35.130653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126591, 37.611332, 35.093739>,  <39.968082, 38.365791, 35.410484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126591, 37.611332, 35.093739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489700, 37.779011, 35.099678>,  <40.707565, 37.879616, 35.103241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.489700, 37.779011, 35.099678>,  <40.126591, 37.611332, 35.093739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489700, 37.779011, 35.099678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412978, -0.899393, 0.143323,
		0.073434, -0.123973, -0.989565,
		0.907776, 0.419193, 0.014848,
		40.762032, 37.904770, 35.104134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520752, 37.286510, 34.577282>,  <40.126591, 37.611332, 35.093739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520752, 37.286510, 34.577282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765411, 37.424358, 34.862133>,  <40.912205, 37.507069, 35.033043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.765411, 37.424358, 34.862133>,  <40.520752, 37.286510, 34.577282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765411, 37.424358, 34.862133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297794, -0.934224, 0.196328,
		0.732946, 0.091985, -0.674039,
		0.611644, 0.344623, 0.712128,
		40.948906, 37.527744, 35.075771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174095, 36.907272, 34.472622>,  <40.520752, 37.286510, 34.577282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174095, 36.907272, 34.472622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183338, 37.091362, 34.827621>,  <41.188885, 37.201817, 35.040623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183338, 37.091362, 34.827621>,  <41.174095, 36.907272, 34.472622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183338, 37.091362, 34.827621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525639, -0.760723, 0.380793,
		0.850394, 0.457706, -0.259491,
		0.023110, 0.460223, 0.887503,
		41.190269, 37.229427, 35.093872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850422, 36.917603, 34.724022>,  <41.174095, 36.907272, 34.472622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850422, 36.917603, 34.724022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.660069, 36.948212, 35.074490>,  <41.545856, 36.966576, 35.284771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.660069, 36.948212, 35.074490>,  <41.850422, 36.917603, 34.724022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660069, 36.948212, 35.074490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476522, -0.814883, 0.329987,
		0.739229, 0.574552, 0.351327,
		-0.475885, 0.076521, 0.876172,
		41.517303, 36.971169, 35.337341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419247, 36.876320, 35.268520>,  <41.850422, 36.917603, 34.724022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419247, 36.876320, 35.268520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059383, 36.777370, 35.412418>,  <41.843464, 36.718002, 35.498756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059383, 36.777370, 35.412418>,  <42.419247, 36.876320, 35.268520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059383, 36.777370, 35.412418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390687, -0.823947, 0.410456,
		0.194878, 0.509820, 0.837918,
		-0.899659, -0.247375, 0.359749,
		41.789486, 36.703159, 35.520344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543453, 36.693459, 35.966976>,  <42.419247, 36.876320, 35.268520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543453, 36.693459, 35.966976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189251, 36.510216, 35.935940>,  <41.976730, 36.400269, 35.917316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189251, 36.510216, 35.935940>,  <42.543453, 36.693459, 35.966976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189251, 36.510216, 35.935940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344742, -0.759747, 0.551305,
		-0.311506, 0.461434, 0.830688,
		-0.885504, -0.458108, -0.077590,
		41.923599, 36.372784, 35.912663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537903, 36.376278, 36.547310>,  <42.543453, 36.693459, 35.966976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537903, 36.376278, 36.547310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238953, 36.199505, 36.348869>,  <42.059582, 36.093441, 36.229805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238953, 36.199505, 36.348869>,  <42.537903, 36.376278, 36.547310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238953, 36.199505, 36.348869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275217, -0.885550, 0.374242,
		-0.604715, 0.143164, 0.783469,
		-0.747379, -0.441934, -0.496104,
		42.014740, 36.066925, 36.200039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301891, 35.804974, 36.953636>,  <42.537903, 36.376278, 36.547310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301891, 35.804974, 36.953636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193810, 35.716183, 36.578892>,  <42.128960, 35.662910, 36.354046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193810, 35.716183, 36.578892>,  <42.301891, 35.804974, 36.953636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193810, 35.716183, 36.578892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490883, -0.868851, 0.064281,
		-0.828265, -0.442521, 0.343732,
		-0.270206, -0.221974, -0.936865,
		42.112747, 35.649590, 36.297832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065861, 35.123524, 36.974255>,  <42.301891, 35.804974, 36.953636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065861, 35.123524, 36.974255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183762, 35.218346, 36.603973>,  <42.254501, 35.275238, 36.381805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183762, 35.218346, 36.603973>,  <42.065861, 35.123524, 36.974255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183762, 35.218346, 36.603973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410827, -0.906077, -0.101219,
		-0.862752, -0.350469, -0.364458,
		0.294753, 0.237056, -0.925702,
		42.272186, 35.289463, 36.326263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951912, 34.465073, 36.598545>,  <42.065861, 35.123524, 36.974255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951912, 34.465073, 36.598545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175892, 34.680916, 36.347061>,  <42.310280, 34.810421, 36.196171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175892, 34.680916, 36.347061>,  <41.951912, 34.465073, 36.598545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175892, 34.680916, 36.347061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479070, -0.829985, -0.285687,
		-0.675977, -0.141224, -0.723264,
		0.559952, 0.539611, -0.628707,
		42.343876, 34.842800, 36.158447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834126, 34.114265, 35.965992>,  <41.951912, 34.465073, 36.598545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834126, 34.114265, 35.965992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.184402, 34.306828, 35.951000>,  <42.394569, 34.422367, 35.942005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.184402, 34.306828, 35.951000>,  <41.834126, 34.114265, 35.965992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184402, 34.306828, 35.951000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441956, -0.830355, -0.339391,
		-0.194509, 0.280637, -0.939899,
		0.875695, 0.481408, -0.037482,
		42.447109, 34.451248, 35.939754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072163, 33.990063, 35.270782>,  <41.834126, 34.114265, 35.965992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072163, 33.990063, 35.270782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398079, 34.076469, 35.485989>,  <42.593628, 34.128315, 35.615112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398079, 34.076469, 35.485989>,  <42.072163, 33.990063, 35.270782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398079, 34.076469, 35.485989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401028, -0.880167, -0.253933,
		0.418686, 0.422659, -0.803779,
		0.814787, 0.216020, 0.538012,
		42.642513, 34.141277, 35.647392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687145, 33.719959, 34.919239>,  <42.072163, 33.990063, 35.270782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687145, 33.719959, 34.919239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814205, 33.769806, 35.295231>,  <42.890442, 33.799713, 35.520828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.814205, 33.769806, 35.295231>,  <42.687145, 33.719959, 34.919239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814205, 33.769806, 35.295231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547865, -0.833227, -0.074680,
		0.773913, 0.538706, -0.332948,
		0.317652, 0.124614, 0.939983,
		42.909500, 33.807190, 35.577225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519878, 33.684025, 34.980587>,  <42.687145, 33.719959, 34.919239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519878, 33.684025, 34.980587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354214, 33.597923, 35.334343>,  <43.254814, 33.546261, 35.546597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.354214, 33.597923, 35.334343>,  <43.519878, 33.684025, 34.980587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354214, 33.597923, 35.334343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586024, -0.806518, 0.078135,
		0.696454, 0.550632, 0.460169,
		-0.414159, -0.215252, 0.884386,
		43.229965, 33.533348, 35.599659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956623, 33.617001, 35.500263>,  <43.519878, 33.684025, 34.980587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956623, 33.617001, 35.500263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648819, 33.371887, 35.572216>,  <43.464138, 33.224819, 35.615387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648819, 33.371887, 35.572216>,  <43.956623, 33.617001, 35.500263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648819, 33.371887, 35.572216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610342, -0.788550, -0.075302,
		0.187993, 0.051846, 0.980801,
		-0.769507, -0.612781, 0.179886,
		43.417969, 33.188053, 35.626183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185600, 33.245964, 36.121754>,  <43.956623, 33.617001, 35.500263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185600, 33.245964, 36.121754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939247, 33.035732, 35.886993>,  <43.791435, 32.909592, 35.746136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.939247, 33.035732, 35.886993>,  <44.185600, 33.245964, 36.121754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939247, 33.035732, 35.886993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689016, -0.720562, -0.077764,
		-0.382030, -0.452279, 0.805914,
		-0.615882, -0.525579, -0.586903,
		43.754482, 32.878059, 35.710922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218922, 33.943226, 36.292381>,  <44.185600, 33.245964, 36.121754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218922, 33.943226, 36.292381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.596516, 33.935127, 36.160637>,  <44.823071, 33.930267, 36.081589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.596516, 33.935127, 36.160637>,  <44.218922, 33.943226, 36.292381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596516, 33.935127, 36.160637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003554, 0.998682, -0.051200,
		0.329967, 0.047162, 0.942814,
		0.943986, -0.020245, -0.329365,
		44.879711, 33.929054, 36.061829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639469, 34.423397, 36.776009>,  <44.218922, 33.943226, 36.292381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639469, 34.423397, 36.776009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867504, 34.411991, 36.447575>,  <45.004326, 34.405148, 36.250515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867504, 34.411991, 36.447575>,  <44.639469, 34.423397, 36.776009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867504, 34.411991, 36.447575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032812, 0.999390, -0.011929,
		0.820928, -0.020141, 0.570676,
		0.570088, -0.028518, -0.821088,
		45.038532, 34.403435, 36.201248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056610, 34.974682, 36.749031>,  <44.639469, 34.423397, 36.776009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056610, 34.974682, 36.749031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088818, 34.866905, 36.365173>,  <45.108143, 34.802238, 36.134857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088818, 34.866905, 36.365173>,  <45.056610, 34.974682, 36.749031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088818, 34.866905, 36.365173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003877, 0.962848, -0.270017,
		0.996745, 0.018021, 0.078575,
		0.080522, -0.269443, -0.959644,
		45.112976, 34.786072, 36.077282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569065, 35.412857, 36.452324>,  <45.056610, 34.974682, 36.749031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569065, 35.412857, 36.452324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334091, 35.288490, 36.153458>,  <45.193108, 35.213871, 35.974140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334091, 35.288490, 36.153458>,  <45.569065, 35.412857, 36.452324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334091, 35.288490, 36.153458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025544, 0.929914, -0.366888,
		0.808868, -0.196437, -0.554206,
		-0.587434, -0.310921, -0.747161,
		45.157860, 35.195213, 35.929310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.815922, 35.712780, 35.824322>,  <45.569065, 35.412857, 36.452324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.815922, 35.712780, 35.824322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426254, 35.637470, 35.774429>,  <45.192455, 35.592285, 35.744495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426254, 35.637470, 35.774429>,  <45.815922, 35.712780, 35.824322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426254, 35.637470, 35.774429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140673, 0.937920, -0.317045,
		0.176677, -0.291308, -0.940173,
		-0.974165, -0.188271, -0.124730,
		45.134007, 35.580990, 35.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859749, 35.904202, 35.185829>,  <45.815922, 35.712780, 35.824322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859749, 35.904202, 35.185829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477184, 35.901325, 35.302608>,  <45.247646, 35.899601, 35.372677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.477184, 35.901325, 35.302608>,  <45.859749, 35.904202, 35.185829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477184, 35.901325, 35.302608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167578, 0.832241, -0.528481,
		-0.239172, -0.554367, -0.797166,
		-0.956407, -0.007189, 0.291949,
		45.190262, 35.899170, 35.390194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470715, 35.977295, 34.600155>,  <45.859749, 35.904202, 35.185829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470715, 35.977295, 34.600155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.213581, 36.078003, 34.889534>,  <45.059299, 36.138428, 35.063160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.213581, 36.078003, 34.889534>,  <45.470715, 35.977295, 34.600155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213581, 36.078003, 34.889534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272786, 0.807281, -0.523341,
		-0.715788, -0.533767, -0.450268,
		-0.642835, 0.251774, 0.723445,
		45.020729, 36.153534, 35.106567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.869709, 36.136215, 34.208443>,  <45.470715, 35.977295, 34.600155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.869709, 36.136215, 34.208443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827461, 36.300674, 34.570614>,  <44.802113, 36.399349, 34.787918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827461, 36.300674, 34.570614>,  <44.869709, 36.136215, 34.208443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827461, 36.300674, 34.570614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371786, 0.828163, -0.419430,
		-0.922290, -0.380928, 0.065384,
		-0.105623, 0.411145, 0.905430,
		44.795773, 36.424019, 34.842243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177074, 36.295231, 34.241245>,  <44.869709, 36.136215, 34.208443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177074, 36.295231, 34.241245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360756, 36.515869, 34.519775>,  <44.470963, 36.648254, 34.686893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360756, 36.515869, 34.519775>,  <44.177074, 36.295231, 34.241245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360756, 36.515869, 34.519775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443349, 0.821563, -0.358434,
		-0.769790, -0.144123, 0.621814,
		0.459201, 0.551600, 0.696328,
		44.498516, 36.681351, 34.728672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672279, 36.800900, 34.583534>,  <44.177074, 36.295231, 34.241245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672279, 36.800900, 34.583534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032196, 36.968422, 34.632492>,  <44.248146, 37.068935, 34.661865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032196, 36.968422, 34.632492>,  <43.672279, 36.800900, 34.583534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032196, 36.968422, 34.632492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343019, 0.852337, -0.394791,
		-0.269664, 0.313245, 0.910582,
		0.899789, 0.418808, 0.122395,
		44.302132, 37.094063, 34.669212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529438, 37.429527, 34.921223>,  <43.672279, 36.800900, 34.583534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529438, 37.429527, 34.921223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903378, 37.480236, 34.788567>,  <44.127743, 37.510662, 34.708973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.903378, 37.480236, 34.788567>,  <43.529438, 37.429527, 34.921223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903378, 37.480236, 34.788567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222258, 0.937376, -0.268193,
		0.276871, 0.324429, 0.904482,
		0.934850, 0.126773, -0.331639,
		44.183834, 37.518269, 34.689075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700993, 38.050739, 35.190693>,  <43.529438, 37.429527, 34.921223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700993, 38.050739, 35.190693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964787, 38.001724, 34.894028>,  <44.123062, 37.972317, 34.716026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964787, 38.001724, 34.894028>,  <43.700993, 38.050739, 35.190693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964787, 38.001724, 34.894028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123571, 0.955531, -0.267750,
		0.741495, 0.268224, 0.615013,
		0.659481, -0.122538, -0.741667,
		44.162632, 37.964962, 34.671528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295929, 38.587055, 35.201557>,  <43.700993, 38.050739, 35.190693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295929, 38.587055, 35.201557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273968, 38.470585, 34.819519>,  <44.260792, 38.400703, 34.590298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.273968, 38.470585, 34.819519>,  <44.295929, 38.587055, 35.201557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273968, 38.470585, 34.819519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115972, 0.951923, -0.283538,
		0.991734, 0.095197, -0.086033,
		-0.054905, -0.291171, -0.955094,
		44.257496, 38.383232, 34.532990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716656, 39.086216, 34.810501>,  <44.295929, 38.587055, 35.201557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716656, 39.086216, 34.810501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.465248, 38.912369, 34.552486>,  <44.314404, 38.808060, 34.397678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.465248, 38.912369, 34.552486>,  <44.716656, 39.086216, 34.810501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465248, 38.912369, 34.552486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172165, 0.886482, -0.429545,
		0.758500, -0.158925, -0.631997,
		-0.628519, -0.434618, -0.645036,
		44.276691, 38.781982, 34.358974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826042, 39.484425, 34.166607>,  <44.716656, 39.086216, 34.810501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826042, 39.484425, 34.166607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486271, 39.294807, 34.073860>,  <44.282410, 39.181038, 34.018211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486271, 39.294807, 34.073860>,  <44.826042, 39.484425, 34.166607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486271, 39.294807, 34.073860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263855, 0.762032, -0.591344,
		0.457011, -0.441123, -0.772367,
		-0.849424, -0.474044, -0.231865,
		44.231445, 39.152596, 34.004299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.617062, 39.684387, 33.485237>,  <44.826042, 39.484425, 34.166607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.617062, 39.684387, 33.485237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271305, 39.531876, 33.616364>,  <44.063850, 39.440369, 33.695038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271305, 39.531876, 33.616364>,  <44.617062, 39.684387, 33.485237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271305, 39.531876, 33.616364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501696, 0.610291, -0.613063,
		0.033687, -0.694386, -0.718813,
		-0.864388, -0.381278, 0.327812,
		44.011990, 39.417492, 33.714706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308155, 39.377159, 32.868919>,  <44.617062, 39.684387, 33.485237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308155, 39.377159, 32.868919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052917, 39.482555, 33.158310>,  <43.899776, 39.545795, 33.331944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052917, 39.482555, 33.158310>,  <44.308155, 39.377159, 32.868919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052917, 39.482555, 33.158310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383119, 0.706388, -0.595177,
		-0.667877, -0.656953, -0.349789,
		-0.638090, 0.263495, 0.723472,
		43.861492, 39.561604, 33.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704113, 39.564045, 32.504730>,  <44.308155, 39.377159, 32.868919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704113, 39.564045, 32.504730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653362, 39.729004, 32.865582>,  <43.622913, 39.827980, 33.082092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653362, 39.729004, 32.865582>,  <43.704113, 39.564045, 32.504730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653362, 39.729004, 32.865582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279132, 0.857879, -0.431426,
		-0.951834, -0.306551, 0.006268,
		-0.126877, 0.412396, 0.902126,
		43.615299, 39.852722, 33.136219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084911, 39.953770, 32.420567>,  <43.704113, 39.564045, 32.504730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084911, 39.953770, 32.420567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226936, 40.110653, 32.760002>,  <43.312153, 40.204784, 32.963665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226936, 40.110653, 32.760002>,  <43.084911, 39.953770, 32.420567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226936, 40.110653, 32.760002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431021, 0.874176, -0.223692,
		-0.829549, -0.286334, 0.479438,
		0.355063, 0.392211, 0.848588,
		43.333454, 40.228317, 33.014580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444103, 40.317307, 32.736721>,  <43.084911, 39.953770, 32.420567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444103, 40.317307, 32.736721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778576, 40.478134, 32.885929>,  <42.979259, 40.574631, 32.975452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778576, 40.478134, 32.885929>,  <42.444103, 40.317307, 32.736721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778576, 40.478134, 32.885929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322531, 0.910578, -0.258498,
		-0.443598, 0.095840, 0.891086,
		0.836178, 0.402072, 0.373020,
		43.029430, 40.598755, 32.997833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309731, 40.920845, 33.117390>,  <42.444103, 40.317307, 32.736721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309731, 40.920845, 33.117390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688095, 40.952057, 32.991428>,  <42.915115, 40.970783, 32.915852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688095, 40.952057, 32.991428>,  <42.309731, 40.920845, 33.117390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688095, 40.952057, 32.991428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173959, 0.941296, -0.289310,
		0.273839, 0.328442, 0.903957,
		0.945912, 0.078027, -0.314899,
		42.971870, 40.975464, 32.896957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.822945, 33.424206, 41.860989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690708, 33.046757, 41.867802>,  <38.611366, 32.820290, 41.871891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690708, 33.046757, 41.867802>,  <38.822945, 33.424206, 41.860989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690708, 33.046757, 41.867802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320899, -0.129364, -0.938237,
		0.887542, -0.304710, 0.345574,
		-0.330595, -0.943619, 0.017035,
		38.591530, 32.763672, 41.872913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349857, 32.982616, 41.576439>,  <38.822945, 33.424206, 41.860989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349857, 32.982616, 41.576439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018761, 32.763100, 41.529655>,  <38.820103, 32.631390, 41.501587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018761, 32.763100, 41.529655>,  <39.349857, 32.982616, 41.576439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018761, 32.763100, 41.529655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303348, -0.262304, -0.916066,
		0.472050, -0.793741, 0.383594,
		-0.827738, -0.548791, -0.116959,
		38.770439, 32.598461, 41.494568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538170, 32.382595, 41.255497>,  <39.349857, 32.982616, 41.576439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538170, 32.382595, 41.255497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149513, 32.421005, 41.169064>,  <38.916321, 32.444050, 41.117203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149513, 32.421005, 41.169064>,  <39.538170, 32.382595, 41.255497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149513, 32.421005, 41.169064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175445, -0.319877, -0.931074,
		-0.158525, -0.942581, 0.293959,
		-0.971642, 0.096025, -0.216080,
		38.858021, 32.449814, 41.104240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328167, 31.762920, 40.858292>,  <39.538170, 32.382595, 41.255497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328167, 31.762920, 40.858292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042953, 32.033100, 40.783085>,  <38.871826, 32.195206, 40.737961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042953, 32.033100, 40.783085>,  <39.328167, 31.762920, 40.858292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042953, 32.033100, 40.783085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150677, -0.114273, -0.981956,
		-0.684745, -0.728500, -0.020294,
		-0.713036, 0.675448, -0.188016,
		38.829044, 32.235733, 40.726681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926781, 31.502510, 40.284168>,  <39.328167, 31.762920, 40.858292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926781, 31.502510, 40.284168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818954, 31.887388, 40.299767>,  <38.754261, 32.118313, 40.309124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818954, 31.887388, 40.299767>,  <38.926781, 31.502510, 40.284168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818954, 31.887388, 40.299767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108154, 0.009989, -0.994084,
		-0.956891, -0.272184, 0.101372,
		-0.269561, 0.962193, 0.038997,
		38.738087, 32.176044, 40.311466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332287, 31.582388, 39.952866>,  <38.926781, 31.502510, 40.284168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332287, 31.582388, 39.952866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490223, 31.949718, 39.941704>,  <38.584984, 32.170116, 39.935009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490223, 31.949718, 39.941704>,  <38.332287, 31.582388, 39.952866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490223, 31.949718, 39.941704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238735, 0.073226, -0.968320,
		-0.887190, 0.388994, 0.248149,
		0.394842, 0.918325, -0.027901,
		38.608677, 32.225216, 39.933334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856945, 31.970371, 39.516628>,  <38.332287, 31.582388, 39.952866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856945, 31.970371, 39.516628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197300, 32.180470, 39.512333>,  <38.401512, 32.306526, 39.509754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197300, 32.180470, 39.512333>,  <37.856945, 31.970371, 39.516628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197300, 32.180470, 39.512333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238895, 0.368637, -0.898352,
		-0.467895, 0.766959, 0.439146,
		0.850884, 0.525244, -0.010739,
		38.452564, 32.338043, 39.509109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677780, 32.720776, 39.161045>,  <37.856945, 31.970371, 39.516628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677780, 32.720776, 39.161045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072941, 32.663929, 39.136227>,  <38.310040, 32.629822, 39.121334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072941, 32.663929, 39.136227>,  <37.677780, 32.720776, 39.161045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072941, 32.663929, 39.136227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033469, 0.195268, -0.980179,
		0.151416, 0.970398, 0.188150,
		0.987903, -0.142118, -0.062045,
		38.369312, 32.621292, 39.117615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993923, 33.335007, 38.829868>,  <37.677780, 32.720776, 39.161045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993923, 33.335007, 38.829868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267017, 33.046932, 38.780548>,  <38.430874, 32.874088, 38.750954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267017, 33.046932, 38.780548>,  <37.993923, 33.335007, 38.829868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267017, 33.046932, 38.780548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175530, 0.325476, -0.929115,
		0.709269, 0.612696, 0.348628,
		0.682735, -0.720187, -0.123304,
		38.471836, 32.830875, 38.743557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358681, 33.632374, 38.347889>,  <37.993923, 33.335007, 38.829868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358681, 33.632374, 38.347889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485687, 33.253101, 38.352348>,  <38.561893, 33.025536, 38.355022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485687, 33.253101, 38.352348>,  <38.358681, 33.632374, 38.347889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485687, 33.253101, 38.352348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123619, 0.029738, -0.991884,
		0.940159, 0.316322, 0.126656,
		0.317521, -0.948186, 0.011145,
		38.580944, 32.968647, 38.355690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860950, 33.624382, 37.900215>,  <38.358681, 33.632374, 38.347889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860950, 33.624382, 37.900215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785896, 33.231812, 37.916183>,  <38.740864, 32.996269, 37.925762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785896, 33.231812, 37.916183>,  <38.860950, 33.624382, 37.900215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785896, 33.231812, 37.916183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092950, -0.058199, -0.993968,
		0.977830, -0.182797, 0.102144,
		-0.187639, -0.981426, 0.039918,
		38.729603, 32.937382, 37.928158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477169, 33.261868, 37.704636>,  <38.860950, 33.624382, 37.900215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477169, 33.261868, 37.704636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158661, 33.031105, 37.631813>,  <38.967556, 32.892647, 37.588120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158661, 33.031105, 37.631813>,  <39.477169, 33.261868, 37.704636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158661, 33.031105, 37.631813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173062, 0.071129, -0.982339,
		0.579664, -0.813709, 0.043202,
		-0.796266, -0.576904, -0.182053,
		38.919781, 32.858032, 37.577198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505264, 32.615108, 37.087669>,  <39.477169, 33.261868, 37.704636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505264, 32.615108, 37.087669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118713, 32.712292, 37.121334>,  <38.886784, 32.770603, 37.141533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118713, 32.712292, 37.121334>,  <39.505264, 32.615108, 37.087669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118713, 32.712292, 37.121334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100558, -0.055866, -0.993362,
		-0.236648, -0.968426, 0.078419,
		-0.966378, 0.242963, 0.084162,
		38.828800, 32.785179, 37.146584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078117, 32.379013, 36.659119>,  <39.505264, 32.615108, 37.087669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078117, 32.379013, 36.659119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115807, 32.182407, 36.312817>,  <40.138420, 32.064442, 36.105034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115807, 32.182407, 36.312817>,  <40.078117, 32.379013, 36.659119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115807, 32.182407, 36.312817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030527, -0.870643, 0.490968,
		-0.995083, -0.019832, -0.097040,
		0.094224, -0.491516, -0.865756,
		40.144073, 32.034954, 36.053089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584599, 32.010330, 36.348885>,  <40.078117, 32.379013, 36.659119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584599, 32.010330, 36.348885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890202, 31.790495, 36.213688>,  <40.073563, 31.658594, 36.132568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890202, 31.790495, 36.213688>,  <39.584599, 32.010330, 36.348885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890202, 31.790495, 36.213688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227402, -0.719614, 0.656082,
		-0.603799, -0.424394, -0.674771,
		0.764012, -0.549587, -0.337994,
		40.119404, 31.625618, 36.112289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325466, 31.467773, 36.195862>,  <39.584599, 32.010330, 36.348885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325466, 31.467773, 36.195862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703686, 31.358692, 36.266941>,  <39.930618, 31.293243, 36.309589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703686, 31.358692, 36.266941>,  <39.325466, 31.467773, 36.195862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703686, 31.358692, 36.266941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325461, -0.799524, 0.504813,
		0.004411, -0.535158, -0.844741,
		0.945545, -0.272704, 0.177700,
		39.987350, 31.276880, 36.320251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345680, 30.801676, 36.019653>,  <39.325466, 31.467773, 36.195862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345680, 30.801676, 36.019653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659454, 30.844255, 36.264053>,  <39.847721, 30.869802, 36.410694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659454, 30.844255, 36.264053>,  <39.345680, 30.801676, 36.019653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659454, 30.844255, 36.264053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216082, -0.876527, 0.430126,
		0.581347, -0.469435, -0.664580,
		0.784439, 0.106449, 0.611003,
		39.894787, 30.876190, 36.447353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491837, 30.136869, 36.097046>,  <39.345680, 30.801676, 36.019653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491837, 30.136869, 36.097046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688999, 30.344721, 36.376194>,  <39.807297, 30.469433, 36.543682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688999, 30.344721, 36.376194>,  <39.491837, 30.136869, 36.097046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688999, 30.344721, 36.376194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264583, -0.674577, 0.689160,
		0.828876, -0.524339, -0.195020,
		0.492910, 0.519629, 0.697872,
		39.836872, 30.500610, 36.585556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977913, 29.721291, 36.384396>,  <39.491837, 30.136869, 36.097046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977913, 29.721291, 36.384396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881279, 30.002863, 36.651566>,  <39.823299, 30.171806, 36.811867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881279, 30.002863, 36.651566>,  <39.977913, 29.721291, 36.384396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881279, 30.002863, 36.651566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414390, -0.697228, 0.584940,
		0.877451, -0.135469, 0.460139,
		-0.241581, 0.703933, 0.667920,
		39.808804, 30.214043, 36.851940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863224, 29.232136, 36.906090>,  <39.977913, 29.721291, 36.384396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863224, 29.232136, 36.906090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763424, 29.586573, 37.062340>,  <39.703545, 29.799234, 37.156090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763424, 29.586573, 37.062340>,  <39.863224, 29.232136, 36.906090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763424, 29.586573, 37.062340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179731, -0.438748, 0.880453,
		0.951548, 0.149469, 0.268727,
		-0.249504, 0.886092, 0.390626,
		39.688572, 29.852400, 37.179527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239048, 29.249571, 37.560017>,  <39.863224, 29.232136, 36.906090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239048, 29.249571, 37.560017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939819, 29.514509, 37.576450>,  <39.760284, 29.673473, 37.586311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939819, 29.514509, 37.576450>,  <40.239048, 29.249571, 37.560017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939819, 29.514509, 37.576450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094397, -0.167484, 0.981345,
		0.656872, 0.730236, 0.187813,
		-0.748069, 0.662347, 0.041083,
		39.715397, 29.713213, 37.588776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300133, 29.668476, 38.247375>,  <40.239048, 29.249571, 37.560017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300133, 29.668476, 38.247375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919086, 29.685345, 38.126877>,  <39.690460, 29.695467, 38.054577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919086, 29.685345, 38.126877>,  <40.300133, 29.668476, 38.247375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919086, 29.685345, 38.126877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300897, -0.275891, 0.912877,
		-0.044613, 0.960263, 0.275507,
		-0.952612, 0.042173, -0.301249,
		39.633305, 29.697996, 38.036503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883942, 30.104776, 38.728046>,  <40.300133, 29.668476, 38.247375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883942, 30.104776, 38.728046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609791, 29.881693, 38.540764>,  <39.445301, 29.747843, 38.428394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609791, 29.881693, 38.540764>,  <39.883942, 30.104776, 38.728046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609791, 29.881693, 38.540764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346382, -0.315880, 0.883312,
		-0.640529, 0.767580, 0.023317,
		-0.685377, -0.557710, -0.468206,
		39.404179, 29.714380, 38.400303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377186, 30.182636, 39.177311>,  <39.883942, 30.104776, 38.728046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377186, 30.182636, 39.177311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288544, 29.852983, 38.968815>,  <39.235359, 29.655191, 38.843716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288544, 29.852983, 38.968815>,  <39.377186, 30.182636, 39.177311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288544, 29.852983, 38.968815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404455, -0.408706, 0.818154,
		-0.887304, 0.392126, -0.242754,
		-0.221604, -0.824134, -0.521243,
		39.222061, 29.605743, 38.812443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711086, 30.074266, 39.470619>,  <39.377186, 30.182636, 39.177311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711086, 30.074266, 39.470619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845638, 29.737816, 39.301220>,  <38.926369, 29.535946, 39.199581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845638, 29.737816, 39.301220>,  <38.711086, 30.074266, 39.470619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845638, 29.737816, 39.301220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365322, -0.531045, 0.764546,
		-0.867978, -0.102466, -0.485917,
		0.336384, -0.841125, -0.423503,
		38.946552, 29.485477, 39.174168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122017, 29.597738, 39.539658>,  <38.711086, 30.074266, 39.470619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122017, 29.597738, 39.539658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416706, 29.343945, 39.446136>,  <38.593521, 29.191669, 39.390022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416706, 29.343945, 39.446136>,  <38.122017, 29.597738, 39.539658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416706, 29.343945, 39.446136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233994, -0.563623, 0.792197,
		-0.634414, -0.528923, -0.563701,
		0.736726, -0.634484, -0.233805,
		38.637726, 29.153599, 39.375996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920773, 28.881062, 39.585358>,  <38.122017, 29.597738, 39.539658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920773, 28.881062, 39.585358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318050, 28.897213, 39.629063>,  <38.556416, 28.906904, 39.655285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318050, 28.897213, 39.629063>,  <37.920773, 28.881062, 39.585358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318050, 28.897213, 39.629063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075425, -0.491902, 0.867377,
		0.088772, -0.869713, -0.485508,
		0.993193, 0.040379, 0.109265,
		38.616009, 28.909327, 39.661842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068893, 28.195410, 39.836987>,  <37.920773, 28.881062, 39.585358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068893, 28.195410, 39.836987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383549, 28.421627, 39.936073>,  <38.572342, 28.557358, 39.995525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383549, 28.421627, 39.936073>,  <38.068893, 28.195410, 39.836987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383549, 28.421627, 39.936073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117645, -0.256567, 0.959340,
		0.606102, -0.783796, -0.135292,
		0.786638, 0.565542, 0.247715,
		38.619541, 28.591290, 40.010387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884464, 27.530653, 39.625301>,  <38.068893, 28.195410, 39.836987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884464, 27.530653, 39.625301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507931, 27.567020, 39.755306>,  <37.282013, 27.588840, 39.833309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507931, 27.567020, 39.755306>,  <37.884464, 27.530653, 39.625301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507931, 27.567020, 39.755306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259102, 0.422392, -0.868592,
		-0.216252, -0.901842, -0.374053,
		-0.941330, 0.090916, 0.325012,
		37.225533, 27.594296, 39.852810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515804, 27.250410, 39.037209>,  <37.884464, 27.530653, 39.625301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515804, 27.250410, 39.037209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259563, 27.464567, 39.257385>,  <37.105820, 27.593061, 39.389492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259563, 27.464567, 39.257385>,  <37.515804, 27.250410, 39.037209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259563, 27.464567, 39.257385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370136, 0.412763, -0.832242,
		-0.672777, -0.736873, -0.066249,
		-0.640601, 0.535392, 0.550441,
		37.067383, 27.625185, 39.422516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894428, 27.074995, 38.792095>,  <37.515804, 27.250410, 39.037209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894428, 27.074995, 38.792095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820175, 27.424484, 38.971939>,  <36.775623, 27.634178, 39.079845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820175, 27.424484, 38.971939>,  <36.894428, 27.074995, 38.792095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820175, 27.424484, 38.971939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377800, 0.358930, -0.853485,
		-0.907088, -0.328297, 0.263464,
		-0.185631, 0.873722, 0.449612,
		36.764484, 27.686602, 39.106823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269405, 27.217367, 38.631504>,  <36.894428, 27.074995, 38.792095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269405, 27.217367, 38.631504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387161, 27.584335, 38.738594>,  <36.457813, 27.804516, 38.802849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387161, 27.584335, 38.738594>,  <36.269405, 27.217367, 38.631504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387161, 27.584335, 38.738594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297609, 0.354210, -0.886546,
		-0.908166, 0.181310, 0.377307,
		0.294385, 0.917422, 0.267722,
		36.475475, 27.859562, 38.818913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663162, 27.629683, 38.760220>,  <36.269405, 27.217367, 38.631504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663162, 27.629683, 38.760220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981941, 27.858164, 38.681629>,  <36.173210, 27.995253, 38.634476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981941, 27.858164, 38.681629>,  <35.663162, 27.629683, 38.760220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981941, 27.858164, 38.681629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498496, 0.438238, -0.747964,
		-0.341136, 0.694030, 0.633995,
		0.796949, 0.571201, -0.196472,
		36.221027, 28.029524, 38.622688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334484, 28.338408, 38.614052>,  <35.663162, 27.629683, 38.760220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334484, 28.338408, 38.614052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712170, 28.385239, 38.490929>,  <35.938782, 28.413338, 38.417053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712170, 28.385239, 38.490929>,  <35.334484, 28.338408, 38.614052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712170, 28.385239, 38.490929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317110, 0.575390, -0.753902,
		0.088845, 0.809457, 0.580419,
		0.944218, 0.117076, -0.307808,
		35.995434, 28.420361, 38.398586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419117, 29.063745, 38.604465>,  <35.334484, 28.338408, 38.614052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419117, 29.063745, 38.604465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687710, 28.906773, 38.353031>,  <35.848866, 28.812590, 38.202171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687710, 28.906773, 38.353031>,  <35.419117, 29.063745, 38.604465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687710, 28.906773, 38.353031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360048, 0.568624, -0.739616,
		0.647675, 0.722956, 0.240525,
		0.671478, -0.392430, -0.628582,
		35.889153, 28.789043, 38.164455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767750, 29.657520, 38.245438>,  <35.419117, 29.063745, 38.604465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767750, 29.657520, 38.245438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869476, 29.336128, 38.030125>,  <35.930511, 29.143293, 37.900936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869476, 29.336128, 38.030125>,  <35.767750, 29.657520, 38.245438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869476, 29.336128, 38.030125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021842, 0.551667, -0.833778,
		0.966875, 0.223798, 0.122747,
		0.254314, -0.803478, -0.538282,
		35.945770, 29.095085, 37.868641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232689, 29.982924, 37.848049>,  <35.767750, 29.657520, 38.245438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232689, 29.982924, 37.848049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139797, 29.639591, 37.665035>,  <36.084061, 29.433592, 37.555225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139797, 29.639591, 37.665035>,  <36.232689, 29.982924, 37.848049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139797, 29.639591, 37.665035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008685, 0.468545, -0.883397,
		0.972622, -0.209125, -0.101356,
		-0.232230, -0.858331, -0.457533,
		36.070129, 29.382092, 37.527775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808651, 29.823095, 37.372444>,  <36.232689, 29.982924, 37.848049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808651, 29.823095, 37.372444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459702, 29.667337, 37.254227>,  <36.250332, 29.573883, 37.183296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459702, 29.667337, 37.254227>,  <36.808651, 29.823095, 37.372444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459702, 29.667337, 37.254227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006018, 0.613074, -0.790002,
		0.488808, -0.687396, -0.537171,
		-0.872371, -0.389392, -0.295539,
		36.197990, 29.550520, 37.165565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688316, 30.064861, 36.679234>,  <36.808651, 29.823095, 37.372444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688316, 30.064861, 36.679234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328976, 29.896416, 36.729229>,  <36.113369, 29.795347, 36.759228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328976, 29.896416, 36.729229>,  <36.688316, 30.064861, 36.679234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328976, 29.896416, 36.729229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344387, 0.498556, -0.795512,
		0.272688, -0.757696, -0.592906,
		-0.898353, -0.421116, 0.124990,
		36.059471, 29.770081, 36.766727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569256, 29.684341, 36.128841>,  <36.688316, 30.064861, 36.679234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569256, 29.684341, 36.128841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210587, 29.785646, 36.274082>,  <35.995384, 29.846430, 36.361225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210587, 29.785646, 36.274082>,  <36.569256, 29.684341, 36.128841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210587, 29.785646, 36.274082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123617, 0.644328, -0.754692,
		-0.425093, -0.721594, -0.546441,
		-0.896669, 0.253265, 0.363100,
		35.941586, 29.861626, 36.383011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.814983, 25.553061, 42.805775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542107, 25.797804, 42.965897>,  <37.378380, 25.944651, 43.061970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542107, 25.797804, 42.965897>,  <37.814983, 25.553061, 42.805775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542107, 25.797804, 42.965897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200782, 0.369675, -0.907208,
		-0.703068, -0.699262, -0.129338,
		-0.682190, 0.611860, 0.400306,
		37.337448, 25.981361, 43.085987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413853, 25.512114, 42.332157>,  <37.814983, 25.553061, 42.805775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413853, 25.512114, 42.332157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278877, 25.830225, 42.533619>,  <37.197891, 26.021091, 42.654495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278877, 25.830225, 42.533619>,  <37.413853, 25.512114, 42.332157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278877, 25.830225, 42.533619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343589, 0.394066, -0.852443,
		-0.876403, -0.460696, 0.140276,
		-0.337439, 0.795280, 0.503651,
		37.177647, 26.068810, 42.684715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750816, 25.713127, 41.994354>,  <37.413853, 25.512114, 42.332157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750816, 25.713127, 41.994354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886684, 26.030952, 42.195667>,  <36.968204, 26.221647, 42.316456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886684, 26.030952, 42.195667>,  <36.750816, 25.713127, 41.994354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886684, 26.030952, 42.195667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269001, 0.594814, -0.757519,
		-0.901257, 0.121921, 0.415778,
		0.339668, 0.794564, 0.503283,
		36.988586, 26.269321, 42.346653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207432, 26.219397, 41.940891>,  <36.750816, 25.713127, 41.994354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207432, 26.219397, 41.940891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559475, 26.405577, 41.978363>,  <36.770699, 26.517284, 42.000847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559475, 26.405577, 41.978363>,  <36.207432, 26.219397, 41.940891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559475, 26.405577, 41.978363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318467, 0.725070, -0.610617,
		-0.352132, 0.507573, 0.786367,
		0.880103, 0.465450, 0.093675,
		36.823505, 26.545212, 42.006466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141827, 26.968847, 41.834625>,  <36.207432, 26.219397, 41.940891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141827, 26.968847, 41.834625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541637, 26.962437, 41.845184>,  <36.781525, 26.958590, 41.851521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541637, 26.962437, 41.845184>,  <36.141827, 26.968847, 41.834625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541637, 26.962437, 41.845184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030743, 0.436416, -0.899220,
		0.002893, 0.899602, 0.436701,
		0.999523, -0.016027, 0.026394,
		36.841496, 26.957628, 41.853104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401348, 27.660938, 41.743118>,  <36.141827, 26.968847, 41.834625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401348, 27.660938, 41.743118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.663391, 27.388617, 41.612072>,  <36.820618, 27.225224, 41.533443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.663391, 27.388617, 41.612072>,  <36.401348, 27.660938, 41.743118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663391, 27.388617, 41.612072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016937, 0.446752, -0.894498,
		0.755343, 0.580446, 0.304203,
		0.655111, -0.680805, -0.327619,
		36.859924, 27.184376, 41.513786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824810, 28.078836, 41.427612>,  <36.401348, 27.660938, 41.743118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824810, 28.078836, 41.427612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920208, 27.723095, 41.271576>,  <36.977448, 27.509651, 41.177956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.920208, 27.723095, 41.271576>,  <36.824810, 28.078836, 41.427612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920208, 27.723095, 41.271576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087474, 0.419723, -0.903427,
		0.967196, 0.181340, 0.177897,
		0.238495, -0.889353, -0.390092,
		36.991756, 27.456289, 41.154549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465549, 28.244535, 41.109924>,  <36.824810, 28.078836, 41.427612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465549, 28.244535, 41.109924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362278, 27.893829, 40.947628>,  <37.300316, 27.683405, 40.850250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362278, 27.893829, 40.947628>,  <37.465549, 28.244535, 41.109924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362278, 27.893829, 40.947628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047633, 0.407915, -0.911776,
		0.964921, -0.254731, -0.063554,
		-0.258182, -0.876765, -0.405740,
		37.284824, 27.630800, 40.825905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773548, 28.239029, 40.485909>,  <37.465549, 28.244535, 41.109924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773548, 28.239029, 40.485909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482800, 27.967731, 40.442753>,  <37.308350, 27.804953, 40.416859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482800, 27.967731, 40.442753>,  <37.773548, 28.239029, 40.485909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482800, 27.967731, 40.442753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081951, 0.241637, -0.966900,
		0.681863, -0.693974, -0.231222,
		-0.726875, -0.678242, -0.107891,
		37.264736, 27.764259, 40.410385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437725, 27.871712, 40.386375>,  <37.773548, 28.239029, 40.485909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437725, 27.871712, 40.386375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.553780, 28.249908, 40.445530>,  <38.623413, 28.476826, 40.481022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.553780, 28.249908, 40.445530>,  <38.437725, 27.871712, 40.386375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553780, 28.249908, 40.445530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121497, -0.116890, 0.985685,
		0.949242, -0.303948, 0.080961,
		0.290134, 0.945491, 0.147886,
		38.640820, 28.533556, 40.489895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983887, 27.837961, 40.899658>,  <38.437725, 27.871712, 40.386375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983887, 27.837961, 40.899658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875740, 28.222727, 40.915760>,  <38.810852, 28.453587, 40.925423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.875740, 28.222727, 40.915760>,  <38.983887, 27.837961, 40.899658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875740, 28.222727, 40.915760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013459, -0.038030, 0.999186,
		0.962663, 0.270690, -0.002664,
		-0.270368, 0.961915, 0.040254,
		38.794628, 28.511301, 40.927837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339207, 28.122272, 41.449451>,  <38.983887, 27.837961, 40.899658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339207, 28.122272, 41.449451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076199, 28.417395, 41.388374>,  <38.918392, 28.594467, 41.351727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076199, 28.417395, 41.388374>,  <39.339207, 28.122272, 41.449451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076199, 28.417395, 41.388374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088596, 0.125542, 0.988124,
		0.748211, 0.663239, -0.017180,
		-0.657519, 0.737803, -0.152692,
		38.878944, 28.638735, 41.342567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598305, 28.625164, 41.902370>,  <39.339207, 28.122272, 41.449451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598305, 28.625164, 41.902370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211430, 28.704376, 41.838703>,  <38.979305, 28.751904, 41.800503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211430, 28.704376, 41.838703>,  <39.598305, 28.625164, 41.902370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211430, 28.704376, 41.838703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145843, 0.080254, 0.986047,
		0.208042, 0.976905, -0.048739,
		-0.967186, 0.198031, -0.159171,
		38.921272, 28.763786, 41.790951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445667, 29.134756, 42.172100>,  <39.598305, 28.625164, 41.902370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445667, 29.134756, 42.172100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066448, 29.010780, 42.143410>,  <38.838917, 28.936396, 42.126198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066448, 29.010780, 42.143410>,  <39.445667, 29.134756, 42.172100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066448, 29.010780, 42.143410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116506, 0.128470, 0.984846,
		-0.296029, 0.942036, -0.157905,
		-0.948047, -0.309940, -0.071722,
		38.782036, 28.917799, 42.121895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071342, 29.542744, 42.625584>,  <39.445667, 29.134756, 42.172100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071342, 29.542744, 42.625584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849174, 29.212557, 42.585350>,  <38.715874, 29.014444, 42.561211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.849174, 29.212557, 42.585350>,  <39.071342, 29.542744, 42.625584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849174, 29.212557, 42.585350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176658, -0.001065, 0.984272,
		-0.812589, 0.564452, -0.145233,
		-0.555419, -0.825465, -0.100581,
		38.682549, 28.964918, 42.555176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616360, 29.627728, 43.142300>,  <39.071342, 29.542744, 42.625584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616360, 29.627728, 43.142300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572487, 29.253237, 43.008766>,  <38.546165, 29.028542, 42.928646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572487, 29.253237, 43.008766>,  <38.616360, 29.627728, 43.142300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572487, 29.253237, 43.008766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271099, -0.294950, 0.916248,
		-0.956282, 0.190995, -0.221460,
		-0.109679, -0.936229, -0.333834,
		38.539581, 28.972368, 42.908615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028976, 29.372389, 43.490295>,  <38.616360, 29.627728, 43.142300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028976, 29.372389, 43.490295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255775, 29.056290, 43.397316>,  <38.391853, 28.866631, 43.341530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255775, 29.056290, 43.397316>,  <38.028976, 29.372389, 43.490295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255775, 29.056290, 43.397316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172591, -0.389896, 0.904541,
		-0.805438, -0.472750, -0.357458,
		0.566993, -0.790246, -0.232444,
		38.425873, 28.819216, 43.327583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689396, 28.839365, 43.849918>,  <38.028976, 29.372389, 43.490295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689396, 28.839365, 43.849918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059254, 28.704174, 43.779713>,  <38.281170, 28.623060, 43.737587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059254, 28.704174, 43.779713>,  <37.689396, 28.839365, 43.849918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059254, 28.704174, 43.779713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048072, -0.353607, 0.934158,
		-0.377797, -0.872197, -0.310711,
		0.924639, -0.337986, -0.175520,
		38.336647, 28.602781, 43.727058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702629, 28.236628, 44.277588>,  <37.689396, 28.839365, 43.849918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702629, 28.236628, 44.277588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088829, 28.303684, 44.197884>,  <38.320549, 28.343918, 44.150059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088829, 28.303684, 44.197884>,  <37.702629, 28.236628, 44.277588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088829, 28.303684, 44.197884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247552, -0.353459, 0.902100,
		0.080797, -0.920306, -0.382765,
		0.965500, 0.167641, -0.199265,
		38.378479, 28.353977, 44.138103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074833, 27.692436, 44.483921>,  <37.702629, 28.236628, 44.277588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074833, 27.692436, 44.483921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353951, 27.978952, 44.485218>,  <38.521423, 28.150862, 44.485996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353951, 27.978952, 44.485218>,  <38.074833, 27.692436, 44.483921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353951, 27.978952, 44.485218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426025, -0.418651, 0.802019,
		0.575833, -0.558266, -0.597290,
		0.697796, 0.716289, 0.003238,
		38.563290, 28.193840, 44.486191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723907, 27.410387, 44.631447>,  <38.074833, 27.692436, 44.483921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723907, 27.410387, 44.631447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792114, 27.795816, 44.713863>,  <38.833038, 28.027073, 44.763313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792114, 27.795816, 44.713863>,  <38.723907, 27.410387, 44.631447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792114, 27.795816, 44.713863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451987, -0.262296, 0.852590,
		0.875575, -0.052255, -0.480248,
		0.170519, 0.963572, 0.206041,
		38.843269, 28.084888, 44.775677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201321, 27.379240, 45.049969>,  <38.723907, 27.410387, 44.631447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201321, 27.379240, 45.049969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143097, 27.771959, 45.098763>,  <39.108162, 28.007591, 45.128040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.143097, 27.771959, 45.098763>,  <39.201321, 27.379240, 45.049969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143097, 27.771959, 45.098763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470833, -0.039699, 0.881329,
		0.870131, 0.185723, -0.456485,
		-0.145561, 0.981800, 0.121988,
		39.099430, 28.066500, 45.135357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806049, 27.721230, 45.330730>,  <39.201321, 27.379240, 45.049969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806049, 27.721230, 45.330730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497124, 27.951147, 45.438908>,  <39.311768, 28.089098, 45.503815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.497124, 27.951147, 45.438908>,  <39.806049, 27.721230, 45.330730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497124, 27.951147, 45.438908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365297, 0.053571, 0.929348,
		0.519698, 0.816541, -0.251345,
		-0.772316, 0.574796, 0.270439,
		39.265430, 28.123587, 45.520039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.084126, 28.870354, 47.613216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460701, 28.757761, 47.538967>,  <32.686646, 28.690207, 47.494419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.460701, 28.757761, 47.538967>,  <32.084126, 28.870354, 47.613216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460701, 28.757761, 47.538967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101201, 0.289242, -0.951891,
		0.321628, 0.914936, 0.243819,
		0.941442, -0.281480, -0.185620,
		32.743134, 28.673317, 47.483280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540180, 29.500307, 47.402554>,  <32.084126, 28.870354, 47.613216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540180, 29.500307, 47.402554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687607, 29.170197, 47.231403>,  <32.776062, 28.972130, 47.128712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.687607, 29.170197, 47.231403>,  <32.540180, 29.500307, 47.402554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687607, 29.170197, 47.231403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161369, 0.396492, -0.903744,
		0.915489, 0.402133, 0.012959,
		0.368564, -0.825277, -0.427876,
		32.798176, 28.922613, 47.103039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961445, 29.748041, 46.877312>,  <32.540180, 29.500307, 47.402554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961445, 29.748041, 46.877312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924301, 29.367018, 46.761375>,  <32.902016, 29.138403, 46.691814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.924301, 29.367018, 46.761375>,  <32.961445, 29.748041, 46.877312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924301, 29.367018, 46.761375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000010, 0.291099, -0.956693,
		0.995679, -0.088845, -0.027023,
		-0.092863, -0.952559, -0.289842,
		32.896442, 29.081249, 46.674423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435253, 29.617405, 46.364929>,  <32.961445, 29.748041, 46.877312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435253, 29.617405, 46.364929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.154644, 29.338476, 46.306141>,  <32.986279, 29.171118, 46.270866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.154644, 29.338476, 46.306141>,  <33.435253, 29.617405, 46.364929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154644, 29.338476, 46.306141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072092, 0.274620, -0.958846,
		0.708988, -0.662060, -0.242925,
		-0.701526, -0.697324, -0.146973,
		32.944187, 29.129278, 46.262051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780697, 29.142704, 45.832771>,  <33.435253, 29.617405, 46.364929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780697, 29.142704, 45.832771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385578, 29.082560, 45.816525>,  <33.148506, 29.046473, 45.806778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385578, 29.082560, 45.816525>,  <33.780697, 29.142704, 45.832771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385578, 29.082560, 45.816525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018718, 0.144283, -0.989359,
		0.154634, -0.978044, -0.139707,
		-0.987795, -0.150373, -0.040618,
		33.089241, 29.037451, 45.804340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658859, 28.761505, 45.294655>,  <33.780697, 29.142704, 45.832771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658859, 28.761505, 45.294655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278923, 28.867424, 45.361221>,  <33.050961, 28.930975, 45.401161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.278923, 28.867424, 45.361221>,  <33.658859, 28.761505, 45.294655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278923, 28.867424, 45.361221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100662, 0.244954, -0.964295,
		-0.296105, -0.932674, -0.206012,
		-0.949836, 0.264795, 0.166417,
		32.993973, 28.946863, 45.411148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235493, 28.507412, 44.738029>,  <33.658859, 28.761505, 45.294655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235493, 28.507412, 44.738029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069019, 28.835329, 44.895370>,  <32.969135, 29.032080, 44.989777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069019, 28.835329, 44.895370>,  <33.235493, 28.507412, 44.738029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069019, 28.835329, 44.895370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220754, 0.328562, -0.918322,
		-0.882077, -0.469024, 0.044231,
		-0.416182, 0.819795, 0.393356,
		32.944164, 29.081268, 45.013378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660332, 28.582783, 44.357140>,  <33.235493, 28.507412, 44.738029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660332, 28.582783, 44.357140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702358, 28.949839, 44.510448>,  <32.727573, 29.170073, 44.602432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.702358, 28.949839, 44.510448>,  <32.660332, 28.582783, 44.357140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702358, 28.949839, 44.510448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008240, 0.386192, -0.922382,
		-0.994432, 0.093749, 0.048136,
		0.105062, 0.917642, 0.383269,
		32.733875, 29.225132, 44.625431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192623, 28.912491, 43.920937>,  <32.660332, 28.582783, 44.357140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192623, 28.912491, 43.920937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389809, 29.214384, 44.094078>,  <32.508118, 29.395521, 44.197964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389809, 29.214384, 44.094078>,  <32.192623, 28.912491, 43.920937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389809, 29.214384, 44.094078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153970, 0.565331, -0.810367,
		-0.856319, 0.332832, 0.394893,
		0.492961, 0.754734, 0.432857,
		32.537697, 29.440804, 44.223934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848663, 29.677284, 43.843349>,  <32.192623, 28.912491, 43.920937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848663, 29.677284, 43.843349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233948, 29.764616, 43.906029>,  <32.465118, 29.817015, 43.943638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233948, 29.764616, 43.906029>,  <31.848663, 29.677284, 43.843349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233948, 29.764616, 43.906029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008093, 0.606382, -0.795132,
		-0.268621, 0.764612, 0.585842,
		0.963212, 0.218330, 0.156699,
		32.522911, 29.830114, 43.953037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843042, 30.267202, 43.628315>,  <31.848663, 29.677284, 43.843349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843042, 30.267202, 43.628315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226734, 30.154331, 43.621986>,  <32.456951, 30.086609, 43.618191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226734, 30.154331, 43.621986>,  <31.843042, 30.267202, 43.628315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226734, 30.154331, 43.621986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149238, 0.553261, -0.819530,
		0.240007, 0.783758, 0.572818,
		0.959231, -0.282179, -0.015820,
		32.514503, 30.069677, 43.617241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212116, 30.871189, 43.564014>,  <31.843042, 30.267202, 43.628315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212116, 30.871189, 43.564014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445332, 30.580626, 43.418472>,  <32.585262, 30.406288, 43.331146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445332, 30.580626, 43.418472>,  <32.212116, 30.871189, 43.564014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445332, 30.580626, 43.418472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219042, 0.571821, -0.790596,
		0.782359, 0.381248, 0.492508,
		0.583040, -0.726409, -0.363860,
		32.620243, 30.362703, 43.309315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837696, 31.128197, 43.400436>,  <32.212116, 30.871189, 43.564014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837696, 31.128197, 43.400436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847378, 30.784208, 43.196529>,  <32.853188, 30.577816, 43.074184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.847378, 30.784208, 43.196529>,  <32.837696, 31.128197, 43.400436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847378, 30.784208, 43.196529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188153, 0.504724, -0.842527,
		0.981841, -0.075522, 0.174022,
		0.024204, -0.859971, -0.509769,
		32.854637, 30.526217, 43.043598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527435, 31.135891, 42.918819>,  <32.837696, 31.128197, 43.400436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527435, 31.135891, 42.918819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271168, 30.872011, 42.761677>,  <33.117405, 30.713684, 42.667389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271168, 30.872011, 42.761677>,  <33.527435, 31.135891, 42.918819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271168, 30.872011, 42.761677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103131, 0.580959, -0.807373,
		0.760858, -0.476744, -0.440239,
		-0.640671, -0.659699, -0.392860,
		33.078968, 30.674101, 42.643818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334202, 31.241068, 42.620167>,  <33.527435, 31.135891, 42.918819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334202, 31.241068, 42.620167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579121, 31.554863, 42.580837>,  <34.726074, 31.743139, 42.557240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579121, 31.554863, 42.580837>,  <34.334202, 31.241068, 42.620167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579121, 31.554863, 42.580837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119969, 0.030727, 0.992302,
		0.781469, -0.619383, -0.075300,
		0.612302, 0.784487, -0.098319,
		34.762810, 31.790209, 42.551342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945335, 31.002687, 42.894936>,  <34.334202, 31.241068, 42.620167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945335, 31.002687, 42.894936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921108, 31.401184, 42.919697>,  <34.906574, 31.640282, 42.934551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.921108, 31.401184, 42.919697>,  <34.945335, 31.002687, 42.894936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921108, 31.401184, 42.919697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067182, -0.057806, 0.996065,
		0.995901, 0.064485, -0.063429,
		-0.060565, 0.996243, 0.061901,
		34.902939, 31.700056, 42.938267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222031, 31.179041, 43.594395>,  <34.945335, 31.002687, 42.894936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222031, 31.179041, 43.594395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091259, 31.533897, 43.464108>,  <35.012794, 31.746811, 43.385933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091259, 31.533897, 43.464108>,  <35.222031, 31.179041, 43.594395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091259, 31.533897, 43.464108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088799, 0.314298, 0.945163,
		0.940867, 0.337928, -0.023977,
		-0.326933, 0.887143, -0.325720,
		34.993179, 31.800039, 43.366390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693378, 31.687260, 43.800762>,  <35.222031, 31.179041, 43.594395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693378, 31.687260, 43.800762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.347290, 31.886351, 43.776596>,  <35.139637, 32.005806, 43.762096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.347290, 31.886351, 43.776596>,  <35.693378, 31.687260, 43.800762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347290, 31.886351, 43.776596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187031, 0.432211, 0.882164,
		0.465193, 0.751971, -0.467050,
		-0.865225, 0.497729, -0.060420,
		35.087723, 32.035671, 43.758469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724140, 32.497452, 43.787422>,  <35.693378, 31.687260, 43.800762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724140, 32.497452, 43.787422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.375122, 32.380295, 43.943821>,  <35.165710, 32.310001, 44.037659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.375122, 32.380295, 43.943821>,  <35.724140, 32.497452, 43.787422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375122, 32.380295, 43.943821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285057, 0.344732, 0.894372,
		-0.396745, 0.891837, -0.217303,
		-0.872545, -0.292894, 0.390995,
		35.113358, 32.292427, 44.061119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553165, 32.951225, 44.355339>,  <35.724140, 32.497452, 43.787422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553165, 32.951225, 44.355339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299141, 32.647396, 44.411549>,  <35.146725, 32.465099, 44.445274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299141, 32.647396, 44.411549>,  <35.553165, 32.951225, 44.355339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299141, 32.647396, 44.411549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018052, 0.196461, 0.980345,
		-0.772247, 0.620046, -0.138478,
		-0.635065, -0.759569, 0.140524,
		35.108620, 32.419525, 44.453705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244175, 33.208874, 44.924606>,  <35.553165, 32.951225, 44.355339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244175, 33.208874, 44.924606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129799, 32.826248, 44.901909>,  <35.061172, 32.596672, 44.888290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129799, 32.826248, 44.901909>,  <35.244175, 33.208874, 44.924606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129799, 32.826248, 44.901909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061035, -0.040917, 0.997297,
		-0.956303, 0.288628, -0.046684,
		-0.285937, -0.956567, -0.056746,
		35.044018, 32.539280, 44.884884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649036, 33.106148, 45.474083>,  <35.244175, 33.208874, 44.924606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649036, 33.106148, 45.474083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767242, 32.732853, 45.392365>,  <34.838165, 32.508877, 45.343334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.767242, 32.732853, 45.392365>,  <34.649036, 33.106148, 45.474083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767242, 32.732853, 45.392365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052348, -0.229342, 0.971937,
		-0.953902, -0.276532, -0.116628,
		0.295519, -0.933238, -0.204294,
		34.855900, 32.452881, 45.331078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316681, 32.671635, 45.910534>,  <34.649036, 33.106148, 45.474083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316681, 32.671635, 45.910534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623756, 32.430946, 45.822361>,  <34.808002, 32.286533, 45.769459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623756, 32.430946, 45.822361>,  <34.316681, 32.671635, 45.910534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623756, 32.430946, 45.822361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085711, -0.437304, 0.895220,
		-0.635066, -0.668356, -0.387287,
		0.767688, -0.601718, -0.220432,
		34.854061, 32.250431, 45.756233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169601, 31.995678, 46.090401>,  <34.316681, 32.671635, 45.910534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169601, 31.995678, 46.090401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567780, 32.020927, 46.118977>,  <34.806686, 32.036079, 46.136124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.567780, 32.020927, 46.118977>,  <34.169601, 31.995678, 46.090401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567780, 32.020927, 46.118977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023473, -0.564032, 0.825419,
		0.092402, -0.823337, -0.559981,
		0.995445, 0.063126, 0.071444,
		34.866413, 32.039864, 46.140411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321777, 31.405680, 46.411972>,  <34.169601, 31.995678, 46.090401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321777, 31.405680, 46.411972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661938, 31.610874, 46.458736>,  <34.866032, 31.733992, 46.486794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.661938, 31.610874, 46.458736>,  <34.321777, 31.405680, 46.411972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661938, 31.610874, 46.458736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191682, -0.508999, 0.839153,
		0.489980, -0.691205, -0.531182,
		0.850398, 0.512987, 0.116908,
		34.917057, 31.764771, 46.493809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845486, 31.002531, 46.630737>,  <34.321777, 31.405680, 46.411972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845486, 31.002531, 46.630737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067627, 31.317760, 46.736961>,  <35.200912, 31.506899, 46.800694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067627, 31.317760, 46.736961>,  <34.845486, 31.002531, 46.630737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067627, 31.317760, 46.736961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306125, -0.490634, 0.815822,
		0.773219, -0.371779, -0.513725,
		0.555356, 0.788073, 0.265557,
		35.234234, 31.554182, 46.816628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554810, 30.648066, 46.914112>,  <34.845486, 31.002531, 46.630737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554810, 30.648066, 46.914112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534359, 31.023472, 47.050682>,  <35.522087, 31.248716, 47.132626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534359, 31.023472, 47.050682>,  <35.554810, 30.648066, 46.914112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534359, 31.023472, 47.050682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178595, -0.327772, 0.927723,
		0.982593, 0.108412, -0.150855,
		-0.051130, 0.938516, 0.341428,
		35.519020, 31.305027, 47.153111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207054, 30.809118, 47.217194>,  <35.554810, 30.648066, 46.914112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207054, 30.809118, 47.217194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890858, 30.997522, 47.373798>,  <35.701141, 31.110565, 47.467762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890858, 30.997522, 47.373798>,  <36.207054, 30.809118, 47.217194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890858, 30.997522, 47.373798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167046, -0.449188, 0.877682,
		0.589257, 0.759197, 0.276397,
		-0.790489, 0.471009, 0.391508,
		35.653709, 31.138824, 47.491249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661495, 31.512056, 47.245537>,  <36.207054, 30.809118, 47.217194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661495, 31.512056, 47.245537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027443, 31.657373, 47.316013>,  <37.247009, 31.744564, 47.358299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027443, 31.657373, 47.316013>,  <36.661495, 31.512056, 47.245537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027443, 31.657373, 47.316013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095352, 0.229624, -0.968597,
		-0.392339, 0.902936, 0.175435,
		0.914865, 0.363290, 0.176187,
		37.301903, 31.766361, 47.368870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682549, 32.218765, 47.008453>,  <36.661495, 31.512056, 47.245537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682549, 32.218765, 47.008453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054703, 32.072147, 47.010628>,  <37.277996, 31.984177, 47.011932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.054703, 32.072147, 47.010628>,  <36.682549, 32.218765, 47.008453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054703, 32.072147, 47.010628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132134, 0.321491, -0.937648,
		0.341945, 0.873091, 0.347543,
		0.930384, -0.366546, 0.005432,
		37.333817, 31.962183, 47.012257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028587, 32.827095, 46.813488>,  <36.682549, 32.218765, 47.008453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028587, 32.827095, 46.813488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.262463, 32.506096, 46.765938>,  <37.402790, 32.313496, 46.737408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.262463, 32.506096, 46.765938>,  <37.028587, 32.827095, 46.813488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262463, 32.506096, 46.765938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177130, 0.269283, -0.946632,
		0.791683, 0.532430, 0.299594,
		0.584691, -0.802499, -0.118878,
		37.437870, 32.265347, 46.730274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629742, 33.089092, 46.412766>,  <37.028587, 32.827095, 46.813488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629742, 33.089092, 46.412766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.623306, 32.693100, 46.356667>,  <37.619446, 32.455505, 46.323006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.623306, 32.693100, 46.356667>,  <37.629742, 33.089092, 46.412766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623306, 32.693100, 46.356667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028060, 0.139767, -0.989787,
		0.999477, -0.019860, 0.025531,
		-0.016089, -0.989985, -0.140251,
		37.618481, 32.396103, 46.314590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218876, 32.930477, 46.035366>,  <37.629742, 33.089092, 46.412766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218876, 32.930477, 46.035366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.975147, 32.625160, 45.949467>,  <37.828911, 32.441971, 45.897926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.975147, 32.625160, 45.949467>,  <38.218876, 32.930477, 46.035366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975147, 32.625160, 45.949467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254913, 0.067890, -0.964578,
		0.750832, -0.642479, 0.153205,
		-0.609320, -0.763290, -0.214750,
		37.792351, 32.396172, 45.885040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612232, 32.545120, 45.541756>,  <38.218876, 32.930477, 46.035366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612232, 32.545120, 45.541756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250992, 32.377800, 45.502895>,  <38.034248, 32.277409, 45.479580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250992, 32.377800, 45.502895>,  <38.612232, 32.545120, 45.541756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250992, 32.377800, 45.502895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089974, 0.036895, -0.995260,
		0.419903, -0.907559, 0.004317,
		-0.903098, -0.418301, -0.097149,
		37.980061, 32.252308, 45.473751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724819, 31.981031, 45.293983>,  <38.612232, 32.545120, 45.541756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724819, 31.981031, 45.293983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346783, 32.067249, 45.195728>,  <38.119961, 32.118980, 45.136776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.346783, 32.067249, 45.195728>,  <38.724819, 31.981031, 45.293983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346783, 32.067249, 45.195728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246563, -0.022999, -0.968854,
		-0.214480, -0.976223, -0.031409,
		-0.945095, 0.215544, -0.245634,
		38.063255, 32.131912, 45.122040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541470, 31.526722, 44.703426>,  <38.724819, 31.981031, 45.293983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541470, 31.526722, 44.703426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223293, 31.767101, 44.672096>,  <38.032387, 31.911329, 44.653297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.223293, 31.767101, 44.672096>,  <38.541470, 31.526722, 44.703426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223293, 31.767101, 44.672096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030622, -0.089215, -0.995541,
		-0.605256, -0.794294, 0.052563,
		-0.795442, 0.600948, -0.078321,
		37.984661, 31.947386, 44.648602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063297, 31.267262, 44.135773>,  <38.541470, 31.526722, 44.703426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063297, 31.267262, 44.135773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.965767, 31.652567, 44.180809>,  <37.907249, 31.883749, 44.207832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.965767, 31.652567, 44.180809>,  <38.063297, 31.267262, 44.135773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965767, 31.652567, 44.180809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015971, 0.120071, -0.992637,
		-0.969689, -0.240228, -0.044660,
		-0.243821, 0.963262, 0.112595,
		37.892620, 31.941545, 44.214588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710468, 31.323280, 43.614986>,  <38.063297, 31.267262, 44.135773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710468, 31.323280, 43.614986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.814598, 31.698553, 43.706238>,  <37.877075, 31.923717, 43.760990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.814598, 31.698553, 43.706238>,  <37.710468, 31.323280, 43.614986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814598, 31.698553, 43.706238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111938, 0.205359, -0.972264,
		-0.959011, 0.278640, -0.051559,
		0.260324, 0.938183, 0.228132,
		37.892696, 31.980007, 43.774677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258183, 31.803581, 43.250656>,  <37.710468, 31.323280, 43.614986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258183, 31.803581, 43.250656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598801, 31.997028, 43.331627>,  <37.803173, 32.113098, 43.380211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.598801, 31.997028, 43.331627>,  <37.258183, 31.803581, 43.250656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598801, 31.997028, 43.331627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031632, 0.338018, -0.940608,
		-0.523318, 0.807378, 0.272542,
		0.851550, 0.483616, 0.202430,
		37.854267, 32.142113, 43.392357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162304, 32.354649, 42.783005>,  <37.258183, 31.803581, 43.250656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162304, 32.354649, 42.783005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551033, 32.374977, 42.875069>,  <37.784271, 32.387173, 42.930305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551033, 32.374977, 42.875069>,  <37.162304, 32.354649, 42.783005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551033, 32.374977, 42.875069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192988, 0.389050, -0.900775,
		-0.135320, 0.919814, 0.368281,
		0.971825, 0.050819, 0.230159,
		37.842579, 32.390224, 42.944115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449352, 33.047974, 42.464077>,  <37.162304, 32.354649, 42.783005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449352, 33.047974, 42.464077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.764053, 32.808887, 42.525726>,  <37.952873, 32.665436, 42.562714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.764053, 32.808887, 42.525726>,  <37.449352, 33.047974, 42.464077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764053, 32.808887, 42.525726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307951, 0.163686, -0.937216,
		0.534964, 0.784818, 0.312848,
		0.786753, -0.597718, 0.154120,
		38.000080, 32.629574, 42.571960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002525, 33.382526, 42.247158>,  <37.449352, 33.047974, 42.464077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002525, 33.382526, 42.247158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138733, 33.006634, 42.234844>,  <38.220459, 32.781097, 42.227455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.138733, 33.006634, 42.234844>,  <38.002525, 33.382526, 42.247158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138733, 33.006634, 42.234844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453120, 0.192706, -0.870372,
		0.823848, 0.282433, 0.491432,
		0.340524, -0.939732, -0.030785,
		38.240891, 32.724712, 42.225609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.743980, 27.488617, 28.491261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592323, 27.316309, 28.818842>,  <26.501329, 27.212923, 29.015390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592323, 27.316309, 28.818842>,  <26.743980, 27.488617, 28.491261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592323, 27.316309, 28.818842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228301, 0.814127, 0.533925,
		-0.896733, 0.389402, -0.210324,
		-0.379142, -0.430771, 0.818955,
		26.478580, 27.187078, 29.064529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257414, 27.914810, 28.820696>,  <26.743980, 27.488617, 28.491261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257414, 27.914810, 28.820696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.396191, 27.683855, 29.116333>,  <26.479456, 27.545282, 29.293715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.396191, 27.683855, 29.116333>,  <26.257414, 27.914810, 28.820696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396191, 27.683855, 29.116333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186358, 0.814765, 0.549026,
		-0.919186, -0.052744, 0.390276,
		0.346941, -0.577388, 0.739091,
		26.500273, 27.510639, 29.338060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937588, 28.242599, 29.452654>,  <26.257414, 27.914810, 28.820696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937588, 28.242599, 29.452654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235741, 28.014910, 29.591444>,  <26.414633, 27.878296, 29.674719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.235741, 28.014910, 29.591444>,  <25.937588, 28.242599, 29.452654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235741, 28.014910, 29.591444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231966, 0.709425, 0.665513,
		-0.624979, -0.415574, 0.660832,
		0.745381, -0.569222, 0.346977,
		26.459354, 27.844143, 29.695538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875044, 28.375872, 30.225874>,  <25.937588, 28.242599, 29.452654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875044, 28.375872, 30.225874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228037, 28.204458, 30.148329>,  <26.439833, 28.101610, 30.101801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228037, 28.204458, 30.148329>,  <25.875044, 28.375872, 30.225874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228037, 28.204458, 30.148329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446599, 0.634133, 0.631209,
		-0.147557, -0.643611, 0.750994,
		0.882483, -0.428532, -0.193865,
		26.492783, 28.075899, 30.090170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100126, 28.195887, 30.867075>,  <25.875044, 28.375872, 30.225874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100126, 28.195887, 30.867075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405144, 28.215124, 30.609016>,  <26.588154, 28.226665, 30.454182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405144, 28.215124, 30.609016>,  <26.100126, 28.195887, 30.867075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405144, 28.215124, 30.609016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413854, 0.730222, 0.543600,
		0.497242, -0.681515, 0.536924,
		0.762545, 0.048092, -0.645145,
		26.633907, 28.229551, 30.415472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657949, 28.109404, 31.288990>,  <26.100126, 28.195887, 30.867075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657949, 28.109404, 31.288990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787622, 28.331642, 30.982731>,  <26.865427, 28.464985, 30.798975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.787622, 28.331642, 30.982731>,  <26.657949, 28.109404, 31.288990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787622, 28.331642, 30.982731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499653, 0.586690, 0.637292,
		0.803276, -0.589158, -0.087410,
		0.324183, 0.555597, -0.765649,
		26.884878, 28.498322, 30.753036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287924, 28.390625, 31.564617>,  <26.657949, 28.109404, 31.288990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287924, 28.390625, 31.564617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163544, 28.584114, 31.237368>,  <27.088917, 28.700207, 31.041018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.163544, 28.584114, 31.237368>,  <27.287924, 28.390625, 31.564617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163544, 28.584114, 31.237368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130624, 0.874377, 0.467335,
		0.941407, 0.038451, -0.335072,
		-0.310949, 0.483721, -0.818123,
		27.070259, 28.729231, 30.991930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808302, 28.804523, 31.417379>,  <27.287924, 28.390625, 31.564617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808302, 28.804523, 31.417379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473965, 28.955292, 31.257730>,  <27.273363, 29.045753, 31.161942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.473965, 28.955292, 31.257730>,  <27.808302, 28.804523, 31.417379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473965, 28.955292, 31.257730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077724, 0.800965, 0.593645,
		0.543440, 0.465172, -0.698776,
		-0.835842, 0.376922, -0.399121,
		27.223211, 29.068369, 31.137995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033720, 29.429434, 31.286146>,  <27.808302, 28.804523, 31.417379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033720, 29.429434, 31.286146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.636372, 29.473974, 31.274754>,  <27.397963, 29.500698, 31.267918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.636372, 29.473974, 31.274754>,  <28.033720, 29.429434, 31.286146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636372, 29.473974, 31.274754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098337, 0.951685, 0.290904,
		0.059498, 0.286176, -0.956328,
		-0.993373, 0.111351, -0.028482,
		27.338360, 29.507380, 31.266209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852938, 30.120733, 30.918108>,  <28.033720, 29.429434, 31.286146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852938, 30.120733, 30.918108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549570, 30.005220, 31.151827>,  <27.367550, 29.935913, 31.292059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549570, 30.005220, 31.151827>,  <27.852938, 30.120733, 30.918108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549570, 30.005220, 31.151827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022691, 0.907640, 0.419136,
		-0.651372, 0.304622, -0.694924,
		-0.758419, -0.288782, 0.584299,
		27.322044, 29.918585, 31.327116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448833, 30.679325, 30.899059>,  <27.852938, 30.120733, 30.918108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448833, 30.679325, 30.899059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.292877, 30.474472, 31.205185>,  <27.199303, 30.351561, 31.388861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.292877, 30.474472, 31.205185>,  <27.448833, 30.679325, 30.899059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292877, 30.474472, 31.205185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220453, 0.858828, 0.462401,
		-0.894084, 0.011570, -0.447750,
		-0.389890, -0.512133, 0.765314,
		27.175911, 30.320831, 31.434778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905420, 30.987106, 31.076941>,  <27.448833, 30.679325, 30.899059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905420, 30.987106, 31.076941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960340, 30.781254, 31.415480>,  <26.993292, 30.657742, 31.618603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960340, 30.781254, 31.415480>,  <26.905420, 30.987106, 31.076941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960340, 30.781254, 31.415480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253898, 0.807607, 0.532266,
		-0.957436, -0.287966, -0.019779,
		0.137301, -0.514633, 0.846346,
		27.001532, 30.626863, 31.669384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347528, 31.114300, 31.521383>,  <26.905420, 30.987106, 31.076941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347528, 31.114300, 31.521383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631458, 30.997488, 31.777779>,  <26.801817, 30.927401, 31.931616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.631458, 30.997488, 31.777779>,  <26.347528, 31.114300, 31.521383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631458, 30.997488, 31.777779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172241, 0.810421, 0.559956,
		-0.682994, -0.507876, 0.524958,
		0.709825, -0.292027, 0.640990,
		26.844406, 30.909880, 31.970076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028847, 31.252764, 32.114628>,  <26.347528, 31.114300, 31.521383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028847, 31.252764, 32.114628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.420031, 31.219173, 32.191090>,  <26.654741, 31.199018, 32.236965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.420031, 31.219173, 32.191090>,  <26.028847, 31.252764, 32.114628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420031, 31.219173, 32.191090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059306, 0.766094, 0.639987,
		-0.200183, -0.637219, 0.744230,
		0.977962, -0.083977, 0.191150,
		26.713419, 31.193981, 32.248436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117929, 31.202269, 32.853470>,  <26.028847, 31.252764, 32.114628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117929, 31.202269, 32.853470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488764, 31.306820, 32.745991>,  <26.711264, 31.369551, 32.681503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.488764, 31.306820, 32.745991>,  <26.117929, 31.202269, 32.853470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488764, 31.306820, 32.745991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053475, 0.617253, 0.784945,
		0.371020, -0.742079, 0.558268,
		0.927084, 0.261377, -0.268696,
		26.766890, 31.385233, 32.665382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611143, 31.084013, 33.487061>,  <26.117929, 31.202269, 32.853470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611143, 31.084013, 33.487061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779222, 31.360584, 33.251991>,  <26.880070, 31.526527, 33.110950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779222, 31.360584, 33.251991>,  <26.611143, 31.084013, 33.487061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779222, 31.360584, 33.251991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006661, 0.645255, 0.763938,
		0.907407, -0.324922, 0.266531,
		0.420200, 0.691427, -0.587674,
		26.905283, 31.568012, 33.075687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155567, 31.402012, 33.896305>,  <26.611143, 31.084013, 33.487061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155567, 31.402012, 33.896305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100464, 31.659630, 33.595310>,  <27.067402, 31.814199, 33.414715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100464, 31.659630, 33.595310>,  <27.155567, 31.402012, 33.896305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100464, 31.659630, 33.595310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142840, 0.764703, 0.628352,
		0.980112, -0.020925, -0.197339,
		-0.137757, 0.644044, -0.752483,
		27.059137, 31.852842, 33.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797045, 31.798193, 33.836597>,  <27.155567, 31.402012, 33.896305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797045, 31.798193, 33.836597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.487875, 32.009197, 33.695560>,  <27.302374, 32.135799, 33.610939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.487875, 32.009197, 33.695560>,  <27.797045, 31.798193, 33.836597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487875, 32.009197, 33.695560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197532, 0.728137, 0.656352,
		0.602968, 0.437662, -0.666995,
		-0.772924, 0.527512, -0.352590,
		27.255999, 32.167450, 33.589783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995943, 32.395363, 33.992142>,  <27.797045, 31.798193, 33.836597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995943, 32.395363, 33.992142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617853, 32.473965, 33.887886>,  <27.390999, 32.521126, 33.825333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617853, 32.473965, 33.887886>,  <27.995943, 32.395363, 33.992142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617853, 32.473965, 33.887886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033133, 0.736608, 0.675508,
		0.324728, 0.647144, -0.689751,
		-0.945227, 0.196503, -0.260639,
		27.334286, 32.532917, 33.809696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410479, 32.352142, 34.708096>,  <27.995943, 32.395363, 33.992142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410479, 32.352142, 34.708096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787052, 32.239227, 34.781868>,  <29.012997, 32.171478, 34.826130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787052, 32.239227, 34.781868>,  <28.410479, 32.352142, 34.708096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787052, 32.239227, 34.781868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260396, -0.956127, -0.134221,
		0.214229, 0.078335, -0.973637,
		0.941435, -0.282285, 0.184432,
		29.069483, 32.154541, 34.837196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608463, 31.873198, 34.250893>,  <28.410479, 32.352142, 34.708096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608463, 31.873198, 34.250893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843895, 31.796448, 34.565029>,  <28.985155, 31.750399, 34.753510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.843895, 31.796448, 34.565029>,  <28.608463, 31.873198, 34.250893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843895, 31.796448, 34.565029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188008, -0.977280, -0.097865,
		0.786273, -0.090048, -0.611282,
		0.588581, -0.191875, 0.785339,
		29.020470, 31.738886, 34.800632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191662, 31.468412, 33.971127>,  <28.608463, 31.873198, 34.250893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191662, 31.468412, 33.971127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159824, 31.409716, 34.365513>,  <29.140722, 31.374498, 34.602146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159824, 31.409716, 34.365513>,  <29.191662, 31.468412, 33.971127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159824, 31.409716, 34.365513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059090, -0.988061, -0.142283,
		0.995074, 0.046935, 0.087315,
		-0.079595, -0.146742, 0.985967,
		29.135946, 31.365692, 34.661304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696428, 30.933439, 34.063698>,  <29.191662, 31.468412, 33.971127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696428, 30.933439, 34.063698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.434771, 30.942169, 34.366119>,  <29.277775, 30.947407, 34.547573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.434771, 30.942169, 34.366119>,  <29.696428, 30.933439, 34.063698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434771, 30.942169, 34.366119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122161, -0.989509, -0.077133,
		0.746438, -0.142817, 0.649949,
		-0.654146, 0.021824, 0.756053,
		29.238527, 30.948717, 34.592934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758232, 30.249701, 34.394047>,  <29.696428, 30.933439, 34.063698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758232, 30.249701, 34.394047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408327, 30.370295, 34.545784>,  <29.198383, 30.442650, 34.636826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408327, 30.370295, 34.545784>,  <29.758232, 30.249701, 34.394047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408327, 30.370295, 34.545784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349675, -0.934718, -0.063480,
		0.335439, -0.188176, 0.923077,
		-0.874762, 0.301483, 0.379342,
		29.145899, 30.460739, 34.659588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637171, 29.856224, 35.109154>,  <29.758232, 30.249701, 34.394047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637171, 29.856224, 35.109154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293833, 29.974144, 34.941185>,  <29.087830, 30.044895, 34.840401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.293833, 29.974144, 34.941185>,  <29.637171, 29.856224, 35.109154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293833, 29.974144, 34.941185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345653, -0.937100, 0.048656,
		-0.379170, 0.186912, 0.906253,
		-0.858344, 0.294800, -0.419927,
		29.036329, 30.062584, 34.815208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110113, 29.472338, 35.537239>,  <29.637171, 29.856224, 35.109154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110113, 29.472338, 35.537239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926977, 29.592558, 35.202560>,  <28.817097, 29.664690, 35.001755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.926977, 29.592558, 35.202560>,  <29.110113, 29.472338, 35.537239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926977, 29.592558, 35.202560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535209, -0.844654, -0.010542,
		-0.709884, 0.442979, 0.547571,
		-0.457838, 0.300549, -0.836692,
		28.789625, 29.682722, 34.951553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312353, 29.232079, 35.531021>,  <29.110113, 29.472338, 35.537239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312353, 29.232079, 35.531021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376934, 29.312916, 35.144634>,  <28.415684, 29.361418, 34.912804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.376934, 29.312916, 35.144634>,  <28.312353, 29.232079, 35.531021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376934, 29.312916, 35.144634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577905, -0.774070, -0.258538,
		-0.799974, 0.599979, -0.008186,
		0.161454, 0.202093, -0.965966,
		28.425371, 29.373543, 34.854843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674643, 28.956223, 35.226288>,  <28.312353, 29.232079, 35.531021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674643, 28.956223, 35.226288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933783, 29.005507, 34.925594>,  <28.089268, 29.035078, 34.745178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933783, 29.005507, 34.925594>,  <27.674643, 28.956223, 35.226288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933783, 29.005507, 34.925594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449487, -0.734899, -0.507822,
		-0.615020, 0.666889, -0.420723,
		0.647851, 0.123211, -0.751737,
		28.128138, 29.042469, 34.700073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344282, 29.010410, 34.604675>,  <27.674643, 28.956223, 35.226288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344282, 29.010410, 34.604675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699442, 28.864115, 34.493057>,  <27.912539, 28.776337, 34.426086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699442, 28.864115, 34.493057>,  <27.344282, 29.010410, 34.604675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699442, 28.864115, 34.493057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456511, -0.625549, -0.632682,
		0.056839, 0.689147, -0.722389,
		0.887900, -0.365740, -0.279047,
		27.965813, 28.754393, 34.409344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240431, 29.004282, 33.883507>,  <27.344282, 29.010410, 34.604675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240431, 29.004282, 33.883507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538013, 28.758848, 33.989368>,  <27.716562, 28.611588, 34.052887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538013, 28.758848, 33.989368>,  <27.240431, 29.004282, 33.883507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538013, 28.758848, 33.989368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294030, -0.656239, -0.694908,
		0.600062, 0.439164, -0.668626,
		0.743957, -0.613584, 0.264656,
		27.761200, 28.574774, 34.068764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442596, 28.784451, 33.282696>,  <27.240431, 29.004282, 33.883507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442596, 28.784451, 33.282696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591681, 28.514717, 33.537682>,  <27.681131, 28.352877, 33.690674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591681, 28.514717, 33.537682>,  <27.442596, 28.784451, 33.282696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591681, 28.514717, 33.537682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229969, -0.732653, -0.640572,
		0.899001, 0.092150, -0.428143,
		0.372709, -0.674335, 0.637464,
		27.703493, 28.312416, 33.728920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767401, 28.331991, 32.920933>,  <27.442596, 28.784451, 33.282696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767401, 28.331991, 32.920933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728691, 28.118019, 33.256668>,  <27.705465, 27.989635, 33.458107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728691, 28.118019, 33.256668>,  <27.767401, 28.331991, 32.920933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728691, 28.118019, 33.256668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272630, -0.796795, -0.539250,
		0.957239, -0.281015, -0.068727,
		-0.096776, -0.534928, 0.839337,
		27.699657, 27.957541, 33.508469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051033, 27.701014, 32.771450>,  <27.767401, 28.331991, 32.920933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051033, 27.701014, 32.771450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.795040, 27.627113, 33.069790>,  <27.641445, 27.582773, 33.248795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.795040, 27.627113, 33.069790>,  <28.051033, 27.701014, 32.771450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795040, 27.627113, 33.069790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377908, -0.769476, -0.514871,
		0.669037, -0.611370, 0.422630,
		-0.639980, -0.184753, 0.745850,
		27.603046, 27.571688, 33.293545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064695, 27.003098, 32.811474>,  <28.051033, 27.701014, 32.771450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064695, 27.003098, 32.811474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.742653, 27.049721, 33.044102>,  <27.549427, 27.077696, 33.183678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.742653, 27.049721, 33.044102>,  <28.064695, 27.003098, 32.811474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742653, 27.049721, 33.044102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491957, -0.678959, -0.544971,
		0.331338, -0.724864, 0.603976,
		-0.805105, 0.116560, 0.581567,
		27.501122, 27.084688, 33.218571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810772, 26.376001, 32.915359>,  <28.064695, 27.003098, 32.811474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810772, 26.376001, 32.915359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483885, 26.590027, 33.001022>,  <27.287752, 26.718443, 33.052418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.483885, 26.590027, 33.001022>,  <27.810772, 26.376001, 32.915359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483885, 26.590027, 33.001022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576329, -0.758324, -0.304614,
		-0.000590, -0.372359, 0.928089,
		-0.817218, 0.535064, 0.214154,
		27.238720, 26.750546, 33.065269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244383, 25.980919, 33.472980>,  <27.810772, 26.376001, 32.915359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244383, 25.980919, 33.472980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065771, 26.250874, 33.237988>,  <26.958605, 26.412846, 33.096992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065771, 26.250874, 33.237988>,  <27.244383, 25.980919, 33.472980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065771, 26.250874, 33.237988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686945, -0.679285, -0.258220,
		-0.573341, 0.288269, 0.766930,
		-0.446527, 0.674887, -0.587487,
		26.931812, 26.453341, 33.061741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580105, 25.728184, 33.540367>,  <27.244383, 25.980919, 33.472980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580105, 25.728184, 33.540367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.576897, 25.972052, 33.223320>,  <26.574972, 26.118372, 33.033092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.576897, 25.972052, 33.223320>,  <26.580105, 25.728184, 33.540367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576897, 25.972052, 33.223320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734123, -0.541787, -0.409305,
		-0.678969, 0.578595, 0.451916,
		-0.008020, 0.609667, -0.792617,
		26.574492, 26.154951, 32.985535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882652, 25.750166, 33.308426>,  <26.580105, 25.728184, 33.540367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882652, 25.750166, 33.308426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.072353, 25.871504, 32.977833>,  <26.186174, 25.944307, 32.779476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.072353, 25.871504, 32.977833>,  <25.882652, 25.750166, 33.308426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072353, 25.871504, 32.977833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668635, -0.486595, -0.562274,
		-0.572724, 0.819272, -0.027941,
		0.474251, 0.303346, -0.826479,
		26.214628, 25.962507, 32.729889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313684, 25.881041, 32.844612>,  <25.882652, 25.750166, 33.308426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313684, 25.881041, 32.844612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648323, 25.833302, 32.630749>,  <25.849106, 25.804659, 32.502430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.648323, 25.833302, 32.630749>,  <25.313684, 25.881041, 32.844612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648323, 25.833302, 32.630749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519451, -0.482813, -0.705026,
		-0.173997, 0.867552, -0.465916,
		0.836598, -0.119348, -0.534659,
		25.899302, 25.797497, 32.470352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146681, 26.071671, 32.087051>,  <25.313684, 25.881041, 32.844612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146681, 26.071671, 32.087051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.484240, 25.860252, 32.050224>,  <25.686775, 25.733400, 32.028126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.484240, 25.860252, 32.050224>,  <25.146681, 26.071671, 32.087051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484240, 25.860252, 32.050224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361674, -0.433696, -0.825288,
		0.396273, 0.729757, -0.557156,
		0.843896, -0.528548, -0.092072,
		25.737408, 25.701689, 32.022602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219530, 26.090836, 31.394901>,  <25.146681, 26.071671, 32.087051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219530, 26.090836, 31.394901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.462317, 25.795485, 31.512474>,  <25.607988, 25.618275, 31.583017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.462317, 25.795485, 31.512474>,  <25.219530, 26.090836, 31.394901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462317, 25.795485, 31.512474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397135, -0.602162, -0.692594,
		0.688389, 0.303649, -0.658725,
		0.606964, -0.738376, 0.293932,
		25.644405, 25.573973, 31.600653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309137, 25.781076, 30.734684>,  <25.219530, 26.090836, 31.394901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309137, 25.781076, 30.734684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.397467, 25.553427, 31.051502>,  <25.450464, 25.416838, 31.241592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.397467, 25.553427, 31.051502>,  <25.309137, 25.781076, 30.734684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397467, 25.553427, 31.051502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502732, -0.762316, -0.407596,
		0.835761, -0.308179, -0.454455,
		0.220826, -0.569122, 0.792046,
		25.463715, 25.382690, 31.289116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.127579, 28.355370, 45.538876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768539, 28.341557, 45.714661>,  <39.553116, 28.333269, 45.820129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768539, 28.341557, 45.714661>,  <40.127579, 28.355370, 45.538876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768539, 28.341557, 45.714661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404639, 0.330958, 0.852487,
		-0.174882, 0.943013, -0.283093,
		-0.897599, -0.034535, 0.439458,
		39.499260, 28.331196, 45.846497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157536, 28.852264, 46.057590>,  <40.127579, 28.355370, 45.538876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157536, 28.852264, 46.057590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853653, 28.617931, 46.170475>,  <39.671322, 28.477331, 46.238205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853653, 28.617931, 46.170475>,  <40.157536, 28.852264, 46.057590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853653, 28.617931, 46.170475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194628, 0.209248, 0.958298,
		-0.620457, 0.782952, -0.044948,
		-0.759706, -0.585834, 0.282214,
		39.625740, 28.442181, 46.255138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125687, 29.097525, 46.668255>,  <40.157536, 28.852264, 46.057590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125687, 29.097525, 46.668255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.894714, 28.771017, 46.674980>,  <39.756130, 28.575113, 46.679016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.894714, 28.771017, 46.674980>,  <40.125687, 29.097525, 46.668255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894714, 28.771017, 46.674980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112038, -0.058825, 0.991961,
		-0.808716, 0.574673, 0.125420,
		-0.577431, -0.816267, 0.016812,
		39.721485, 28.526136, 46.680023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584850, 29.137793, 47.191425>,  <40.125687, 29.097525, 46.668255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584850, 29.137793, 47.191425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606762, 28.742582, 47.133736>,  <39.619907, 28.505455, 47.099121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606762, 28.742582, 47.133736>,  <39.584850, 29.137793, 47.191425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606762, 28.742582, 47.133736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129686, -0.136179, 0.982159,
		-0.990041, -0.072507, 0.120673,
		0.054780, -0.988027, -0.144226,
		39.623196, 28.446175, 47.090469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252033, 28.941711, 47.742153>,  <39.584850, 29.137793, 47.191425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252033, 28.941711, 47.742153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.445038, 28.614775, 47.616207>,  <39.560841, 28.418613, 47.540638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.445038, 28.614775, 47.616207>,  <39.252033, 28.941711, 47.742153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445038, 28.614775, 47.616207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216181, -0.237230, 0.947094,
		-0.848795, -0.525048, 0.062228,
		0.482507, -0.817341, -0.314865,
		39.589790, 28.369572, 47.521748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037216, 28.409286, 48.085804>,  <39.252033, 28.941711, 47.742153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037216, 28.409286, 48.085804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399353, 28.283745, 47.971363>,  <39.616634, 28.208420, 47.902699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399353, 28.283745, 47.971363>,  <39.037216, 28.409286, 48.085804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399353, 28.283745, 47.971363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234984, -0.190948, 0.953059,
		-0.353755, -0.930071, -0.099122,
		0.905340, -0.313857, -0.286101,
		39.670956, 28.189589, 47.885532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059170, 27.798719, 48.362911>,  <39.037216, 28.409286, 48.085804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059170, 27.798719, 48.362911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.438503, 27.899889, 48.286285>,  <39.666103, 27.960590, 48.240311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.438503, 27.899889, 48.286285>,  <39.059170, 27.798719, 48.362911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438503, 27.899889, 48.286285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237783, -0.166803, 0.956889,
		0.210065, -0.952999, -0.218325,
		0.948331, 0.252922, -0.191567,
		39.723003, 27.975765, 48.228817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527527, 27.230198, 48.712009>,  <39.059170, 27.798719, 48.362911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527527, 27.230198, 48.712009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.731815, 27.570616, 48.663216>,  <39.854389, 27.774866, 48.633942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.731815, 27.570616, 48.663216>,  <39.527527, 27.230198, 48.712009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731815, 27.570616, 48.663216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366894, -0.087435, 0.926144,
		0.777527, -0.517759, -0.356899,
		0.510725, 0.851047, -0.121980,
		39.885033, 27.825930, 48.626621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264015, 27.159904, 49.014210>,  <39.527527, 27.230198, 48.712009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264015, 27.159904, 49.014210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178032, 27.550455, 49.022999>,  <40.126442, 27.784784, 49.028271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178032, 27.550455, 49.022999>,  <40.264015, 27.159904, 49.014210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178032, 27.550455, 49.022999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358350, 0.057925, 0.931789,
		0.908503, 0.208173, -0.362335,
		-0.214961, 0.976375, 0.021973,
		40.113544, 27.843369, 49.029591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811729, 27.470253, 49.414497>,  <40.264015, 27.159904, 49.014210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811729, 27.470253, 49.414497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.539345, 27.762411, 49.435730>,  <40.375916, 27.937706, 49.448471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.539345, 27.762411, 49.435730>,  <40.811729, 27.470253, 49.414497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539345, 27.762411, 49.435730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394924, 0.305215, 0.866533,
		0.616709, 0.611038, -0.496289,
		-0.680959, 0.730395, 0.053085,
		40.335056, 27.981529, 49.451656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136581, 28.099056, 49.608818>,  <40.811729, 27.470253, 49.414497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136581, 28.099056, 49.608818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753212, 28.162203, 49.703892>,  <40.523190, 28.200090, 49.760937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.753212, 28.162203, 49.703892>,  <41.136581, 28.099056, 49.608818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753212, 28.162203, 49.703892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274938, 0.288109, 0.917280,
		0.076327, 0.944495, -0.319535,
		-0.958427, 0.157865, 0.237687,
		40.465683, 28.209562, 49.775196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151558, 28.683777, 50.061085>,  <41.136581, 28.099056, 49.608818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151558, 28.683777, 50.061085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783558, 28.535259, 50.111267>,  <40.562756, 28.446150, 50.141376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783558, 28.535259, 50.111267>,  <41.151558, 28.683777, 50.061085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783558, 28.535259, 50.111267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024989, 0.263879, 0.964232,
		-0.391117, 0.890230, -0.233490,
		-0.920002, -0.371293, 0.125454,
		40.507557, 28.423872, 50.148903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555199, 29.240294, 50.257412>,  <41.151558, 28.683777, 50.061085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555199, 29.240294, 50.257412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.524673, 28.865084, 50.392639>,  <40.506359, 28.639957, 50.473774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.524673, 28.865084, 50.392639>,  <40.555199, 29.240294, 50.257412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524673, 28.865084, 50.392639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238011, 0.312117, 0.919747,
		-0.968260, 0.150653, 0.199441,
		-0.076313, -0.938023, 0.338067,
		40.501778, 28.583677, 50.494061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036827, 29.214254, 50.912376>,  <40.555199, 29.240294, 50.257412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036827, 29.214254, 50.912376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.342693, 28.956585, 50.905132>,  <40.526215, 28.801983, 50.900784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.342693, 28.956585, 50.905132>,  <40.036827, 29.214254, 50.912376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342693, 28.956585, 50.905132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239597, 0.258096, 0.935938,
		-0.598233, -0.720017, 0.351699,
		0.764664, -0.644175, -0.018112,
		40.572094, 28.763332, 50.899700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663319, 29.427505, 51.519665>,  <40.036827, 29.214254, 50.912376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663319, 29.427505, 51.519665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343899, 29.472977, 51.756104>,  <39.152248, 29.500259, 51.897968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343899, 29.472977, 51.756104>,  <39.663319, 29.427505, 51.519665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343899, 29.472977, 51.756104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452945, 0.533277, -0.714463,
		-0.396441, -0.838268, -0.374355,
		-0.798546, 0.113680, 0.591102,
		39.104336, 29.507080, 51.933434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094341, 29.157696, 51.149334>,  <39.663319, 29.427505, 51.519665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094341, 29.157696, 51.149334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937847, 29.414335, 51.413239>,  <38.843952, 29.568319, 51.571583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937847, 29.414335, 51.413239>,  <39.094341, 29.157696, 51.149334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937847, 29.414335, 51.413239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421798, 0.512161, -0.748183,
		-0.817937, -0.571003, 0.070249,
		-0.391235, 0.641597, 0.659764,
		38.820477, 29.606815, 51.611168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401306, 29.207399, 50.943947>,  <39.094341, 29.157696, 51.149334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401306, 29.207399, 50.943947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457790, 29.530203, 51.173309>,  <38.491680, 29.723885, 51.310928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.457790, 29.530203, 51.173309>,  <38.401306, 29.207399, 50.943947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457790, 29.530203, 51.173309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418752, 0.573534, -0.704064,
		-0.897054, -0.140694, 0.418925,
		0.141210, 0.807009, 0.573407,
		38.500153, 29.772306, 51.345333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767788, 29.598053, 50.979340>,  <38.401306, 29.207399, 50.943947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767788, 29.598053, 50.979340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027328, 29.894304, 51.049145>,  <38.183052, 30.072056, 51.091026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027328, 29.894304, 51.049145>,  <37.767788, 29.598053, 50.979340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027328, 29.894304, 51.049145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561425, 0.620788, -0.547198,
		-0.513604, 0.257078, 0.818609,
		0.648855, 0.740631, 0.174509,
		38.221985, 30.116493, 51.101498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399281, 30.213545, 50.860699>,  <37.767788, 29.598053, 50.979340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399281, 30.213545, 50.860699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782726, 30.327280, 50.854889>,  <38.012794, 30.395521, 50.851402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.782726, 30.327280, 50.854889>,  <37.399281, 30.213545, 50.860699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782726, 30.327280, 50.854889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235522, 0.763305, -0.601577,
		-0.159963, 0.580102, 0.798682,
		0.958614, 0.284338, -0.014526,
		38.070309, 30.412580, 50.850533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349094, 30.963497, 50.706081>,  <37.399281, 30.213545, 50.860699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349094, 30.963497, 50.706081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740253, 30.896154, 50.656483>,  <37.974949, 30.855749, 50.626724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.740253, 30.896154, 50.656483>,  <37.349094, 30.963497, 50.706081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740253, 30.896154, 50.656483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038943, 0.729300, -0.683085,
		0.205431, 0.663158, 0.719736,
		0.977897, -0.168355, -0.123995,
		38.033623, 30.845648, 50.619286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593666, 31.502155, 50.904671>,  <37.349094, 30.963497, 50.706081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593666, 31.502155, 50.904671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834457, 31.308514, 50.650658>,  <37.978931, 31.192329, 50.498249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.834457, 31.308514, 50.650658>,  <37.593666, 31.502155, 50.904671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834457, 31.308514, 50.650658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259488, 0.633512, -0.728923,
		0.755176, 0.603578, 0.255740,
		0.601976, -0.484104, -0.635034,
		38.015049, 31.163282, 50.460148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051720, 32.095627, 50.524960>,  <37.593666, 31.502155, 50.904671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051720, 32.095627, 50.524960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036362, 31.763445, 50.302654>,  <38.027149, 31.564137, 50.169270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036362, 31.763445, 50.302654>,  <38.051720, 32.095627, 50.524960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036362, 31.763445, 50.302654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392142, 0.524083, -0.756018,
		0.919103, 0.188915, -0.345775,
		-0.038392, -0.830451, -0.555768,
		38.024845, 31.514309, 50.135925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267265, 32.316654, 49.830189>,  <38.051720, 32.095627, 50.524960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267265, 32.316654, 49.830189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093853, 31.961142, 49.770695>,  <37.989807, 31.747835, 49.734997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093853, 31.961142, 49.770695>,  <38.267265, 32.316654, 49.830189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093853, 31.961142, 49.770695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245409, 0.275261, -0.929519,
		0.867079, -0.366474, -0.337449,
		-0.433531, -0.888779, -0.148737,
		37.963795, 31.694508, 49.726074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625473, 31.996893, 49.175629>,  <38.267265, 32.316654, 49.830189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625473, 31.996893, 49.175629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278496, 31.804213, 49.225445>,  <38.070309, 31.688604, 49.255333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278496, 31.804213, 49.225445>,  <38.625473, 31.996893, 49.175629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278496, 31.804213, 49.225445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292130, 0.290481, -0.911197,
		0.402748, -0.826792, -0.392695,
		-0.867441, -0.481701, 0.124540,
		38.018265, 31.659702, 49.262806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627811, 31.338654, 48.800381>,  <38.625473, 31.996893, 49.175629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627811, 31.338654, 48.800381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261002, 31.491470, 48.846188>,  <38.040916, 31.583160, 48.873672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.261002, 31.491470, 48.846188>,  <38.627811, 31.338654, 48.800381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261002, 31.491470, 48.846188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079815, 0.105533, -0.991207,
		-0.390767, -0.918100, -0.066284,
		-0.917023, 0.382041, 0.114517,
		37.985893, 31.606083, 48.880543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248383, 31.081469, 48.236355>,  <38.627811, 31.338654, 48.800381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248383, 31.081469, 48.236355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.985416, 31.363056, 48.343861>,  <37.827637, 31.532009, 48.408363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.985416, 31.363056, 48.343861>,  <38.248383, 31.081469, 48.236355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985416, 31.363056, 48.343861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224665, 0.157330, -0.961651,
		-0.719257, -0.692585, 0.054726,
		-0.657415, 0.703970, 0.268760,
		37.788193, 31.574247, 48.424488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643303, 30.827938, 47.998272>,  <38.248383, 31.081469, 48.236355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643303, 30.827938, 47.998272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627102, 31.225670, 48.037594>,  <37.617382, 31.464310, 48.061188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627102, 31.225670, 48.037594>,  <37.643303, 30.827938, 47.998272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627102, 31.225670, 48.037594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328790, 0.079645, -0.941038,
		-0.943534, -0.070438, 0.323700,
		-0.040504, 0.994331, 0.098308,
		37.614952, 31.523970, 48.067085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979656, 30.975685, 47.716011>,  <37.643303, 30.827938, 47.998272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979656, 30.975685, 47.716011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192432, 31.313824, 47.735737>,  <37.320099, 31.516706, 47.747574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192432, 31.313824, 47.735737>,  <36.979656, 30.975685, 47.716011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192432, 31.313824, 47.735737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132758, 0.140778, -0.981100,
		-0.836311, 0.515338, 0.187111,
		0.531939, 0.845345, 0.049319,
		37.352013, 31.567427, 47.750534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348049, 30.991617, 48.244263>,  <36.979656, 30.975685, 47.716011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348049, 30.991617, 48.244263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963558, 31.082644, 48.181969>,  <35.732864, 31.137259, 48.144592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.963558, 31.082644, 48.181969>,  <36.348049, 30.991617, 48.244263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963558, 31.082644, 48.181969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232741, -0.366637, 0.900783,
		0.147887, 0.902104, 0.405385,
		-0.961229, 0.227564, -0.155736,
		35.675190, 31.150913, 48.135246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126804, 31.445230, 48.775169>,  <36.348049, 30.991617, 48.244263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126804, 31.445230, 48.775169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808979, 31.241148, 48.643494>,  <35.618286, 31.118698, 48.564487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808979, 31.241148, 48.643494>,  <36.126804, 31.445230, 48.775169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808979, 31.241148, 48.643494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198414, -0.294214, 0.934917,
		-0.573853, 0.808162, 0.132538,
		-0.794559, -0.510208, -0.329186,
		35.570610, 31.088085, 48.544739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595997, 31.603344, 49.235909>,  <36.126804, 31.445230, 48.775169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595997, 31.603344, 49.235909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459621, 31.259970, 49.082623>,  <35.377796, 31.053946, 48.990650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459621, 31.259970, 49.082623>,  <35.595997, 31.603344, 49.235909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459621, 31.259970, 49.082623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125638, -0.362376, 0.923525,
		-0.931654, 0.363008, 0.015695,
		-0.340934, -0.858434, -0.383217,
		35.357342, 31.002439, 48.967659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122166, 31.458729, 49.631241>,  <35.595997, 31.603344, 49.235909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122166, 31.458729, 49.631241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156574, 31.102154, 49.453278>,  <35.177219, 30.888208, 49.346500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156574, 31.102154, 49.453278>,  <35.122166, 31.458729, 49.631241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156574, 31.102154, 49.453278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096779, -0.451925, 0.886791,
		-0.991581, -0.033227, -0.125148,
		0.086023, -0.891437, -0.444905,
		35.182381, 30.834723, 49.319805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657211, 31.081339, 50.089191>,  <35.122166, 31.458729, 49.631241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657211, 31.081339, 50.089191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875038, 30.829508, 49.867535>,  <35.005733, 30.678410, 49.734539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875038, 30.829508, 49.867535>,  <34.657211, 31.081339, 50.089191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875038, 30.829508, 49.867535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028839, -0.646260, 0.762572,
		-0.838221, -0.431253, -0.333776,
		0.544568, -0.629578, -0.554146,
		35.038410, 30.640635, 49.701290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366135, 30.417236, 50.222004>,  <34.657211, 31.081339, 50.089191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366135, 30.417236, 50.222004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.721649, 30.313940, 50.070545>,  <34.934956, 30.251963, 49.979668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.721649, 30.313940, 50.070545>,  <34.366135, 30.417236, 50.222004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721649, 30.313940, 50.070545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214211, -0.496318, 0.841298,
		-0.405184, -0.828844, -0.385803,
		0.888785, -0.258237, -0.378648,
		34.988285, 30.236469, 49.956951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361805, 29.663582, 50.306435>,  <34.366135, 30.417236, 50.222004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361805, 29.663582, 50.306435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726864, 29.826986, 50.300858>,  <34.945900, 29.925030, 50.297512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726864, 29.826986, 50.300858>,  <34.361805, 29.663582, 50.306435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726864, 29.826986, 50.300858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181989, -0.375567, 0.908752,
		0.366001, -0.831906, -0.417104,
		0.912646, 0.408512, -0.013940,
		35.000656, 29.949539, 50.296677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403423, 28.969727, 50.031708>,  <34.361805, 29.663582, 50.306435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403423, 28.969727, 50.031708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136463, 28.671957, 50.023609>,  <33.976288, 28.493296, 50.018749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136463, 28.671957, 50.023609>,  <34.403423, 28.969727, 50.031708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136463, 28.671957, 50.023609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150761, 0.161681, -0.975259,
		0.729277, -0.647838, -0.220136,
		-0.667402, -0.744422, -0.020242,
		33.936241, 28.448631, 50.017536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558434, 28.634115, 49.529137>,  <34.403423, 28.969727, 50.031708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558434, 28.634115, 49.529137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206593, 28.444593, 49.546177>,  <33.995487, 28.330881, 49.556400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206593, 28.444593, 49.546177>,  <34.558434, 28.634115, 49.529137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206593, 28.444593, 49.546177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011744, -0.067894, -0.997624,
		0.475571, -0.878009, 0.054155,
		-0.879600, -0.473804, 0.042600,
		33.942711, 28.302452, 49.558956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526752, 28.050833, 48.958336>,  <34.558434, 28.634115, 49.529137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526752, 28.050833, 48.958336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144119, 28.122419, 49.050354>,  <33.914539, 28.165371, 49.105564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.144119, 28.122419, 49.050354>,  <34.526752, 28.050833, 48.958336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144119, 28.122419, 49.050354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257200, -0.147018, -0.955109,
		-0.137078, -0.972815, 0.186658,
		-0.956586, 0.178933, 0.230055,
		33.857143, 28.176109, 49.119370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068146, 27.542105, 48.590523>,  <34.526752, 28.050833, 48.958336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068146, 27.542105, 48.590523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806049, 27.822153, 48.704006>,  <33.648792, 27.990183, 48.772099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.806049, 27.822153, 48.704006>,  <34.068146, 27.542105, 48.590523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806049, 27.822153, 48.704006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386805, 0.011650, -0.922088,
		-0.648878, -0.713930, 0.263177,
		-0.655240, 0.700121, 0.283711,
		33.609478, 28.032188, 48.789120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471092, 27.276520, 48.264313>,  <34.068146, 27.542105, 48.590523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471092, 27.276520, 48.264313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409203, 27.660606, 48.357300>,  <33.372066, 27.891058, 48.413094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.409203, 27.660606, 48.357300>,  <33.471092, 27.276520, 48.264313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409203, 27.660606, 48.357300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309827, 0.176274, -0.934310,
		-0.938119, -0.216591, 0.270226,
		-0.154729, 0.960217, 0.232471,
		33.362785, 27.948671, 48.427040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669079, 27.523460, 48.175606>,  <33.471092, 27.276520, 48.264313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669079, 27.523460, 48.175606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908863, 27.841991, 48.143326>,  <33.052734, 28.033110, 48.123959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908863, 27.841991, 48.143326>,  <32.669079, 27.523460, 48.175606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908863, 27.841991, 48.143326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441802, 0.245128, -0.862974,
		-0.667429, 0.552968, 0.498763,
		0.599458, 0.796328, -0.080697,
		33.088699, 28.080891, 48.119118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211536, 28.095165, 47.932583>,  <32.669079, 27.523460, 48.175606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211536, 28.095165, 47.932583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581963, 28.229904, 47.864548>,  <32.804218, 28.310747, 47.823727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581963, 28.229904, 47.864548>,  <32.211536, 28.095165, 47.932583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581963, 28.229904, 47.864548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282786, 0.321037, -0.903862,
		-0.249856, 0.885139, 0.392557,
		0.926069, 0.336846, -0.170092,
		32.859783, 28.330957, 47.813519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.317307, 27.564882, 50.015099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.686459, 27.539812, 49.863121>,  <37.907951, 27.524771, 49.771935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.686459, 27.539812, 49.863121>,  <37.317307, 27.564882, 50.015099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686459, 27.539812, 49.863121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379060, -0.321591, -0.867694,
		-0.067803, 0.944802, -0.320549,
		0.922885, -0.062675, -0.379941,
		37.963326, 27.521009, 49.749138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323513, 27.637903, 49.272713>,  <37.317307, 27.564882, 50.015099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323513, 27.637903, 49.272713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.702255, 27.513990, 49.307350>,  <37.929501, 27.439644, 49.328133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.702255, 27.513990, 49.307350>,  <37.323513, 27.637903, 49.272713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702255, 27.513990, 49.307350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077826, -0.481854, -0.872789,
		0.312099, 0.819666, -0.480355,
		0.946856, -0.309781, 0.086595,
		37.986313, 27.421057, 49.333328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694973, 27.854004, 48.642361>,  <37.323513, 27.637903, 49.272713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694973, 27.854004, 48.642361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.903557, 27.541914, 48.780537>,  <38.028706, 27.354660, 48.863441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.903557, 27.541914, 48.780537>,  <37.694973, 27.854004, 48.642361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903557, 27.541914, 48.780537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053264, -0.433816, -0.899426,
		0.851613, 0.450614, -0.267775,
		0.521459, -0.780225, 0.345441,
		38.059994, 27.307846, 48.884171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348476, 27.731733, 48.128971>,  <37.694973, 27.854004, 48.642361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348476, 27.731733, 48.128971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.247139, 27.393976, 48.317787>,  <38.186337, 27.191322, 48.431076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.247139, 27.393976, 48.317787>,  <38.348476, 27.731733, 48.128971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247139, 27.393976, 48.317787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134597, -0.452443, -0.881578,
		0.957966, -0.286880, 0.000973,
		-0.253347, -0.844391, 0.472038,
		38.171135, 27.140659, 48.459400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756889, 27.201902, 47.888496>,  <38.348476, 27.731733, 48.128971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756889, 27.201902, 47.888496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424820, 27.013622, 48.007996>,  <38.225578, 26.900654, 48.079697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.424820, 27.013622, 48.007996>,  <38.756889, 27.201902, 47.888496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424820, 27.013622, 48.007996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094781, -0.408905, -0.907641,
		0.549386, -0.781817, 0.294850,
		-0.830175, -0.470700, 0.298748,
		38.175766, 26.872412, 48.097622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951725, 26.545504, 47.622337>,  <38.756889, 27.201902, 47.888496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951725, 26.545504, 47.622337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.567783, 26.510748, 47.729015>,  <38.337418, 26.489895, 47.793022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.567783, 26.510748, 47.729015>,  <38.951725, 26.545504, 47.622337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567783, 26.510748, 47.729015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132164, -0.698543, -0.703257,
		0.247401, -0.710274, 0.659018,
		-0.959857, -0.086888, 0.266693,
		38.279827, 26.484682, 47.809025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702579, 25.788160, 47.569752>,  <38.951725, 26.545504, 47.622337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702579, 25.788160, 47.569752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.379868, 26.023888, 47.552753>,  <38.186241, 26.165325, 47.542553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.379868, 26.023888, 47.552753>,  <38.702579, 25.788160, 47.569752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379868, 26.023888, 47.552753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348548, -0.532771, -0.771148,
		-0.477091, -0.607338, 0.635236,
		-0.806783, 0.589318, -0.042494,
		38.137833, 26.200684, 47.540005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126171, 25.303331, 47.423035>,  <38.702579, 25.788160, 47.569752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126171, 25.303331, 47.423035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.950394, 25.644236, 47.309513>,  <37.844929, 25.848778, 47.241402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.950394, 25.644236, 47.309513>,  <38.126171, 25.303331, 47.423035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950394, 25.644236, 47.309513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246329, -0.418163, -0.874335,
		-0.863837, -0.314309, 0.393695,
		-0.439440, 0.852261, -0.283801,
		37.818562, 25.899914, 47.224373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610023, 25.030739, 46.990044>,  <38.126171, 25.303331, 47.423035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610023, 25.030739, 46.990044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.652905, 25.417522, 46.897522>,  <37.678635, 25.649591, 46.842010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.652905, 25.417522, 46.897522>,  <37.610023, 25.030739, 46.990044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652905, 25.417522, 46.897522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259431, -0.197381, -0.945377,
		-0.959793, 0.161356, 0.229698,
		0.107204, 0.966957, -0.231306,
		37.685066, 25.707609, 46.828129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120041, 25.126608, 46.577213>,  <37.610023, 25.030739, 46.990044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120041, 25.126608, 46.577213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335415, 25.444233, 46.464390>,  <37.464638, 25.634808, 46.396698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.335415, 25.444233, 46.464390>,  <37.120041, 25.126608, 46.577213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335415, 25.444233, 46.464390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369925, -0.078007, -0.925781,
		-0.757131, 0.602809, 0.251742,
		0.538432, 0.794063, -0.282055,
		37.496944, 25.682451, 46.379772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611599, 25.607315, 46.345772>,  <37.120041, 25.126608, 46.577213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611599, 25.607315, 46.345772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.963436, 25.690477, 46.174618>,  <37.174538, 25.740376, 46.071926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.963436, 25.690477, 46.174618>,  <36.611599, 25.607315, 46.345772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963436, 25.690477, 46.174618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431137, -0.031771, -0.901727,
		-0.201070, 0.977632, 0.061690,
		0.879597, 0.207907, -0.427882,
		37.227314, 25.752850, 46.046253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467819, 25.917135, 45.742317>,  <36.611599, 25.607315, 46.345772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467819, 25.917135, 45.742317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856365, 25.858082, 45.667858>,  <37.089493, 25.822651, 45.623184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856365, 25.858082, 45.667858>,  <36.467819, 25.917135, 45.742317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856365, 25.858082, 45.667858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187266, 0.006401, -0.982288,
		0.146208, 0.989022, -0.021429,
		0.971367, -0.147632, -0.186146,
		37.147774, 25.813793, 45.612015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071724, 26.541773, 45.856834>,  <36.467819, 25.917135, 45.742317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071724, 26.541773, 45.856834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.676994, 26.477383, 45.850315>,  <35.440155, 26.438749, 45.846405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.676994, 26.477383, 45.850315>,  <36.071724, 26.541773, 45.856834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676994, 26.477383, 45.850315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003277, -0.080828, 0.996723,
		-0.161763, 0.983643, 0.079236,
		-0.986824, -0.160973, -0.016298,
		35.380947, 26.429090, 45.845425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712524, 27.002270, 46.353985>,  <36.071724, 26.541773, 45.856834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712524, 27.002270, 46.353985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.499561, 26.665867, 46.315514>,  <35.371784, 26.464025, 46.292431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.499561, 26.665867, 46.315514>,  <35.712524, 27.002270, 46.353985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499561, 26.665867, 46.315514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050219, -0.144800, 0.988186,
		-0.844998, 0.521287, 0.119327,
		-0.532407, -0.841007, -0.096177,
		35.339840, 26.413565, 46.286659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233742, 27.041628, 46.893490>,  <35.712524, 27.002270, 46.353985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233742, 27.041628, 46.893490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246002, 26.656641, 46.785622>,  <35.253357, 26.425650, 46.720901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.246002, 26.656641, 46.785622>,  <35.233742, 27.041628, 46.893490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246002, 26.656641, 46.785622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004891, -0.269938, 0.962865,
		-0.999518, -0.028192, -0.012981,
		0.030649, -0.962465, -0.269670,
		35.255196, 26.367901, 46.704720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768322, 26.734282, 47.284393>,  <35.233742, 27.041628, 46.893490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768322, 26.734282, 47.284393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.992741, 26.421925, 47.174534>,  <35.127392, 26.234510, 47.108616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.992741, 26.421925, 47.174534>,  <34.768322, 26.734282, 47.284393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992741, 26.421925, 47.174534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249527, -0.156818, 0.955586,
		-0.789281, -0.604660, 0.106872,
		0.561045, -0.780893, -0.274652,
		35.161053, 26.187656, 47.092136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487606, 26.141727, 47.681454>,  <34.768322, 26.734282, 47.284393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487606, 26.141727, 47.681454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.860683, 26.038029, 47.581158>,  <35.084530, 25.975809, 47.520981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.860683, 26.038029, 47.581158>,  <34.487606, 26.141727, 47.681454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860683, 26.038029, 47.581158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151064, -0.350486, 0.924305,
		-0.327492, -0.899976, -0.287737,
		0.932700, -0.259235, -0.250735,
		35.140491, 25.960255, 47.505936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585258, 25.445690, 47.982208>,  <34.487606, 26.141727, 47.681454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585258, 25.445690, 47.982208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.956390, 25.566227, 47.894283>,  <35.179070, 25.638550, 47.841530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.956390, 25.566227, 47.894283>,  <34.585258, 25.445690, 47.982208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956390, 25.566227, 47.894283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266524, -0.123355, 0.955902,
		0.260940, -0.945503, -0.194768,
		0.927834, 0.301344, -0.219811,
		35.234741, 25.656630, 47.828339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059090, 24.925995, 48.145988>,  <34.585258, 25.445690, 47.982208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059090, 24.925995, 48.145988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283154, 25.257240, 48.154442>,  <35.417591, 25.455988, 48.159515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283154, 25.257240, 48.154442>,  <35.059090, 24.925995, 48.145988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283154, 25.257240, 48.154442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321403, -0.240780, 0.915819,
		0.763493, -0.506212, -0.401034,
		0.560160, 0.828115, 0.021136,
		35.451202, 25.505674, 48.160782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710693, 24.703239, 48.438419>,  <35.059090, 24.925995, 48.145988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710693, 24.703239, 48.438419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695740, 25.100342, 48.484100>,  <35.686768, 25.338602, 48.511509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.695740, 25.100342, 48.484100>,  <35.710693, 24.703239, 48.438419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695740, 25.100342, 48.484100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279626, -0.099322, 0.954958,
		0.959381, 0.067633, -0.273887,
		-0.037383, 0.992754, 0.114200,
		35.684525, 25.398169, 48.518360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232250, 24.765047, 48.836483>,  <35.710693, 24.703239, 48.438419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232250, 24.765047, 48.836483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.037571, 25.113136, 48.867031>,  <35.920765, 25.321991, 48.885361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.037571, 25.113136, 48.867031>,  <36.232250, 24.765047, 48.836483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037571, 25.113136, 48.867031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273141, 0.068560, 0.959528,
		0.829770, 0.487861, -0.271062,
		-0.486700, 0.870225, 0.076366,
		35.891560, 25.374205, 48.889942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618927, 25.148565, 49.210308>,  <36.232250, 24.765047, 48.836483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618927, 25.148565, 49.210308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261765, 25.321615, 49.260204>,  <36.047466, 25.425446, 49.290142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.261765, 25.321615, 49.260204>,  <36.618927, 25.148565, 49.210308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261765, 25.321615, 49.260204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189364, 0.109485, 0.975784,
		0.408493, 0.894901, -0.179683,
		-0.892903, 0.432626, 0.124738,
		35.993893, 25.451403, 49.297626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784290, 25.739069, 49.667557>,  <36.618927, 25.148565, 49.210308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784290, 25.739069, 49.667557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.386288, 25.711376, 49.696335>,  <36.147488, 25.694759, 49.713600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.386288, 25.711376, 49.696335>,  <36.784290, 25.739069, 49.667557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386288, 25.711376, 49.696335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058289, 0.182225, 0.981528,
		-0.081064, 0.980816, -0.177279,
		-0.995003, -0.069233, 0.071943,
		36.087788, 25.690607, 49.717918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513554, 26.318731, 50.104530>,  <36.784290, 25.739069, 49.667557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513554, 26.318731, 50.104530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.246105, 26.021318, 50.100361>,  <36.085636, 25.842871, 50.097858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.246105, 26.021318, 50.100361>,  <36.513554, 26.318731, 50.104530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246105, 26.021318, 50.100361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044388, 0.025908, 0.998678,
		-0.742281, 0.668196, -0.050327,
		-0.668617, -0.743534, -0.010428,
		36.045521, 25.798258, 50.097233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988422, 26.604919, 50.480251>,  <36.513554, 26.318731, 50.104530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988422, 26.604919, 50.480251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.970314, 26.205513, 50.492340>,  <35.959450, 25.965868, 50.499592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.970314, 26.205513, 50.492340>,  <35.988422, 26.604919, 50.480251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970314, 26.205513, 50.492340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070548, 0.026981, 0.997144,
		-0.996481, 0.047276, 0.069221,
		-0.045273, -0.998518, 0.030221,
		35.956734, 25.905958, 50.501408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551311, 26.398941, 50.960747>,  <35.988422, 26.604919, 50.480251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551311, 26.398941, 50.960747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.804287, 26.089417, 50.946693>,  <35.956074, 25.903702, 50.938263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.804287, 26.089417, 50.946693>,  <35.551311, 26.398941, 50.960747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804287, 26.089417, 50.946693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049718, -0.085812, 0.995070,
		-0.773011, -0.627577, -0.092743,
		0.632442, -0.773812, -0.035132,
		35.994019, 25.857273, 50.936153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587574, 26.843288, 51.544357>,  <35.551311, 26.398941, 50.960747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587574, 26.843288, 51.544357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.396664, 27.072954, 51.810455>,  <35.282120, 27.210752, 51.970112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.396664, 27.072954, 51.810455>,  <35.587574, 26.843288, 51.544357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396664, 27.072954, 51.810455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696660, 0.214192, -0.684680,
		-0.535607, -0.790227, 0.297768,
		-0.477274, 0.574163, 0.665242,
		35.253483, 27.245203, 52.010029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886497, 26.651882, 51.487907>,  <35.587574, 26.843288, 51.544357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886497, 26.651882, 51.487907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.899616, 27.006674, 51.672165>,  <34.907486, 27.219549, 51.782719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.899616, 27.006674, 51.672165>,  <34.886497, 26.651882, 51.487907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899616, 27.006674, 51.672165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656791, 0.366529, -0.659001,
		-0.753360, -0.280933, 0.594580,
		0.032796, 0.886980, 0.460642,
		34.909454, 27.272768, 51.810356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168953, 26.810421, 51.720020>,  <34.886497, 26.651882, 51.487907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168953, 26.810421, 51.720020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.369637, 27.155495, 51.694523>,  <34.490047, 27.362539, 51.679226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.369637, 27.155495, 51.694523>,  <34.168953, 26.810421, 51.720020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369637, 27.155495, 51.694523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758592, 0.403371, -0.511693,
		-0.415718, 0.305075, 0.856801,
		0.501714, 0.862682, -0.063739,
		34.520149, 27.414299, 51.675400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550423, 27.387651, 51.644302>,  <34.168953, 26.810421, 51.720020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550423, 27.387651, 51.644302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.905087, 27.537764, 51.536224>,  <34.117886, 27.627831, 51.471378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.905087, 27.537764, 51.536224>,  <33.550423, 27.387651, 51.644302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905087, 27.537764, 51.536224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434966, 0.478466, -0.762807,
		-0.156989, 0.793873, 0.587469,
		0.886656, 0.375282, -0.270194,
		34.171082, 27.650349, 51.455166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428974, 28.006531, 51.488392>,  <33.550423, 27.387651, 51.644302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428974, 28.006531, 51.488392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774811, 27.963818, 51.291992>,  <33.982311, 27.938190, 51.174152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774811, 27.963818, 51.291992>,  <33.428974, 28.006531, 51.488392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774811, 27.963818, 51.291992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372508, 0.519583, -0.768942,
		0.337222, 0.847721, 0.409451,
		0.864592, -0.106781, -0.490998,
		34.034187, 27.931784, 51.144691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508991, 28.658436, 51.183529>,  <33.428974, 28.006531, 51.488392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508991, 28.658436, 51.183529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741070, 28.400635, 50.984337>,  <33.880318, 28.245955, 50.864822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.741070, 28.400635, 50.984337>,  <33.508991, 28.658436, 51.183529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741070, 28.400635, 50.984337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263108, 0.430317, -0.863482,
		0.770807, 0.632014, 0.080095,
		0.580199, -0.644504, -0.497979,
		33.915131, 28.207283, 50.834942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078068, 29.002275, 50.757828>,  <33.508991, 28.658436, 51.183529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078068, 29.002275, 50.757828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.007538, 28.643572, 50.595478>,  <33.965221, 28.428350, 50.498070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.007538, 28.643572, 50.595478>,  <34.078068, 29.002275, 50.757828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007538, 28.643572, 50.595478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140831, 0.431075, -0.891258,
		0.974206, -0.099990, -0.202300,
		-0.176323, -0.896759, -0.405874,
		33.954639, 28.374544, 50.473717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823997, 29.167559, 50.738789>,  <34.078068, 29.002275, 50.757828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823997, 29.167559, 50.738789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063690, 29.487017, 50.716549>,  <35.207504, 29.678692, 50.703205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.063690, 29.487017, 50.716549>,  <34.823997, 29.167559, 50.738789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063690, 29.487017, 50.716549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293592, -0.154617, 0.943344,
		0.744801, -0.581602, -0.327126,
		0.599229, 0.798645, -0.055595,
		35.243458, 29.726610, 50.699871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392517, 29.073788, 51.177040>,  <34.823997, 29.167559, 50.738789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392517, 29.073788, 51.177040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433174, 29.466749, 51.114361>,  <35.457569, 29.702526, 51.076752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.433174, 29.466749, 51.114361>,  <35.392517, 29.073788, 51.177040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433174, 29.466749, 51.114361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447183, 0.095587, 0.889320,
		0.888649, -0.160462, -0.429598,
		0.101638, 0.982403, -0.156700,
		35.463665, 29.761471, 51.067352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115551, 29.248352, 51.351707>,  <35.392517, 29.073788, 51.177040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115551, 29.248352, 51.351707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.874508, 29.564903, 51.392872>,  <35.729881, 29.754833, 51.417572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.874508, 29.564903, 51.392872>,  <36.115551, 29.248352, 51.351707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874508, 29.564903, 51.392872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389201, 0.178855, 0.903622,
		0.696700, 0.584579, -0.415784,
		-0.602604, 0.791377, 0.102911,
		35.693726, 29.802317, 51.423744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583595, 29.736614, 51.486187>,  <36.115551, 29.248352, 51.351707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583595, 29.736614, 51.486187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.232338, 29.899746, 51.586216>,  <36.021584, 29.997625, 51.646233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.232338, 29.899746, 51.586216>,  <36.583595, 29.736614, 51.486187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232338, 29.899746, 51.586216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434493, 0.461161, 0.773658,
		0.200194, 0.788040, -0.582164,
		-0.878145, 0.407828, 0.250077,
		35.968895, 30.022095, 51.661240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698494, 30.425802, 51.578011>,  <36.583595, 29.736614, 51.486187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698494, 30.425802, 51.578011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375301, 30.344557, 51.799248>,  <36.181385, 30.295809, 51.931992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375301, 30.344557, 51.799248>,  <36.698494, 30.425802, 51.578011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375301, 30.344557, 51.799248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389411, 0.520391, 0.759969,
		-0.442185, 0.829420, -0.341371,
		-0.807980, -0.203113, 0.553095,
		36.132908, 30.283623, 51.965176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501865, 31.012939, 51.938538>,  <36.698494, 30.425802, 51.578011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501865, 31.012939, 51.938538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.313374, 30.724903, 52.142269>,  <36.200279, 30.552082, 52.264507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.313374, 30.724903, 52.142269>,  <36.501865, 31.012939, 51.938538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313374, 30.724903, 52.142269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269174, 0.432500, 0.860517,
		-0.839933, 0.542598, -0.009977,
		-0.471229, -0.720091, 0.509325,
		36.172005, 30.508875, 52.295067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162727, 31.397259, 52.443748>,  <36.501865, 31.012939, 51.938538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162727, 31.397259, 52.443748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.135483, 31.022623, 52.581249>,  <36.119137, 30.797842, 52.663750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.135483, 31.022623, 52.581249>,  <36.162727, 31.397259, 52.443748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135483, 31.022623, 52.581249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367522, 0.296767, 0.881395,
		-0.927517, 0.186372, 0.324002,
		-0.068114, -0.936587, 0.343752,
		36.115047, 30.741648, 52.684376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795689, 31.391056, 53.118763>,  <36.162727, 31.397259, 52.443748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795689, 31.391056, 53.118763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.022892, 31.061874, 53.114445>,  <36.159214, 30.864365, 53.111855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.022892, 31.061874, 53.114445>,  <35.795689, 31.391056, 53.118763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022892, 31.061874, 53.114445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387655, 0.255944, 0.885560,
		-0.726013, -0.507186, 0.464400,
		0.568004, -0.822955, -0.010794,
		36.193295, 30.814987, 53.111206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656979, 30.950031, 53.723576>,  <35.795689, 31.391056, 53.118763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656979, 30.950031, 53.723576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030529, 30.872526, 53.603352>,  <36.254658, 30.826023, 53.531219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.030529, 30.872526, 53.603352>,  <35.656979, 30.950031, 53.723576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030529, 30.872526, 53.603352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344245, 0.259556, 0.902289,
		-0.096817, -0.946090, 0.309095,
		0.933875, -0.193761, -0.300557,
		36.310692, 30.814398, 53.513184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.850319, 31.605913, 37.646454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227901, 31.488882, 37.707561>,  <35.454453, 31.418663, 37.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227901, 31.488882, 37.707561>,  <34.850319, 31.605913, 37.646454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227901, 31.488882, 37.707561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149256, 0.034428, 0.988199,
		-0.294386, -0.955621, -0.011170,
		0.943959, -0.292579, 0.152767,
		35.511089, 31.401108, 37.753391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845135, 31.029146, 38.053551>,  <34.850319, 31.605913, 37.646454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845135, 31.029146, 38.053551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154186, 31.279711, 38.094833>,  <35.339619, 31.430050, 38.119602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154186, 31.279711, 38.094833>,  <34.845135, 31.029146, 38.053551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154186, 31.279711, 38.094833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155638, 0.029294, 0.987380,
		0.615481, -0.778943, 0.120127,
		0.772631, 0.626410, 0.103203,
		35.385975, 31.467634, 38.125793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173695, 30.732847, 38.536549>,  <34.845135, 31.029146, 38.053551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173695, 30.732847, 38.536549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337708, 31.097477, 38.548595>,  <35.436115, 31.316256, 38.555824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337708, 31.097477, 38.548595>,  <35.173695, 30.732847, 38.536549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337708, 31.097477, 38.548595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129533, 0.025516, 0.991247,
		0.902828, -0.410340, 0.128541,
		0.410029, 0.911575, 0.030116,
		35.460716, 31.370949, 38.557629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806664, 30.745461, 38.962837>,  <35.173695, 30.732847, 38.536549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806664, 30.745461, 38.962837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670414, 31.121494, 38.956993>,  <35.588665, 31.347115, 38.953487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670414, 31.121494, 38.956993>,  <35.806664, 30.745461, 38.962837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670414, 31.121494, 38.956993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084014, -0.014959, 0.996352,
		0.936438, 0.340609, 0.084076,
		-0.340625, 0.940086, -0.014608,
		35.568226, 31.403521, 38.952610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962475, 30.920134, 39.619263>,  <35.806664, 30.745461, 38.962837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962475, 30.920134, 39.619263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734409, 31.226500, 39.500408>,  <35.597572, 31.410318, 39.429096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734409, 31.226500, 39.500408>,  <35.962475, 30.920134, 39.619263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734409, 31.226500, 39.500408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300492, 0.142196, 0.943125,
		0.764606, 0.627020, 0.149077,
		-0.570160, 0.765916, -0.297138,
		35.563362, 31.456274, 39.411266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208241, 31.513947, 39.990589>,  <35.962475, 30.920134, 39.619263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208241, 31.513947, 39.990589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840363, 31.625671, 39.880207>,  <35.619637, 31.692707, 39.813980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840363, 31.625671, 39.880207>,  <36.208241, 31.513947, 39.990589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840363, 31.625671, 39.880207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259698, 0.094389, 0.961066,
		0.294485, 0.955550, -0.014272,
		-0.919693, 0.279313, -0.275950,
		35.564453, 31.709465, 39.797421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098255, 32.152428, 40.292580>,  <36.208241, 31.513947, 39.990589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098255, 32.152428, 40.292580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741669, 31.989017, 40.214203>,  <35.527718, 31.890972, 40.167175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741669, 31.989017, 40.214203>,  <36.098255, 32.152428, 40.292580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741669, 31.989017, 40.214203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279952, 0.156615, 0.947153,
		-0.356247, 0.899211, -0.253984,
		-0.891468, -0.408524, -0.195942,
		35.474228, 31.866461, 40.155422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641567, 32.598469, 40.541840>,  <36.098255, 32.152428, 40.292580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641567, 32.598469, 40.541840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462189, 32.241669, 40.564587>,  <35.354561, 32.027588, 40.578236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462189, 32.241669, 40.564587>,  <35.641567, 32.598469, 40.541840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462189, 32.241669, 40.564587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317728, 0.218562, 0.922648,
		-0.835431, 0.395688, -0.381426,
		-0.448446, -0.891999, 0.056872,
		35.327656, 31.974070, 40.581650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008183, 32.826424, 40.845680>,  <35.641567, 32.598469, 40.541840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008183, 32.826424, 40.845680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015137, 32.428711, 40.887833>,  <35.019310, 32.190083, 40.913124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015137, 32.428711, 40.887833>,  <35.008183, 32.826424, 40.845680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015137, 32.428711, 40.887833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232919, 0.098473, 0.967498,
		-0.972341, -0.041367, -0.229874,
		0.017386, -0.994280, 0.105384,
		35.020351, 32.130428, 40.919449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462711, 32.596004, 41.306259>,  <35.008183, 32.826424, 40.845680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462711, 32.596004, 41.306259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707901, 32.280029, 41.312679>,  <34.855015, 32.090443, 41.316532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707901, 32.280029, 41.312679>,  <34.462711, 32.596004, 41.306259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707901, 32.280029, 41.312679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161334, -0.105255, 0.981271,
		-0.773459, -0.604080, -0.191963,
		0.612971, -0.789942, 0.016048,
		34.891792, 32.043045, 41.317493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053009, 32.144707, 41.645535>,  <34.462711, 32.596004, 41.306259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053009, 32.144707, 41.645535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441635, 32.055305, 41.676800>,  <34.674812, 32.001663, 41.695560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441635, 32.055305, 41.676800>,  <34.053009, 32.144707, 41.645535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441635, 32.055305, 41.676800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104207, -0.107187, 0.988763,
		-0.212615, -0.968791, -0.127429,
		0.971564, -0.223505, 0.078166,
		34.733105, 31.988255, 41.700249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039978, 31.649366, 42.085152>,  <34.053009, 32.144707, 41.645535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039978, 31.649366, 42.085152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416561, 31.784105, 42.090553>,  <34.642513, 31.864948, 42.093796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416561, 31.784105, 42.090553>,  <34.039978, 31.649366, 42.085152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416561, 31.784105, 42.090553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019341, -0.093960, 0.995388,
		0.336565, -0.936859, -0.094975,
		0.941462, 0.336849, 0.013504,
		34.699001, 31.885160, 42.094604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791935, 30.983255, 42.239555>,  <34.039978, 31.649366, 42.085152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791935, 30.983255, 42.239555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404362, 30.885361, 42.225269>,  <33.171818, 30.826624, 42.216698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404362, 30.885361, 42.225269>,  <33.791935, 30.983255, 42.239555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404362, 30.885361, 42.225269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058504, 0.367102, -0.928339,
		0.240307, -0.897408, -0.370015,
		-0.968932, -0.244734, -0.035715,
		33.113682, 30.811939, 42.214554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607952, 30.823812, 41.505333>,  <33.791935, 30.983255, 42.239555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607952, 30.823812, 41.505333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235016, 30.826241, 41.649944>,  <33.011253, 30.827698, 41.736713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235016, 30.826241, 41.649944>,  <33.607952, 30.823812, 41.505333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235016, 30.826241, 41.649944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347650, 0.259835, -0.900902,
		-0.099407, -0.965634, -0.240145,
		-0.932340, 0.006069, 0.361533,
		32.955315, 30.828062, 41.758404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201492, 30.515055, 40.989204>,  <33.607952, 30.823812, 41.505333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201492, 30.515055, 40.989204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976372, 30.761946, 41.209129>,  <32.841301, 30.910080, 41.341084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976372, 30.761946, 41.209129>,  <33.201492, 30.515055, 40.989204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976372, 30.761946, 41.209129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407967, 0.371079, -0.834185,
		-0.718904, -0.693780, 0.042966,
		-0.562797, 0.617227, 0.549810,
		32.807533, 30.947113, 41.374073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516655, 30.456539, 40.703930>,  <33.201492, 30.515055, 40.989204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516655, 30.456539, 40.703930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539219, 30.810650, 40.888584>,  <32.552757, 31.023117, 40.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539219, 30.810650, 40.888584>,  <32.516655, 30.456539, 40.703930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539219, 30.810650, 40.888584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405816, 0.442779, -0.799537,
		-0.912213, -0.142240, 0.384234,
		0.056405, 0.885277, 0.461632,
		32.556141, 31.076233, 41.027073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874601, 30.740528, 40.495770>,  <32.516655, 30.456539, 40.703930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874601, 30.740528, 40.495770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104427, 31.044353, 40.617710>,  <32.242325, 31.226648, 40.690872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104427, 31.044353, 40.617710>,  <31.874601, 30.740528, 40.495770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104427, 31.044353, 40.617710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355658, 0.567174, -0.742847,
		-0.737143, 0.318393, 0.596025,
		0.574567, 0.759565, 0.304849,
		32.276798, 31.272223, 40.709164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483202, 31.293476, 40.535801>,  <31.874601, 30.740528, 40.495770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483202, 31.293476, 40.535801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846397, 31.451859, 40.480991>,  <32.064316, 31.546888, 40.448105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846397, 31.451859, 40.480991>,  <31.483202, 31.293476, 40.535801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846397, 31.451859, 40.480991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298744, 0.382504, -0.874324,
		-0.293783, 0.834811, 0.465599,
		0.907989, 0.395957, -0.137022,
		32.118793, 31.570646, 40.439884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382135, 31.976425, 40.341652>,  <31.483202, 31.293476, 40.535801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382135, 31.976425, 40.341652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753010, 31.893143, 40.217087>,  <31.975534, 31.843174, 40.142349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753010, 31.893143, 40.217087>,  <31.382135, 31.976425, 40.341652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753010, 31.893143, 40.217087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207158, 0.407639, -0.889334,
		0.312106, 0.889090, 0.334827,
		0.927187, -0.208204, -0.311409,
		32.031166, 31.830681, 40.123665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619360, 32.640938, 39.884380>,  <31.382135, 31.976425, 40.341652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619360, 32.640938, 39.884380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868809, 32.343922, 39.786621>,  <32.018478, 32.165710, 39.727966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868809, 32.343922, 39.786621>,  <31.619360, 32.640938, 39.884380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868809, 32.343922, 39.786621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118524, 0.219209, -0.968452,
		0.772689, 0.632915, 0.048695,
		0.623622, -0.742541, -0.244396,
		32.055897, 32.121159, 39.713303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936857, 32.888657, 39.241169>,  <31.619360, 32.640938, 39.884380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936857, 32.888657, 39.241169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000053, 32.493740, 39.234184>,  <32.037971, 32.256790, 39.229996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000053, 32.493740, 39.234184>,  <31.936857, 32.888657, 39.241169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000053, 32.493740, 39.234184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140979, -0.005053, -0.990000,
		0.977325, 0.158870, -0.139985,
		0.157989, -0.987287, -0.017459,
		32.047451, 32.197556, 39.228947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436459, 32.897194, 38.800507>,  <31.936857, 32.888657, 39.241169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436459, 32.897194, 38.800507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266014, 32.535690, 38.816769>,  <32.163746, 32.318790, 38.826527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266014, 32.535690, 38.816769>,  <32.436459, 32.897194, 38.800507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266014, 32.535690, 38.816769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211833, 0.055985, -0.975701,
		0.879521, -0.424368, -0.215301,
		-0.426110, -0.903757, 0.040655,
		32.138180, 32.264565, 38.828964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740990, 32.482040, 38.289059>,  <32.436459, 32.897194, 38.800507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740990, 32.482040, 38.289059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399212, 32.288193, 38.363960>,  <32.194145, 32.171883, 38.408901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399212, 32.288193, 38.363960>,  <32.740990, 32.482040, 38.289059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399212, 32.288193, 38.363960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224699, 0.019738, -0.974228,
		0.468438, -0.874500, -0.125760,
		-0.854445, -0.484623, 0.187253,
		32.142879, 32.142807, 38.420135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862377, 31.945692, 37.881325>,  <32.740990, 32.482040, 38.289059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862377, 31.945692, 37.881325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470253, 31.982590, 37.951172>,  <32.234978, 32.004726, 37.993080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470253, 31.982590, 37.951172>,  <32.862377, 31.945692, 37.881325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470253, 31.982590, 37.951172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181014, -0.066188, -0.981251,
		-0.078954, -0.993534, 0.081581,
		-0.980306, 0.092241, 0.174617,
		32.176163, 32.010262, 38.003555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642834, 31.438881, 37.529343>,  <32.862377, 31.945692, 37.881325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642834, 31.438881, 37.529343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312729, 31.656105, 37.591347>,  <32.114666, 31.786440, 37.628548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312729, 31.656105, 37.591347>,  <32.642834, 31.438881, 37.529343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312729, 31.656105, 37.591347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339683, -0.258036, -0.904452,
		-0.451174, -0.799064, 0.397416,
		-0.825262, 0.543060, 0.155009,
		32.065151, 31.819023, 37.637848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082523, 31.041880, 37.216206>,  <32.642834, 31.438881, 37.529343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082523, 31.041880, 37.216206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970776, 31.422949, 37.264149>,  <31.903728, 31.651590, 37.292915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970776, 31.422949, 37.264149>,  <32.082523, 31.041880, 37.216206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970776, 31.422949, 37.264149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524112, -0.046704, -0.850368,
		-0.804525, -0.300384, 0.512355,
		-0.279366, 0.952674, 0.119861,
		31.886965, 31.708752, 37.300106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704311, 30.980949, 36.793594>,  <32.082523, 31.041880, 37.216206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704311, 30.980949, 36.793594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938633, 31.068012, 36.481323>,  <33.079224, 31.120251, 36.293961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938633, 31.068012, 36.481323>,  <32.704311, 30.980949, 36.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938633, 31.068012, 36.481323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803807, 0.032915, -0.593979,
		-0.103589, 0.975470, 0.194237,
		0.585801, 0.217659, -0.780680,
		33.114372, 31.133310, 36.247120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145519, 30.343094, 36.960110>,  <32.704311, 30.980949, 36.793594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145519, 30.343094, 36.960110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467880, 30.239883, 36.746964>,  <32.661297, 30.177958, 36.619076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467880, 30.239883, 36.746964>,  <32.145519, 30.343094, 36.960110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467880, 30.239883, 36.746964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341499, -0.532637, 0.774388,
		-0.483635, -0.806053, -0.341139,
		0.805901, -0.258022, -0.532868,
		32.709648, 30.162476, 36.587101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260334, 29.578161, 36.997295>,  <32.145519, 30.343094, 36.960110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260334, 29.578161, 36.997295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622967, 29.713234, 36.896038>,  <32.840546, 29.794277, 36.835281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622967, 29.713234, 36.896038>,  <32.260334, 29.578161, 36.997295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622967, 29.713234, 36.896038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419700, -0.658401, 0.624787,
		0.044305, -0.672666, -0.738618,
		0.906581, 0.337679, -0.253148,
		32.894939, 29.814537, 36.820095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662182, 29.068254, 36.815266>,  <32.260334, 29.578161, 36.997295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662182, 29.068254, 36.815266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908997, 29.358086, 36.938068>,  <33.057087, 29.531984, 37.011749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908997, 29.358086, 36.938068>,  <32.662182, 29.068254, 36.815266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908997, 29.358086, 36.938068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348213, -0.601254, 0.719195,
		0.705701, -0.336867, -0.623304,
		0.617037, 0.724579, 0.307003,
		33.094109, 29.575459, 37.030170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312584, 28.658792, 36.964191>,  <32.662182, 29.068254, 36.815266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312584, 28.658792, 36.964191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334873, 29.021677, 37.130978>,  <33.348248, 29.239408, 37.231049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334873, 29.021677, 37.130978>,  <33.312584, 28.658792, 36.964191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334873, 29.021677, 37.130978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424394, -0.399535, 0.812565,
		0.903761, 0.131679, -0.407279,
		0.055725, 0.907211, 0.416968,
		33.351589, 29.293840, 37.256069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003609, 28.774794, 37.239582>,  <33.312584, 28.658792, 36.964191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003609, 28.774794, 37.239582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765083, 29.018553, 37.448597>,  <33.621967, 29.164808, 37.574005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765083, 29.018553, 37.448597>,  <34.003609, 28.774794, 37.239582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765083, 29.018553, 37.448597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338407, -0.399434, 0.852017,
		0.727935, 0.684901, 0.031964,
		-0.596315, 0.609396, 0.522537,
		33.586189, 29.201372, 37.605358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412128, 28.939732, 37.879318>,  <34.003609, 28.774794, 37.239582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412128, 28.939732, 37.879318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042938, 29.059256, 37.976334>,  <33.821423, 29.130970, 38.034542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042938, 29.059256, 37.976334>,  <34.412128, 28.939732, 37.879318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042938, 29.059256, 37.976334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185713, -0.206168, 0.960732,
		0.337081, 0.931776, 0.134795,
		-0.922977, 0.298811, 0.242538,
		33.766045, 29.148899, 38.049095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488377, 29.282166, 38.538849>,  <34.412128, 28.939732, 37.879318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488377, 29.282166, 38.538849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105614, 29.168858, 38.513275>,  <33.875957, 29.100874, 38.497932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105614, 29.168858, 38.513275>,  <34.488377, 29.282166, 38.538849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105614, 29.168858, 38.513275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049777, -0.376906, 0.924913,
		-0.286096, 0.881873, 0.374764,
		-0.956907, -0.283269, -0.063934,
		33.818542, 29.083878, 38.494095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208366, 29.481268, 39.115376>,  <34.488377, 29.282166, 38.538849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208366, 29.481268, 39.115376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943260, 29.210245, 38.987843>,  <33.784195, 29.047632, 38.911324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943260, 29.210245, 38.987843>,  <34.208366, 29.481268, 39.115376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943260, 29.210245, 38.987843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045477, -0.388576, 0.920294,
		-0.747443, 0.624441, 0.226722,
		-0.662768, -0.677556, -0.318836,
		33.744431, 29.006979, 38.892193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525555, 29.531116, 39.417130>,  <34.208366, 29.481268, 39.115376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525555, 29.531116, 39.417130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496548, 29.149408, 39.301121>,  <33.479145, 28.920383, 39.231514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496548, 29.149408, 39.301121>,  <33.525555, 29.531116, 39.417130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496548, 29.149408, 39.301121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153848, -0.276604, 0.948589,
		-0.985430, 0.113406, -0.126755,
		-0.072514, -0.954269, -0.290021,
		33.474792, 28.863127, 39.214115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045940, 29.087234, 39.850563>,  <33.525555, 29.531116, 39.417130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045940, 29.087234, 39.850563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307064, 28.834560, 39.683323>,  <33.463737, 28.682955, 39.582977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307064, 28.834560, 39.683323>,  <33.045940, 29.087234, 39.850563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307064, 28.834560, 39.683323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080316, -0.491106, 0.867389,
		-0.753250, -0.599822, -0.269866,
		0.652812, -0.631687, -0.418101,
		33.502907, 28.645054, 39.557892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986446, 28.486458, 40.207298>,  <33.045940, 29.087234, 39.850563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986446, 28.486458, 40.207298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292915, 28.343529, 39.993645>,  <33.476795, 28.257771, 39.865452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292915, 28.343529, 39.993645>,  <32.986446, 28.486458, 40.207298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292915, 28.343529, 39.993645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235377, -0.617373, 0.750632,
		-0.597984, -0.700834, -0.388906,
		0.766168, -0.357326, -0.534139,
		33.522766, 28.236332, 39.833405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917152, 27.703735, 40.086174>,  <32.986446, 28.486458, 40.207298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917152, 27.703735, 40.086174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290226, 27.845041, 40.115314>,  <33.514069, 27.929825, 40.132797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290226, 27.845041, 40.115314>,  <32.917152, 27.703735, 40.086174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290226, 27.845041, 40.115314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137587, -0.535134, 0.833487,
		0.333426, -0.767356, -0.547715,
		0.932682, 0.353265, 0.072850,
		33.570030, 27.951021, 40.137169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199226, 27.220322, 40.465599>,  <32.917152, 27.703735, 40.086174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199226, 27.220322, 40.465599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494213, 27.490469, 40.463936>,  <33.671207, 27.652557, 40.462936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494213, 27.490469, 40.463936>,  <33.199226, 27.220322, 40.465599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494213, 27.490469, 40.463936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244431, -0.261152, 0.933838,
		0.629597, -0.689694, -0.357673,
		0.737470, 0.675367, -0.004163,
		33.715454, 27.693079, 40.462688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811886, 26.905787, 40.556572>,  <33.199226, 27.220322, 40.465599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811886, 26.905787, 40.556572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879120, 27.277502, 40.688129>,  <33.919460, 27.500530, 40.767063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879120, 27.277502, 40.688129>,  <33.811886, 26.905787, 40.556572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879120, 27.277502, 40.688129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473666, -0.368741, 0.799794,
		0.864516, 0.021352, -0.502152,
		0.168087, 0.929287, 0.328896,
		33.929546, 27.556288, 40.786797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501492, 26.890429, 40.744343>,  <33.811886, 26.905787, 40.556572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501492, 26.890429, 40.744343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330387, 27.207872, 40.917408>,  <34.227726, 27.398338, 41.021248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.330387, 27.207872, 40.917408>,  <34.501492, 26.890429, 40.744343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330387, 27.207872, 40.917408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409978, -0.256254, 0.875358,
		0.805568, 0.551828, -0.215748,
		-0.427760, 0.793612, 0.432667,
		34.202061, 27.445955, 41.047207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987385, 27.147415, 41.191296>,  <34.501492, 26.890429, 40.744343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987385, 27.147415, 41.191296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638382, 27.297415, 41.316586>,  <34.428982, 27.387415, 41.391758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638382, 27.297415, 41.316586>,  <34.987385, 27.147415, 41.191296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638382, 27.297415, 41.316586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269904, -0.164468, 0.948737,
		0.407290, 0.912319, 0.042286,
		-0.872506, 0.374998, 0.313225,
		34.376629, 27.409914, 41.410553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216507, 27.680840, 41.564579>,  <34.987385, 27.147415, 41.191296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216507, 27.680840, 41.564579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850403, 27.608585, 41.708618>,  <34.630741, 27.565233, 41.795040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850403, 27.608585, 41.708618>,  <35.216507, 27.680840, 41.564579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850403, 27.608585, 41.708618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395411, -0.231644, 0.888814,
		-0.077135, 0.955883, 0.283439,
		-0.915260, -0.180634, 0.360099,
		34.575825, 27.554396, 41.816647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247471, 27.973885, 42.225529>,  <35.216507, 27.680840, 41.564579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247471, 27.973885, 42.225529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907902, 27.763721, 42.248413>,  <34.704159, 27.637623, 42.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907902, 27.763721, 42.248413>,  <35.247471, 27.973885, 42.225529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907902, 27.763721, 42.248413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236431, -0.280728, 0.930211,
		-0.472682, 0.803204, 0.362540,
		-0.848924, -0.525409, 0.057207,
		34.653225, 27.606098, 42.265575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131893, 28.080288, 42.882343>,  <35.247471, 27.973885, 42.225529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131893, 28.080288, 42.882343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901398, 27.769028, 42.782402>,  <34.763100, 27.582272, 42.722439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901398, 27.769028, 42.782402>,  <35.131893, 28.080288, 42.882343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901398, 27.769028, 42.782402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153839, -0.403522, 0.901944,
		-0.802671, 0.481300, 0.352236,
		-0.576241, -0.778152, -0.249852,
		34.728527, 27.535582, 42.707447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662937, 27.967278, 43.332108>,  <35.131893, 28.080288, 42.882343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662937, 27.967278, 43.332108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660782, 27.604490, 43.163643>,  <34.659489, 27.386818, 43.062565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660782, 27.604490, 43.163643>,  <34.662937, 27.967278, 43.332108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660782, 27.604490, 43.163643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022426, -0.420954, 0.906805,
		-0.999734, 0.014328, -0.018072,
		-0.005385, -0.906969, -0.421163,
		34.659164, 27.332399, 43.037292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053120, 27.639114, 43.633919>,  <34.662937, 27.967278, 43.332108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053120, 27.639114, 43.633919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321678, 27.378288, 43.493042>,  <34.482811, 27.221792, 43.408516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321678, 27.378288, 43.493042>,  <34.053120, 27.639114, 43.633919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321678, 27.378288, 43.493042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125850, -0.368013, 0.921265,
		-0.730338, -0.662854, -0.165018,
		0.671393, -0.652067, -0.352194,
		34.523098, 27.182669, 43.387383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791359, 26.968769, 43.976341>,  <34.053120, 27.639114, 43.633919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791359, 26.968769, 43.976341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156734, 26.886299, 43.835987>,  <34.375961, 26.836817, 43.751774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156734, 26.886299, 43.835987>,  <33.791359, 26.968769, 43.976341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156734, 26.886299, 43.835987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133734, -0.662246, 0.737256,
		-0.384376, -0.720363, -0.577348,
		0.913438, -0.206172, -0.350889,
		34.430767, 26.824448, 43.730721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859558, 26.297819, 44.068359>,  <33.791359, 26.968769, 43.976341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859558, 26.297819, 44.068359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238728, 26.415668, 44.019958>,  <34.466228, 26.486378, 43.990917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238728, 26.415668, 44.019958>,  <33.859558, 26.297819, 44.068359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238728, 26.415668, 44.019958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274207, -0.561640, 0.780622,
		0.162030, -0.773148, -0.613178,
		0.947922, 0.294622, -0.121001,
		34.523106, 26.504055, 43.983658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326649, 25.656439, 44.290802>,  <33.859558, 26.297819, 44.068359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326649, 25.656439, 44.290802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558781, 25.982012, 44.301670>,  <34.698059, 26.177355, 44.308189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558781, 25.982012, 44.301670>,  <34.326649, 25.656439, 44.290802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558781, 25.982012, 44.301670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421408, -0.328672, 0.845216,
		0.696876, -0.479053, -0.533734,
		0.580327, 0.813930, 0.027166,
		34.732880, 26.226191, 44.309818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972866, 25.413435, 44.707634>,  <34.326649, 25.656439, 44.290802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972866, 25.413435, 44.707634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936749, 25.811800, 44.707123>,  <34.915077, 26.050819, 44.706818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936749, 25.811800, 44.707123>,  <34.972866, 25.413435, 44.707634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936749, 25.811800, 44.707123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279342, 0.026560, 0.959824,
		0.955936, 0.086310, -0.280599,
		-0.090295, 0.995914, -0.001279,
		34.909660, 26.110575, 44.706738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623993, 25.629501, 44.933456>,  <34.972866, 25.413435, 44.707634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623993, 25.629501, 44.933456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355473, 25.921154, 44.986702>,  <35.194359, 26.096146, 45.018650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355473, 25.921154, 44.986702>,  <35.623993, 25.629501, 44.933456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355473, 25.921154, 44.986702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385501, 0.190091, 0.902915,
		0.633040, 0.657445, -0.408689,
		-0.671305, 0.729131, 0.133111,
		35.154079, 26.139893, 45.026634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935883, 26.306938, 45.120701>,  <35.623993, 25.629501, 44.933456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935883, 26.306938, 45.120701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572521, 26.323074, 45.287155>,  <35.354504, 26.332756, 45.387028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572521, 26.323074, 45.287155>,  <35.935883, 26.306938, 45.120701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572521, 26.323074, 45.287155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411101, 0.267370, 0.871498,
		-0.076104, 0.962749, -0.259466,
		-0.908407, 0.040342, 0.416135,
		35.299999, 26.335176, 45.411995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621712, 26.377542, 45.182465>,  <35.935883, 26.306938, 45.120701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621712, 26.377542, 45.182465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923794, 26.116077, 45.162918>,  <37.105045, 25.959198, 45.151192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923794, 26.116077, 45.162918>,  <36.621712, 26.377542, 45.182465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923794, 26.116077, 45.162918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121519, 0.212876, -0.969493,
		0.644123, 0.726230, 0.240198,
		0.755207, -0.653662, -0.048867,
		37.150356, 25.919979, 45.148258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207134, 26.713015, 44.941990>,  <36.621712, 26.377542, 45.182465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207134, 26.713015, 44.941990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282146, 26.335432, 44.833344>,  <37.327156, 26.108883, 44.768154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282146, 26.335432, 44.833344>,  <37.207134, 26.713015, 44.941990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282146, 26.335432, 44.833344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075013, 0.289479, -0.954240,
		0.979389, 0.158577, 0.125096,
		0.187534, -0.943957, -0.271617,
		37.338406, 26.052244, 44.751858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778416, 26.715458, 44.446827>,  <37.207134, 26.713015, 44.941990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778416, 26.715458, 44.446827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576305, 26.372683, 44.406132>,  <37.455040, 26.167017, 44.381714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576305, 26.372683, 44.406132>,  <37.778416, 26.715458, 44.446827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576305, 26.372683, 44.406132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178177, 0.011758, -0.983928,
		0.844362, -0.515285, 0.146746,
		-0.505278, -0.856938, -0.101740,
		37.424721, 26.115601, 44.375610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155750, 26.404320, 43.890171>,  <37.778416, 26.715458, 44.446827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155750, 26.404320, 43.890171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806431, 26.215380, 43.937897>,  <37.596840, 26.102015, 43.966534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806431, 26.215380, 43.937897>,  <38.155750, 26.404320, 43.890171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806431, 26.215380, 43.937897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217242, 0.158347, -0.963189,
		0.436072, -0.867069, -0.240899,
		-0.873297, -0.472353, 0.119313,
		37.544441, 26.073673, 43.973690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161419, 26.030312, 43.237183>,  <38.155750, 26.404320, 43.890171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161419, 26.030312, 43.237183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783493, 26.001554, 43.365028>,  <37.556736, 25.984301, 43.441734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.783493, 26.001554, 43.365028>,  <38.161419, 26.030312, 43.237183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783493, 26.001554, 43.365028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327112, 0.153963, -0.932359,
		0.017822, -0.985457, -0.168984,
		-0.944817, -0.071893, 0.319612,
		37.500050, 25.979986, 43.460911>
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
