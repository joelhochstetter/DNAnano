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
	<24.231226, 34.963348, 35.154053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367863, 34.934814, 34.779198>,  <24.449844, 34.917694, 34.554283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.367863, 34.934814, 34.779198>,  <24.231226, 34.963348, 35.154053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.367863, 34.934814, 34.779198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626655, 0.725834, -0.283671,
		0.700441, 0.684161, 0.203238,
		0.341593, -0.071335, -0.937137,
		24.470341, 34.913414, 34.498058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.310783, 35.685661, 34.749153>,  <24.231226, 34.963348, 35.154053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.310783, 35.685661, 34.749153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262321, 35.400742, 34.472618>,  <24.233244, 35.229790, 34.306698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262321, 35.400742, 34.472618>,  <24.310783, 35.685661, 34.749153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262321, 35.400742, 34.472618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590338, 0.611619, -0.526710,
		0.798012, 0.344310, -0.494598,
		-0.121155, -0.712301, -0.691339,
		24.225975, 35.187050, 34.265217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027506, 36.266117, 35.303017>,  <24.310783, 35.685661, 34.749153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027506, 36.266117, 35.303017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370422, 36.099594, 35.181866>,  <24.576172, 35.999680, 35.109177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370422, 36.099594, 35.181866>,  <24.027506, 36.266117, 35.303017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370422, 36.099594, 35.181866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473660, 0.407290, 0.780872,
		-0.201729, -0.812896, 0.546357,
		0.857293, -0.416312, -0.302874,
		24.627611, 35.974701, 35.091003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360939, 36.001942, 35.930286>,  <24.027506, 36.266117, 35.303017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360939, 36.001942, 35.930286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658648, 36.032116, 35.664845>,  <24.837273, 36.050220, 35.505581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658648, 36.032116, 35.664845>,  <24.360939, 36.001942, 35.930286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.658648, 36.032116, 35.664845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595849, 0.373845, 0.710777,
		0.301700, -0.924419, 0.233297,
		0.744272, 0.075432, -0.663603,
		24.881929, 36.054745, 35.465763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935123, 35.722183, 36.194744>,  <24.360939, 36.001942, 35.930286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935123, 35.722183, 36.194744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069921, 35.981483, 35.921627>,  <25.150801, 36.137066, 35.757759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069921, 35.981483, 35.921627>,  <24.935123, 35.722183, 36.194744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069921, 35.981483, 35.921627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690968, 0.322320, 0.647049,
		0.639528, -0.689840, -0.339301,
		0.336997, 0.648252, -0.682790,
		25.171021, 36.175961, 35.716789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605650, 35.711128, 36.116074>,  <24.935123, 35.722183, 36.194744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605650, 35.711128, 36.116074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509903, 36.089516, 36.028587>,  <25.452456, 36.316547, 35.976093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509903, 36.089516, 36.028587>,  <25.605650, 35.711128, 36.116074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509903, 36.089516, 36.028587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693090, 0.324235, 0.643816,
		0.679949, 0.002516, -0.733255,
		-0.239367, 0.945973, -0.218720,
		25.438093, 36.373306, 35.962971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208979, 36.134102, 36.064907>,  <25.605650, 35.711128, 36.116074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208979, 36.134102, 36.064907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948362, 36.427750, 36.141392>,  <25.791992, 36.603939, 36.187283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948362, 36.427750, 36.141392>,  <26.208979, 36.134102, 36.064907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948362, 36.427750, 36.141392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672927, 0.442922, 0.592443,
		0.350231, 0.514675, -0.782591,
		-0.651542, 0.734118, 0.191214,
		25.752899, 36.647984, 36.198757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631346, 36.708759, 36.016487>,  <26.208979, 36.134102, 36.064907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631346, 36.708759, 36.016487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311268, 36.804417, 36.236488>,  <26.119221, 36.861813, 36.368488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311268, 36.804417, 36.236488>,  <26.631346, 36.708759, 36.016487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311268, 36.804417, 36.236488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591745, 0.464087, 0.659137,
		-0.097618, 0.852896, -0.512873,
		-0.800193, 0.239146, 0.550000,
		26.071209, 36.876160, 36.401489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582859, 37.400780, 36.108212>,  <26.631346, 36.708759, 36.016487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582859, 37.400780, 36.108212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371660, 37.268208, 36.420975>,  <26.244942, 37.188663, 36.608631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371660, 37.268208, 36.420975>,  <26.582859, 37.400780, 36.108212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371660, 37.268208, 36.420975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459394, 0.662901, 0.591201,
		-0.714266, 0.671355, -0.197753,
		-0.527997, -0.331429, 0.781904,
		26.213261, 37.168777, 36.655544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215267, 38.016491, 36.325619>,  <26.582859, 37.400780, 36.108212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215267, 38.016491, 36.325619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245584, 37.758289, 36.629616>,  <26.263775, 37.603371, 36.812012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245584, 37.758289, 36.629616>,  <26.215267, 38.016491, 36.325619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245584, 37.758289, 36.629616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648524, 0.610862, 0.454163,
		-0.757411, 0.458448, 0.464923,
		0.075794, -0.645502, 0.759989,
		26.268322, 37.564640, 36.857613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241665, 38.436089, 36.882557>,  <26.215267, 38.016491, 36.325619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241665, 38.436089, 36.882557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392574, 38.083252, 36.995399>,  <26.483120, 37.871552, 37.063107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392574, 38.083252, 36.995399>,  <26.241665, 38.436089, 36.882557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392574, 38.083252, 36.995399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791194, 0.465318, 0.396852,
		-0.481330, 0.073484, 0.873454,
		0.377272, -0.882088, 0.282111,
		26.505756, 37.818626, 37.080032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634958, 38.702332, 37.460117>,  <26.241665, 38.436089, 36.882557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634958, 38.702332, 37.460117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767593, 38.335697, 37.370739>,  <26.847174, 38.115719, 37.317112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767593, 38.335697, 37.370739>,  <26.634958, 38.702332, 37.460117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767593, 38.335697, 37.370739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943403, 0.323772, 0.071856,
		0.006482, -0.234622, 0.972065,
		0.331586, -0.916583, -0.223441,
		26.867069, 38.060722, 37.303707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081753, 38.353981, 38.059109>,  <26.634958, 38.702332, 37.460117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081753, 38.353981, 38.059109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154835, 38.207268, 37.694233>,  <27.198685, 38.119240, 37.475307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154835, 38.207268, 37.694233>,  <27.081753, 38.353981, 38.059109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154835, 38.207268, 37.694233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957387, 0.277449, 0.080198,
		0.223671, -0.887970, 0.401845,
		0.182706, -0.366784, -0.912189,
		27.209646, 38.097233, 37.420578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769279, 38.330639, 37.676666>,  <27.081753, 38.353981, 38.059109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769279, 38.330639, 37.676666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617193, 38.046360, 37.913429>,  <27.525942, 37.875793, 38.055485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617193, 38.046360, 37.913429>,  <27.769279, 38.330639, 37.676666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617193, 38.046360, 37.913429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577655, -0.317327, -0.752076,
		0.722322, -0.627868, -0.289882,
		-0.380217, -0.710693, 0.591904,
		27.503128, 37.833153, 38.091000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710960, 37.845371, 37.270454>,  <27.769279, 38.330639, 37.676666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710960, 37.845371, 37.270454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439178, 37.764206, 37.552494>,  <27.276110, 37.715508, 37.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439178, 37.764206, 37.552494>,  <27.710960, 37.845371, 37.270454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439178, 37.764206, 37.552494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589153, -0.421886, -0.689138,
		0.437310, -0.883650, 0.167102,
		-0.679455, -0.202918, 0.705100,
		27.235342, 37.703331, 37.764023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520830, 37.113747, 37.203564>,  <27.710960, 37.845371, 37.270454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520830, 37.113747, 37.203564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237513, 37.357975, 37.345284>,  <27.067522, 37.504513, 37.430313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237513, 37.357975, 37.345284>,  <27.520830, 37.113747, 37.203564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237513, 37.357975, 37.345284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661245, -0.398143, -0.635797,
		-0.247139, -0.684606, 0.685738,
		-0.708292, 0.610571, 0.354296,
		27.025024, 37.541145, 37.451572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046337, 36.709759, 37.471138>,  <27.520830, 37.113747, 37.203564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046337, 36.709759, 37.471138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878841, 37.057671, 37.366726>,  <26.778343, 37.266418, 37.304081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878841, 37.057671, 37.366726>,  <27.046337, 36.709759, 37.471138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878841, 37.057671, 37.366726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778266, -0.491837, -0.390382,
		-0.467928, 0.039676, 0.882875,
		-0.418742, 0.869783, -0.261023,
		26.753220, 37.318604, 37.288418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397905, 36.649475, 37.776096>,  <27.046337, 36.709759, 37.471138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397905, 36.649475, 37.776096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370275, 36.916527, 37.479584>,  <26.353697, 37.076759, 37.301678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370275, 36.916527, 37.479584>,  <26.397905, 36.649475, 37.776096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370275, 36.916527, 37.479584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697639, -0.563479, -0.442483,
		-0.713112, 0.486583, 0.504687,
		-0.069076, 0.667629, -0.741282,
		26.349552, 37.116814, 37.257198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674170, 36.665985, 37.694984>,  <26.397905, 36.649475, 37.776096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674170, 36.665985, 37.694984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814640, 36.851936, 37.369884>,  <25.898922, 36.963509, 37.174824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814640, 36.851936, 37.369884>,  <25.674170, 36.665985, 37.694984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814640, 36.851936, 37.369884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738148, -0.396569, -0.545775,
		-0.576031, 0.791593, 0.203884,
		0.351178, 0.464880, -0.812749,
		25.919992, 36.991402, 37.126060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151363, 37.032475, 37.304520>,  <25.674170, 36.665985, 37.694984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151363, 37.032475, 37.304520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437613, 36.970421, 37.032104>,  <25.609362, 36.933189, 36.868656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437613, 36.970421, 37.032104>,  <25.151363, 37.032475, 37.304520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437613, 36.970421, 37.032104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671560, -0.420931, -0.609774,
		-0.192074, 0.893728, -0.405410,
		0.715622, -0.155136, -0.681042,
		25.652300, 36.923882, 36.827793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728945, 37.165409, 36.712082>,  <25.151363, 37.032475, 37.304520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728945, 37.165409, 36.712082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069033, 36.983032, 36.606831>,  <25.273087, 36.873604, 36.543678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069033, 36.983032, 36.606831>,  <24.728945, 37.165409, 36.712082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069033, 36.983032, 36.606831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508306, -0.581025, -0.635638,
		0.136930, 0.674184, -0.725759,
		0.850220, -0.455946, -0.263132,
		25.324099, 36.846249, 36.527889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948246, 37.198589, 35.934635>,  <24.728945, 37.165409, 36.712082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948246, 37.198589, 35.934635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046320, 36.854031, 36.112572>,  <25.105164, 36.647297, 36.219334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.046320, 36.854031, 36.112572>,  <24.948246, 37.198589, 35.934635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.046320, 36.854031, 36.112572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543923, -0.502053, -0.672377,
		0.802516, -0.077104, -0.591627,
		0.245185, -0.861392, 0.444845,
		25.119875, 36.595612, 36.246025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630415, 37.630711, 35.913357>,  <24.948246, 37.198589, 35.934635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630415, 37.630711, 35.913357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753908, 37.252697, 35.870296>,  <25.828005, 37.025887, 35.844460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753908, 37.252697, 35.870296>,  <25.630415, 37.630711, 35.913357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753908, 37.252697, 35.870296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703276, -0.150607, -0.694781,
		0.640379, 0.290214, -0.711119,
		0.308735, -0.945036, -0.107655,
		25.846529, 36.969185, 35.838001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583996, 37.385509, 35.274929>,  <25.630415, 37.630711, 35.913357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583996, 37.385509, 35.274929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633720, 37.022190, 35.434704>,  <25.663555, 36.804199, 35.530567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633720, 37.022190, 35.434704>,  <25.583996, 37.385509, 35.274929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633720, 37.022190, 35.434704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486805, -0.406610, -0.773104,
		0.864620, -0.098340, -0.492709,
		0.124314, -0.908294, 0.399435,
		25.671015, 36.749702, 35.554535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801414, 36.910934, 34.826698>,  <25.583996, 37.385509, 35.274929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801414, 36.910934, 34.826698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611391, 36.676136, 35.088921>,  <25.497377, 36.535255, 35.246254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611391, 36.676136, 35.088921>,  <25.801414, 36.910934, 34.826698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611391, 36.676136, 35.088921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517283, -0.416385, -0.747691,
		0.711856, -0.694305, -0.105836,
		-0.475057, -0.586996, 0.655559,
		25.468874, 36.500038, 35.285587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806986, 36.218460, 34.561890>,  <25.801414, 36.910934, 34.826698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806986, 36.218460, 34.561890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515251, 36.171585, 34.831509>,  <25.340210, 36.143459, 34.993279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515251, 36.171585, 34.831509>,  <25.806986, 36.218460, 34.561890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515251, 36.171585, 34.831509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509551, -0.564397, -0.649471,
		0.456539, -0.817143, 0.351922,
		-0.729335, -0.117187, 0.674046,
		25.296452, 36.136429, 35.033722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709799, 35.457760, 34.636246>,  <25.806986, 36.218460, 34.561890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709799, 35.457760, 34.636246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383587, 35.641293, 34.777321>,  <25.187860, 35.751411, 34.861965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383587, 35.641293, 34.777321>,  <25.709799, 35.457760, 34.636246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383587, 35.641293, 34.777321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569256, -0.526269, -0.631655,
		-0.104216, -0.715901, 0.690380,
		-0.815528, 0.458832, 0.352686,
		25.138927, 35.778942, 34.883125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302729, 35.336750, 35.163818>,  <25.709799, 35.457760, 34.636246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302729, 35.336750, 35.163818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629604, 35.109577, 35.203129>,  <26.825729, 34.973274, 35.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629604, 35.109577, 35.203129>,  <26.302729, 35.336750, 35.163818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629604, 35.109577, 35.203129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224126, 0.470206, 0.853624,
		-0.531010, -0.675545, 0.511535,
		0.817188, -0.567931, 0.098276,
		26.874762, 34.939198, 35.232613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223236, 34.965157, 35.818882>,  <26.302729, 35.336750, 35.163818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223236, 34.965157, 35.818882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604534, 35.043644, 35.726948>,  <26.833313, 35.090736, 35.671787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604534, 35.043644, 35.726948>,  <26.223236, 34.965157, 35.818882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604534, 35.043644, 35.726948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163292, 0.305526, 0.938078,
		0.254288, -0.931747, 0.259200,
		0.953244, 0.196216, -0.229838,
		26.890507, 35.102509, 35.657997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827816, 34.587990, 36.210522>,  <26.223236, 34.965157, 35.818882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827816, 34.587990, 36.210522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850576, 34.963581, 36.074833>,  <26.864233, 35.188938, 35.993420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850576, 34.963581, 36.074833>,  <26.827816, 34.587990, 36.210522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850576, 34.963581, 36.074833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116326, 0.331226, 0.936353,
		0.991580, -0.092741, -0.090381,
		0.056902, 0.938983, -0.339225,
		26.867647, 35.245277, 35.973064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500444, 34.428387, 36.421356>,  <26.827816, 34.587990, 36.210522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500444, 34.428387, 36.421356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786581, 34.158688, 36.347954>,  <27.958263, 33.996868, 36.303913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786581, 34.158688, 36.347954>,  <27.500444, 34.428387, 36.421356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786581, 34.158688, 36.347954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698712, -0.686688, -0.200652,
		0.009276, 0.271755, -0.962322,
		0.715343, -0.674247, -0.183509,
		28.001184, 33.956413, 36.292900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370815, 34.117538, 35.794750>,  <27.500444, 34.428387, 36.421356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370815, 34.117538, 35.794750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588665, 33.868061, 36.019032>,  <27.719374, 33.718372, 36.153599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588665, 33.868061, 36.019032>,  <27.370815, 34.117538, 35.794750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588665, 33.868061, 36.019032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645180, -0.738718, -0.195033,
		0.535843, -0.255536, -0.804720,
		0.544623, -0.623696, 0.560703,
		27.752052, 33.680954, 36.187244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418842, 33.474926, 35.393177>,  <27.370815, 34.117538, 35.794750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418842, 33.474926, 35.393177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432167, 33.392288, 35.784321>,  <27.440163, 33.342705, 36.019009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432167, 33.392288, 35.784321>,  <27.418842, 33.474926, 35.393177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432167, 33.392288, 35.784321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702132, -0.701129, -0.124209,
		0.711267, -0.682449, -0.168413,
		0.033313, -0.206594, 0.977859,
		27.442162, 33.330311, 36.077679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433750, 32.722767, 35.435246>,  <27.418842, 33.474926, 35.393177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433750, 32.722767, 35.435246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333883, 32.828331, 35.807915>,  <27.273962, 32.891670, 36.031517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333883, 32.828331, 35.807915>,  <27.433750, 32.722767, 35.435246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333883, 32.828331, 35.807915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769129, -0.638595, -0.025217,
		0.588308, -0.722874, 0.362419,
		-0.249668, 0.263912, 0.931674,
		27.258984, 32.907505, 36.087418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368860, 32.207340, 35.892174>,  <27.433750, 32.722767, 35.435246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368860, 32.207340, 35.892174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141325, 32.531040, 35.950886>,  <27.004805, 32.725258, 35.986111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141325, 32.531040, 35.950886>,  <27.368860, 32.207340, 35.892174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141325, 32.531040, 35.950886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808003, -0.583177, 0.083879,
		0.153476, -0.070884, 0.985607,
		-0.568837, 0.809247, 0.146778,
		26.970675, 32.773815, 35.994919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582378, 31.425936, 35.951977>,  <27.368860, 32.207340, 35.892174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582378, 31.425936, 35.951977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822536, 31.692621, 36.128620>,  <27.966631, 31.852633, 36.234604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.822536, 31.692621, 36.128620>,  <27.582378, 31.425936, 35.951977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822536, 31.692621, 36.128620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746975, 0.664744, 0.011970,
		-0.285573, -0.337055, 0.897130,
		0.600396, 0.666715, 0.441605,
		28.002655, 31.892635, 36.261101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480429, 31.897963, 36.612225>,  <27.582378, 31.425936, 35.951977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480429, 31.897963, 36.612225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235819, 32.210606, 36.661427>,  <27.089052, 32.398190, 36.690948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235819, 32.210606, 36.661427>,  <27.480429, 31.897963, 36.612225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235819, 32.210606, 36.661427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783870, -0.577325, -0.228568,
		-0.107634, -0.236198, 0.965725,
		-0.611524, 0.781605, 0.123009,
		27.052362, 32.445087, 36.698330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956858, 31.501276, 36.958775>,  <27.480429, 31.897963, 36.612225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956858, 31.501276, 36.958775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782158, 31.843393, 36.847256>,  <26.677338, 32.048664, 36.780346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782158, 31.843393, 36.847256>,  <26.956858, 31.501276, 36.958775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782158, 31.843393, 36.847256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851066, -0.493253, -0.179966,
		-0.291439, 0.158671, 0.943338,
		-0.436750, 0.855292, -0.278792,
		26.651133, 32.099979, 36.763618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329615, 31.573906, 37.364788>,  <26.956858, 31.501276, 36.958775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.329615, 31.573906, 37.364788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296165, 31.800745, 37.037029>,  <26.276096, 31.936848, 36.840374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296165, 31.800745, 37.037029>,  <26.329615, 31.573906, 37.364788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296165, 31.800745, 37.037029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830537, -0.494039, -0.257162,
		-0.550649, 0.659034, 0.512308,
		-0.083622, 0.567097, -0.819395,
		26.271078, 31.970875, 36.791210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.555861, 31.854214, 37.260124>,  <26.329615, 31.573906, 37.364788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.555861, 31.854214, 37.260124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750668, 31.784595, 36.917774>,  <25.867552, 31.742825, 36.712364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750668, 31.784595, 36.917774>,  <25.555861, 31.854214, 37.260124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750668, 31.784595, 36.917774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788610, -0.508803, -0.345273,
		-0.375379, 0.843106, -0.385051,
		0.487016, -0.174047, -0.855876,
		25.896772, 31.732382, 36.661011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357704, 31.256001, 36.791893>,  <25.555861, 31.854214, 37.260124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357704, 31.256001, 36.791893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182945, 31.551212, 36.586201>,  <25.078091, 31.728340, 36.462784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.182945, 31.551212, 36.586201>,  <25.357704, 31.256001, 36.791893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.182945, 31.551212, 36.586201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890778, 0.434453, -0.133284,
		0.125041, -0.516297, -0.847232,
		-0.436897, 0.738030, -0.514230,
		25.051876, 31.772621, 36.431931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.544506, 31.352659, 36.024120>,  <25.357704, 31.256001, 36.791893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.544506, 31.352659, 36.024120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467203, 31.692133, 36.221050>,  <25.420822, 31.895817, 36.339207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467203, 31.692133, 36.221050>,  <25.544506, 31.352659, 36.024120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467203, 31.692133, 36.221050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964422, 0.256573, -0.063717,
		-0.180393, 0.462496, -0.868076,
		-0.193256, 0.848686, 0.492325,
		25.409225, 31.946739, 36.368748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963497, 31.838034, 35.724468>,  <25.544506, 31.352659, 36.024120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963497, 31.838034, 35.724468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867399, 31.997238, 36.078613>,  <25.809740, 32.092762, 36.291100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867399, 31.997238, 36.078613>,  <25.963497, 31.838034, 35.724468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867399, 31.997238, 36.078613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923576, 0.374484, 0.082269,
		-0.298811, 0.837466, -0.457562,
		-0.240247, 0.398010, 0.885364,
		25.795324, 32.116642, 36.344223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200911, 32.606285, 35.683849>,  <25.963497, 31.838034, 35.724468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200911, 32.606285, 35.683849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208147, 32.447449, 36.050888>,  <26.212488, 32.352146, 36.271111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208147, 32.447449, 36.050888>,  <26.200911, 32.606285, 35.683849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208147, 32.447449, 36.050888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914753, 0.377045, 0.145132,
		-0.403608, 0.836753, 0.370060,
		0.018090, -0.397090, 0.917601,
		26.213573, 32.328323, 36.326168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190638, 33.191513, 36.193535>,  <26.200911, 32.606285, 35.683849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190638, 33.191513, 36.193535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333487, 32.865402, 36.375866>,  <26.419195, 32.669735, 36.485264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.333487, 32.865402, 36.375866>,  <26.190638, 33.191513, 36.193535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333487, 32.865402, 36.375866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863235, 0.474478, 0.172325,
		-0.356775, 0.331949, 0.873225,
		0.357123, -0.815279, 0.455832,
		26.440624, 32.620819, 36.512615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308006, 33.455029, 36.831402>,  <26.190638, 33.191513, 36.193535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308006, 33.455029, 36.831402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546339, 33.146282, 36.742664>,  <26.689339, 32.961037, 36.689423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546339, 33.146282, 36.742664>,  <26.308006, 33.455029, 36.831402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546339, 33.146282, 36.742664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794468, 0.606901, 0.022206,
		0.117495, -0.189477, 0.974830,
		0.595832, -0.771862, -0.221841,
		26.725088, 32.914722, 36.676113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901541, 33.391979, 37.245792>,  <26.308006, 33.455029, 36.831402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901541, 33.391979, 37.245792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004108, 33.236759, 36.891693>,  <27.065649, 33.143627, 36.679234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004108, 33.236759, 36.891693>,  <26.901541, 33.391979, 37.245792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004108, 33.236759, 36.891693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893250, 0.445030, 0.063653,
		0.369261, -0.807070, 0.460744,
		0.256417, -0.388055, -0.885248,
		27.081034, 33.120342, 36.626118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446985, 32.964607, 37.329639>,  <26.901541, 33.391979, 37.245792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446985, 32.964607, 37.329639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467495, 33.074303, 36.945522>,  <27.479801, 33.140121, 36.715054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467495, 33.074303, 36.945522>,  <27.446985, 32.964607, 37.329639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467495, 33.074303, 36.945522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947994, 0.289089, 0.133175,
		0.314132, -0.917181, -0.245152,
		0.051275, 0.274237, -0.960294,
		27.482878, 33.156574, 36.657433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147383, 32.830086, 37.110989>,  <27.446985, 32.964607, 37.329639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147383, 32.830086, 37.110989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031487, 33.100525, 36.840008>,  <27.961948, 33.262787, 36.677418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031487, 33.100525, 36.840008>,  <28.147383, 32.830086, 37.110989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031487, 33.100525, 36.840008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815919, 0.544490, 0.194440,
		0.500327, -0.496411, -0.709400,
		-0.289739, 0.676097, -0.677454,
		27.944565, 33.303352, 36.636772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728163, 33.109020, 36.641087>,  <28.147383, 32.830086, 37.110989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728163, 33.109020, 36.641087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445257, 33.390320, 36.670002>,  <28.275515, 33.559097, 36.687351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445257, 33.390320, 36.670002>,  <28.728163, 33.109020, 36.641087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445257, 33.390320, 36.670002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706682, 0.700468, 0.099723,
		0.019492, 0.121618, -0.992386,
		-0.707263, 0.703245, 0.072292,
		28.233078, 33.601292, 36.691689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683964, 33.660744, 36.056847>,  <28.728163, 33.109020, 36.641087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683964, 33.660744, 36.056847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586363, 33.790333, 36.422470>,  <28.527802, 33.868084, 36.641846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.586363, 33.790333, 36.422470>,  <28.683964, 33.660744, 36.056847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586363, 33.790333, 36.422470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729485, 0.682372, -0.047121,
		-0.638995, 0.655295, -0.402833,
		-0.244004, 0.323971, 0.914060,
		28.513161, 33.887524, 36.696690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552267, 34.335941, 36.003426>,  <28.683964, 33.660744, 36.056847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552267, 34.335941, 36.003426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673174, 34.280354, 36.380642>,  <28.745718, 34.247002, 36.606972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673174, 34.280354, 36.380642>,  <28.552267, 34.335941, 36.003426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673174, 34.280354, 36.380642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755313, 0.638430, -0.148017,
		-0.581495, 0.757031, 0.297939,
		0.302267, -0.138966, 0.943039,
		28.763853, 34.238663, 36.663555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500097, 34.952076, 36.397930>,  <28.552267, 34.335941, 36.003426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500097, 34.952076, 36.397930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806009, 34.720860, 36.511761>,  <28.989557, 34.582130, 36.580059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806009, 34.720860, 36.511761>,  <28.500097, 34.952076, 36.397930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806009, 34.720860, 36.511761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643876, 0.669814, -0.369829,
		0.023164, 0.466069, 0.884445,
		0.764779, -0.578040, 0.284575,
		29.035442, 34.547447, 36.597134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960381, 35.352009, 36.832710>,  <28.500097, 34.952076, 36.397930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960381, 35.352009, 36.832710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134212, 35.081364, 36.594944>,  <29.238512, 34.918976, 36.452286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134212, 35.081364, 36.594944>,  <28.960381, 35.352009, 36.832710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134212, 35.081364, 36.594944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596065, 0.710849, -0.373363,
		0.675164, -0.192055, 0.712228,
		0.434580, -0.676615, -0.594417,
		29.264587, 34.878380, 36.416618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707254, 35.116020, 37.022846>,  <28.960381, 35.352009, 36.832710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707254, 35.116020, 37.022846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617689, 35.123100, 36.633068>,  <29.563950, 35.127350, 36.399200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617689, 35.123100, 36.633068>,  <29.707254, 35.116020, 37.022846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617689, 35.123100, 36.633068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698396, 0.700293, -0.147762,
		0.679784, -0.713636, -0.169166,
		-0.223914, 0.017699, -0.974448,
		29.550514, 35.128410, 36.340733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270464, 34.965942, 36.574001>,  <29.707254, 35.116020, 37.022846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270464, 34.965942, 36.574001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005512, 35.234566, 36.441177>,  <29.846540, 35.395741, 36.361485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005512, 35.234566, 36.441177>,  <30.270464, 34.965942, 36.574001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005512, 35.234566, 36.441177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721494, 0.691184, -0.041358,
		0.201737, -0.266972, -0.942352,
		-0.662380, 0.671559, -0.332056,
		29.806799, 35.436035, 36.341560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505867, 35.200951, 35.857880>,  <30.270464, 34.965942, 36.574001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505867, 35.200951, 35.857880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290043, 35.450336, 36.084213>,  <30.160547, 35.599968, 36.220013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290043, 35.450336, 36.084213>,  <30.505867, 35.200951, 35.857880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290043, 35.450336, 36.084213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707412, 0.700131, -0.096874,
		-0.456554, 0.348006, -0.818810,
		-0.539562, 0.623464, 0.565831,
		30.128174, 35.637375, 36.253963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098299, 35.487076, 36.126171>,  <30.505867, 35.200951, 35.857880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098299, 35.487076, 36.126171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450109, 35.673164, 36.166176>,  <31.661196, 35.784817, 36.190178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450109, 35.673164, 36.166176>,  <31.098299, 35.487076, 36.126171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450109, 35.673164, 36.166176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285450, -0.347665, -0.893111,
		-0.380728, 0.814061, -0.438579,
		0.879525, 0.465224, 0.100008,
		31.713966, 35.812733, 36.196178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204729, 35.887959, 35.508110>,  <31.098299, 35.487076, 36.126171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204729, 35.887959, 35.508110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534912, 35.742599, 35.680882>,  <31.733023, 35.655384, 35.784542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534912, 35.742599, 35.680882>,  <31.204729, 35.887959, 35.508110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534912, 35.742599, 35.680882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240291, -0.466176, -0.851434,
		0.510761, 0.806612, -0.297489,
		0.825459, -0.363395, 0.431927,
		31.782551, 35.633579, 35.810459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790169, 36.036388, 35.024956>,  <31.204729, 35.887959, 35.508110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790169, 36.036388, 35.024956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877323, 35.738876, 35.277721>,  <31.929617, 35.560371, 35.429382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877323, 35.738876, 35.277721>,  <31.790169, 36.036388, 35.024956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877323, 35.738876, 35.277721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363161, -0.539194, -0.759858,
		0.905891, 0.395051, 0.152627,
		0.217887, -0.743777, 0.631918,
		31.942690, 35.515743, 35.467297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347248, 35.762402, 34.657135>,  <31.790169, 36.036388, 35.024956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347248, 35.762402, 34.657135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218403, 35.496189, 34.926449>,  <32.141094, 35.336464, 35.088039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218403, 35.496189, 34.926449>,  <32.347248, 35.762402, 34.657135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218403, 35.496189, 34.926449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240527, -0.745390, -0.621724,
		0.915636, -0.038322, 0.400178,
		-0.322115, -0.665527, 0.673288,
		32.121769, 35.296532, 35.128437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864151, 35.290272, 34.861530>,  <32.347248, 35.762402, 34.657135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864151, 35.290272, 34.861530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507397, 35.112705, 34.896114>,  <32.293343, 35.006165, 34.916866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507397, 35.112705, 34.896114>,  <32.864151, 35.290272, 34.861530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507397, 35.112705, 34.896114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302989, -0.728435, -0.614476,
		0.335754, -0.521848, 0.784184,
		-0.891890, -0.443912, 0.086460,
		32.239830, 34.979530, 34.922054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942753, 34.724514, 35.315613>,  <32.864151, 35.290272, 34.861530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942753, 34.724514, 35.315613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681629, 34.690811, 35.014484>,  <32.524956, 34.670589, 34.833809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681629, 34.690811, 35.014484>,  <32.942753, 34.724514, 35.315613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681629, 34.690811, 35.014484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400219, -0.882134, -0.248323,
		-0.643166, -0.463401, 0.609587,
		-0.652811, -0.084256, -0.752821,
		32.485786, 34.665535, 34.788639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332397, 34.163559, 35.366245>,  <32.942753, 34.724514, 35.315613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332397, 34.163559, 35.366245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463646, 34.243111, 34.996861>,  <32.542393, 34.290840, 34.775230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463646, 34.243111, 34.996861>,  <32.332397, 34.163559, 35.366245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463646, 34.243111, 34.996861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375682, -0.924424, -0.065599,
		-0.866718, -0.325405, -0.378036,
		0.328119, 0.198877, -0.923464,
		32.562080, 34.302773, 34.719822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695377, 33.447479, 35.001045>,  <32.332397, 34.163559, 35.366245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695377, 33.447479, 35.001045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628273, 33.189297, 35.299103>,  <32.588009, 33.034386, 35.477940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628273, 33.189297, 35.299103>,  <32.695377, 33.447479, 35.001045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628273, 33.189297, 35.299103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133715, -0.733976, -0.665882,
		0.976717, -0.211346, 0.036825,
		-0.167761, -0.645455, 0.745147,
		32.577946, 32.995659, 35.522648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181660, 32.955311, 35.091667>,  <32.695377, 33.447479, 35.001045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181660, 32.955311, 35.091667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837818, 32.795242, 35.218758>,  <32.631512, 32.699203, 35.295010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837818, 32.795242, 35.218758>,  <33.181660, 32.955311, 35.091667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837818, 32.795242, 35.218758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009481, -0.609217, -0.792947,
		0.510875, -0.684632, 0.519890,
		-0.859603, -0.400168, 0.317724,
		32.579937, 32.675194, 35.314075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127087, 32.141441, 35.227676>,  <33.181660, 32.955311, 35.091667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127087, 32.141441, 35.227676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813366, 32.341209, 35.080467>,  <32.625134, 32.461071, 34.992142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813366, 32.341209, 35.080467>,  <33.127087, 32.141441, 35.227676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813366, 32.341209, 35.080467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161270, -0.408705, -0.898305,
		-0.599047, -0.763897, 0.240008,
		-0.784305, 0.499421, -0.368027,
		32.578075, 32.491035, 34.970058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759617, 31.684509, 34.828285>,  <33.127087, 32.141441, 35.227676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759617, 31.684509, 34.828285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576992, 32.018097, 34.704319>,  <32.467419, 32.218250, 34.629940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576992, 32.018097, 34.704319>,  <32.759617, 31.684509, 34.828285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576992, 32.018097, 34.704319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101690, -0.297147, -0.949401,
		-0.883861, -0.464976, 0.050860,
		-0.456561, 0.833967, -0.309920,
		32.440025, 32.268288, 34.611343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237175, 31.451950, 34.349976>,  <32.759617, 31.684509, 34.828285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237175, 31.451950, 34.349976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301418, 31.837069, 34.263046>,  <32.339966, 32.068138, 34.210888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301418, 31.837069, 34.263046>,  <32.237175, 31.451950, 34.349976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301418, 31.837069, 34.263046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125149, -0.238274, -0.963101,
		-0.979052, 0.127483, -0.158762,
		0.160608, 0.962795, -0.217328,
		32.349602, 32.125908, 34.197849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766951, 31.611156, 33.861633>,  <32.237175, 31.451950, 34.349976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766951, 31.611156, 33.861633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054874, 31.888132, 33.842018>,  <32.227627, 32.054317, 33.830250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054874, 31.888132, 33.842018>,  <31.766951, 31.611156, 33.861633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054874, 31.888132, 33.842018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075617, -0.148440, -0.986026,
		-0.690041, 0.706043, -0.159209,
		0.719809, 0.692437, -0.049041,
		32.270817, 32.095863, 33.827305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637125, 31.898577, 33.165466>,  <31.766951, 31.611156, 33.861633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637125, 31.898577, 33.165466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009750, 31.999254, 33.270416>,  <32.233326, 32.059662, 33.333385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009750, 31.999254, 33.270416>,  <31.637125, 31.898577, 33.165466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009750, 31.999254, 33.270416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306562, -0.155786, -0.939016,
		-0.195468, 0.955187, -0.222284,
		0.931564, 0.251692, 0.262373,
		32.289219, 32.074760, 33.349129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843170, 32.296700, 32.636524>,  <31.637125, 31.898577, 33.165466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843170, 32.296700, 32.636524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175106, 32.160076, 32.813023>,  <32.374268, 32.078102, 32.918922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175106, 32.160076, 32.813023>,  <31.843170, 32.296700, 32.636524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175106, 32.160076, 32.813023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382748, -0.226998, -0.895531,
		0.406037, 0.912037, -0.057642,
		0.829842, -0.341557, 0.441250,
		32.424057, 32.057610, 32.945396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257885, 32.601055, 32.283596>,  <31.843170, 32.296700, 32.636524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257885, 32.601055, 32.283596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474957, 32.313839, 32.457912>,  <32.605202, 32.141510, 32.562504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474957, 32.313839, 32.457912>,  <32.257885, 32.601055, 32.283596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474957, 32.313839, 32.457912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562910, -0.074169, -0.823183,
		0.623399, 0.692040, 0.363941,
		0.542683, -0.718038, 0.435794,
		32.637760, 32.098427, 32.588650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978313, 32.801361, 32.191406>,  <32.257885, 32.601055, 32.283596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978313, 32.801361, 32.191406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976749, 32.405502, 32.248783>,  <32.975811, 32.167988, 32.283211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976749, 32.405502, 32.248783>,  <32.978313, 32.801361, 32.191406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976749, 32.405502, 32.248783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524813, -0.124129, -0.842119,
		0.851209, 0.071990, 0.519866,
		-0.003906, -0.989651, 0.143441,
		32.975578, 32.108608, 32.291817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780006, 32.433590, 32.199306>,  <32.978313, 32.801361, 32.191406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780006, 32.433590, 32.199306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492500, 32.176033, 32.094406>,  <33.319996, 32.021500, 32.031464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492500, 32.176033, 32.094406>,  <33.780006, 32.433590, 32.199306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492500, 32.176033, 32.094406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481222, -0.188499, -0.856092,
		0.501797, -0.741532, 0.445342,
		-0.718766, -0.643893, -0.262254,
		33.276871, 31.982864, 32.015732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134060, 32.071140, 31.734346>,  <33.780006, 32.433590, 32.199306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134060, 32.071140, 31.734346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782822, 31.883633, 31.695963>,  <33.572079, 31.771128, 31.672934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782822, 31.883633, 31.695963>,  <34.134060, 32.071140, 31.734346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782822, 31.883633, 31.695963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299336, -0.381704, -0.874471,
		0.373300, -0.796590, 0.475491,
		-0.878092, -0.468772, -0.095958,
		33.519394, 31.743002, 31.667175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233860, 31.380697, 31.481760>,  <34.134060, 32.071140, 31.734346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233860, 31.380697, 31.481760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850426, 31.433573, 31.380852>,  <33.620365, 31.465298, 31.320307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850426, 31.433573, 31.380852>,  <34.233860, 31.380697, 31.481760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850426, 31.433573, 31.380852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178200, -0.412574, -0.893324,
		-0.222166, -0.901282, 0.371931,
		-0.958586, 0.132188, -0.252268,
		33.562851, 31.473230, 31.305172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830494, 30.677189, 31.217482>,  <34.233860, 31.380697, 31.481760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830494, 30.677189, 31.217482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677181, 31.012659, 31.062710>,  <33.585194, 31.213942, 30.969847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677181, 31.012659, 31.062710>,  <33.830494, 30.677189, 31.217482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677181, 31.012659, 31.062710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187930, -0.339346, -0.921697,
		-0.904310, -0.425986, -0.027547,
		-0.383282, 0.838677, -0.386930,
		33.562195, 31.264263, 30.946630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716488, 30.380569, 30.629824>,  <33.830494, 30.677189, 31.217482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716488, 30.380569, 30.629824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682453, 30.773621, 30.563856>,  <33.662033, 31.009451, 30.524275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682453, 30.773621, 30.563856>,  <33.716488, 30.380569, 30.629824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682453, 30.773621, 30.563856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215771, -0.143420, -0.965854,
		-0.972730, -0.117769, -0.199819,
		-0.085090, 0.982630, -0.164920,
		33.656925, 31.068409, 30.514380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210953, 30.529707, 30.158047>,  <33.716488, 30.380569, 30.629824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210953, 30.529707, 30.158047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443783, 30.854599, 30.142694>,  <33.583481, 31.049534, 30.133482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443783, 30.854599, 30.142694>,  <33.210953, 30.529707, 30.158047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443783, 30.854599, 30.142694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014569, -0.036779, -0.999217,
		-0.813006, 0.582176, -0.009575,
		0.582073, 0.812230, -0.038383,
		33.618404, 31.098269, 30.131180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024292, 30.950682, 29.587215>,  <33.210953, 30.529707, 30.158047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024292, 30.950682, 29.587215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398800, 31.074268, 29.654070>,  <33.623505, 31.148420, 29.694181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398800, 31.074268, 29.654070>,  <33.024292, 30.950682, 29.587215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398800, 31.074268, 29.654070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180728, -0.015694, -0.983408,
		-0.301217, 0.950943, -0.070533,
		0.936272, 0.308967, 0.167135,
		33.679680, 31.166958, 29.704210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145844, 31.451923, 29.102346>,  <33.024292, 30.950682, 29.587215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145844, 31.451923, 29.102346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506996, 31.322220, 29.215248>,  <33.723686, 31.244398, 29.282990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506996, 31.322220, 29.215248>,  <33.145844, 31.451923, 29.102346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506996, 31.322220, 29.215248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290601, -0.023479, -0.956556,
		0.316800, 0.945676, 0.073032,
		0.902878, -0.324261, 0.282253,
		33.777859, 31.224941, 29.299923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569859, 31.784897, 28.566240>,  <33.145844, 31.451923, 29.102346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569859, 31.784897, 28.566240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819019, 31.530998, 28.749147>,  <33.968513, 31.378658, 28.858891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819019, 31.530998, 28.749147>,  <33.569859, 31.784897, 28.566240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819019, 31.530998, 28.749147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376390, -0.269244, -0.886475,
		0.685804, 0.724295, 0.071200,
		0.622899, -0.634747, 0.457266,
		34.005890, 31.340574, 28.886328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264660, 31.982443, 28.350670>,  <33.569859, 31.784897, 28.566240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264660, 31.982443, 28.350670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265007, 31.599524, 28.466312>,  <34.265217, 31.369772, 28.535698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265007, 31.599524, 28.466312>,  <34.264660, 31.982443, 28.350670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265007, 31.599524, 28.466312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454018, -0.257213, -0.853059,
		0.890992, 0.132000, 0.434406,
		0.000869, -0.957297, 0.289105,
		34.265266, 31.312334, 28.553043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945061, 31.725124, 28.272118>,  <34.264660, 31.982443, 28.350670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945061, 31.725124, 28.272118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716331, 31.396976, 28.273329>,  <34.579094, 31.200087, 28.274055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716331, 31.396976, 28.273329>,  <34.945061, 31.725124, 28.272118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716331, 31.396976, 28.273329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521299, -0.366204, -0.770806,
		0.633456, -0.439186, 0.637063,
		-0.571822, -0.820372, 0.003027,
		34.544785, 31.150866, 28.274237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382385, 31.276863, 27.937698>,  <34.945061, 31.725124, 28.272118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382385, 31.276863, 27.937698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044983, 31.067829, 27.888067>,  <34.842541, 30.942410, 27.858288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044983, 31.067829, 27.888067>,  <35.382385, 31.276863, 27.937698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044983, 31.067829, 27.888067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374271, -0.406183, -0.833629,
		0.385242, -0.749614, 0.538208,
		-0.843511, -0.522584, -0.124080,
		34.791931, 30.911055, 27.850843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621071, 30.588554, 27.770563>,  <35.382385, 31.276863, 27.937698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621071, 30.588554, 27.770563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244019, 30.610916, 27.638912>,  <35.017788, 30.624332, 27.559921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244019, 30.610916, 27.638912>,  <35.621071, 30.588554, 27.770563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244019, 30.610916, 27.638912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269336, -0.455156, -0.848699,
		-0.197247, -0.888655, 0.413988,
		-0.942630, 0.055902, -0.329125,
		34.961231, 30.627687, 27.540174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612122, 29.940550, 27.294920>,  <35.621071, 30.588554, 27.770563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612122, 29.940550, 27.294920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273190, 30.126022, 27.191357>,  <35.069832, 30.237307, 27.129219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273190, 30.126022, 27.191357>,  <35.612122, 29.940550, 27.294920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273190, 30.126022, 27.191357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007273, -0.497609, -0.867371,
		-0.531024, -0.733063, 0.425009,
		-0.847326, 0.463686, -0.258910,
		35.018990, 30.265127, 27.113684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276493, 29.458475, 26.906933>,  <35.612122, 29.940550, 27.294920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276493, 29.458475, 26.906933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126644, 29.800013, 26.762373>,  <35.036736, 30.004934, 26.675636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126644, 29.800013, 26.762373>,  <35.276493, 29.458475, 26.906933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126644, 29.800013, 26.762373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091510, -0.353833, -0.930821,
		-0.922651, -0.381777, 0.054419,
		-0.374621, 0.853843, -0.361401,
		35.014259, 30.056166, 26.653954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847458, 29.221189, 26.328466>,  <35.276493, 29.458475, 26.906933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847458, 29.221189, 26.328466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935173, 29.610830, 26.306421>,  <34.987801, 29.844614, 26.293194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935173, 29.610830, 26.306421>,  <34.847458, 29.221189, 26.328466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935173, 29.610830, 26.306421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080658, -0.074396, -0.993962,
		-0.972320, 0.213519, -0.094884,
		0.219289, 0.974102, -0.055115,
		35.000961, 29.903061, 26.289886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628208, 29.488956, 25.669291>,  <34.847458, 29.221189, 26.328466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628208, 29.488956, 25.669291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855518, 29.801355, 25.772911>,  <34.991905, 29.988794, 25.835083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.855518, 29.801355, 25.772911>,  <34.628208, 29.488956, 25.669291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855518, 29.801355, 25.772911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126405, 0.228229, -0.965367,
		-0.813070, 0.581342, 0.030976,
		0.568278, 0.780995, 0.259051,
		35.026001, 30.035654, 25.850626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351658, 30.061834, 25.224842>,  <34.628208, 29.488956, 25.669291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351658, 30.061834, 25.224842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722675, 30.131084, 25.357325>,  <34.945286, 30.172634, 25.436815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722675, 30.131084, 25.357325>,  <34.351658, 30.061834, 25.224842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722675, 30.131084, 25.357325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330861, 0.031718, -0.943146,
		-0.173787, 0.984389, -0.027860,
		0.927539, 0.173124, 0.331208,
		35.000938, 30.183022, 25.456686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620609, 30.594580, 24.779560>,  <34.351658, 30.061834, 25.224842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620609, 30.594580, 24.779560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933846, 30.419336, 24.956120>,  <35.121788, 30.314190, 25.062056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933846, 30.419336, 24.956120>,  <34.620609, 30.594580, 24.779560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933846, 30.419336, 24.956120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455082, -0.080074, -0.886842,
		0.423879, 0.895348, 0.136671,
		0.783088, -0.438110, 0.441398,
		35.168774, 30.287903, 25.088539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257477, 30.880733, 24.518789>,  <34.620609, 30.594580, 24.779560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257477, 30.880733, 24.518789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405018, 30.533140, 24.650740>,  <35.493542, 30.324585, 24.729910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405018, 30.533140, 24.650740>,  <35.257477, 30.880733, 24.518789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405018, 30.533140, 24.650740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656626, -0.007583, -0.754178,
		0.657869, 0.494784, 0.567800,
		0.368850, -0.868983, 0.329877,
		35.515675, 30.272446, 24.749702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955364, 31.012203, 24.417944>,  <35.257477, 30.880733, 24.518789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955364, 31.012203, 24.417944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882774, 30.619217, 24.435034>,  <35.839222, 30.383425, 24.445288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882774, 30.619217, 24.435034>,  <35.955364, 31.012203, 24.417944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882774, 30.619217, 24.435034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524435, -0.133438, -0.840929,
		0.831886, -0.130202, 0.539456,
		-0.181475, -0.982467, 0.042723,
		35.828331, 30.324476, 24.447851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631554, 30.652403, 24.280989>,  <35.955364, 31.012203, 24.417944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631554, 30.652403, 24.280989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346336, 30.388111, 24.187178>,  <36.175205, 30.229536, 24.130890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346336, 30.388111, 24.187178>,  <36.631554, 30.652403, 24.280989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346336, 30.388111, 24.187178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456565, -0.183718, -0.870515,
		0.532089, -0.727792, 0.432666,
		-0.713042, -0.660732, -0.234530,
		36.132423, 30.189892, 24.116819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041428, 30.126122, 24.008327>,  <36.631554, 30.652403, 24.280989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041428, 30.126122, 24.008327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677258, 30.010904, 23.889561>,  <36.458755, 29.941774, 23.818300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677258, 30.010904, 23.889561>,  <37.041428, 30.126122, 24.008327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677258, 30.010904, 23.889561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390097, -0.358917, -0.847941,
		0.137675, -0.887812, 0.439131,
		-0.910423, -0.288043, -0.296918,
		36.404129, 29.924492, 23.800486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047821, 29.477083, 23.762766>,  <37.041428, 30.126122, 24.008327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047821, 29.477083, 23.762766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712746, 29.579702, 23.569908>,  <36.511700, 29.641273, 23.454193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712746, 29.579702, 23.569908>,  <37.047821, 29.477083, 23.762766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712746, 29.579702, 23.569908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372764, -0.376636, -0.848052,
		-0.399168, -0.890126, 0.219866,
		-0.837682, 0.256557, -0.482148,
		36.461441, 29.656668, 23.425264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809689, 29.010328, 23.293903>,  <37.047821, 29.477083, 23.762766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809689, 29.010328, 23.293903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626144, 29.330965, 23.140596>,  <36.516018, 29.523348, 23.048613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626144, 29.330965, 23.140596>,  <36.809689, 29.010328, 23.293903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626144, 29.330965, 23.140596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328103, -0.247999, -0.911507,
		-0.825708, -0.544006, -0.149208,
		-0.458862, 0.801594, -0.383265,
		36.488487, 29.571444, 23.025618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485298, 28.759382, 22.597334>,  <36.809689, 29.010328, 23.293903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485298, 28.759382, 22.597334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508343, 29.158691, 22.601944>,  <36.522171, 29.398277, 22.604710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508343, 29.158691, 22.601944>,  <36.485298, 28.759382, 22.597334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508343, 29.158691, 22.601944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327478, -0.007989, -0.944825,
		-0.943101, 0.058209, -0.327372,
		0.057613, 0.998272, 0.011528,
		36.525627, 29.458174, 22.605402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317394, 29.007612, 21.881334>,  <36.485298, 28.759382, 22.597334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317394, 29.007612, 21.881334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521454, 29.307642, 22.049686>,  <36.643890, 29.487659, 22.150698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521454, 29.307642, 22.049686>,  <36.317394, 29.007612, 21.881334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521454, 29.307642, 22.049686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580160, 0.061162, -0.812203,
		-0.634954, 0.658521, -0.403961,
		0.510145, 0.750073, 0.420883,
		36.674496, 29.532663, 22.175951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211021, 29.629068, 21.446447>,  <36.317394, 29.007612, 21.881334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211021, 29.629068, 21.446447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544228, 29.656708, 21.666012>,  <36.744152, 29.673292, 21.797750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544228, 29.656708, 21.666012>,  <36.211021, 29.629068, 21.446447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544228, 29.656708, 21.666012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536710, 0.139813, -0.832102,
		-0.134242, 0.987764, 0.079381,
		0.833019, 0.069099, 0.548912,
		36.794132, 29.677437, 21.830685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576778, 30.139210, 21.036158>,  <36.211021, 29.629068, 21.446447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576778, 30.139210, 21.036158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854702, 29.974333, 21.271900>,  <37.021454, 29.875406, 21.413345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854702, 29.974333, 21.271900>,  <36.576778, 30.139210, 21.036158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854702, 29.974333, 21.271900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671610, 0.078741, -0.736709,
		0.257261, 0.907687, 0.331544,
		0.694807, -0.412194, 0.589355,
		37.063145, 29.850674, 21.448708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199112, 30.626863, 21.090221>,  <36.576778, 30.139210, 21.036158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199112, 30.626863, 21.090221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328056, 30.256800, 21.170389>,  <37.405422, 30.034761, 21.218491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328056, 30.256800, 21.170389>,  <37.199112, 30.626863, 21.090221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328056, 30.256800, 21.170389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661836, 0.068895, -0.746476,
		0.676800, 0.373279, 0.634511,
		0.322359, -0.925157, 0.200421,
		37.424763, 29.979252, 21.230516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956024, 30.693794, 21.273527>,  <37.199112, 30.626863, 21.090221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956024, 30.693794, 21.273527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878521, 30.332600, 21.120125>,  <37.832020, 30.115883, 21.028084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878521, 30.332600, 21.120125>,  <37.956024, 30.693794, 21.273527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878521, 30.332600, 21.120125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817137, 0.067789, -0.572443,
		0.542906, -0.424290, 0.724729,
		-0.193754, -0.902985, -0.383506,
		37.820396, 30.061705, 21.005074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551521, 30.346216, 21.276030>,  <37.956024, 30.693794, 21.273527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551521, 30.346216, 21.276030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363514, 30.108473, 21.015011>,  <38.250710, 29.965828, 20.858400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363514, 30.108473, 21.015011>,  <38.551521, 30.346216, 21.276030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363514, 30.108473, 21.015011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792373, 0.041587, -0.608617,
		0.388873, -0.803125, 0.451406,
		-0.470023, -0.594357, -0.652547,
		38.222507, 29.930166, 20.819246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075695, 29.939938, 20.997295>,  <38.551521, 30.346216, 21.276030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075695, 29.939938, 20.997295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769310, 29.913973, 20.741455>,  <38.585480, 29.898394, 20.587952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769310, 29.913973, 20.741455>,  <39.075695, 29.939938, 20.997295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769310, 29.913973, 20.741455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640457, 0.009331, -0.767937,
		0.055819, -0.997847, 0.034428,
		-0.765963, -0.064915, -0.639599,
		38.539520, 29.894499, 20.549576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314999, 29.465591, 20.507317>,  <39.075695, 29.939938, 20.997295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314999, 29.465591, 20.507317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026730, 29.695030, 20.351566>,  <38.853767, 29.832693, 20.258116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026730, 29.695030, 20.351566>,  <39.314999, 29.465591, 20.507317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026730, 29.695030, 20.351566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489233, 0.022836, -0.871854,
		-0.491203, -0.818818, -0.297080,
		-0.720674, 0.573599, -0.389375,
		38.810528, 29.867109, 20.234755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140316, 29.213032, 19.756493>,  <39.314999, 29.465591, 20.507317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140316, 29.213032, 19.756493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963947, 29.571955, 19.748180>,  <38.858128, 29.787308, 19.743193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963947, 29.571955, 19.748180>,  <39.140316, 29.213032, 19.756493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963947, 29.571955, 19.748180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294258, 0.122644, -0.947824,
		-0.847940, -0.424028, -0.318116,
		-0.440919, 0.897306, -0.020779,
		38.831673, 29.841146, 19.741947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569199, 29.267721, 19.209787>,  <39.140316, 29.213032, 19.756493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569199, 29.267721, 19.209787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731937, 29.625357, 19.284708>,  <38.829582, 29.839937, 19.329660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731937, 29.625357, 19.284708>,  <38.569199, 29.267721, 19.209787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731937, 29.625357, 19.284708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322659, 0.051172, -0.945131,
		-0.854614, 0.444960, -0.267666,
		0.406848, 0.894087, 0.187303,
		38.853992, 29.893583, 19.340899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428528, 29.866552, 18.593416>,  <38.569199, 29.267721, 19.209787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428528, 29.866552, 18.593416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765236, 29.854921, 18.809038>,  <38.967262, 29.847942, 18.938412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.765236, 29.854921, 18.809038>,  <38.428528, 29.866552, 18.593416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765236, 29.854921, 18.809038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539798, 0.033270, -0.841137,
		0.006522, 0.999023, 0.043701,
		0.841769, -0.029075, 0.539054,
		39.017765, 29.846199, 18.970755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010078, 30.392588, 18.396313>,  <38.428528, 29.866552, 18.593416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010078, 30.392588, 18.396313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205383, 30.090204, 18.570728>,  <39.322567, 29.908773, 18.675379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205383, 30.090204, 18.570728>,  <39.010078, 30.392588, 18.396313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205383, 30.090204, 18.570728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731996, 0.082705, -0.676271,
		0.475170, 0.649374, 0.593740,
		0.488258, -0.755958, 0.436041,
		39.351860, 29.863417, 18.701540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805847, 30.520819, 18.351440>,  <39.010078, 30.392588, 18.396313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805847, 30.520819, 18.351440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765537, 30.123171, 18.367294>,  <39.741352, 29.884583, 18.376806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765537, 30.123171, 18.367294>,  <39.805847, 30.520819, 18.351440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765537, 30.123171, 18.367294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701335, -0.099240, -0.705890,
		0.705672, -0.043343, 0.707212,
		-0.100779, -0.994119, 0.039633,
		39.735302, 29.824936, 18.379185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459969, 30.428143, 18.128790>,  <39.805847, 30.520819, 18.351440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459969, 30.428143, 18.128790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307014, 30.065596, 18.056921>,  <40.215240, 29.848068, 18.013800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307014, 30.065596, 18.056921>,  <40.459969, 30.428143, 18.128790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307014, 30.065596, 18.056921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792011, -0.221354, -0.568965,
		0.475919, -0.359866, 0.802494,
		-0.382386, -0.906366, -0.179671,
		40.192299, 29.793686, 18.003019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998684, 30.704977, 18.405897>,  <40.459969, 30.428143, 18.128790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998684, 30.704977, 18.405897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882137, 30.616121, 18.778082>,  <40.812210, 30.562809, 19.001392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882137, 30.616121, 18.778082>,  <40.998684, 30.704977, 18.405897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882137, 30.616121, 18.778082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799902, 0.476883, 0.364334,
		-0.524654, 0.850434, 0.038741,
		-0.291367, -0.222138, 0.930462,
		40.794727, 30.549480, 19.057220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747070, 31.294130, 18.830381>,  <40.998684, 30.704977, 18.405897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747070, 31.294130, 18.830381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957825, 31.025076, 19.038210>,  <41.084278, 30.863644, 19.162907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957825, 31.025076, 19.038210>,  <40.747070, 31.294130, 18.830381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957825, 31.025076, 19.038210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587610, 0.729955, 0.349112,
		-0.614088, 0.121363, 0.779851,
		0.526887, -0.672634, 0.519571,
		41.115891, 30.823286, 19.194080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769005, 31.483261, 19.668549>,  <40.747070, 31.294130, 18.830381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769005, 31.483261, 19.668549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078056, 31.291107, 19.502522>,  <41.263485, 31.175816, 19.402905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078056, 31.291107, 19.502522>,  <40.769005, 31.483261, 19.668549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078056, 31.291107, 19.502522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622173, 0.702999, 0.344519,
		0.126292, -0.524429, 0.842036,
		0.772626, -0.480382, -0.415069,
		41.309845, 31.146992, 19.378000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341587, 32.085857, 19.425556>,  <40.769005, 31.483261, 19.668549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341587, 32.085857, 19.425556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606358, 32.378635, 19.360922>,  <40.765221, 32.554302, 19.322142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606358, 32.378635, 19.360922>,  <40.341587, 32.085857, 19.425556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606358, 32.378635, 19.360922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051305, 0.259304, 0.964432,
		0.747813, -0.630091, 0.209192,
		0.661924, 0.731948, -0.161584,
		40.804935, 32.598221, 19.312447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749950, 32.089333, 18.836596>,  <40.341587, 32.085857, 19.425556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749950, 32.089333, 18.836596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402107, 32.282345, 18.794748>,  <39.193401, 32.398151, 18.769640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402107, 32.282345, 18.794748>,  <39.749950, 32.089333, 18.836596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402107, 32.282345, 18.794748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050800, 0.123323, 0.991066,
		0.491122, 0.867153, -0.082730,
		-0.869608, 0.482532, -0.104618,
		39.141224, 32.427105, 18.763363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678028, 32.810585, 19.144457>,  <39.749950, 32.089333, 18.836596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678028, 32.810585, 19.144457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334618, 32.605656, 19.153042>,  <39.128571, 32.482697, 19.158192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334618, 32.605656, 19.153042>,  <39.678028, 32.810585, 19.144457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334618, 32.605656, 19.153042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132402, 0.261918, 0.955965,
		-0.495384, 0.817878, -0.292696,
		-0.858525, -0.512323, 0.021461,
		39.077061, 32.451958, 19.159481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013329, 33.208527, 19.273190>,  <39.678028, 32.810585, 19.144457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013329, 33.208527, 19.273190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981232, 32.839836, 19.424971>,  <38.961975, 32.618622, 19.516039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981232, 32.839836, 19.424971>,  <39.013329, 33.208527, 19.273190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981232, 32.839836, 19.424971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398088, 0.378634, 0.835561,
		-0.913831, -0.084009, -0.397310,
		-0.080240, -0.921726, 0.379450,
		38.957161, 32.563320, 19.538805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403664, 33.161503, 19.548313>,  <39.013329, 33.208527, 19.273190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403664, 33.161503, 19.548313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627296, 32.912476, 19.767345>,  <38.761475, 32.763062, 19.898766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627296, 32.912476, 19.767345>,  <38.403664, 33.161503, 19.548313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627296, 32.912476, 19.767345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326372, 0.441869, 0.835603,
		-0.762177, -0.645882, 0.043851,
		0.559077, -0.622566, 0.547580,
		38.795021, 32.725704, 19.931620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980782, 32.793797, 20.071621>,  <38.403664, 33.161503, 19.548313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980782, 32.793797, 20.071621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349178, 32.758369, 20.223373>,  <38.570217, 32.737114, 20.314425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349178, 32.758369, 20.223373>,  <37.980782, 32.793797, 20.071621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349178, 32.758369, 20.223373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330041, 0.340039, 0.880594,
		-0.207001, -0.936231, 0.283940,
		0.920990, -0.088573, 0.379383,
		38.625477, 32.731796, 20.337189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897392, 32.485954, 20.757469>,  <37.980782, 32.793797, 20.071621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897392, 32.485954, 20.757469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263042, 32.645622, 20.785856>,  <38.482433, 32.741425, 20.802889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263042, 32.645622, 20.785856>,  <37.897392, 32.485954, 20.757469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263042, 32.645622, 20.785856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231870, 0.371129, 0.899166,
		0.332582, -0.838406, 0.431814,
		0.914125, 0.399171, 0.070970,
		38.537281, 32.765373, 20.807148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986408, 32.489780, 21.560425>,  <37.897392, 32.485954, 20.757469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986408, 32.489780, 21.560425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275074, 32.726665, 21.417044>,  <38.448273, 32.868797, 21.331015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275074, 32.726665, 21.417044>,  <37.986408, 32.489780, 21.560425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275074, 32.726665, 21.417044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109602, 0.609032, 0.785536,
		0.683513, -0.527605, 0.504423,
		0.721663, 0.592210, -0.358455,
		38.491573, 32.904327, 21.309507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585407, 32.511253, 21.981716>,  <37.986408, 32.489780, 21.560425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585407, 32.511253, 21.981716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562504, 32.846794, 21.765179>,  <38.548763, 33.048119, 21.635256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562504, 32.846794, 21.765179>,  <38.585407, 32.511253, 21.981716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562504, 32.846794, 21.765179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021179, 0.543133, 0.839379,
		0.998135, 0.036597, -0.048866,
		-0.057260, 0.838849, -0.541345,
		38.545326, 33.098450, 21.602776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259335, 32.824032, 22.144634>,  <38.585407, 32.511253, 21.981716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259335, 32.824032, 22.144634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995968, 33.090675, 22.004852>,  <38.837948, 33.250664, 21.920982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995968, 33.090675, 22.004852>,  <39.259335, 32.824032, 22.144634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995968, 33.090675, 22.004852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078674, 0.522707, 0.848874,
		0.748534, 0.531417, -0.396602,
		-0.658413, 0.666613, -0.349456,
		38.798443, 33.290661, 21.900015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506943, 33.334808, 22.479336>,  <39.259335, 32.824032, 22.144634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506943, 33.334808, 22.479336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156841, 33.481415, 22.353102>,  <38.946781, 33.569378, 22.277361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156841, 33.481415, 22.353102>,  <39.506943, 33.334808, 22.479336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156841, 33.481415, 22.353102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185737, 0.347752, 0.919005,
		0.446571, 0.862982, -0.236298,
		-0.875258, 0.366512, -0.315584,
		38.894264, 33.591370, 22.258427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528008, 33.996674, 22.718382>,  <39.506943, 33.334808, 22.479336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528008, 33.996674, 22.718382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140869, 33.925945, 22.646816>,  <38.908585, 33.883507, 22.603876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140869, 33.925945, 22.646816>,  <39.528008, 33.996674, 22.718382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140869, 33.925945, 22.646816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238772, 0.421985, 0.874595,
		-0.079146, 0.889193, -0.450636,
		-0.967845, -0.176820, -0.178916,
		38.850517, 33.872898, 22.593142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190948, 34.558109, 22.949402>,  <39.528008, 33.996674, 22.718382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190948, 34.558109, 22.949402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907604, 34.275787, 22.946207>,  <38.737598, 34.106392, 22.944290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907604, 34.275787, 22.946207>,  <39.190948, 34.558109, 22.949402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907604, 34.275787, 22.946207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320232, 0.311266, 0.894743,
		-0.629030, 0.636357, -0.446510,
		-0.708359, -0.705807, -0.007986,
		38.695095, 34.064045, 22.943811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625664, 34.897968, 23.234554>,  <39.190948, 34.558109, 22.949402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625664, 34.897968, 23.234554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538898, 34.509510, 23.274214>,  <38.486839, 34.276436, 23.298010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538898, 34.509510, 23.274214>,  <38.625664, 34.897968, 23.234554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538898, 34.509510, 23.274214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411996, 0.183155, 0.892588,
		-0.884990, 0.152767, -0.439835,
		-0.216916, -0.971142, 0.099151,
		38.473824, 34.218166, 23.303959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945854, 34.932743, 23.540020>,  <38.625664, 34.897968, 23.234554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945854, 34.932743, 23.540020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103539, 34.577202, 23.633438>,  <38.198147, 34.363876, 23.689489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103539, 34.577202, 23.633438>,  <37.945854, 34.932743, 23.540020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103539, 34.577202, 23.633438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349827, 0.089862, 0.932495,
		-0.849836, -0.449297, -0.275520,
		0.394208, -0.888852, 0.233544,
		38.221802, 34.310547, 23.703501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375977, 34.532471, 23.771387>,  <37.945854, 34.932743, 23.540020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375977, 34.532471, 23.771387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700657, 34.351192, 23.918764>,  <37.895466, 34.242428, 24.007191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700657, 34.351192, 23.918764>,  <37.375977, 34.532471, 23.771387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700657, 34.351192, 23.918764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406137, 0.015395, 0.913683,
		-0.419748, -0.891279, -0.171562,
		0.811705, -0.453194, 0.368443,
		37.944168, 34.215233, 24.029297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225636, 33.978085, 24.158041>,  <37.375977, 34.532471, 23.771387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225636, 33.978085, 24.158041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577309, 34.084236, 24.316336>,  <37.788315, 34.147926, 24.411312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577309, 34.084236, 24.316336>,  <37.225636, 33.978085, 24.158041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577309, 34.084236, 24.316336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424932, 0.060952, 0.903171,
		0.215562, -0.962215, 0.166356,
		0.879184, 0.265380, 0.395737,
		37.841064, 34.163849, 24.435057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290600, 33.606506, 24.825905>,  <37.225636, 33.978085, 24.158041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290600, 33.606506, 24.825905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559467, 33.901516, 24.851961>,  <37.720787, 34.078522, 24.867596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559467, 33.901516, 24.851961>,  <37.290600, 33.606506, 24.825905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559467, 33.901516, 24.851961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242289, 0.135969, 0.960629,
		0.699633, -0.661487, 0.270089,
		0.672168, 0.737527, 0.065143,
		37.761116, 34.122776, 24.871504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658882, 33.493050, 25.419588>,  <37.290600, 33.606506, 24.825905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658882, 33.493050, 25.419588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702637, 33.881390, 25.334288>,  <37.728889, 34.114395, 25.283108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702637, 33.881390, 25.334288>,  <37.658882, 33.493050, 25.419588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702637, 33.881390, 25.334288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387856, 0.239223, 0.890135,
		0.915206, -0.014656, 0.402719,
		0.109386, 0.970854, -0.213254,
		37.735451, 34.172646, 25.270311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893173, 33.816139, 26.116449>,  <37.658882, 33.493050, 25.419588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893173, 33.816139, 26.116449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775291, 34.094688, 25.854694>,  <37.704563, 34.261818, 25.697641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775291, 34.094688, 25.854694>,  <37.893173, 33.816139, 26.116449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775291, 34.094688, 25.854694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451591, 0.502015, 0.737595,
		0.842150, 0.512885, 0.166529,
		-0.294701, 0.696369, -0.654387,
		37.686882, 34.303600, 25.658379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080193, 34.482430, 26.415792>,  <37.893173, 33.816139, 26.116449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080193, 34.482430, 26.415792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792831, 34.546299, 26.144970>,  <37.620415, 34.584621, 25.982477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792831, 34.546299, 26.144970>,  <38.080193, 34.482430, 26.415792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792831, 34.546299, 26.144970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565086, 0.433662, 0.701866,
		0.405681, 0.886816, -0.221315,
		-0.718402, 0.159671, -0.677055,
		37.577312, 34.594200, 25.941853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863338, 35.119385, 26.619516>,  <38.080193, 34.482430, 26.415792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863338, 35.119385, 26.619516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582458, 34.973072, 26.375181>,  <37.413933, 34.885284, 26.228580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582458, 34.973072, 26.375181>,  <37.863338, 35.119385, 26.619516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582458, 34.973072, 26.375181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706602, 0.463293, 0.534859,
		0.087358, 0.807197, -0.583782,
		-0.702198, -0.365777, -0.610839,
		37.371799, 34.863338, 26.191929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395626, 35.606171, 26.673281>,  <37.863338, 35.119385, 26.619516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395626, 35.606171, 26.673281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203358, 35.272076, 26.566454>,  <37.087997, 35.071617, 26.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203358, 35.272076, 26.566454>,  <37.395626, 35.606171, 26.673281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203358, 35.272076, 26.566454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682621, 0.165233, 0.711847,
		-0.550436, 0.524472, -0.649576,
		-0.480675, -0.835241, -0.267066,
		37.059155, 35.021503, 26.486334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680592, 35.859234, 26.582556>,  <37.395626, 35.606171, 26.673281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680592, 35.859234, 26.582556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645424, 35.462517, 26.619673>,  <36.624325, 35.224487, 26.641943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645424, 35.462517, 26.619673>,  <36.680592, 35.859234, 26.582556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645424, 35.462517, 26.619673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753855, 0.127135, 0.644623,
		-0.651132, -0.013278, -0.758848,
		-0.087917, -0.991796, 0.092791,
		36.619049, 35.164978, 26.647511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983513, 35.695621, 26.630455>,  <36.680592, 35.859234, 26.582556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983513, 35.695621, 26.630455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132496, 35.356022, 26.780378>,  <36.221886, 35.152264, 26.870333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132496, 35.356022, 26.780378>,  <35.983513, 35.695621, 26.630455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132496, 35.356022, 26.780378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756888, -0.044187, 0.652050,
		-0.537026, -0.526549, -0.659052,
		0.372458, -0.848996, 0.374809,
		36.244232, 35.101322, 26.892820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443729, 35.338551, 26.683283>,  <35.983513, 35.695621, 26.630455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443729, 35.338551, 26.683283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698811, 35.190739, 26.953623>,  <35.851860, 35.102051, 27.115828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698811, 35.190739, 26.953623>,  <35.443729, 35.338551, 26.683283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698811, 35.190739, 26.953623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751109, -0.103782, 0.651970,
		-0.170785, -0.923402, -0.343745,
		0.637705, -0.369537, 0.675851,
		35.890121, 35.079880, 27.156378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207867, 34.695786, 26.905899>,  <35.443729, 35.338551, 26.683283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207867, 34.695786, 26.905899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458931, 34.789280, 27.202927>,  <35.609570, 34.845379, 27.381144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458931, 34.789280, 27.202927>,  <35.207867, 34.695786, 26.905899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458931, 34.789280, 27.202927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720021, -0.188373, 0.667897,
		0.295993, -0.953877, 0.050062,
		0.627661, 0.233738, 0.742568,
		35.647228, 34.859402, 27.425697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013588, 34.126202, 27.372175>,  <35.207867, 34.695786, 26.905899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013588, 34.126202, 27.372175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177929, 34.428673, 27.575897>,  <35.276535, 34.610157, 27.698130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177929, 34.428673, 27.575897>,  <35.013588, 34.126202, 27.372175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177929, 34.428673, 27.575897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629521, -0.168784, 0.758429,
		0.659471, -0.632222, 0.406685,
		0.410854, 0.756179, 0.509305,
		35.301186, 34.655525, 27.728689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113850, 33.835777, 28.032410>,  <35.013588, 34.126202, 27.372175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113850, 33.835777, 28.032410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108822, 34.233150, 28.077908>,  <35.105804, 34.471573, 28.105206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108822, 34.233150, 28.077908>,  <35.113850, 33.835777, 28.032410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108822, 34.233150, 28.077908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539721, -0.102499, 0.835581,
		0.841750, -0.050887, 0.537464,
		-0.012569, 0.993431, 0.113743,
		35.105053, 34.531181, 28.112030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170097, 33.810867, 28.734064>,  <35.113850, 33.835777, 28.032410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170097, 33.810867, 28.734064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042988, 34.174690, 28.626940>,  <34.966721, 34.392982, 28.562666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042988, 34.174690, 28.626940>,  <35.170097, 33.810867, 28.734064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042988, 34.174690, 28.626940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594812, 0.028726, 0.803351,
		0.738387, 0.414585, 0.531887,
		-0.317778, 0.909557, -0.267811,
		34.947655, 34.447556, 28.546597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165131, 34.162014, 29.364052>,  <35.170097, 33.810867, 28.734064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165131, 34.162014, 29.364052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932495, 34.390434, 29.132309>,  <34.792915, 34.527489, 28.993263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932495, 34.390434, 29.132309>,  <35.165131, 34.162014, 29.364052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932495, 34.390434, 29.132309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476408, 0.338185, 0.811583,
		0.659387, 0.748016, 0.075372,
		-0.581587, 0.571055, -0.579355,
		34.758018, 34.561752, 28.958502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402431, 34.723267, 29.567371>,  <35.165131, 34.162014, 29.364052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402431, 34.723267, 29.567371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033661, 34.783428, 29.424578>,  <34.812401, 34.819527, 29.338902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.033661, 34.783428, 29.424578>,  <35.402431, 34.723267, 29.567371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033661, 34.783428, 29.424578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307287, 0.277173, 0.910357,
		0.235869, 0.948975, -0.209315,
		-0.921922, 0.150405, -0.356985,
		34.757084, 34.828548, 29.317482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200001, 35.373611, 29.901545>,  <35.402431, 34.723267, 29.567371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200001, 35.373611, 29.901545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869015, 35.181591, 29.785023>,  <34.670425, 35.066380, 29.715109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869015, 35.181591, 29.785023>,  <35.200001, 35.373611, 29.901545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869015, 35.181591, 29.785023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436215, 0.222874, 0.871805,
		-0.353585, 0.848457, -0.393824,
		-0.827462, -0.480050, -0.291304,
		34.620777, 35.037575, 29.697632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549183, 35.867802, 29.983637>,  <35.200001, 35.373611, 29.901545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549183, 35.867802, 29.983637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410206, 35.492958, 29.970354>,  <34.326820, 35.268051, 29.962385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410206, 35.492958, 29.970354>,  <34.549183, 35.867802, 29.983637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410206, 35.492958, 29.970354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552431, 0.175948, 0.814778,
		-0.757696, 0.301434, -0.578822,
		-0.347444, -0.937112, -0.033207,
		34.305973, 35.211823, 29.960392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788651, 35.842953, 30.077648>,  <34.549183, 35.867802, 29.983637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788651, 35.842953, 30.077648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920078, 35.479485, 30.180687>,  <33.998936, 35.261402, 30.242510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920078, 35.479485, 30.180687>,  <33.788651, 35.842953, 30.077648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920078, 35.479485, 30.180687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644864, -0.016561, 0.764118,
		-0.690067, -0.417182, -0.591411,
		0.328571, -0.908672, 0.257597,
		34.018650, 35.206882, 30.257967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191250, 35.568363, 30.467443>,  <33.788651, 35.842953, 30.077648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191250, 35.568363, 30.467443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491447, 35.313873, 30.538977>,  <33.671566, 35.161179, 30.581896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491447, 35.313873, 30.538977>,  <33.191250, 35.568363, 30.467443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491447, 35.313873, 30.538977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471098, -0.325243, 0.819929,
		-0.463492, -0.699600, -0.543816,
		0.750494, -0.636221, 0.178832,
		33.716595, 35.123009, 30.592627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882267, 34.906994, 30.592207>,  <33.191250, 35.568363, 30.467443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882267, 34.906994, 30.592207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236210, 34.881786, 30.776838>,  <33.448578, 34.866661, 30.887617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236210, 34.881786, 30.776838>,  <32.882267, 34.906994, 30.592207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236210, 34.881786, 30.776838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445954, -0.401114, 0.800145,
		0.134720, -0.913858, -0.383034,
		0.884859, -0.063020, 0.461576,
		33.501667, 34.862881, 30.915312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824860, 34.328648, 30.974382>,  <32.882267, 34.906994, 30.592207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824860, 34.328648, 30.974382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134312, 34.520855, 31.139599>,  <33.319981, 34.636181, 31.238729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134312, 34.520855, 31.139599>,  <32.824860, 34.328648, 30.974382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134312, 34.520855, 31.139599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285531, -0.317551, 0.904231,
		0.565664, -0.817472, -0.108462,
		0.773625, 0.480521, 0.413041,
		33.366398, 34.665012, 31.263512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122860, 33.787094, 31.313875>,  <32.824860, 34.328648, 30.974382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122860, 33.787094, 31.313875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234936, 34.147629, 31.445992>,  <33.302181, 34.363949, 31.525261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234936, 34.147629, 31.445992>,  <33.122860, 33.787094, 31.313875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234936, 34.147629, 31.445992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044222, -0.331587, 0.942388,
		0.958924, -0.278657, -0.053050,
		0.280194, 0.901333, 0.330289,
		33.318993, 34.418030, 31.545078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492432, 33.639217, 31.912853>,  <33.122860, 33.787094, 31.313875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492432, 33.639217, 31.912853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372726, 34.020065, 31.937883>,  <33.300903, 34.248573, 31.952902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372726, 34.020065, 31.937883>,  <33.492432, 33.639217, 31.912853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372726, 34.020065, 31.937883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134706, -0.107081, 0.985083,
		0.944614, 0.286370, 0.160301,
		-0.299264, 0.952116, 0.062575,
		33.282948, 34.305698, 31.956656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779110, 33.922447, 32.526215>,  <33.492432, 33.639217, 31.912853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779110, 33.922447, 32.526215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478771, 34.182877, 32.481800>,  <33.298569, 34.339134, 32.455151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478771, 34.182877, 32.481800>,  <33.779110, 33.922447, 32.526215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478771, 34.182877, 32.481800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165755, -0.023019, 0.985899,
		0.639341, 0.758662, 0.125203,
		-0.750845, 0.651078, -0.111035,
		33.253517, 34.378201, 32.448490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856022, 34.450005, 33.104763>,  <33.779110, 33.922447, 32.526215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856022, 34.450005, 33.104763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478436, 34.453403, 32.972790>,  <33.251884, 34.455444, 32.893604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478436, 34.453403, 32.972790>,  <33.856022, 34.450005, 33.104763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478436, 34.453403, 32.972790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329646, -0.073493, 0.941240,
		-0.016251, 0.997259, 0.072175,
		-0.943965, 0.008496, -0.329937,
		33.195248, 34.455952, 32.873810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515045, 34.413029, 32.704048>,  <33.856022, 34.450005, 33.104763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515045, 34.413029, 32.704048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820911, 34.524841, 32.936306>,  <35.004429, 34.591930, 33.075661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820911, 34.524841, 32.936306>,  <34.515045, 34.413029, 32.704048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820911, 34.524841, 32.936306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516831, 0.272195, -0.811663,
		-0.384937, 0.920744, 0.063665,
		0.764663, 0.279535, 0.580647,
		35.050312, 34.608704, 33.110500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697586, 35.117973, 32.554264>,  <34.515045, 34.413029, 32.704048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697586, 35.117973, 32.554264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038631, 34.960327, 32.691505>,  <35.243259, 34.865738, 32.773849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038631, 34.960327, 32.691505>,  <34.697586, 35.117973, 32.554264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038631, 34.960327, 32.691505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494073, 0.394277, -0.774879,
		0.170118, 0.830190, 0.530890,
		0.852615, -0.394119, 0.343101,
		35.294415, 34.842091, 32.794437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137135, 35.644844, 32.316494>,  <34.697586, 35.117973, 32.554264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137135, 35.644844, 32.316494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373615, 35.339016, 32.419186>,  <35.515503, 35.155518, 32.480801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373615, 35.339016, 32.419186>,  <35.137135, 35.644844, 32.316494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373615, 35.339016, 32.419186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661940, 0.278116, -0.696051,
		0.460783, 0.581444, 0.670524,
		0.591198, -0.764575, 0.256730,
		35.550976, 35.109642, 32.496204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857346, 35.925591, 32.308521>,  <35.137135, 35.644844, 32.316494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857346, 35.925591, 32.308521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887756, 35.527275, 32.288033>,  <35.906002, 35.288284, 32.275742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887756, 35.527275, 32.288033>,  <35.857346, 35.925591, 32.308521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887756, 35.527275, 32.288033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709603, 0.090117, -0.698815,
		0.700488, 0.016782, 0.713467,
		0.076023, -0.995790, -0.051217,
		35.910564, 35.228539, 32.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535587, 35.731728, 32.355228>,  <35.857346, 35.925591, 32.308521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535587, 35.731728, 32.355228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389462, 35.402142, 32.181961>,  <36.301788, 35.204391, 32.078003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389462, 35.402142, 32.181961>,  <36.535587, 35.731728, 32.355228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389462, 35.402142, 32.181961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724709, 0.040318, -0.687875,
		0.584248, -0.565207, 0.582405,
		-0.365310, -0.823963, -0.433166,
		36.279869, 35.154953, 32.052010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032280, 35.244102, 32.336887>,  <36.535587, 35.731728, 32.355228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032280, 35.244102, 32.336887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769562, 35.124729, 32.059887>,  <36.611931, 35.053104, 31.893686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769562, 35.124729, 32.059887>,  <37.032280, 35.244102, 32.336887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769562, 35.124729, 32.059887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721624, 0.017731, -0.692058,
		0.218814, -0.954265, 0.203713,
		-0.656794, -0.298437, -0.692500,
		36.572525, 35.035198, 31.852137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428650, 34.785141, 31.957701>,  <37.032280, 35.244102, 32.336887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428650, 34.785141, 31.957701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141838, 34.861725, 31.689610>,  <36.969749, 34.907673, 31.528755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141838, 34.861725, 31.689610>,  <37.428650, 34.785141, 31.957701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141838, 34.861725, 31.689610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675054, -0.048850, -0.736150,
		-0.173680, -0.980285, -0.094215,
		-0.717034, 0.191455, -0.670229,
		36.926727, 34.919163, 31.488541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564976, 34.399059, 31.285891>,  <37.428650, 34.785141, 31.957701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564976, 34.399059, 31.285891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309269, 34.684483, 31.171228>,  <37.155846, 34.855736, 31.102432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309269, 34.684483, 31.171228>,  <37.564976, 34.399059, 31.285891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309269, 34.684483, 31.171228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408637, -0.000557, -0.912697,
		-0.651420, -0.700598, -0.291229,
		-0.639271, 0.713556, -0.286653,
		37.117489, 34.898548, 31.085232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430347, 34.228256, 30.593868>,  <37.564976, 34.399059, 31.285891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430347, 34.228256, 30.593868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333000, 34.614605, 30.629324>,  <37.274590, 34.846416, 30.650597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333000, 34.614605, 30.629324>,  <37.430347, 34.228256, 30.593868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333000, 34.614605, 30.629324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339786, 0.170496, -0.924919,
		-0.908469, -0.194981, -0.369685,
		-0.243371, 0.965874, 0.088638,
		37.259987, 34.904366, 30.655916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092693, 34.453640, 30.030294>,  <37.430347, 34.228256, 30.593868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092693, 34.453640, 30.030294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189201, 34.813297, 30.176355>,  <37.247105, 35.029091, 30.263992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189201, 34.813297, 30.176355>,  <37.092693, 34.453640, 30.030294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189201, 34.813297, 30.176355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517863, 0.198932, -0.832012,
		-0.820735, 0.389840, -0.417635,
		0.241271, 0.899139, 0.365154,
		37.261581, 35.083038, 30.285902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901264, 34.926258, 29.502527>,  <37.092693, 34.453640, 30.030294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901264, 34.926258, 29.502527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197956, 35.059692, 29.735270>,  <37.375973, 35.139755, 29.874914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197956, 35.059692, 29.735270>,  <36.901264, 34.926258, 29.502527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197956, 35.059692, 29.735270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585085, 0.102296, -0.804494,
		-0.327893, 0.937152, -0.119302,
		0.741729, 0.333590, 0.581856,
		37.420475, 35.159771, 29.909826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242577, 35.436008, 29.032734>,  <36.901264, 34.926258, 29.502527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242577, 35.436008, 29.032734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496925, 35.372643, 29.334879>,  <37.649532, 35.334625, 29.516167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496925, 35.372643, 29.334879>,  <37.242577, 35.436008, 29.032734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496925, 35.372643, 29.334879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754563, 0.333266, -0.565304,
		-0.162186, 0.929430, 0.331446,
		0.635870, -0.158412, 0.755364,
		37.687687, 35.325119, 29.561489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638405, 36.054245, 29.009274>,  <37.242577, 35.436008, 29.032734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638405, 36.054245, 29.009274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837334, 35.777164, 29.218208>,  <37.956692, 35.610916, 29.343569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837334, 35.777164, 29.218208>,  <37.638405, 36.054245, 29.009274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837334, 35.777164, 29.218208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746995, 0.035709, -0.663870,
		0.441212, 0.720339, 0.535204,
		0.497323, -0.692702, 0.522335,
		37.986530, 35.569355, 29.374908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277515, 36.394657, 29.100491>,  <37.638405, 36.054245, 29.009274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277515, 36.394657, 29.100491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293564, 35.995716, 29.124763>,  <38.303192, 35.756351, 29.139328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293564, 35.995716, 29.124763>,  <38.277515, 36.394657, 29.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293564, 35.995716, 29.124763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555138, -0.028246, -0.831279,
		0.830790, 0.067043, 0.552534,
		0.040125, -0.997350, 0.060685,
		38.305603, 35.696510, 29.142969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940464, 36.247936, 28.958889>,  <38.277515, 36.394657, 29.100491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940464, 36.247936, 28.958889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770920, 35.888893, 28.910471>,  <38.669193, 35.673470, 28.881420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770920, 35.888893, 28.910471>,  <38.940464, 36.247936, 28.958889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770920, 35.888893, 28.910471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673358, -0.222908, -0.704912,
		0.605750, -0.380289, 0.698890,
		-0.423858, -0.897604, -0.121044,
		38.643761, 35.619614, 28.874157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528980, 35.745083, 29.020966>,  <38.940464, 36.247936, 28.958889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528980, 35.745083, 29.020966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215698, 35.573811, 28.840631>,  <39.027729, 35.471046, 28.732431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215698, 35.573811, 28.840631>,  <39.528980, 35.745083, 29.020966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215698, 35.573811, 28.840631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557485, -0.162515, -0.814125,
		0.275329, -0.888958, 0.365989,
		-0.783201, -0.428186, -0.450836,
		38.980740, 35.445354, 28.705381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823582, 35.103649, 28.757149>,  <39.528980, 35.745083, 29.020966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823582, 35.103649, 28.757149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495602, 35.201664, 28.550211>,  <39.298813, 35.260471, 28.426048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495602, 35.201664, 28.550211>,  <39.823582, 35.103649, 28.757149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495602, 35.201664, 28.550211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475433, -0.211853, -0.853863,
		-0.318827, -0.946085, 0.057211,
		-0.819947, 0.245035, -0.517344,
		39.249619, 35.275173, 28.395008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640205, 34.512936, 28.206871>,  <39.823582, 35.103649, 28.757149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640205, 34.512936, 28.206871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512383, 34.868492, 28.075569>,  <39.435688, 35.081825, 27.996788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512383, 34.868492, 28.075569>,  <39.640205, 34.512936, 28.206871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512383, 34.868492, 28.075569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400406, -0.187301, -0.896992,
		-0.858813, -0.418073, -0.296066,
		-0.319555, 0.888894, -0.328255,
		39.416515, 35.135162, 27.977093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325752, 34.296535, 27.571192>,  <39.640205, 34.512936, 28.206871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325752, 34.296535, 27.571192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335667, 34.695797, 27.548986>,  <39.341614, 34.935352, 27.535664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335667, 34.695797, 27.548986>,  <39.325752, 34.296535, 27.571192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335667, 34.695797, 27.548986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303184, -0.060422, -0.951014,
		-0.952610, 0.006742, -0.304121,
		0.024788, 0.998150, -0.055515,
		39.343102, 34.995243, 27.532331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773457, 34.548698, 27.068260>,  <39.325752, 34.296535, 27.571192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773457, 34.548698, 27.068260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072239, 34.814426, 27.079134>,  <39.251507, 34.973866, 27.085659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072239, 34.814426, 27.079134>,  <38.773457, 34.548698, 27.068260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072239, 34.814426, 27.079134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263768, -0.258550, -0.929289,
		-0.610319, 0.701305, -0.368351,
		0.746952, 0.664322, 0.027184,
		39.296326, 35.013721, 27.087290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757927, 34.738785, 26.496855>,  <38.773457, 34.548698, 27.068260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757927, 34.738785, 26.496855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108841, 34.892353, 26.612080>,  <39.319389, 34.984493, 26.681213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108841, 34.892353, 26.612080>,  <38.757927, 34.738785, 26.496855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108841, 34.892353, 26.612080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384147, -0.201811, -0.900946,
		-0.287756, 0.901043, -0.324527,
		0.877284, 0.383919, 0.288061,
		39.372025, 35.007530, 26.698498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953495, 34.988113, 25.991196>,  <38.757927, 34.738785, 26.496855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953495, 34.988113, 25.991196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299934, 34.965942, 26.189911>,  <39.507797, 34.952641, 26.309141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299934, 34.965942, 26.189911>,  <38.953495, 34.988113, 25.991196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299934, 34.965942, 26.189911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450480, -0.344196, -0.823770,
		0.216656, 0.937260, -0.273136,
		0.866099, -0.055432, 0.496789,
		39.559765, 34.949314, 26.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429863, 35.309738, 25.575737>,  <38.953495, 34.988113, 25.991196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429863, 35.309738, 25.575737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639305, 35.076527, 25.824224>,  <39.764969, 34.936600, 25.973318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639305, 35.076527, 25.824224>,  <39.429863, 35.309738, 25.575737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639305, 35.076527, 25.824224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521161, -0.357633, -0.774913,
		0.673968, 0.729501, 0.116596,
		0.523602, -0.583032, 0.621221,
		39.796387, 34.901619, 26.010592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117435, 35.441925, 25.368135>,  <39.429863, 35.309738, 25.575737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117435, 35.441925, 25.368135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133163, 35.100525, 25.575979>,  <40.142601, 34.895683, 25.700686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133163, 35.100525, 25.575979>,  <40.117435, 35.441925, 25.368135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133163, 35.100525, 25.575979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731829, -0.329470, -0.596553,
		0.680353, 0.403719, 0.611662,
		0.039316, -0.853499, 0.519609,
		40.144958, 34.844475, 25.731861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835545, 35.219826, 25.455549>,  <40.117435, 35.441925, 25.368135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835545, 35.219826, 25.455549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630402, 34.878349, 25.491762>,  <40.507317, 34.673466, 25.513491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630402, 34.878349, 25.491762>,  <40.835545, 35.219826, 25.455549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630402, 34.878349, 25.491762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700772, -0.477224, -0.530261,
		0.495882, -0.208503, 0.842987,
		-0.512855, -0.853688, 0.090534,
		40.476543, 34.622242, 25.518923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311317, 34.727936, 25.361662>,  <40.835545, 35.219826, 25.455549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311317, 34.727936, 25.361662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965912, 34.537773, 25.294325>,  <40.758671, 34.423676, 25.253922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965912, 34.537773, 25.294325>,  <41.311317, 34.727936, 25.361662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965912, 34.537773, 25.294325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467801, -0.630301, -0.619583,
		0.188445, -0.613768, 0.766666,
		-0.863511, -0.475404, -0.168344,
		40.706860, 34.395153, 25.243822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457115, 34.029434, 25.330040>,  <41.311317, 34.727936, 25.361662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457115, 34.029434, 25.330040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099827, 34.010849, 25.151155>,  <40.885452, 33.999699, 25.043825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099827, 34.010849, 25.151155>,  <41.457115, 34.029434, 25.330040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099827, 34.010849, 25.151155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322245, -0.759798, -0.564682,
		-0.313552, -0.648497, 0.693640,
		-0.893221, -0.046465, -0.447211,
		40.831860, 33.996910, 25.016993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187813, 33.371449, 25.483950>,  <41.457115, 34.029434, 25.330040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187813, 33.371449, 25.483950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026543, 33.506180, 25.143597>,  <40.929783, 33.587017, 24.939384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026543, 33.506180, 25.143597>,  <41.187813, 33.371449, 25.483950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026543, 33.506180, 25.143597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444034, -0.741009, -0.503725,
		-0.800180, -0.580908, 0.149192,
		-0.403170, 0.336825, -0.850884,
		40.905590, 33.607227, 24.888332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915890, 32.734432, 25.164274>,  <41.187813, 33.371449, 25.483950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915890, 32.734432, 25.164274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969418, 33.020290, 24.889648>,  <41.001534, 33.191807, 24.724873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969418, 33.020290, 24.889648>,  <40.915890, 32.734432, 25.164274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969418, 33.020290, 24.889648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441275, -0.663295, -0.604415,
		-0.887338, -0.222083, -0.404116,
		0.133818, 0.714647, -0.686566,
		41.009563, 33.234684, 24.683678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735821, 32.309444, 24.553259>,  <40.915890, 32.734432, 25.164274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735821, 32.309444, 24.553259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940426, 32.629391, 24.427671>,  <41.063190, 32.821358, 24.352320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940426, 32.629391, 24.427671>,  <40.735821, 32.309444, 24.553259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940426, 32.629391, 24.427671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412158, -0.548996, -0.727138,
		-0.753977, 0.242536, -0.610488,
		0.511512, 0.799862, -0.313967,
		41.093880, 32.869350, 24.333481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718277, 32.249352, 23.858019>,  <40.735821, 32.309444, 24.553259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718277, 32.249352, 23.858019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028809, 32.487095, 23.941980>,  <41.215126, 32.629742, 23.992357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028809, 32.487095, 23.941980>,  <40.718277, 32.249352, 23.858019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028809, 32.487095, 23.941980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568747, -0.516930, -0.639774,
		-0.271749, 0.616054, -0.739344,
		0.776325, 0.594357, 0.209904,
		41.261707, 32.665401, 24.004951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003498, 32.520287, 23.243830>,  <40.718277, 32.249352, 23.858019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003498, 32.520287, 23.243830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301960, 32.561829, 23.506878>,  <41.481037, 32.586754, 23.664707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301960, 32.561829, 23.506878>,  <41.003498, 32.520287, 23.243830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301960, 32.561829, 23.506878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660422, -0.240453, -0.711355,
		0.084247, 0.965088, -0.248005,
		0.746154, 0.103858, 0.657623,
		41.525806, 32.592987, 23.704165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514793, 33.032589, 22.990189>,  <41.003498, 32.520287, 23.243830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514793, 33.032589, 22.990189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708782, 32.784763, 23.237070>,  <41.825176, 32.636066, 23.385199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708782, 32.784763, 23.237070>,  <41.514793, 33.032589, 22.990189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708782, 32.784763, 23.237070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620611, -0.253419, -0.742038,
		0.616151, 0.742913, 0.261606,
		0.484974, -0.619563, 0.617205,
		41.854275, 32.598896, 23.422232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132820, 33.053009, 22.758369>,  <41.514793, 33.032589, 22.990189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132820, 33.053009, 22.758369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131470, 32.716652, 22.974848>,  <42.130657, 32.514839, 23.104734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131470, 32.716652, 22.974848>,  <42.132820, 33.053009, 22.758369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131470, 32.716652, 22.974848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590508, -0.438443, -0.677546,
		0.807025, 0.317292, 0.498033,
		-0.003380, -0.840889, 0.541198,
		42.130455, 32.464386, 23.137207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772152, 32.809120, 22.685734>,  <42.132820, 33.053009, 22.758369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772152, 32.809120, 22.685734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593124, 32.480896, 22.827921>,  <42.485710, 32.283962, 22.913233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593124, 32.480896, 22.827921>,  <42.772152, 32.809120, 22.685734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593124, 32.480896, 22.827921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503980, -0.559819, -0.657729,
		0.738708, -0.115227, 0.664104,
		-0.447566, -0.820564, 0.355470,
		42.458855, 32.234726, 22.934563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338860, 32.384373, 22.707237>,  <42.772152, 32.809120, 22.685734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338860, 32.384373, 22.707237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018440, 32.145683, 22.726196>,  <42.826187, 32.002472, 22.737572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018440, 32.145683, 22.726196>,  <43.338860, 32.384373, 22.707237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018440, 32.145683, 22.726196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499605, -0.710090, -0.496152,
		0.329719, -0.373763, 0.866941,
		-0.801049, -0.596719, 0.047397,
		42.778126, 31.966667, 22.740416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538086, 31.692225, 22.645657>,  <43.338860, 32.384373, 22.707237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538086, 31.692225, 22.645657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168163, 31.586527, 22.536175>,  <42.946209, 31.523108, 22.470486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168163, 31.586527, 22.536175>,  <43.538086, 31.692225, 22.645657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168163, 31.586527, 22.536175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379856, -0.681395, -0.625627,
		-0.021181, -0.682550, 0.730532,
		-0.924803, -0.264245, -0.273704,
		42.890724, 31.507254, 22.454063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432018, 30.942076, 22.692556>,  <43.538086, 31.692225, 22.645657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432018, 30.942076, 22.692556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175591, 31.085197, 22.420967>,  <43.021732, 31.171070, 22.258013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175591, 31.085197, 22.420967>,  <43.432018, 30.942076, 22.692556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175591, 31.085197, 22.420967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280176, -0.714516, -0.641068,
		-0.714516, -0.601201, 0.357805,
		0.641068, -0.357805, 0.678975,
		42.983269, 31.192539, 22.217274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137093, 30.323847, 22.905037>,  <43.432018, 30.942076, 22.692556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137093, 30.323847, 22.905037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415157, 30.037125, 22.926702>,  <43.581997, 29.865091, 22.939701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415157, 30.037125, 22.926702>,  <43.137093, 30.323847, 22.905037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415157, 30.037125, 22.926702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045486, 0.031333, 0.998474,
		-0.717411, -0.696566, -0.010823,
		0.695164, -0.716808, 0.054163,
		43.623707, 29.822083, 22.942951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919205, 29.858393, 23.400553>,  <43.137093, 30.323847, 22.905037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919205, 29.858393, 23.400553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316040, 29.820705, 23.367378>,  <43.554142, 29.798094, 23.347473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316040, 29.820705, 23.367378>,  <42.919205, 29.858393, 23.400553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316040, 29.820705, 23.367378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109307, 0.323707, 0.939822,
		-0.061702, -0.941454, 0.331446,
		0.992091, -0.094219, -0.082934,
		43.613667, 29.792440, 23.342499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.055592, 29.472424, 23.950594>,  <42.919205, 29.858393, 23.400553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.055592, 29.472424, 23.950594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398762, 29.650089, 23.847300>,  <43.604664, 29.756689, 23.785322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398762, 29.650089, 23.847300>,  <43.055592, 29.472424, 23.950594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398762, 29.650089, 23.847300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113270, 0.326741, 0.938302,
		0.501138, -0.834240, 0.230008,
		0.857922, 0.444165, -0.258237,
		43.656139, 29.783339, 23.769829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437565, 29.332190, 24.473133>,  <43.055592, 29.472424, 23.950594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437565, 29.332190, 24.473133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610775, 29.654350, 24.311235>,  <43.714703, 29.847647, 24.214096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610775, 29.654350, 24.311235>,  <43.437565, 29.332190, 24.473133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610775, 29.654350, 24.311235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131640, 0.387705, 0.912335,
		0.891717, -0.448345, 0.061863,
		0.433026, 0.805401, -0.404744,
		43.740685, 29.895971, 24.189812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893436, 29.516790, 24.998661>,  <43.437565, 29.332190, 24.473133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893436, 29.516790, 24.998661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901127, 29.837988, 24.760391>,  <43.905743, 30.030706, 24.617430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901127, 29.837988, 24.760391>,  <43.893436, 29.516790, 24.998661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901127, 29.837988, 24.760391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157307, 0.585935, 0.794943,
		0.987362, -0.108990, -0.115051,
		0.019228, 0.802995, -0.595675,
		43.906895, 30.078886, 24.581688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427097, 29.902893, 25.295460>,  <43.893436, 29.516790, 24.998661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427097, 29.902893, 25.295460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212215, 30.177294, 25.099167>,  <44.083286, 30.341934, 24.981392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212215, 30.177294, 25.099167>,  <44.427097, 29.902893, 25.295460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212215, 30.177294, 25.099167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078212, 0.619820, 0.780837,
		0.839819, 0.381087, -0.386623,
		-0.537203, 0.686000, -0.490731,
		44.051056, 30.383093, 24.951948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789181, 30.536493, 25.423397>,  <44.427097, 29.902893, 25.295460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789181, 30.536493, 25.423397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410431, 30.615896, 25.322191>,  <44.183182, 30.663538, 25.261467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410431, 30.615896, 25.322191>,  <44.789181, 30.536493, 25.423397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410431, 30.615896, 25.322191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101828, 0.561215, 0.821382,
		0.305045, 0.803513, -0.511189,
		-0.946878, 0.198506, -0.253016,
		44.126366, 30.675447, 25.246286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646278, 31.234619, 25.657373>,  <44.789181, 30.536493, 25.423397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646278, 31.234619, 25.657373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266636, 31.135633, 25.579437>,  <44.038853, 31.076242, 25.532675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266636, 31.135633, 25.579437>,  <44.646278, 31.234619, 25.657373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266636, 31.135633, 25.579437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304251, 0.560397, 0.770316,
		-0.081437, 0.790390, -0.607166,
		-0.949104, -0.247463, -0.194840,
		43.981903, 31.061394, 25.520985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214203, 31.933060, 25.632736>,  <44.646278, 31.234619, 25.657373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214203, 31.933060, 25.632736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970943, 31.623392, 25.702959>,  <43.824989, 31.437592, 25.745092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.970943, 31.623392, 25.702959>,  <44.214203, 31.933060, 25.632736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.970943, 31.623392, 25.702959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473969, 0.531525, 0.702022,
		-0.636794, 0.343726, -0.690178,
		-0.608149, -0.774166, 0.175557,
		43.788498, 31.391142, 25.755627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575287, 32.190681, 25.567806>,  <44.214203, 31.933060, 25.632736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575287, 32.190681, 25.567806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532951, 31.863394, 25.793839>,  <43.507549, 31.667021, 25.929457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532951, 31.863394, 25.793839>,  <43.575287, 32.190681, 25.567806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532951, 31.863394, 25.793839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488793, 0.537686, 0.687004,
		-0.865956, -0.203496, -0.456848,
		-0.105838, -0.818219, 0.565079,
		43.501202, 31.617928, 25.963362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893887, 32.238010, 25.903469>,  <43.575287, 32.190681, 25.567806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893887, 32.238010, 25.903469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050949, 31.958094, 26.142170>,  <43.145187, 31.790144, 26.285391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050949, 31.958094, 26.142170>,  <42.893887, 32.238010, 25.903469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050949, 31.958094, 26.142170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566127, 0.327443, 0.756492,
		-0.724788, -0.634882, -0.267596,
		0.392661, -0.699790, 0.596751,
		43.168747, 31.748158, 26.321196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317127, 31.722691, 26.091337>,  <42.893887, 32.238010, 25.903469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317127, 31.722691, 26.091337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619530, 31.750292, 26.351704>,  <42.800972, 31.766853, 26.507923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619530, 31.750292, 26.351704>,  <42.317127, 31.722691, 26.091337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619530, 31.750292, 26.351704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649796, 0.198935, 0.733614,
		-0.078870, -0.977580, 0.195233,
		0.756006, 0.069002, 0.650918,
		42.846333, 31.770992, 26.546978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006569, 31.492861, 26.561205>,  <42.317127, 31.722691, 26.091337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006569, 31.492861, 26.561205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315964, 31.686317, 26.725065>,  <42.501598, 31.802391, 26.823381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.315964, 31.686317, 26.725065>,  <42.006569, 31.492861, 26.561205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315964, 31.686317, 26.725065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591488, 0.318563, 0.740716,
		0.227741, -0.815235, 0.532471,
		0.773483, 0.483642, 0.409652,
		42.548008, 31.831409, 26.847961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018105, 31.203074, 27.242205>,  <42.006569, 31.492861, 26.561205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018105, 31.203074, 27.242205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230274, 31.539530, 27.284401>,  <42.357578, 31.741404, 27.309719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230274, 31.539530, 27.284401>,  <42.018105, 31.203074, 27.242205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230274, 31.539530, 27.284401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579043, 0.268606, 0.769779,
		0.619157, -0.469397, 0.629533,
		0.530428, 0.841140, 0.105492,
		42.389404, 31.791872, 27.316050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005188, 31.307596, 27.874376>,  <42.018105, 31.203074, 27.242205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005188, 31.307596, 27.874376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114048, 31.671284, 27.748354>,  <42.179363, 31.889496, 27.672741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114048, 31.671284, 27.748354>,  <42.005188, 31.307596, 27.874376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114048, 31.671284, 27.748354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606865, 0.416266, 0.677080,
		0.746760, 0.006931, 0.665058,
		0.272148, 0.909217, -0.315057,
		42.195694, 31.944048, 27.653837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238449, 31.719316, 28.462372>,  <42.005188, 31.307596, 27.874376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238449, 31.719316, 28.462372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145462, 31.993475, 28.186344>,  <42.089668, 32.157970, 28.020727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145462, 31.993475, 28.186344>,  <42.238449, 31.719316, 28.462372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145462, 31.993475, 28.186344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503490, 0.522234, 0.688310,
		0.832140, 0.507451, 0.223687,
		-0.232466, 0.685395, -0.690068,
		42.075722, 32.199093, 27.979324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390873, 32.435040, 28.782303>,  <42.238449, 31.719316, 28.462372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390873, 32.435040, 28.782303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125088, 32.489841, 28.488441>,  <41.965614, 32.522720, 28.312124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125088, 32.489841, 28.488441>,  <42.390873, 32.435040, 28.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125088, 32.489841, 28.488441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567160, 0.547691, 0.615114,
		0.486634, 0.825388, -0.286220,
		-0.664467, 0.137003, -0.734652,
		41.925747, 32.530941, 28.268045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145264, 33.185177, 28.827932>,  <42.390873, 32.435040, 28.782303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145264, 33.185177, 28.827932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875992, 32.992195, 28.603765>,  <41.714428, 32.876408, 28.469265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875992, 32.992195, 28.603765>,  <42.145264, 33.185177, 28.827932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875992, 32.992195, 28.603765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729952, 0.312292, 0.607984,
		-0.118310, 0.818360, -0.562396,
		-0.673181, -0.482453, -0.560416,
		41.674038, 32.847458, 28.435640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696968, 33.632484, 28.679554>,  <42.145264, 33.185177, 28.827932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696968, 33.632484, 28.679554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469891, 33.305813, 28.638067>,  <41.333645, 33.109810, 28.613176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469891, 33.305813, 28.638067>,  <41.696968, 33.632484, 28.679554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469891, 33.305813, 28.638067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664661, 0.380347, 0.643088,
		-0.485752, 0.434009, -0.758737,
		-0.567689, -0.816684, -0.103714,
		41.299583, 33.060806, 28.606953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060112, 33.904266, 28.532452>,  <41.696968, 33.632484, 28.679554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060112, 33.904266, 28.532452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993973, 33.531502, 28.661570>,  <40.954288, 33.307842, 28.739040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993973, 33.531502, 28.661570>,  <41.060112, 33.904266, 28.532452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993973, 33.531502, 28.661570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562501, 0.357954, 0.745293,
		-0.810095, -0.058339, -0.583390,
		-0.165347, -0.931915, 0.322793,
		40.944370, 33.251926, 28.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227654, 33.867008, 28.538073>,  <41.060112, 33.904266, 28.532452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227654, 33.867008, 28.538073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394016, 33.580578, 28.762304>,  <40.493835, 33.408718, 28.896843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394016, 33.580578, 28.762304>,  <40.227654, 33.867008, 28.538073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394016, 33.580578, 28.762304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610744, 0.236786, 0.755595,
		-0.673805, -0.656628, -0.338860,
		0.415908, -0.716080, 0.560579,
		40.518787, 33.365753, 28.930479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661980, 33.475433, 28.869783>,  <40.227654, 33.867008, 28.538073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661980, 33.475433, 28.869783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982758, 33.398884, 29.096149>,  <40.175224, 33.352955, 29.231970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982758, 33.398884, 29.096149>,  <39.661980, 33.475433, 28.869783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982758, 33.398884, 29.096149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591445, -0.120934, 0.797225,
		-0.084130, -0.974039, -0.210169,
		0.801945, -0.191374, 0.565916,
		40.223339, 33.341473, 29.265924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408752, 32.925751, 29.286312>,  <39.661980, 33.475433, 28.869783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408752, 32.925751, 29.286312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736652, 33.052738, 29.476984>,  <39.933392, 33.128929, 29.591387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.736652, 33.052738, 29.476984>,  <39.408752, 32.925751, 29.286312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736652, 33.052738, 29.476984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488633, -0.046459, 0.871252,
		0.298742, -0.947130, 0.117042,
		0.819751, 0.317469, 0.476678,
		39.982578, 33.147980, 29.619987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351192, 32.692623, 29.978334>,  <39.408752, 32.925751, 29.286312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351192, 32.692623, 29.978334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595921, 33.008465, 29.997105>,  <39.742756, 33.197971, 30.008368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595921, 33.008465, 29.997105>,  <39.351192, 32.692623, 29.978334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595921, 33.008465, 29.997105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414164, 0.269239, 0.869471,
		0.673903, -0.551395, 0.491751,
		0.611820, 0.789604, 0.046927,
		39.779469, 33.245346, 30.011183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361477, 32.810837, 30.631975>,  <39.351192, 32.692623, 29.978334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361477, 32.810837, 30.631975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528843, 33.153782, 30.512072>,  <39.629265, 33.359550, 30.440130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528843, 33.153782, 30.512072>,  <39.361477, 32.810837, 30.631975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528843, 33.153782, 30.512072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157240, 0.393432, 0.905807,
		0.894540, -0.331872, 0.299431,
		0.418418, 0.857363, -0.299757,
		39.654369, 33.410992, 30.422144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747688, 32.987988, 31.217426>,  <39.361477, 32.810837, 30.631975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747688, 32.987988, 31.217426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706524, 33.327030, 31.009209>,  <39.681824, 33.530457, 30.884277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706524, 33.327030, 31.009209>,  <39.747688, 32.987988, 31.217426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706524, 33.327030, 31.009209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055111, 0.517659, 0.853810,
		0.993163, 0.116554, -0.006560,
		-0.102911, 0.847611, -0.520543,
		39.675652, 33.581314, 30.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236710, 33.457413, 31.530691>,  <39.747688, 32.987988, 31.217426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236710, 33.457413, 31.530691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947392, 33.677109, 31.363270>,  <39.773800, 33.808926, 31.262817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947392, 33.677109, 31.363270>,  <40.236710, 33.457413, 31.530691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947392, 33.677109, 31.363270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239808, 0.368621, 0.898115,
		0.647566, 0.749972, -0.134909,
		-0.723291, 0.549237, -0.418556,
		39.730404, 33.841881, 31.237703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343349, 34.090385, 31.841553>,  <40.236710, 33.457413, 31.530691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343349, 34.090385, 31.841553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970673, 34.093395, 31.696281>,  <39.747066, 34.095200, 31.609119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970673, 34.093395, 31.696281>,  <40.343349, 34.090385, 31.841553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970673, 34.093395, 31.696281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333692, 0.377329, 0.863870,
		0.143539, 0.926048, -0.349043,
		-0.931690, 0.007526, -0.363177,
		39.691166, 34.095654, 31.587328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009766, 34.752293, 31.935749>,  <40.343349, 34.090385, 31.841553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009766, 34.752293, 31.935749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687054, 34.522903, 31.878839>,  <39.493427, 34.385269, 31.844694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687054, 34.522903, 31.878839>,  <40.009766, 34.752293, 31.935749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687054, 34.522903, 31.878839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374184, 0.309540, 0.874169,
		-0.457271, 0.758496, -0.464313,
		-0.806777, -0.573471, -0.142274,
		39.445019, 34.350861, 31.836157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489540, 35.176998, 32.226547>,  <40.009766, 34.752293, 31.935749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489540, 35.176998, 32.226547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353249, 34.801525, 32.205463>,  <39.271473, 34.576241, 32.192814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353249, 34.801525, 32.205463>,  <39.489540, 35.176998, 32.226547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353249, 34.801525, 32.205463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430530, 0.105945, 0.896337,
		-0.835792, 0.328100, -0.440230,
		-0.340728, -0.938683, -0.052709,
		39.251030, 34.519920, 32.189651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799492, 35.189857, 32.336170>,  <39.489540, 35.176998, 32.226547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799492, 35.189857, 32.336170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904358, 34.817783, 32.438957>,  <38.967278, 34.594540, 32.500629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904358, 34.817783, 32.438957>,  <38.799492, 35.189857, 32.336170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904358, 34.817783, 32.438957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486490, 0.102578, 0.867644,
		-0.833426, -0.352474, -0.425633,
		0.262161, -0.930183, 0.256966,
		38.983006, 34.538727, 32.516048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232891, 34.973343, 32.737106>,  <38.799492, 35.189857, 32.336170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232891, 34.973343, 32.737106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505089, 34.700794, 32.844929>,  <38.668407, 34.537266, 32.909622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505089, 34.700794, 32.844929>,  <38.232891, 34.973343, 32.737106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505089, 34.700794, 32.844929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398542, -0.035464, 0.916464,
		-0.614896, -0.731075, -0.295689,
		0.680491, -0.681375, 0.269557,
		38.709236, 34.496384, 32.925797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894844, 34.486980, 33.237690>,  <38.232891, 34.973343, 32.737106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894844, 34.486980, 33.237690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280338, 34.392113, 33.286625>,  <38.511635, 34.335190, 33.315987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280338, 34.392113, 33.286625>,  <37.894844, 34.486980, 33.237690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280338, 34.392113, 33.286625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141101, -0.063768, 0.987939,
		-0.226510, -0.969373, -0.094921,
		0.963734, -0.237172, 0.122336,
		38.569458, 34.320961, 33.323326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901241, 33.881756, 33.599514>,  <37.894844, 34.486980, 33.237690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901241, 33.881756, 33.599514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255600, 34.050240, 33.677254>,  <38.468216, 34.151329, 33.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255600, 34.050240, 33.677254>,  <37.901241, 33.881756, 33.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255600, 34.050240, 33.677254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075979, -0.281550, 0.956534,
		0.457623, -0.862154, -0.217420,
		0.885894, 0.421212, 0.194349,
		38.521370, 34.176601, 33.735558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257004, 33.503727, 34.151489>,  <37.901241, 33.881756, 33.599514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257004, 33.503727, 34.151489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435734, 33.861378, 34.163395>,  <38.542973, 34.075970, 34.170540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435734, 33.861378, 34.163395>,  <38.257004, 33.503727, 34.151489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435734, 33.861378, 34.163395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042755, -0.054578, 0.997594,
		0.893599, -0.444477, -0.062615,
		0.446825, 0.894126, 0.029768,
		38.569782, 34.129616, 34.172325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717682, 33.453789, 34.653069>,  <38.257004, 33.503727, 34.151489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717682, 33.453789, 34.653069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653564, 33.845757, 34.605637>,  <38.615093, 34.080936, 34.577179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.653564, 33.845757, 34.605637>,  <38.717682, 33.453789, 34.653069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653564, 33.845757, 34.605637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075413, 0.131936, 0.988385,
		0.984185, 0.149486, -0.095047,
		-0.160290, 0.979922, -0.118576,
		38.605476, 34.139732, 34.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233177, 33.723682, 34.948647>,  <38.717682, 33.453789, 34.653069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233177, 33.723682, 34.948647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985481, 34.037739, 34.952545>,  <38.836864, 34.226173, 34.954884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985481, 34.037739, 34.952545>,  <39.233177, 33.723682, 34.948647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985481, 34.037739, 34.952545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106424, 0.071625, 0.991738,
		0.777956, 0.615161, -0.127911,
		-0.619240, 0.785141, 0.009747,
		38.799709, 34.273281, 34.955471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607048, 34.169510, 35.414635>,  <39.233177, 33.723682, 34.948647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607048, 34.169510, 35.414635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254276, 34.353977, 35.375576>,  <39.042614, 34.464657, 35.352139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254276, 34.353977, 35.375576>,  <39.607048, 34.169510, 35.414635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254276, 34.353977, 35.375576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010970, 0.227180, 0.973791,
		0.471262, 0.857740, -0.205415,
		-0.881925, 0.461164, -0.097651,
		38.989700, 34.492325, 35.346279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627911, 34.813313, 35.779018>,  <39.607048, 34.169510, 35.414635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627911, 34.813313, 35.779018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241310, 34.710873, 35.772205>,  <39.009350, 34.649410, 35.768120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241310, 34.710873, 35.772205>,  <39.627911, 34.813313, 35.779018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241310, 34.710873, 35.772205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074625, 0.216903, 0.973337,
		-0.245577, 0.942001, -0.228748,
		-0.966501, -0.256099, -0.017031,
		38.951359, 34.634045, 35.767097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223797, 35.412022, 36.059589>,  <39.627911, 34.813313, 35.779018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223797, 35.412022, 36.059589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032978, 35.061790, 36.090038>,  <38.918488, 34.851654, 36.108307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032978, 35.061790, 36.090038>,  <39.223797, 35.412022, 36.059589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032978, 35.061790, 36.090038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193978, 0.189369, 0.962555,
		-0.857203, 0.444421, -0.260180,
		-0.477050, -0.875574, 0.076119,
		38.889862, 34.799118, 36.112873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438541, 35.883530, 35.510376>,  <39.223797, 35.412022, 36.059589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438541, 35.883530, 35.510376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494991, 36.030006, 35.142464>,  <39.528862, 36.117893, 34.921719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494991, 36.030006, 35.142464>,  <39.438541, 35.883530, 35.510376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494991, 36.030006, 35.142464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881268, 0.469768, 0.051813,
		0.451056, 0.803258, 0.389005,
		0.141123, 0.366188, -0.919777,
		39.537327, 36.139862, 34.866531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476318, 36.394962, 36.080212>,  <39.438541, 35.883530, 35.510376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476318, 36.394962, 36.080212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658939, 36.746197, 36.022907>,  <39.768513, 36.956940, 35.988525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658939, 36.746197, 36.022907>,  <39.476318, 36.394962, 36.080212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658939, 36.746197, 36.022907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848700, -0.381514, 0.366272,
		0.266963, -0.288806, -0.919414,
		0.456550, 0.878088, -0.143260,
		39.795906, 37.009624, 35.979931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160591, 36.220970, 35.745876>,  <39.476318, 36.394962, 36.080212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160591, 36.220970, 35.745876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202103, 36.584198, 35.908176>,  <40.227009, 36.802135, 36.005558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202103, 36.584198, 35.908176>,  <40.160591, 36.220970, 35.745876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202103, 36.584198, 35.908176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924032, -0.238953, 0.298438,
		0.367959, 0.343957, -0.863886,
		0.103778, 0.908072, 0.405753,
		40.233234, 36.856621, 36.029903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693668, 36.590153, 35.521400>,  <40.160591, 36.220970, 35.745876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693668, 36.590153, 35.521400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651299, 36.740040, 35.889828>,  <40.625877, 36.829971, 36.110886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651299, 36.740040, 35.889828>,  <40.693668, 36.590153, 35.521400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651299, 36.740040, 35.889828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982194, -0.105105, 0.155718,
		0.155159, 0.921163, -0.356908,
		-0.105929, 0.374714, 0.921069,
		40.619518, 36.852455, 36.166149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310116, 36.867683, 35.649910>,  <40.693668, 36.590153, 35.521400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310116, 36.867683, 35.649910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132915, 36.936665, 36.001823>,  <41.026596, 36.978054, 36.212971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132915, 36.936665, 36.001823>,  <41.310116, 36.867683, 35.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132915, 36.936665, 36.001823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876500, -0.122928, 0.465442,
		0.188418, 0.977317, -0.096700,
		-0.442997, 0.172455, 0.879780,
		41.000015, 36.988400, 36.265759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802696, 37.332825, 35.941582>,  <41.310116, 36.867683, 35.649910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802696, 37.332825, 35.941582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582790, 37.164433, 36.230175>,  <41.450848, 37.063396, 36.403332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582790, 37.164433, 36.230175>,  <41.802696, 37.332825, 35.941582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582790, 37.164433, 36.230175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834247, -0.232930, 0.499775,
		-0.042339, 0.876653, 0.479257,
		-0.549762, -0.420979, 0.721483,
		41.417862, 37.038139, 36.446621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987011, 37.528320, 36.605663>,  <41.802696, 37.332825, 35.941582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987011, 37.528320, 36.605663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818649, 37.166843, 36.637100>,  <41.717632, 36.949955, 36.655960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818649, 37.166843, 36.637100>,  <41.987011, 37.528320, 36.605663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818649, 37.166843, 36.637100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897985, -0.402851, 0.177015,
		-0.128309, 0.145077, 0.981066,
		-0.420904, -0.903694, 0.078588,
		41.692379, 36.895737, 36.660675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504642, 37.111000, 37.054443>,  <41.987011, 37.528320, 36.605663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504642, 37.111000, 37.054443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266121, 36.826168, 36.906197>,  <42.123009, 36.655270, 36.817249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266121, 36.826168, 36.906197>,  <42.504642, 37.111000, 37.054443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266121, 36.826168, 36.906197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758707, -0.650759, 0.029604,
		-0.262265, -0.263539, 0.928313,
		-0.596306, -0.712081, -0.370620,
		42.087231, 36.612545, 36.795010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467709, 36.511059, 37.547001>,  <42.504642, 37.111000, 37.054443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467709, 36.511059, 37.547001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357029, 36.387600, 37.182983>,  <42.290623, 36.313526, 36.964573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357029, 36.387600, 37.182983>,  <42.467709, 36.511059, 37.547001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357029, 36.387600, 37.182983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718285, -0.695529, 0.017494,
		-0.638360, -0.648830, 0.414146,
		-0.276700, -0.308643, -0.910042,
		42.274017, 36.295006, 36.909969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635754, 35.896599, 37.586197>,  <42.467709, 36.511059, 37.547001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635754, 35.896599, 37.586197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550690, 35.840481, 37.199394>,  <42.499653, 35.806808, 36.967312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550690, 35.840481, 37.199394>,  <42.635754, 35.896599, 37.586197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550690, 35.840481, 37.199394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498836, -0.866548, 0.016020,
		-0.840202, -0.478969, 0.254264,
		-0.212659, -0.140296, -0.967002,
		42.486893, 35.798393, 36.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404030, 35.211922, 37.434593>,  <42.635754, 35.896599, 37.586197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404030, 35.211922, 37.434593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521194, 35.321564, 37.068188>,  <42.591492, 35.387348, 36.848347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.521194, 35.321564, 37.068188>,  <42.404030, 35.211922, 37.434593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521194, 35.321564, 37.068188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468022, -0.876511, -0.112624,
		-0.833763, -0.395724, -0.385023,
		0.292908, 0.274101, -0.916009,
		42.609066, 35.403793, 36.793385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478256, 34.563564, 37.080582>,  <42.404030, 35.211922, 37.434593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478256, 34.563564, 37.080582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672947, 34.813755, 36.836655>,  <42.789761, 34.963867, 36.690296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.672947, 34.813755, 36.836655>,  <42.478256, 34.563564, 37.080582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672947, 34.813755, 36.836655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410874, -0.779968, -0.472051,
		-0.770895, -0.020800, -0.636622,
		0.486726, 0.625474, -0.609820,
		42.818966, 35.001396, 36.653709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229832, 34.437611, 36.401585>,  <42.478256, 34.563564, 37.080582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229832, 34.437611, 36.401585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595276, 34.597965, 36.374424>,  <42.814541, 34.694180, 36.358128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595276, 34.597965, 36.374424>,  <42.229832, 34.437611, 36.401585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595276, 34.597965, 36.374424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280301, -0.741951, -0.609048,
		-0.294541, 0.537398, -0.790221,
		0.913606, 0.400890, -0.067901,
		42.869358, 34.718231, 36.354053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441647, 34.473515, 35.758289>,  <42.229832, 34.437611, 36.401585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441647, 34.473515, 35.758289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793453, 34.481533, 35.948467>,  <43.004536, 34.486343, 36.062572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793453, 34.481533, 35.948467>,  <42.441647, 34.473515, 35.758289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793453, 34.481533, 35.948467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300424, -0.798227, -0.522091,
		0.369044, 0.602023, -0.708079,
		0.879518, 0.020050, 0.475443,
		43.057308, 34.487549, 36.091099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874893, 34.263451, 35.275909>,  <42.441647, 34.473515, 35.758289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874893, 34.263451, 35.275909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079029, 34.191399, 35.612267>,  <43.201511, 34.148167, 35.814083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079029, 34.191399, 35.612267>,  <42.874893, 34.263451, 35.275909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079029, 34.191399, 35.612267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501691, -0.731822, -0.461240,
		0.698470, 0.657259, -0.283109,
		0.510340, -0.180129, 0.840897,
		43.232132, 34.137360, 35.864536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524559, 34.027653, 35.096085>,  <42.874893, 34.263451, 35.275909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524559, 34.027653, 35.096085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522556, 33.927509, 35.483341>,  <43.521355, 33.867424, 35.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.522556, 33.927509, 35.483341>,  <43.524559, 34.027653, 35.096085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522556, 33.927509, 35.483341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464948, -0.857722, -0.219399,
		0.885324, 0.449035, 0.120702,
		-0.005011, -0.250360, 0.968140,
		43.521053, 33.852402, 35.773785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184738, 33.852531, 35.235657>,  <43.524559, 34.027653, 35.096085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184738, 33.852531, 35.235657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985836, 33.681423, 35.537582>,  <43.866493, 33.578758, 35.718739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985836, 33.681423, 35.537582>,  <44.184738, 33.852531, 35.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985836, 33.681423, 35.537582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616607, -0.786285, -0.039393,
		0.610352, 0.445836, 0.654752,
		-0.497259, -0.427768, 0.754817,
		43.836658, 33.553093, 35.764027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659195, 33.765823, 35.837868>,  <44.184738, 33.852531, 35.235657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659195, 33.765823, 35.837868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357082, 33.504398, 35.857460>,  <44.175816, 33.347542, 35.869217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.357082, 33.504398, 35.857460>,  <44.659195, 33.765823, 35.837868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357082, 33.504398, 35.857460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652768, -0.756839, -0.032992,
		0.058636, 0.007058, 0.998255,
		-0.755285, -0.653563, 0.048985,
		44.130497, 33.308331, 35.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957596, 33.333179, 36.309155>,  <44.659195, 33.765823, 35.837868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957596, 33.333179, 36.309155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648994, 33.148632, 36.133919>,  <44.463833, 33.037903, 36.028778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.648994, 33.148632, 36.133919>,  <44.957596, 33.333179, 36.309155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.648994, 33.148632, 36.133919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584814, -0.785430, -0.202714,
		-0.250563, -0.412595, 0.875776,
		-0.771500, -0.461373, -0.438091,
		44.417545, 33.010220, 36.002491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948006, 32.619854, 36.540424>,  <44.957596, 33.333179, 36.309155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948006, 32.619854, 36.540424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773937, 32.673637, 36.184322>,  <44.669498, 32.705906, 35.970661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773937, 32.673637, 36.184322>,  <44.948006, 32.619854, 36.540424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773937, 32.673637, 36.184322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405642, -0.853467, -0.327184,
		-0.803794, -0.503504, 0.316858,
		-0.435166, 0.134458, -0.890253,
		44.643387, 32.713974, 35.917248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467365, 32.140221, 36.260597>,  <44.948006, 32.619854, 36.540424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467365, 32.140221, 36.260597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663406, 32.287113, 35.944382>,  <44.781029, 32.375248, 35.754654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663406, 32.287113, 35.944382>,  <44.467365, 32.140221, 36.260597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663406, 32.287113, 35.944382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298471, -0.922800, -0.243628,
		-0.818973, -0.116550, -0.561872,
		0.490101, 0.367227, -0.790535,
		44.810436, 32.397282, 35.707222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147675, 32.041695, 36.106178>,  <44.467365, 32.140221, 36.260597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147675, 32.041695, 36.106178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033310, 32.107937, 36.483711>,  <44.964691, 32.147682, 36.710232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033310, 32.107937, 36.483711>,  <45.147675, 32.041695, 36.106178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033310, 32.107937, 36.483711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569677, 0.821376, 0.028450,
		-0.770533, 0.545816, -0.329186,
		-0.285914, 0.165608, 0.943836,
		44.947536, 32.157619, 36.766861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628067, 32.249966, 35.554649>,  <45.147675, 32.041695, 36.106178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628067, 32.249966, 35.554649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.353764, 31.961565, 35.594452>,  <45.189182, 31.788527, 35.618332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.353764, 31.961565, 35.594452>,  <45.628067, 32.249966, 35.554649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353764, 31.961565, 35.594452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721263, 0.654861, -0.225691,
		0.097560, -0.226538, -0.969104,
		-0.685757, -0.720997, 0.099505,
		45.148037, 31.745266, 35.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220989, 32.384769, 35.058437>,  <45.628067, 32.249966, 35.554649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220989, 32.384769, 35.058437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990456, 32.147160, 35.282928>,  <44.852135, 32.004593, 35.417622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990456, 32.147160, 35.282928>,  <45.220989, 32.384769, 35.058437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990456, 32.147160, 35.282928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757111, 0.646621, -0.093080,
		-0.307608, -0.478554, -0.822413,
		-0.576333, -0.594026, 0.561225,
		44.817554, 31.968952, 35.451298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494122, 32.366787, 34.757584>,  <45.220989, 32.384769, 35.058437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494122, 32.366787, 34.757584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501953, 32.301498, 35.152142>,  <44.506653, 32.262325, 35.388878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501953, 32.301498, 35.152142>,  <44.494122, 32.366787, 34.757584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501953, 32.301498, 35.152142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613100, 0.777357, 0.140799,
		-0.789762, -0.607517, -0.084846,
		0.019582, -0.163217, 0.986396,
		44.507828, 32.252533, 35.448059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800423, 32.462883, 34.954571>,  <44.494122, 32.366787, 34.757584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800423, 32.462883, 34.954571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023815, 32.475761, 35.286125>,  <44.157852, 32.483490, 35.485058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023815, 32.475761, 35.286125>,  <43.800423, 32.462883, 34.954571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023815, 32.475761, 35.286125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658717, 0.624544, 0.419568,
		-0.504169, -0.780326, 0.370007,
		0.558485, 0.032197, 0.828890,
		44.191360, 32.485420, 35.534794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430443, 32.313938, 35.563786>,  <43.800423, 32.462883, 34.954571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430443, 32.313938, 35.563786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735779, 32.538940, 35.690842>,  <43.918980, 32.673943, 35.767075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735779, 32.538940, 35.690842>,  <43.430443, 32.313938, 35.563786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735779, 32.538940, 35.690842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642482, 0.609856, 0.463995,
		0.067284, -0.558267, 0.826929,
		0.763341, 0.562507, 0.317643,
		43.964783, 32.707691, 35.786133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188454, 32.552502, 36.193020>,  <43.430443, 32.313938, 35.563786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188454, 32.552502, 36.193020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485893, 32.791756, 36.073494>,  <43.664356, 32.935307, 36.001778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485893, 32.791756, 36.073494>,  <43.188454, 32.552502, 36.193020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485893, 32.791756, 36.073494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490950, 0.791834, 0.363273,
		0.453900, -0.123427, 0.882463,
		0.743602, 0.598134, -0.298817,
		43.708973, 32.971195, 35.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143646, 32.966049, 36.732742>,  <43.188454, 32.552502, 36.193020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143646, 32.966049, 36.732742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364132, 33.138840, 36.447208>,  <43.496422, 33.242516, 36.275887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.364132, 33.138840, 36.447208>,  <43.143646, 32.966049, 36.732742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364132, 33.138840, 36.447208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428436, 0.880678, 0.202112,
		0.715967, 0.194426, 0.670514,
		0.551211, 0.431978, -0.713835,
		43.529495, 33.268433, 36.233059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448292, 33.549389, 37.012630>,  <43.143646, 32.966049, 36.732742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448292, 33.549389, 37.012630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480469, 33.642849, 36.625034>,  <43.499775, 33.698925, 36.392479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480469, 33.642849, 36.625034>,  <43.448292, 33.549389, 37.012630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480469, 33.642849, 36.625034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223692, 0.951574, 0.210878,
		0.971334, 0.199791, 0.128814,
		0.080444, 0.233648, -0.968988,
		43.504601, 33.712944, 36.334339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008396, 34.116360, 36.953014>,  <43.448292, 33.549389, 37.012630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008396, 34.116360, 36.953014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777374, 34.115334, 36.626476>,  <43.638760, 34.114719, 36.430553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777374, 34.115334, 36.626476>,  <44.008396, 34.116360, 36.953014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777374, 34.115334, 36.626476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089679, 0.994142, 0.060324,
		0.811410, 0.108049, -0.574403,
		-0.577557, -0.002565, -0.816346,
		43.604107, 34.114563, 36.381573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166447, 34.706924, 37.289932>,  <44.008396, 34.116360, 36.953014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166447, 34.706924, 37.289932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884159, 34.849846, 37.534653>,  <43.714787, 34.935596, 37.681484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884159, 34.849846, 37.534653>,  <44.166447, 34.706924, 37.289932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884159, 34.849846, 37.534653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444890, -0.895531, 0.009821,
		0.551397, -0.265254, 0.790950,
		-0.705716, 0.357301, 0.611802,
		43.672443, 34.957035, 37.718193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301105, 34.662754, 36.553204>,  <44.166447, 34.706924, 37.289932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301105, 34.662754, 36.553204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924263, 34.590691, 36.440086>,  <43.698158, 34.547451, 36.372215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924263, 34.590691, 36.440086>,  <44.301105, 34.662754, 36.553204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924263, 34.590691, 36.440086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229621, 0.961244, 0.152587,
		0.244345, 0.208690, -0.946966,
		-0.942109, -0.180160, -0.282795,
		43.641632, 34.536644, 36.355247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011875, 35.389774, 36.434395>,  <44.301105, 34.662754, 36.553204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011875, 35.389774, 36.434395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670341, 35.184536, 36.399288>,  <43.465420, 35.061394, 36.378223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670341, 35.184536, 36.399288>,  <44.011875, 35.389774, 36.434395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670341, 35.184536, 36.399288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520270, 0.835661, 0.176042,
		-0.016985, 0.195971, -0.980463,
		-0.853833, -0.513095, -0.087765,
		43.414192, 35.030609, 36.372959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627541, 35.849644, 36.040192>,  <44.011875, 35.389774, 36.434395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627541, 35.849644, 36.040192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383404, 35.592632, 36.225510>,  <43.236923, 35.438427, 36.336700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383404, 35.592632, 36.225510>,  <43.627541, 35.849644, 36.040192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383404, 35.592632, 36.225510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710784, 0.702397, 0.037750,
		-0.349674, -0.306263, -0.885399,
		-0.610340, -0.642527, 0.463297,
		43.200302, 35.399876, 36.364498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003296, 35.904812, 35.700039>,  <43.627541, 35.849644, 36.040192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003296, 35.904812, 35.700039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904423, 35.745193, 36.053234>,  <42.845097, 35.649422, 36.265152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.904423, 35.745193, 36.053234>,  <43.003296, 35.904812, 35.700039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904423, 35.745193, 36.053234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824333, 0.565560, 0.024825,
		-0.509288, -0.721739, -0.468742,
		-0.247185, -0.399042, 0.882986,
		42.830269, 35.625481, 36.318130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294971, 35.711876, 35.640610>,  <43.003296, 35.904812, 35.700039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294971, 35.711876, 35.640610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355488, 35.767712, 36.032043>,  <42.391796, 35.801212, 36.266903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355488, 35.767712, 36.032043>,  <42.294971, 35.711876, 35.640610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355488, 35.767712, 36.032043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851891, 0.520559, 0.057446,
		-0.501392, -0.842338, 0.197670,
		0.151287, 0.139590, 0.978584,
		42.400875, 35.809589, 36.325619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751480, 36.203819, 35.786091>,  <42.294971, 35.711876, 35.640610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751480, 36.203819, 35.786091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916225, 36.081429, 36.129425>,  <42.015072, 36.007992, 36.335426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916225, 36.081429, 36.129425>,  <41.751480, 36.203819, 35.786091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916225, 36.081429, 36.129425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702749, 0.492979, 0.512947,
		-0.580094, -0.814461, -0.011986,
		0.411867, -0.305981, 0.858336,
		42.039787, 35.989635, 36.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378845, 35.695076, 36.211979>,  <41.751480, 36.203819, 35.786091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378845, 35.695076, 36.211979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582024, 35.972900, 36.415771>,  <41.703930, 36.139595, 36.538048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582024, 35.972900, 36.415771>,  <41.378845, 35.695076, 36.211979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582024, 35.972900, 36.415771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860561, 0.383295, 0.335441,
		0.037700, -0.608831, 0.792404,
		0.507951, 0.694557, 0.509486,
		41.734409, 36.181267, 36.568619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146629, 35.745537, 36.962975>,  <41.378845, 35.695076, 36.211979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146629, 35.745537, 36.962975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304279, 36.103477, 36.879166>,  <41.398869, 36.318241, 36.828880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304279, 36.103477, 36.879166>,  <41.146629, 35.745537, 36.962975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304279, 36.103477, 36.879166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915437, 0.402449, -0.003173,
		0.081483, 0.193055, 0.977799,
		0.394127, 0.894855, -0.209522,
		41.422516, 36.371933, 36.816307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644238, 36.282803, 37.243671>,  <41.146629, 35.745537, 36.962975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644238, 36.282803, 37.243671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875443, 36.492641, 36.993645>,  <41.014164, 36.618546, 36.843628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875443, 36.492641, 36.993645>,  <40.644238, 36.282803, 37.243671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875443, 36.492641, 36.993645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746141, 0.649913, -0.144522,
		0.330421, 0.549921, 0.767078,
		0.578010, 0.524595, -0.625064,
		41.048847, 36.650021, 36.806126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384762, 36.924458, 37.409584>,  <40.644238, 36.282803, 37.243671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384762, 36.924458, 37.409584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584694, 36.928581, 37.063160>,  <40.704655, 36.931053, 36.855305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.584694, 36.928581, 37.063160>,  <40.384762, 36.924458, 37.409584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584694, 36.928581, 37.063160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676733, 0.628712, -0.383084,
		0.540554, 0.777570, 0.321227,
		0.499834, 0.010307, -0.866060,
		40.734646, 36.931675, 36.803341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287098, 37.540436, 37.106438>,  <40.384762, 36.924458, 37.409584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287098, 37.540436, 37.106438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446423, 37.349258, 36.793282>,  <40.542019, 37.234550, 36.605389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446423, 37.349258, 36.793282>,  <40.287098, 37.540436, 37.106438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446423, 37.349258, 36.793282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669196, 0.432310, -0.604389,
		0.627316, 0.764640, -0.147646,
		0.398311, -0.477947, -0.782889,
		40.565914, 37.205875, 36.558414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320839, 38.000912, 36.629150>,  <40.287098, 37.540436, 37.106438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320839, 38.000912, 36.629150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306278, 37.656372, 36.426468>,  <40.297543, 37.449650, 36.304859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306278, 37.656372, 36.426468>,  <40.320839, 38.000912, 36.629150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306278, 37.656372, 36.426468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774652, 0.344650, -0.530218,
		0.631340, 0.373220, -0.679792,
		-0.036402, -0.861349, -0.506707,
		40.295357, 37.397968, 36.274456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495464, 38.096077, 35.800327>,  <40.320839, 38.000912, 36.629150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495464, 38.096077, 35.800327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248123, 37.793110, 35.884190>,  <40.099720, 37.611328, 35.934505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248123, 37.793110, 35.884190>,  <40.495464, 38.096077, 35.800327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248123, 37.793110, 35.884190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717621, 0.435406, -0.543545,
		0.320408, -0.486554, -0.812775,
		-0.618351, -0.757421, 0.209654,
		40.062618, 37.565884, 35.947086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305691, 37.774235, 35.161114>,  <40.495464, 38.096077, 35.800327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305691, 37.774235, 35.161114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022671, 37.693062, 35.431873>,  <39.852859, 37.644360, 35.594330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022671, 37.693062, 35.431873>,  <40.305691, 37.774235, 35.161114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022671, 37.693062, 35.431873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706045, 0.242974, -0.665180,
		-0.029484, -0.948569, -0.315194,
		-0.707553, -0.202929, 0.676896,
		39.810406, 37.632183, 35.634941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078804, 37.888317, 35.151299>,  <40.305691, 37.774235, 35.161114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078804, 37.888317, 35.151299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430573, 37.702576, 35.109352>,  <41.641632, 37.591129, 35.084187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430573, 37.702576, 35.109352>,  <41.078804, 37.888317, 35.151299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430573, 37.702576, 35.109352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087624, 0.058619, -0.994427,
		0.467915, 0.883707, 0.010862,
		0.879419, -0.464356, -0.104863,
		41.694397, 37.563271, 35.077892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413544, 38.211807, 34.643566>,  <41.078804, 37.888317, 35.151299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413544, 38.211807, 34.643566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544750, 37.833984, 34.649323>,  <41.623474, 37.607288, 34.652779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544750, 37.833984, 34.649323>,  <41.413544, 38.211807, 34.643566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544750, 37.833984, 34.649323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184252, -0.078916, -0.979706,
		0.926528, 0.318711, -0.199924,
		0.328020, -0.944561, 0.014395,
		41.643158, 37.550617, 34.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873207, 38.028305, 34.093029>,  <41.413544, 38.211807, 34.643566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873207, 38.028305, 34.093029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697956, 37.688305, 34.210026>,  <41.592804, 37.484306, 34.280224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697956, 37.688305, 34.210026>,  <41.873207, 38.028305, 34.093029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697956, 37.688305, 34.210026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136880, -0.258501, -0.956264,
		0.888430, -0.459001, -0.003091,
		-0.438127, -0.849997, 0.292488,
		41.566517, 37.433304, 34.297771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196518, 37.513702, 33.584419>,  <41.873207, 38.028305, 34.093029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196518, 37.513702, 33.584419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840847, 37.377331, 33.706493>,  <41.627445, 37.295509, 33.779736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840847, 37.377331, 33.706493>,  <42.196518, 37.513702, 33.584419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840847, 37.377331, 33.706493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128310, -0.454423, -0.881497,
		0.439211, -0.822962, 0.360316,
		-0.889174, -0.340931, 0.305181,
		41.574093, 37.275051, 33.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120224, 36.737873, 33.348667>,  <42.196518, 37.513702, 33.584419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120224, 36.737873, 33.348667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774902, 36.934067, 33.396214>,  <41.567707, 37.051781, 33.424744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.774902, 36.934067, 33.396214>,  <42.120224, 36.737873, 33.348667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774902, 36.934067, 33.396214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330770, -0.372001, -0.867299,
		-0.381193, -0.788052, 0.483390,
		-0.863298, 0.490499, 0.118860,
		41.515911, 37.081211, 33.431873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285477, 36.901886, 34.087414>,  <42.120224, 36.737873, 33.348667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285477, 36.901886, 34.087414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122093, 36.607422, 34.303276>,  <42.024063, 36.430744, 34.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122093, 36.607422, 34.303276>,  <42.285477, 36.901886, 34.087414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122093, 36.607422, 34.303276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689941, -0.636092, -0.345496,
		0.597611, 0.231210, 0.767725,
		-0.408462, -0.736158, 0.539658,
		41.999554, 36.386574, 34.465172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857986, 36.502296, 34.354313>,  <42.285477, 36.901886, 34.087414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857986, 36.502296, 34.354313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539375, 36.261436, 34.376060>,  <42.348209, 36.116920, 34.389107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.539375, 36.261436, 34.376060>,  <42.857986, 36.502296, 34.354313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539375, 36.261436, 34.376060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547613, -0.756640, -0.357234,
		0.256243, -0.254777, 0.932432,
		-0.796530, -0.602150, 0.054365,
		42.300415, 36.080791, 34.392368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146671, 35.909050, 34.658291>,  <42.857986, 36.502296, 34.354313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146671, 35.909050, 34.658291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808807, 35.846691, 34.453449>,  <42.606091, 35.809277, 34.330544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808807, 35.846691, 34.453449>,  <43.146671, 35.909050, 34.658291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808807, 35.846691, 34.453449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434090, -0.759274, -0.484840,
		-0.313237, -0.631822, 0.709002,
		-0.844659, -0.155900, -0.512100,
		42.555408, 35.799923, 34.299820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942970, 35.201294, 34.742962>,  <43.146671, 35.909050, 34.658291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942970, 35.201294, 34.742962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832069, 35.359940, 34.392914>,  <42.765530, 35.455128, 34.182884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832069, 35.359940, 34.392914>,  <42.942970, 35.201294, 34.742962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832069, 35.359940, 34.392914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404855, -0.777788, -0.480769,
		-0.871335, -0.487588, 0.055069,
		-0.277249, 0.396616, -0.875117,
		42.748894, 35.478924, 34.130379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405849, 34.718719, 34.308750>,  <42.942970, 35.201294, 34.742962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405849, 34.718719, 34.308750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660946, 34.966915, 34.126198>,  <42.814003, 35.115833, 34.016666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660946, 34.966915, 34.126198>,  <42.405849, 34.718719, 34.308750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660946, 34.966915, 34.126198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394648, -0.772049, -0.498190,
		-0.661466, 0.137609, -0.737243,
		0.637743, 0.620487, -0.456377,
		42.852268, 35.153061, 33.989285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276402, 34.799835, 33.577843>,  <42.405849, 34.718719, 34.308750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276402, 34.799835, 33.577843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660290, 34.848629, 33.679077>,  <42.890625, 34.877903, 33.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.660290, 34.848629, 33.679077>,  <42.276402, 34.799835, 33.577843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660290, 34.848629, 33.679077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229393, -0.860317, -0.455229,
		0.162205, 0.494950, -0.853648,
		0.959723, 0.121980, 0.253086,
		42.948208, 34.885223, 33.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870800, 34.946812, 32.987297>,  <42.276402, 34.799835, 33.577843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870800, 34.946812, 32.987297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992256, 34.712650, 33.287991>,  <43.065132, 34.572151, 33.468407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.992256, 34.712650, 33.287991>,  <42.870800, 34.946812, 32.987297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.992256, 34.712650, 33.287991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204017, -0.730735, -0.651462,
		0.930687, 0.351178, -0.102450,
		0.303643, -0.585406, 0.751732,
		43.083347, 34.537029, 33.513512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548191, 35.095070, 33.216087>,  <42.870800, 34.946812, 32.987297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548191, 35.095070, 33.216087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947681, 35.079849, 33.202808>,  <44.187374, 35.070717, 33.194839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947681, 35.079849, 33.202808>,  <43.548191, 35.095070, 33.216087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947681, 35.079849, 33.202808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050077, 0.830904, 0.554158,
		0.006498, -0.555113, 0.831750,
		0.998724, -0.038051, -0.033197,
		44.247299, 35.068436, 33.192848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900082, 35.032295, 33.953053>,  <43.548191, 35.095070, 33.216087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900082, 35.032295, 33.953053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129169, 35.190975, 33.666103>,  <44.266621, 35.286182, 33.493935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.129169, 35.190975, 33.666103>,  <43.900082, 35.032295, 33.953053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.129169, 35.190975, 33.666103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115150, 0.827499, 0.549532,
		0.811619, -0.397336, 0.428250,
		0.572726, 0.396698, -0.717368,
		44.300987, 35.309986, 33.450893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432190, 35.325161, 34.421700>,  <43.900082, 35.032295, 33.953053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432190, 35.325161, 34.421700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353176, 35.521004, 34.081989>,  <44.305767, 35.638508, 33.878162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353176, 35.521004, 34.081989>,  <44.432190, 35.325161, 34.421700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353176, 35.521004, 34.081989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016416, 0.864571, 0.502242,
		0.980158, 0.113153, -0.162747,
		-0.197537, 0.489605, -0.849274,
		44.293915, 35.667885, 33.827206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624756, 35.813442, 34.931583>,  <44.432190, 35.325161, 34.421700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624756, 35.813442, 34.931583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500957, 35.999176, 34.599655>,  <44.426678, 36.110615, 34.400497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500957, 35.999176, 34.599655>,  <44.624756, 35.813442, 34.931583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500957, 35.999176, 34.599655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254319, 0.881300, 0.398287,
		0.916259, -0.087769, -0.390852,
		-0.309501, 0.464335, -0.829821,
		44.408108, 36.138477, 34.350708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267883, 35.313339, 34.967072>,  <44.624756, 35.813442, 34.931583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267883, 35.313339, 34.967072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324242, 35.447502, 35.339661>,  <45.358059, 35.528000, 35.563213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324242, 35.447502, 35.339661>,  <45.267883, 35.313339, 34.967072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324242, 35.447502, 35.339661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973204, -0.219617, -0.068133,
		0.181716, 0.916117, -0.357364,
		0.140900, 0.335407, 0.931477,
		45.366512, 35.548122, 35.619102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923454, 35.290173, 34.862522>,  <45.267883, 35.313339, 34.967072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923454, 35.290173, 34.862522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216419, 35.307774, 34.590748>,  <46.392197, 35.318333, 34.427681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216419, 35.307774, 34.590748>,  <45.923454, 35.290173, 34.862522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216419, 35.307774, 34.590748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675842, 0.073988, 0.733324,
		0.082545, -0.996288, 0.024445,
		0.732410, 0.044011, -0.679440,
		46.436142, 35.320972, 34.386917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.310402, 34.754837, 35.041073>,  <45.923454, 35.290173, 34.862522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.310402, 34.754837, 35.041073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520096, 35.042503, 34.858654>,  <46.645912, 35.215103, 34.749203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.520096, 35.042503, 34.858654>,  <46.310402, 34.754837, 35.041073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.520096, 35.042503, 34.858654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683272, -0.035599, 0.729296,
		0.508253, -0.693923, -0.510050,
		0.524232, 0.719169, -0.456044,
		46.677364, 35.258255, 34.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909645, 34.511429, 34.978275>,  <46.310402, 34.754837, 35.041073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909645, 34.511429, 34.978275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975014, 34.905529, 34.957962>,  <47.014233, 35.141987, 34.945774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975014, 34.905529, 34.957962>,  <46.909645, 34.511429, 34.978275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975014, 34.905529, 34.957962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692412, -0.077873, 0.717287,
		0.702751, -0.152384, -0.694924,
		0.163419, 0.985248, -0.050788,
		47.024040, 35.201103, 34.942726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.629242, 34.870998, 34.642033>,  <46.909645, 34.511429, 34.978275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.629242, 34.870998, 34.642033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486393, 35.052769, 34.968460>,  <47.400684, 35.161831, 35.164314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486393, 35.052769, 34.968460>,  <47.629242, 34.870998, 34.642033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486393, 35.052769, 34.968460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787942, -0.322620, 0.524466,
		0.501608, 0.830311, -0.242844,
		-0.357123, 0.454423, 0.816065,
		47.379257, 35.189095, 35.213280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.244324, 29.418888, 28.065292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893284, 29.469400, 27.880310>,  <37.682659, 29.499708, 27.769320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.893284, 29.469400, 27.880310>,  <38.244324, 29.418888, 28.065292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893284, 29.469400, 27.880310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437889, 0.181455, 0.880527,
		0.195108, 0.975258, -0.103949,
		-0.877603, 0.126279, -0.462457,
		37.630005, 29.507284, 27.741573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008228, 30.010992, 28.339714>,  <38.244324, 29.418888, 28.065292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008228, 30.010992, 28.339714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691040, 29.842529, 28.163609>,  <37.500729, 29.741451, 28.057945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691040, 29.842529, 28.163609>,  <38.008228, 30.010992, 28.339714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691040, 29.842529, 28.163609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576506, 0.284903, 0.765814,
		-0.197094, 0.861080, -0.468717,
		-0.792966, -0.421155, -0.440265,
		37.453152, 29.716183, 28.031528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499542, 30.476025, 28.496466>,  <38.008228, 30.010992, 28.339714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499542, 30.476025, 28.496466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306019, 30.146486, 28.378342>,  <37.189903, 29.948763, 28.307468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306019, 30.146486, 28.378342>,  <37.499542, 30.476025, 28.496466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306019, 30.146486, 28.378342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786404, 0.261163, 0.559788,
		-0.384056, 0.503061, -0.774229,
		-0.483808, -0.823846, -0.295308,
		37.160877, 29.899332, 28.289749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887402, 30.726990, 28.376019>,  <37.499542, 30.476025, 28.496466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887402, 30.726990, 28.376019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825985, 30.334709, 28.424423>,  <36.789135, 30.099340, 28.453466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825985, 30.334709, 28.424423>,  <36.887402, 30.726990, 28.376019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825985, 30.334709, 28.424423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656196, 0.192761, 0.729554,
		-0.738803, 0.032611, -0.673131,
		-0.153545, -0.980703, 0.121013,
		36.779922, 30.040499, 28.460728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203968, 30.694269, 28.427118>,  <36.887402, 30.726990, 28.376019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203968, 30.694269, 28.427118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363289, 30.363659, 28.586222>,  <36.458881, 30.165293, 28.681684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.363289, 30.363659, 28.586222>,  <36.203968, 30.694269, 28.427118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363289, 30.363659, 28.586222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486492, 0.177266, 0.855513,
		-0.777611, -0.534262, -0.331490,
		0.398306, -0.826523, 0.397758,
		36.482780, 30.115702, 28.705549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699455, 30.391495, 28.708189>,  <36.203968, 30.694269, 28.427118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699455, 30.391495, 28.708189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024632, 30.252035, 28.894768>,  <36.219738, 30.168360, 29.006714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024632, 30.252035, 28.894768>,  <35.699455, 30.391495, 28.708189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024632, 30.252035, 28.894768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443387, 0.148708, 0.883908,
		-0.377538, -0.925381, -0.033696,
		0.812941, -0.348649, 0.466445,
		36.268513, 30.147440, 29.034700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401890, 30.017221, 29.224489>,  <35.699455, 30.391495, 28.708189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401890, 30.017221, 29.224489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773582, 30.063465, 29.364872>,  <35.996597, 30.091211, 29.449100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773582, 30.063465, 29.364872>,  <35.401890, 30.017221, 29.224489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773582, 30.063465, 29.364872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367021, 0.178788, 0.912869,
		0.042788, -0.977072, 0.208566,
		0.929228, 0.115608, 0.350955,
		36.052349, 30.098148, 29.470158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435715, 29.638004, 29.820051>,  <35.401890, 30.017221, 29.224489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435715, 29.638004, 29.820051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752502, 29.879587, 29.855881>,  <35.942574, 30.024536, 29.877378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752502, 29.879587, 29.855881>,  <35.435715, 29.638004, 29.820051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752502, 29.879587, 29.855881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242996, 0.177197, 0.953706,
		0.560126, -0.777069, 0.287094,
		0.791967, 0.603958, 0.089572,
		35.990093, 30.060774, 29.882751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599575, 29.583040, 30.533777>,  <35.435715, 29.638004, 29.820051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599575, 29.583040, 30.533777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797684, 29.913235, 30.425499>,  <35.916550, 30.111351, 30.360531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797684, 29.913235, 30.425499>,  <35.599575, 29.583040, 30.533777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797684, 29.913235, 30.425499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112908, 0.370120, 0.922097,
		0.861369, -0.426125, 0.276514,
		0.495272, 0.825487, -0.270697,
		35.946266, 30.160881, 30.344290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249481, 29.716856, 30.946468>,  <35.599575, 29.583040, 30.533777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249481, 29.716856, 30.946468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131992, 30.060381, 30.778580>,  <36.061497, 30.266497, 30.677847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131992, 30.060381, 30.778580>,  <36.249481, 29.716856, 30.946468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131992, 30.060381, 30.778580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070896, 0.418310, 0.905533,
		0.953257, 0.295736, -0.061982,
		-0.293726, 0.858812, -0.419723,
		36.043873, 30.318024, 30.652662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698929, 30.266331, 31.316372>,  <36.249481, 29.716856, 30.946468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698929, 30.266331, 31.316372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361393, 30.413162, 31.159817>,  <36.158871, 30.501261, 31.065884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361393, 30.413162, 31.159817>,  <36.698929, 30.266331, 31.316372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361393, 30.413162, 31.159817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198352, 0.464346, 0.863157,
		0.498586, 0.806000, -0.319023,
		-0.843841, 0.367079, -0.391388,
		36.108242, 30.523285, 31.042400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710320, 30.793755, 31.655581>,  <36.698929, 30.266331, 31.316372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710320, 30.793755, 31.655581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344212, 30.775608, 31.495472>,  <36.124546, 30.764719, 31.399406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344212, 30.775608, 31.495472>,  <36.710320, 30.793755, 31.655581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344212, 30.775608, 31.495472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374647, 0.461016, 0.804427,
		0.148037, 0.886231, -0.438953,
		-0.915273, -0.045368, -0.400272,
		36.069630, 30.761997, 31.375391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313698, 31.560017, 31.569296>,  <36.710320, 30.793755, 31.655581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313698, 31.560017, 31.569296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047318, 31.262732, 31.595047>,  <35.887489, 31.084360, 31.610498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.047318, 31.262732, 31.595047>,  <36.313698, 31.560017, 31.569296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047318, 31.262732, 31.595047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258862, 0.311163, 0.914422,
		-0.699642, 0.592295, -0.399609,
		-0.665951, -0.743212, 0.064380,
		35.847530, 31.039768, 31.614361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723820, 31.886000, 31.869585>,  <36.313698, 31.560017, 31.569296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723820, 31.886000, 31.869585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701588, 31.490759, 31.926949>,  <35.688248, 31.253614, 31.961367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.701588, 31.490759, 31.926949>,  <35.723820, 31.886000, 31.869585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701588, 31.490759, 31.926949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431448, 0.153295, 0.889018,
		-0.900424, -0.012465, -0.434834,
		-0.055576, -0.988102, 0.143409,
		35.684914, 31.194328, 31.969971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043137, 31.810871, 32.125206>,  <35.723820, 31.886000, 31.869585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043137, 31.810871, 32.125206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282841, 31.512032, 32.240250>,  <35.426662, 31.332727, 32.309277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282841, 31.512032, 32.240250>,  <35.043137, 31.810871, 32.125206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282841, 31.512032, 32.240250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422521, 0.009987, 0.906298,
		-0.679969, -0.664635, -0.309681,
		0.599265, -0.747101, 0.287613,
		35.462620, 31.287901, 32.326534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603218, 31.423498, 32.566566>,  <35.043137, 31.810871, 32.125206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603218, 31.423498, 32.566566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.970425, 31.283934, 32.641937>,  <35.190750, 31.200195, 32.687160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.970425, 31.283934, 32.641937>,  <34.603218, 31.423498, 32.566566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970425, 31.283934, 32.641937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210349, -0.025664, 0.977289,
		-0.336153, -0.936803, -0.096953,
		0.918016, -0.348913, 0.188429,
		35.245831, 31.179260, 32.698467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519691, 30.906794, 33.119934>,  <34.603218, 31.423498, 32.566566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519691, 30.906794, 33.119934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909203, 30.997116, 33.108864>,  <35.142910, 31.051310, 33.102222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.909203, 30.997116, 33.108864>,  <34.519691, 30.906794, 33.119934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909203, 30.997116, 33.108864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058007, -0.128808, 0.989972,
		0.219979, -0.965619, -0.138529,
		0.973778, 0.225809, -0.027678,
		35.201336, 31.064859, 33.100559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933872, 30.357460, 33.507000>,  <34.519691, 30.906794, 33.119934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933872, 30.357460, 33.507000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153915, 30.691383, 33.498264>,  <35.285942, 30.891737, 33.493023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.153915, 30.691383, 33.498264>,  <34.933872, 30.357460, 33.507000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153915, 30.691383, 33.498264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089374, 0.084851, 0.992377,
		0.830296, -0.543965, 0.121287,
		0.550110, 0.834807, -0.021835,
		35.318947, 30.941826, 33.491714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422531, 30.362587, 34.063660>,  <34.933872, 30.357460, 33.507000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422531, 30.362587, 34.063660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415928, 30.758175, 34.004784>,  <35.411964, 30.995527, 33.969456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415928, 30.758175, 34.004784>,  <35.422531, 30.362587, 34.063660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415928, 30.758175, 34.004784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111050, 0.148117, 0.982715,
		0.993678, -0.000124, -0.112270,
		-0.016508, 0.988970, -0.147194,
		35.410976, 31.054867, 33.960625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903389, 30.675858, 34.600616>,  <35.422531, 30.362587, 34.063660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903389, 30.675858, 34.600616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681206, 30.980574, 34.467266>,  <35.547894, 31.163404, 34.387257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.681206, 30.980574, 34.467266>,  <35.903389, 30.675858, 34.600616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681206, 30.980574, 34.467266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012882, 0.408745, 0.912558,
		0.831443, 0.502595, -0.236855,
		-0.555460, 0.761791, -0.333374,
		35.514568, 31.209110, 34.367252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223003, 31.247957, 34.916828>,  <35.903389, 30.675858, 34.600616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223003, 31.247957, 34.916828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851242, 31.357756, 34.818146>,  <35.628185, 31.423634, 34.758938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.851242, 31.357756, 34.818146>,  <36.223003, 31.247957, 34.916828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851242, 31.357756, 34.818146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108409, 0.435920, 0.893432,
		0.352786, 0.857104, -0.375387,
		-0.929403, 0.274495, -0.246704,
		35.572422, 31.440104, 34.744133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123711, 31.905535, 35.147606>,  <36.223003, 31.247957, 34.916828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123711, 31.905535, 35.147606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745953, 31.782545, 35.101002>,  <35.519299, 31.708752, 35.073040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.745953, 31.782545, 35.101002>,  <36.123711, 31.905535, 35.147606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745953, 31.782545, 35.101002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288448, 0.604627, 0.742444,
		-0.157839, 0.734769, -0.659698,
		-0.944396, -0.307475, -0.116509,
		35.462635, 31.690302, 35.066048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478191, 32.013767, 35.880352>,  <36.123711, 31.905535, 35.147606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478191, 32.013767, 35.880352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844543, 32.109699, 36.009132>,  <37.064354, 32.167259, 36.086399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844543, 32.109699, 36.009132>,  <36.478191, 32.013767, 35.880352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844543, 32.109699, 36.009132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385019, -0.297580, -0.873617,
		-0.113711, 0.924083, -0.364885,
		0.915877, 0.239828, 0.321952,
		37.119305, 32.181648, 36.105717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698479, 32.571613, 35.332886>,  <36.478191, 32.013767, 35.880352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698479, 32.571613, 35.332886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005024, 32.437969, 35.552361>,  <37.188950, 32.357780, 35.684048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005024, 32.437969, 35.552361>,  <36.698479, 32.571613, 35.332886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005024, 32.437969, 35.552361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475381, -0.279539, -0.834189,
		0.432094, 0.900126, -0.055396,
		0.766360, -0.334114, 0.548690,
		37.234932, 32.337734, 35.716969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346939, 32.825245, 35.098629>,  <36.698479, 32.571613, 35.332886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346939, 32.825245, 35.098629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428349, 32.491329, 35.303257>,  <37.477192, 32.290981, 35.426033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.428349, 32.491329, 35.303257>,  <37.346939, 32.825245, 35.098629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428349, 32.491329, 35.303257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464350, -0.377703, -0.801074,
		0.861950, 0.400583, 0.310764,
		0.203520, -0.834790, 0.511572,
		37.489403, 32.240891, 35.456730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055206, 32.767757, 34.992310>,  <37.346939, 32.825245, 35.098629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055206, 32.767757, 34.992310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922977, 32.404678, 35.095695>,  <37.843639, 32.186829, 35.157726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922977, 32.404678, 35.095695>,  <38.055206, 32.767757, 34.992310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922977, 32.404678, 35.095695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472655, -0.396263, -0.787130,
		0.816897, -0.138038, 0.560022,
		-0.330570, -0.907701, 0.258462,
		37.823807, 32.132366, 35.173233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625576, 32.380657, 34.806965>,  <38.055206, 32.767757, 34.992310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625576, 32.380657, 34.806965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330990, 32.115681, 34.861786>,  <38.154236, 31.956694, 34.894680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330990, 32.115681, 34.861786>,  <38.625576, 32.380657, 34.806965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330990, 32.115681, 34.861786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349352, -0.545941, -0.761513,
		0.579284, -0.512948, 0.633494,
		-0.736467, -0.662444, 0.137055,
		38.110050, 31.916948, 34.902901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897602, 31.638723, 34.924698>,  <38.625576, 32.380657, 34.806965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897602, 31.638723, 34.924698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522247, 31.628075, 34.786873>,  <38.297035, 31.621685, 34.704178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522247, 31.628075, 34.786873>,  <38.897602, 31.638723, 34.924698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522247, 31.628075, 34.786873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289715, -0.604161, -0.742331,
		-0.188408, -0.796418, 0.574649,
		-0.938386, -0.026624, -0.344562,
		38.240730, 31.620089, 34.683506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946140, 30.997231, 34.721340>,  <38.897602, 31.638723, 34.924698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946140, 30.997231, 34.721340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630077, 31.178402, 34.556175>,  <38.440437, 31.287106, 34.457077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630077, 31.178402, 34.556175>,  <38.946140, 30.997231, 34.721340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630077, 31.178402, 34.556175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241593, -0.388988, -0.889000,
		-0.563275, -0.802210, 0.197939,
		-0.790161, 0.452931, -0.412915,
		38.393028, 31.314281, 34.432301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581539, 30.359900, 34.377842>,  <38.946140, 30.997231, 34.721340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581539, 30.359900, 34.377842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484768, 30.701941, 34.194420>,  <38.426704, 30.907166, 34.084366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.484768, 30.701941, 34.194420>,  <38.581539, 30.359900, 34.377842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484768, 30.701941, 34.194420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244699, -0.403546, -0.881631,
		-0.938932, -0.325499, -0.111613,
		-0.241929, 0.855103, -0.458551,
		38.412189, 30.958471, 34.056854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208855, 30.151997, 33.735420>,  <38.581539, 30.359900, 34.377842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208855, 30.151997, 33.735420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304775, 30.531298, 33.652176>,  <38.362328, 30.758879, 33.602230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304775, 30.531298, 33.652176>,  <38.208855, 30.151997, 33.735420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304775, 30.531298, 33.652176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099104, -0.237158, -0.966403,
		-0.965750, 0.211119, -0.150846,
		0.239801, 0.948253, -0.208113,
		38.376717, 30.815773, 33.589741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929661, 30.336046, 33.004982>,  <38.208855, 30.151997, 33.735420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929661, 30.336046, 33.004982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.209873, 30.613102, 33.073689>,  <38.378002, 30.779335, 33.114914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.209873, 30.613102, 33.073689>,  <37.929661, 30.336046, 33.004982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209873, 30.613102, 33.073689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249098, -0.011784, -0.968406,
		-0.668734, 0.721186, -0.180791,
		0.700531, 0.692641, 0.171766,
		38.420033, 30.820894, 33.125217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838066, 30.891039, 32.496147>,  <37.929661, 30.336046, 33.004982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838066, 30.891039, 32.496147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216324, 30.912802, 32.624397>,  <38.443279, 30.925859, 32.701347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.216324, 30.912802, 32.624397>,  <37.838066, 30.891039, 32.496147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216324, 30.912802, 32.624397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325191, -0.168524, -0.930511,
		0.003406, 0.984195, -0.177056,
		0.945642, 0.054408, 0.320626,
		38.500015, 30.929125, 32.720585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275478, 31.324835, 31.978632>,  <37.838066, 30.891039, 32.496147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275478, 31.324835, 31.978632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545998, 31.159195, 32.222317>,  <38.708309, 31.059811, 32.368526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545998, 31.159195, 32.222317>,  <38.275478, 31.324835, 31.978632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545998, 31.159195, 32.222317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622202, -0.121569, -0.773360,
		0.394308, 0.902077, 0.175436,
		0.676303, -0.414099, 0.609210,
		38.748890, 31.034966, 32.405079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007668, 31.734364, 31.933001>,  <38.275478, 31.324835, 31.978632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007668, 31.734364, 31.933001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057384, 31.345289, 32.011421>,  <39.087215, 31.111845, 32.058472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057384, 31.345289, 32.011421>,  <39.007668, 31.734364, 31.933001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057384, 31.345289, 32.011421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398003, -0.132120, -0.907820,
		0.908925, 0.190862, 0.370711,
		0.124291, -0.972685, 0.196051,
		39.094673, 31.053484, 32.070236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705589, 31.462492, 31.795259>,  <39.007668, 31.734364, 31.933001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705589, 31.462492, 31.795259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480789, 31.131708, 31.788363>,  <39.345909, 30.933239, 31.784225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480789, 31.131708, 31.788363>,  <39.705589, 31.462492, 31.795259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480789, 31.131708, 31.788363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408565, -0.259416, -0.875087,
		0.719188, -0.498842, 0.483658,
		-0.561999, -0.826958, -0.017240,
		39.312191, 30.883621, 31.783190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179764, 30.893852, 31.616526>,  <39.705589, 31.462492, 31.795259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179764, 30.893852, 31.616526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800739, 30.801908, 31.527727>,  <39.573322, 30.746742, 31.474447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.800739, 30.801908, 31.527727>,  <40.179764, 30.893852, 31.616526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800739, 30.801908, 31.527727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265835, -0.181467, -0.946785,
		0.177344, -0.956156, 0.233058,
		-0.947566, -0.229861, -0.221998,
		39.516468, 30.732950, 31.461128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180771, 30.178043, 31.255018>,  <40.179764, 30.893852, 31.616526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180771, 30.178043, 31.255018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838108, 30.364639, 31.166906>,  <39.632511, 30.476597, 31.114038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.838108, 30.364639, 31.166906>,  <40.180771, 30.178043, 31.255018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838108, 30.364639, 31.166906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083708, -0.295642, -0.951624,
		-0.509047, -0.833657, 0.214215,
		-0.856659, 0.466490, -0.220279,
		39.581112, 30.504585, 31.100822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761585, 29.711893, 30.787542>,  <40.180771, 30.178043, 31.255018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761585, 29.711893, 30.787542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.590446, 30.068205, 30.726282>,  <39.487762, 30.281992, 30.689526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.590446, 30.068205, 30.726282>,  <39.761585, 29.711893, 30.787542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590446, 30.068205, 30.726282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044546, -0.148457, -0.987915,
		-0.902753, -0.429498, 0.023836,
		-0.427846, 0.890782, -0.153152,
		39.462093, 30.335440, 30.680336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286106, 29.516016, 30.240263>,  <39.761585, 29.711893, 30.787542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286106, 29.516016, 30.240263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304756, 29.915478, 30.249376>,  <39.315945, 30.155155, 30.254845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.304756, 29.915478, 30.249376>,  <39.286106, 29.516016, 30.240263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304756, 29.915478, 30.249376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029013, 0.024153, -0.999287,
		-0.998491, 0.045928, 0.030100,
		0.046622, 0.998653, 0.022784,
		39.318741, 30.215073, 30.256212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.560745, 29.852688, 29.948906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849369, 30.126802, 29.909439>,  <39.022545, 30.291271, 29.885759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849369, 30.126802, 29.909439>,  <38.560745, 29.852688, 29.948906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849369, 30.126802, 29.909439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236894, -0.378279, -0.894867,
		-0.650563, 0.622326, -0.435290,
		0.721560, 0.685285, -0.098669,
		39.065838, 30.332388, 29.879839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443256, 30.032520, 29.247904>,  <38.560745, 29.852688, 29.948906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443256, 30.032520, 29.247904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808613, 30.161274, 29.347591>,  <39.027824, 30.238525, 29.407404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808613, 30.161274, 29.347591>,  <38.443256, 30.032520, 29.247904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808613, 30.161274, 29.347591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311644, -0.159009, -0.936800,
		-0.261913, 0.933331, -0.245550,
		0.913389, 0.321884, 0.249220,
		39.082630, 30.257839, 29.422358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590569, 30.464119, 28.669661>,  <38.443256, 30.032520, 29.247904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590569, 30.464119, 28.669661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945080, 30.366880, 28.827351>,  <39.157787, 30.308538, 28.921965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945080, 30.366880, 28.827351>,  <38.590569, 30.464119, 28.669661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945080, 30.366880, 28.827351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318800, -0.297249, -0.900005,
		0.335969, 0.923335, -0.185947,
		0.886279, -0.243094, 0.394226,
		39.210964, 30.293953, 28.945618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184269, 30.801153, 28.209326>,  <38.590569, 30.464119, 28.669661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184269, 30.801153, 28.209326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352417, 30.501913, 28.414705>,  <39.453308, 30.322369, 28.537933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352417, 30.501913, 28.414705>,  <39.184269, 30.801153, 28.209326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352417, 30.501913, 28.414705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425820, -0.337037, -0.839693,
		0.801226, 0.571622, 0.176875,
		0.420373, -0.748101, 0.513451,
		39.478531, 30.277483, 28.568741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910950, 30.782522, 27.966223>,  <39.184269, 30.801153, 28.209326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910950, 30.782522, 27.966223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810474, 30.434208, 28.135284>,  <39.750191, 30.225220, 28.236721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810474, 30.434208, 28.135284>,  <39.910950, 30.782522, 27.966223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810474, 30.434208, 28.135284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386170, -0.490553, -0.781173,
		0.887569, -0.033005, 0.459492,
		-0.251187, -0.870786, 0.422654,
		39.735119, 30.172972, 28.262081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540981, 30.374832, 27.924519>,  <39.910950, 30.782522, 27.966223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540981, 30.374832, 27.924519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230488, 30.122679, 27.927986>,  <40.044193, 29.971386, 27.930067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.230488, 30.122679, 27.927986>,  <40.540981, 30.374832, 27.924519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230488, 30.122679, 27.927986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354088, -0.447308, -0.821302,
		0.521615, -0.634453, 0.570428,
		-0.776235, -0.630385, 0.008670,
		39.997616, 29.933563, 27.930588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887966, 29.720839, 27.819113>,  <40.540981, 30.374832, 27.924519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887966, 29.720839, 27.819113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500816, 29.650690, 27.747044>,  <40.268528, 29.608601, 27.703802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500816, 29.650690, 27.747044>,  <40.887966, 29.720839, 27.819113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500816, 29.650690, 27.747044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249934, -0.592979, -0.765447,
		0.027400, -0.785888, 0.617761,
		-0.967875, -0.175373, -0.180172,
		40.210453, 29.598078, 27.692991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941830, 29.048090, 27.660658>,  <40.887966, 29.720839, 27.819113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941830, 29.048090, 27.660658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572151, 29.120913, 27.526369>,  <40.350342, 29.164606, 27.445795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.572151, 29.120913, 27.526369>,  <40.941830, 29.048090, 27.660658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572151, 29.120913, 27.526369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184501, -0.556834, -0.809873,
		-0.334384, -0.810426, 0.481037,
		-0.924201, 0.182056, -0.335721,
		40.294891, 29.175529, 27.425653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658100, 28.431648, 27.431877>,  <40.941830, 29.048090, 27.660658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658100, 28.431648, 27.431877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478935, 28.725368, 27.227846>,  <40.371437, 28.901600, 27.105427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478935, 28.725368, 27.227846>,  <40.658100, 28.431648, 27.431877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478935, 28.725368, 27.227846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205584, -0.470634, -0.858043,
		-0.870122, -0.489190, 0.059841,
		-0.447910, 0.734300, -0.510079,
		40.344563, 28.945658, 27.074823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373329, 28.134537, 26.859585>,  <40.658100, 28.431648, 27.431877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373329, 28.134537, 26.859585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362556, 28.516926, 26.742697>,  <40.356091, 28.746359, 26.672564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.362556, 28.516926, 26.742697>,  <40.373329, 28.134537, 26.859585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362556, 28.516926, 26.742697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162472, -0.284251, -0.944883,
		-0.986345, -0.072928, -0.147663,
		-0.026936, 0.955972, -0.292219,
		40.354477, 28.803717, 26.655031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045460, 28.172541, 26.209747>,  <40.373329, 28.134537, 26.859585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045460, 28.172541, 26.209747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.265884, 28.506317, 26.212204>,  <40.398140, 28.706583, 26.213678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.265884, 28.506317, 26.212204>,  <40.045460, 28.172541, 26.209747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265884, 28.506317, 26.212204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267531, -0.169693, -0.948489,
		-0.790415, 0.524321, -0.316751,
		0.551063, 0.834441, 0.006144,
		40.431202, 28.756649, 26.214046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905415, 28.465469, 25.573532>,  <40.045460, 28.172541, 26.209747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905415, 28.465469, 25.573532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239902, 28.644281, 25.700592>,  <40.440594, 28.751570, 25.776829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239902, 28.644281, 25.700592>,  <39.905415, 28.465469, 25.573532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239902, 28.644281, 25.700592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400873, -0.103016, -0.910324,
		-0.374220, 0.888567, -0.265346,
		0.836218, 0.447031, 0.317652,
		40.490768, 28.778391, 25.795887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950779, 29.032803, 25.152571>,  <39.905415, 28.465469, 25.573532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950779, 29.032803, 25.152571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321911, 28.974140, 25.289753>,  <40.544590, 28.938942, 25.372063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321911, 28.974140, 25.289753>,  <39.950779, 29.032803, 25.152571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321911, 28.974140, 25.289753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367497, 0.202096, -0.907801,
		0.063824, 0.968323, 0.241407,
		0.927832, -0.146656, 0.342957,
		40.600262, 28.930143, 25.392641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246582, 29.568630, 24.856306>,  <39.950779, 29.032803, 25.152571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246582, 29.568630, 24.856306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.510265, 29.279819, 24.940325>,  <40.668476, 29.106533, 24.990736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.510265, 29.279819, 24.940325>,  <40.246582, 29.568630, 24.856306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510265, 29.279819, 24.940325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353440, 0.050956, -0.934069,
		0.663719, 0.689986, 0.288783,
		0.659209, -0.722027, 0.210048,
		40.708027, 29.063211, 25.003340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912708, 29.763811, 24.551033>,  <40.246582, 29.568630, 24.856306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912708, 29.763811, 24.551033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.979671, 29.374008, 24.610773>,  <41.019848, 29.140125, 24.646618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.979671, 29.374008, 24.610773>,  <40.912708, 29.763811, 24.551033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979671, 29.374008, 24.610773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604754, -0.018136, -0.796206,
		0.778619, 0.223613, 0.586302,
		0.167409, -0.974509, 0.149352,
		41.029896, 29.081656, 24.655579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650272, 29.611561, 24.604771>,  <40.912708, 29.763811, 24.551033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650272, 29.611561, 24.604771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446461, 29.297377, 24.464239>,  <41.324173, 29.108866, 24.379921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.446461, 29.297377, 24.464239>,  <41.650272, 29.611561, 24.604771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446461, 29.297377, 24.464239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693153, -0.132764, -0.708458,
		0.509823, -0.604503, 0.612092,
		-0.509529, -0.785462, -0.351327,
		41.293602, 29.061739, 24.358841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177540, 29.181320, 24.442434>,  <41.650272, 29.611561, 24.604771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177540, 29.181320, 24.442434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857937, 29.003788, 24.280151>,  <41.666176, 28.897268, 24.182781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857937, 29.003788, 24.280151>,  <42.177540, 29.181320, 24.442434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857937, 29.003788, 24.280151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557786, -0.295011, -0.775786,
		0.224628, -0.846158, 0.483279,
		-0.799010, -0.443830, -0.405707,
		41.618233, 28.870640, 24.158440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465199, 28.569813, 24.227543>,  <42.177540, 29.181320, 24.442434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465199, 28.569813, 24.227543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.136917, 28.604300, 24.001616>,  <41.939949, 28.624992, 23.866058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.136917, 28.604300, 24.001616>,  <42.465199, 28.569813, 24.227543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136917, 28.604300, 24.001616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512665, -0.325306, -0.794576,
		-0.252241, -0.941671, 0.222781,
		-0.820701, 0.086212, -0.564817,
		41.890709, 28.630165, 23.832170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310284, 28.012402, 23.935040>,  <42.465199, 28.569813, 24.227543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310284, 28.012402, 23.935040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089256, 28.235783, 23.687557>,  <41.956638, 28.369810, 23.539068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.089256, 28.235783, 23.687557>,  <42.310284, 28.012402, 23.935040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089256, 28.235783, 23.687557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554272, -0.308175, -0.773183,
		-0.622455, -0.770169, -0.139246,
		-0.552569, 0.558452, -0.618708,
		41.923485, 28.403318, 23.501945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144112, 27.541203, 23.307158>,  <42.310284, 28.012402, 23.935040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144112, 27.541203, 23.307158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.122158, 27.919157, 23.178053>,  <42.108986, 28.145929, 23.100590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.122158, 27.919157, 23.178053>,  <42.144112, 27.541203, 23.307158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122158, 27.919157, 23.178053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444736, -0.266278, -0.855164,
		-0.893978, -0.190480, -0.405611,
		-0.054887, 0.944888, -0.322760,
		42.105694, 28.202623, 23.081224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625538, 27.530346, 22.821493>,  <42.144112, 27.541203, 23.307158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625538, 27.530346, 22.821493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.841774, 27.859695, 22.752415>,  <41.971516, 28.057304, 22.710968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.841774, 27.859695, 22.752415>,  <41.625538, 27.530346, 22.821493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841774, 27.859695, 22.752415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302812, -0.381950, -0.873166,
		-0.784901, 0.419728, -0.455805,
		0.540587, 0.823372, -0.172694,
		42.003948, 28.106707, 22.700607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472038, 27.815197, 22.131006>,  <41.625538, 27.530346, 22.821493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472038, 27.815197, 22.131006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.827679, 27.973251, 22.223406>,  <42.041065, 28.068083, 22.278847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.827679, 27.973251, 22.223406>,  <41.472038, 27.815197, 22.131006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827679, 27.973251, 22.223406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381930, -0.362362, -0.850190,
		-0.252234, 0.844134, -0.473091,
		0.889105, 0.395135, 0.231001,
		42.094410, 28.091791, 22.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776386, 27.836287, 21.455446>,  <41.472038, 27.815197, 22.131006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776386, 27.836287, 21.455446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076736, 27.887066, 21.714697>,  <42.256947, 27.917534, 21.870247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076736, 27.887066, 21.714697>,  <41.776386, 27.836287, 21.455446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076736, 27.887066, 21.714697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633473, -0.416006, -0.652419,
		0.186799, 0.900457, -0.392790,
		0.750878, 0.126951, 0.648125,
		42.301998, 27.925152, 21.909134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485165, 27.612446, 20.743067>,  <41.776386, 27.836287, 21.455446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485165, 27.612446, 20.743067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.259937, 27.855265, 20.518764>,  <41.124802, 28.000956, 20.384182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.259937, 27.855265, 20.518764>,  <41.485165, 27.612446, 20.743067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259937, 27.855265, 20.518764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699694, 0.010884, 0.714359,
		0.439752, 0.794592, 0.418618,
		-0.563068, 0.607046, -0.560758,
		41.091019, 28.037378, 20.350536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259933, 28.272358, 21.116961>,  <41.485165, 27.612446, 20.743067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259933, 28.272358, 21.116961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006508, 28.147600, 20.833744>,  <40.854454, 28.072746, 20.663815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.006508, 28.147600, 20.833744>,  <41.259933, 28.272358, 21.116961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006508, 28.147600, 20.833744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761702, 0.090957, 0.641511,
		-0.135682, 0.945754, -0.295196,
		-0.633562, -0.311892, -0.708041,
		40.816441, 28.054033, 20.621332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802002, 28.832535, 21.063730>,  <41.259933, 28.272358, 21.116961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802002, 28.832535, 21.063730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638943, 28.481401, 20.963140>,  <40.541107, 28.270721, 20.902786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638943, 28.481401, 20.963140>,  <40.802002, 28.832535, 21.063730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638943, 28.481401, 20.963140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813958, 0.224495, 0.535793,
		-0.413881, 0.423101, -0.806032,
		-0.407645, -0.877831, -0.251473,
		40.516651, 28.218052, 20.887699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086823, 28.955645, 20.721714>,  <40.802002, 28.832535, 21.063730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086823, 28.955645, 20.721714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139099, 28.592232, 20.880455>,  <40.170464, 28.374184, 20.975698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.139099, 28.592232, 20.880455>,  <40.086823, 28.955645, 20.721714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139099, 28.592232, 20.880455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734629, 0.180058, 0.654140,
		-0.665763, -0.377028, -0.643902,
		0.130690, -0.908531, 0.396851,
		40.178307, 28.319672, 20.999510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493271, 28.824978, 20.837458>,  <40.086823, 28.955645, 20.721714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493271, 28.824978, 20.837458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696274, 28.588057, 21.087772>,  <39.818077, 28.445904, 21.237961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.696274, 28.588057, 21.087772>,  <39.493271, 28.824978, 20.837458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696274, 28.588057, 21.087772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548777, 0.337727, 0.764712,
		-0.664286, -0.731518, -0.153642,
		0.507511, -0.592303, 0.625787,
		39.848526, 28.410366, 21.275509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027714, 28.501753, 21.202883>,  <39.493271, 28.824978, 20.837458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027714, 28.501753, 21.202883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354248, 28.436985, 21.424648>,  <39.550167, 28.398125, 21.557709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354248, 28.436985, 21.424648>,  <39.027714, 28.501753, 21.202883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354248, 28.436985, 21.424648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535761, 0.146305, 0.831598,
		-0.215768, -0.975897, 0.032682,
		0.816336, -0.161922, 0.554416,
		39.599148, 28.388409, 21.590973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801128, 27.963039, 21.703419>,  <39.027714, 28.501753, 21.202883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801128, 27.963039, 21.703419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.109703, 28.178946, 21.838198>,  <39.294849, 28.308489, 21.919065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.109703, 28.178946, 21.838198>,  <38.801128, 27.963039, 21.703419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109703, 28.178946, 21.838198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496301, 0.179028, 0.849491,
		0.398201, -0.822560, 0.405995,
		0.771441, 0.539763, 0.336948,
		39.341137, 28.340874, 21.939281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887341, 27.729584, 22.420267>,  <38.801128, 27.963039, 21.703419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887341, 27.729584, 22.420267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079910, 28.079319, 22.395725>,  <39.195454, 28.289160, 22.381001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.079910, 28.079319, 22.395725>,  <38.887341, 27.729584, 22.420267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079910, 28.079319, 22.395725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384596, 0.273629, 0.881597,
		0.787600, -0.400829, 0.467998,
		0.481427, 0.874336, -0.061353,
		39.224339, 28.341619, 22.377319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009716, 27.832338, 23.081400>,  <38.887341, 27.729584, 22.420267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009716, 27.832338, 23.081400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063831, 28.200197, 22.933914>,  <39.096302, 28.420912, 22.845423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.063831, 28.200197, 22.933914>,  <39.009716, 27.832338, 23.081400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063831, 28.200197, 22.933914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250853, 0.391802, 0.885191,
		0.958525, -0.027264, 0.283702,
		0.135289, 0.919646, -0.368713,
		39.104420, 28.476091, 22.823299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476734, 28.170231, 23.500650>,  <39.009716, 27.832338, 23.081400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476734, 28.170231, 23.500650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290203, 28.479143, 23.328083>,  <39.178284, 28.664490, 23.224543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290203, 28.479143, 23.328083>,  <39.476734, 28.170231, 23.500650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290203, 28.479143, 23.328083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119291, 0.428337, 0.895710,
		0.876530, 0.469161, -0.107621,
		-0.466330, 0.772279, -0.431417,
		39.150303, 28.710827, 23.198658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686455, 28.683266, 23.847328>,  <39.476734, 28.170231, 23.500650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686455, 28.683266, 23.847328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352947, 28.816851, 23.671463>,  <39.152843, 28.897001, 23.565943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.352947, 28.816851, 23.671463>,  <39.686455, 28.683266, 23.847328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352947, 28.816851, 23.671463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234977, 0.505969, 0.829928,
		0.499623, 0.795276, -0.343385,
		-0.833764, 0.333964, -0.439665,
		39.102818, 28.917040, 23.539564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670807, 29.464930, 23.966934>,  <39.686455, 28.683266, 23.847328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670807, 29.464930, 23.966934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298786, 29.332989, 23.902176>,  <39.075573, 29.253824, 23.863321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.298786, 29.332989, 23.902176>,  <39.670807, 29.464930, 23.966934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298786, 29.332989, 23.902176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307786, 0.458698, 0.833585,
		-0.200699, 0.825102, -0.528135,
		-0.930047, -0.329852, -0.161894,
		39.019772, 29.234034, 23.853607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327759, 30.032116, 24.184868>,  <39.670807, 29.464930, 23.966934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327759, 30.032116, 24.184868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065834, 29.729862, 24.191059>,  <38.908680, 29.548510, 24.194773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065834, 29.729862, 24.191059>,  <39.327759, 30.032116, 24.184868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065834, 29.729862, 24.191059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351117, 0.322276, 0.879122,
		-0.669281, 0.570226, -0.476346,
		-0.654813, -0.755633, 0.015477,
		38.869389, 29.503172, 24.195702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811165, 30.331909, 24.545073>,  <39.327759, 30.032116, 24.184868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811165, 30.331909, 24.545073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686707, 29.951826, 24.538240>,  <38.612030, 29.723776, 24.534142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686707, 29.951826, 24.538240>,  <38.811165, 30.331909, 24.545073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686707, 29.951826, 24.538240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414518, 0.119519, 0.902158,
		-0.855198, 0.287782, -0.431066,
		-0.311145, -0.950209, -0.017079,
		38.593365, 29.666763, 24.533117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123158, 30.327522, 24.785711>,  <38.811165, 30.331909, 24.545073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123158, 30.327522, 24.785711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203068, 29.940222, 24.845825>,  <38.251015, 29.707842, 24.881893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203068, 29.940222, 24.845825>,  <38.123158, 30.327522, 24.785711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203068, 29.940222, 24.845825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276593, 0.091412, 0.956630,
		-0.939993, -0.232675, -0.249549,
		0.199772, -0.968249, 0.150283,
		38.263000, 29.649748, 24.890909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585796, 30.029110, 25.120184>,  <38.123158, 30.327522, 24.785711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585796, 30.029110, 25.120184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898064, 29.799440, 25.218878>,  <38.085423, 29.661638, 25.278093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898064, 29.799440, 25.218878>,  <37.585796, 30.029110, 25.120184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898064, 29.799440, 25.218878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369695, -0.105983, 0.923089,
		-0.503866, -0.811843, -0.295008,
		0.780669, -0.574176, 0.246733,
		38.132263, 29.627188, 25.292898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272381, 29.648182, 25.477489>,  <37.585796, 30.029110, 25.120184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272381, 29.648182, 25.477489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656189, 29.570646, 25.559227>,  <37.886475, 29.524126, 25.608269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656189, 29.570646, 25.559227>,  <37.272381, 29.648182, 25.477489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656189, 29.570646, 25.559227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210210, -0.009970, 0.977605,
		-0.187459, -0.980983, -0.050313,
		0.959516, -0.193837, 0.204344,
		37.944042, 29.512495, 25.620529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204819, 29.029119, 25.815603>,  <37.272381, 29.648182, 25.477489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204819, 29.029119, 25.815603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562222, 29.180330, 25.912556>,  <37.776661, 29.271057, 25.970726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562222, 29.180330, 25.912556>,  <37.204819, 29.029119, 25.815603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562222, 29.180330, 25.912556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173958, -0.206225, 0.962917,
		0.413996, -0.902533, -0.118501,
		0.893502, 0.378030, 0.242379,
		37.830273, 29.293739, 25.985270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517525, 28.550896, 26.352066>,  <37.204819, 29.029119, 25.815603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517525, 28.550896, 26.352066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673405, 28.916210, 26.399471>,  <37.766933, 29.135399, 26.427914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673405, 28.916210, 26.399471>,  <37.517525, 28.550896, 26.352066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673405, 28.916210, 26.399471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350401, 0.028032, 0.936180,
		0.851677, -0.406357, 0.330940,
		0.389700, 0.913284, 0.118514,
		37.790314, 29.190195, 26.435026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790691, 28.577620, 27.019436>,  <37.517525, 28.550896, 26.352066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790691, 28.577620, 27.019436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748142, 28.968103, 26.943857>,  <37.722610, 29.202393, 26.898510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748142, 28.968103, 26.943857>,  <37.790691, 28.577620, 27.019436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748142, 28.968103, 26.943857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171495, 0.169163, 0.970554,
		0.979425, 0.135648, 0.149419,
		-0.106377, 0.976209, -0.188945,
		37.716228, 29.260965, 26.887173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313099, 28.877569, 27.501863>,  <37.790691, 28.577620, 27.019436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313099, 28.877569, 27.501863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016872, 29.124744, 27.396254>,  <37.839134, 29.273050, 27.332888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016872, 29.124744, 27.396254>,  <38.313099, 28.877569, 27.501863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016872, 29.124744, 27.396254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280227, 0.073116, 0.957145,
		0.610761, 0.782819, 0.119016,
		-0.740570, 0.617938, -0.264023,
		37.794701, 29.310125, 27.317047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.559666, 30.285721, 33.047367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299648, 30.504726, 32.836590>,  <39.143639, 30.636129, 32.710125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.299648, 30.504726, 32.836590>,  <39.559666, 30.285721, 33.047367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299648, 30.504726, 32.836590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337564, 0.413205, 0.845762,
		0.680800, 0.727662, -0.083782,
		-0.650048, 0.547513, -0.526942,
		39.104633, 30.668980, 32.678509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776138, 30.994259, 33.089813>,  <39.559666, 30.285721, 33.047367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776138, 30.994259, 33.089813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387024, 30.990189, 32.997215>,  <39.153557, 30.987747, 32.941658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.387024, 30.990189, 32.997215>,  <39.776138, 30.994259, 33.089813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387024, 30.990189, 32.997215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210337, 0.457935, 0.863744,
		0.097221, 0.888927, -0.447611,
		-0.972783, -0.010175, -0.231495,
		39.095188, 30.987137, 32.927765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428219, 31.530933, 33.435001>,  <39.776138, 30.994259, 33.089813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428219, 31.530933, 33.435001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.097458, 31.329632, 33.334625>,  <38.899002, 31.208851, 33.274399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.097458, 31.329632, 33.334625>,  <39.428219, 31.530933, 33.435001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097458, 31.329632, 33.334625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475654, 0.387885, 0.789493,
		-0.299979, 0.772192, -0.560117,
		-0.826901, -0.503253, -0.250939,
		38.849388, 31.178656, 33.259342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797611, 31.996368, 33.427238>,  <39.428219, 31.530933, 33.435001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797611, 31.996368, 33.427238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.647461, 31.631021, 33.490299>,  <38.557369, 31.411814, 33.528137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.647461, 31.631021, 33.490299>,  <38.797611, 31.996368, 33.427238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647461, 31.631021, 33.490299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529404, 0.350895, 0.772402,
		-0.760806, 0.206479, -0.615257,
		-0.375375, -0.913367, 0.157652,
		38.534847, 31.357012, 33.537594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015980, 32.053257, 33.449001>,  <38.797611, 31.996368, 33.427238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015980, 32.053257, 33.449001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127373, 31.719612, 33.639458>,  <38.194206, 31.519426, 33.753731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127373, 31.719612, 33.639458>,  <38.015980, 32.053257, 33.449001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127373, 31.719612, 33.639458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591118, 0.241883, 0.769462,
		-0.756987, -0.495735, -0.425697,
		0.278480, -0.834110, 0.476140,
		38.210918, 31.469379, 33.782299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330700, 31.852100, 33.745598>,  <38.015980, 32.053257, 33.449001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330700, 31.852100, 33.745598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.626652, 31.678202, 33.950958>,  <37.804222, 31.573862, 34.074173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.626652, 31.678202, 33.950958>,  <37.330700, 31.852100, 33.745598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626652, 31.678202, 33.950958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513546, 0.127987, 0.848463,
		-0.434575, -0.891412, -0.128568,
		0.739875, -0.434746, 0.513401,
		37.848614, 31.547779, 34.104980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010643, 31.370583, 34.242508>,  <37.330700, 31.852100, 33.745598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010643, 31.370583, 34.242508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375473, 31.470655, 34.372452>,  <37.594372, 31.530699, 34.450420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375473, 31.470655, 34.372452>,  <37.010643, 31.370583, 34.242508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375473, 31.470655, 34.372452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381288, 0.226069, 0.896389,
		0.150816, -0.941437, 0.301581,
		0.912072, 0.250179, 0.324864,
		37.649094, 31.545710, 34.469910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100918, 31.052736, 34.945324>,  <37.010643, 31.370583, 34.242508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100918, 31.052736, 34.945324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416515, 31.298462, 34.949348>,  <37.605873, 31.445898, 34.951763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.416515, 31.298462, 34.949348>,  <37.100918, 31.052736, 34.945324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416515, 31.298462, 34.949348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257520, 0.315785, 0.913216,
		0.557824, -0.723116, 0.407352,
		0.788996, 0.614315, 0.010065,
		37.653214, 31.482756, 34.952370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509392, 30.939850, 35.579235>,  <37.100918, 31.052736, 34.945324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509392, 30.939850, 35.579235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.611313, 31.305470, 35.452999>,  <37.672466, 31.524841, 35.377258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.611313, 31.305470, 35.452999>,  <37.509392, 30.939850, 35.579235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611313, 31.305470, 35.452999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052328, 0.338913, 0.939361,
		0.965577, -0.222833, 0.134184,
		0.254798, 0.914048, -0.315587,
		37.687752, 31.579683, 35.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946289, 31.257704, 36.103718>,  <37.509392, 30.939850, 35.579235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946289, 31.257704, 36.103718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810501, 31.566862, 35.889282>,  <37.729027, 31.752357, 35.760620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810501, 31.566862, 35.889282>,  <37.946289, 31.257704, 36.103718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810501, 31.566862, 35.889282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151407, 0.517605, 0.842118,
		0.928350, 0.367044, -0.058691,
		-0.339473, 0.772893, -0.536091,
		37.708660, 31.798731, 35.728455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136250, 31.750191, 36.441898>,  <37.946289, 31.257704, 36.103718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136250, 31.750191, 36.441898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.876015, 31.937683, 36.202888>,  <37.719875, 32.050179, 36.059483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.876015, 31.937683, 36.202888>,  <38.136250, 31.750191, 36.441898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876015, 31.937683, 36.202888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291923, 0.571998, 0.766550,
		0.701087, 0.673135, -0.235299,
		-0.650583, 0.468729, -0.597524,
		37.680840, 32.078300, 36.023632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211884, 32.464748, 36.664379>,  <38.136250, 31.750191, 36.441898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211884, 32.464748, 36.664379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862408, 32.368034, 36.495522>,  <37.652721, 32.310005, 36.394207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862408, 32.368034, 36.495522>,  <38.211884, 32.464748, 36.664379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862408, 32.368034, 36.495522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479490, 0.281368, 0.831217,
		-0.082199, 0.928639, -0.361763,
		-0.873689, -0.241787, -0.422145,
		37.600300, 32.295498, 36.368877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835072, 33.222191, 36.721153>,  <38.211884, 32.464748, 36.664379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835072, 33.222191, 36.721153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621445, 32.884747, 36.698872>,  <37.493271, 32.682281, 36.685501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.621445, 32.884747, 36.698872>,  <37.835072, 33.222191, 36.721153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621445, 32.884747, 36.698872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546239, 0.294019, 0.784331,
		-0.645288, 0.449312, -0.617836,
		-0.534065, -0.843606, -0.055705,
		37.461224, 32.631664, 36.682159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393372, 33.506359, 36.383533>,  <37.835072, 33.222191, 36.721153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393372, 33.506359, 36.383533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.412811, 33.894669, 36.477543>,  <38.424473, 34.127655, 36.533947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.412811, 33.894669, 36.477543>,  <38.393372, 33.506359, 36.383533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412811, 33.894669, 36.477543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125968, 0.227463, -0.965605,
		-0.990843, 0.076529, -0.111233,
		0.048596, 0.970775, 0.235021,
		38.427391, 34.185902, 36.548050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951729, 33.818027, 36.071411>,  <38.393372, 33.506359, 36.383533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951729, 33.818027, 36.071411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214214, 34.117916, 36.105591>,  <38.371708, 34.297848, 36.126099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214214, 34.117916, 36.105591>,  <37.951729, 33.818027, 36.071411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214214, 34.117916, 36.105591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058800, 0.062090, -0.996337,
		-0.752277, 0.658839, -0.003339,
		0.656219, 0.749717, 0.085448,
		38.411079, 34.342831, 36.131226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759739, 34.146488, 35.563171>,  <37.951729, 33.818027, 36.071411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759739, 34.146488, 35.563171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131393, 34.274010, 35.638088>,  <38.354385, 34.350521, 35.683037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131393, 34.274010, 35.638088>,  <37.759739, 34.146488, 35.563171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131393, 34.274010, 35.638088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164000, 0.098645, -0.981516,
		-0.331385, 0.942674, 0.039371,
		0.929133, 0.318803, 0.187289,
		38.410133, 34.369652, 35.694275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707111, 34.776325, 35.243160>,  <37.759739, 34.146488, 35.563171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707111, 34.776325, 35.243160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.098881, 34.711628, 35.291439>,  <38.333942, 34.672810, 35.320408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.098881, 34.711628, 35.291439>,  <37.707111, 34.776325, 35.243160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098881, 34.711628, 35.291439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161382, 0.268595, -0.949638,
		0.121180, 0.949576, 0.289171,
		0.979424, -0.161744, 0.120696,
		38.392708, 34.663105, 35.327648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070183, 35.360989, 35.009361>,  <37.707111, 34.776325, 35.243160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070183, 35.360989, 35.009361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275562, 35.019199, 34.977722>,  <38.398788, 34.814125, 34.958740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275562, 35.019199, 34.977722>,  <38.070183, 35.360989, 35.009361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275562, 35.019199, 34.977722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146585, 0.178150, -0.973024,
		0.845509, 0.488002, 0.216723,
		0.513447, -0.854469, -0.079094,
		38.429596, 34.762859, 34.953995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503559, 35.432709, 34.461372>,  <38.070183, 35.360989, 35.009361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503559, 35.432709, 34.461372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557606, 35.038303, 34.500389>,  <38.590034, 34.801659, 34.523800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.557606, 35.038303, 34.500389>,  <38.503559, 35.432709, 34.461372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557606, 35.038303, 34.500389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264017, -0.059058, -0.962708,
		0.955007, 0.155833, 0.252346,
		0.135119, -0.986016, 0.097543,
		38.598141, 34.742500, 34.529652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232548, 35.277302, 34.334908>,  <38.503559, 35.432709, 34.461372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232548, 35.277302, 34.334908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039028, 34.931438, 34.280781>,  <38.922916, 34.723923, 34.248306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.039028, 34.931438, 34.280781>,  <39.232548, 35.277302, 34.334908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039028, 34.931438, 34.280781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425736, -0.097427, -0.899587,
		0.764648, -0.492830, 0.415249,
		-0.483800, -0.864654, -0.135318,
		38.893887, 34.672043, 34.240185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616550, 34.894207, 33.929920>,  <39.232548, 35.277302, 34.334908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616550, 34.894207, 33.929920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283718, 34.680279, 33.871132>,  <39.084019, 34.551922, 33.835857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.283718, 34.680279, 33.871132>,  <39.616550, 34.894207, 33.929920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283718, 34.680279, 33.871132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226926, -0.086480, -0.970065,
		0.506103, -0.840527, 0.193324,
		-0.832084, -0.534823, -0.146969,
		39.034092, 34.519833, 33.827042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791855, 34.286861, 33.569107>,  <39.616550, 34.894207, 33.929920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791855, 34.286861, 33.569107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399029, 34.280205, 33.493988>,  <39.163334, 34.276211, 33.448917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399029, 34.280205, 33.493988>,  <39.791855, 34.286861, 33.569107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399029, 34.280205, 33.493988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184815, -0.281831, -0.941496,
		-0.037258, -0.959320, 0.279852,
		-0.982067, -0.016642, -0.187797,
		39.104408, 34.275211, 33.437649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595039, 33.638649, 33.328449>,  <39.791855, 34.286861, 33.569107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595039, 33.638649, 33.328449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329994, 33.908844, 33.199047>,  <39.170967, 34.070961, 33.121407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.329994, 33.908844, 33.199047>,  <39.595039, 33.638649, 33.328449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329994, 33.908844, 33.199047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161331, -0.293068, -0.942382,
		-0.731377, -0.676629, 0.085214,
		-0.662616, 0.675489, -0.323504,
		39.131210, 34.111492, 33.101997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167091, 33.318687, 32.857002>,  <39.595039, 33.638649, 33.328449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167091, 33.318687, 32.857002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122822, 33.703770, 32.758255>,  <39.096260, 33.934818, 32.699009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.122822, 33.703770, 32.758255>,  <39.167091, 33.318687, 32.857002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122822, 33.703770, 32.758255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103622, -0.235861, -0.966247,
		-0.988440, -0.132517, -0.073655,
		-0.110672, 0.962709, -0.246866,
		39.089619, 33.992584, 32.684196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754791, 33.336422, 32.257473>,  <39.167091, 33.318687, 32.857002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754791, 33.336422, 32.257473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914268, 33.699383, 32.204308>,  <39.009953, 33.917160, 32.172409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914268, 33.699383, 32.204308>,  <38.754791, 33.336422, 32.257473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914268, 33.699383, 32.204308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080180, -0.178867, -0.980601,
		-0.913574, 0.380299, -0.144068,
		0.398691, 0.907402, -0.132916,
		39.033875, 33.971603, 32.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456165, 33.556999, 31.673084>,  <38.754791, 33.336422, 32.257473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456165, 33.556999, 31.673084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767906, 33.800591, 31.732084>,  <38.954952, 33.946743, 31.767485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.767906, 33.800591, 31.732084>,  <38.456165, 33.556999, 31.673084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767906, 33.800591, 31.732084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185291, 0.000883, -0.982683,
		-0.598560, 0.793189, -0.112149,
		0.779354, 0.608976, 0.147500,
		39.001713, 33.983284, 31.776335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502987, 33.964043, 31.091581>,  <38.456165, 33.556999, 31.673084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502987, 33.964043, 31.091581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865913, 34.003674, 31.255024>,  <39.083672, 34.027451, 31.353090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.865913, 34.003674, 31.255024>,  <38.502987, 33.964043, 31.091581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865913, 34.003674, 31.255024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404915, 0.055799, -0.912650,
		-0.113219, 0.993514, 0.010511,
		0.907318, 0.099073, 0.408606,
		39.138107, 34.033394, 31.377605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854137, 34.596096, 30.649246>,  <38.502987, 33.964043, 31.091581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854137, 34.596096, 30.649246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107246, 34.348633, 30.835518>,  <39.259113, 34.200153, 30.947281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.107246, 34.348633, 30.835518>,  <38.854137, 34.596096, 30.649246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107246, 34.348633, 30.835518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459288, -0.184314, -0.868955,
		0.623417, 0.763735, 0.167512,
		0.632776, -0.618658, 0.465679,
		39.297081, 34.163036, 30.975222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629784, 35.200684, 30.400425>,  <38.854137, 34.596096, 30.649246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629784, 35.200684, 30.400425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325397, 35.260632, 30.147924>,  <38.142765, 35.296600, 29.996426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325397, 35.260632, 30.147924>,  <38.629784, 35.200684, 30.400425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325397, 35.260632, 30.147924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591507, 0.239489, 0.769912,
		0.266560, 0.959263, -0.093596,
		-0.760963, 0.149865, -0.631249,
		38.097107, 35.305592, 29.958549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305038, 35.775223, 30.644949>,  <38.629784, 35.200684, 30.400425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305038, 35.775223, 30.644949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022499, 35.591385, 30.429598>,  <37.852978, 35.481083, 30.300386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.022499, 35.591385, 30.429598>,  <38.305038, 35.775223, 30.644949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022499, 35.591385, 30.429598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648250, 0.114478, 0.752773,
		-0.284336, 0.880721, -0.378792,
		-0.706346, -0.459593, -0.538377,
		37.810596, 35.453506, 30.268085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689301, 36.106724, 30.862257>,  <38.305038, 35.775223, 30.644949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689301, 36.106724, 30.862257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548443, 35.789719, 30.663090>,  <37.463928, 35.599514, 30.543591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548443, 35.789719, 30.663090>,  <37.689301, 36.106724, 30.862257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548443, 35.789719, 30.663090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696528, -0.133450, 0.705010,
		-0.625177, 0.595075, -0.505014,
		-0.352140, -0.792513, -0.497917,
		37.442802, 35.551964, 30.513714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992908, 36.227634, 30.770227>,  <37.689301, 36.106724, 30.862257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992908, 36.227634, 30.770227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066986, 35.834686, 30.759975>,  <37.111431, 35.598919, 30.753824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.066986, 35.834686, 30.759975>,  <36.992908, 36.227634, 30.770227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066986, 35.834686, 30.759975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724815, -0.154161, 0.671474,
		-0.663585, -0.105775, -0.740585,
		0.185195, -0.982367, -0.025631,
		37.122543, 35.539974, 30.752287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308964, 35.905132, 30.888510>,  <36.992908, 36.227634, 30.770227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308964, 35.905132, 30.888510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568027, 35.607201, 30.952721>,  <36.723465, 35.428440, 30.991247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.568027, 35.607201, 30.952721>,  <36.308964, 35.905132, 30.888510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568027, 35.607201, 30.952721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608209, -0.378478, 0.697737,
		-0.458943, -0.549525, -0.698136,
		0.647653, -0.744833, 0.160526,
		36.762325, 35.383751, 31.000879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965645, 35.281483, 30.648985>,  <36.308964, 35.905132, 30.888510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965645, 35.281483, 30.648985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.261578, 35.193352, 30.903263>,  <36.439137, 35.140472, 31.055830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.261578, 35.193352, 30.903263>,  <35.965645, 35.281483, 30.648985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261578, 35.193352, 30.903263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671183, -0.307027, 0.674720,
		0.046514, -0.925845, -0.375029,
		0.739830, -0.220329, 0.635693,
		36.483528, 35.127254, 31.093971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670521, 34.647831, 30.991449>,  <35.965645, 35.281483, 30.648985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670521, 34.647831, 30.991449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.961353, 34.750645, 31.246099>,  <36.135853, 34.812332, 31.398890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.961353, 34.750645, 31.246099>,  <35.670521, 34.647831, 30.991449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961353, 34.750645, 31.246099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612039, -0.177473, 0.770656,
		0.311071, -0.949966, 0.028280,
		0.727079, 0.257037, 0.636623,
		36.179478, 34.827755, 31.437086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551968, 34.232880, 31.493082>,  <35.670521, 34.647831, 30.991449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551968, 34.232880, 31.493082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799519, 34.504753, 31.650574>,  <35.948048, 34.667877, 31.745070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799519, 34.504753, 31.650574>,  <35.551968, 34.232880, 31.493082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799519, 34.504753, 31.650574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521615, -0.019158, 0.852966,
		0.587289, -0.733257, 0.342676,
		0.618878, 0.679682, 0.393729,
		35.985184, 34.708656, 31.768692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834682, 33.959278, 31.993423>,  <35.551968, 34.232880, 31.493082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834682, 33.959278, 31.993423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873734, 34.341900, 32.103317>,  <35.897163, 34.571472, 32.169254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873734, 34.341900, 32.103317>,  <35.834682, 33.959278, 31.993423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873734, 34.341900, 32.103317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238448, -0.245531, 0.939605,
		0.966236, -0.157242, 0.204116,
		0.097629, 0.956551, 0.274735,
		35.903023, 34.628864, 32.185738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267548, 33.990517, 32.598099>,  <35.834682, 33.959278, 31.993423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267548, 33.990517, 32.598099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.033062, 34.314575, 32.597050>,  <35.892368, 34.509010, 32.596420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.033062, 34.314575, 32.597050>,  <36.267548, 33.990517, 32.598099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033062, 34.314575, 32.597050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054697, -0.036347, 0.997841,
		0.808305, 0.585096, 0.065620,
		-0.586218, 0.810149, -0.002623,
		35.857197, 34.557621, 32.596264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368542, 34.277752, 33.206291>,  <36.267548, 33.990517, 32.598099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368542, 34.277752, 33.206291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.028622, 34.457413, 33.095947>,  <35.824669, 34.565208, 33.029739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.028622, 34.457413, 33.095947>,  <36.368542, 34.277752, 33.206291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028622, 34.457413, 33.095947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294643, 0.029180, 0.955162,
		0.437066, 0.892977, 0.107543,
		-0.849799, 0.449155, -0.275863,
		35.773682, 34.592159, 33.013187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156170, 34.716969, 33.868416>,  <36.368542, 34.277752, 33.206291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156170, 34.716969, 33.868416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833347, 34.654198, 33.640720>,  <35.639652, 34.616535, 33.504105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833347, 34.654198, 33.640720>,  <36.156170, 34.716969, 33.868416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833347, 34.654198, 33.640720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543206, -0.180605, 0.819945,
		-0.231479, 0.970956, 0.060515,
		-0.807060, -0.156928, -0.569235,
		35.591228, 34.607121, 33.469952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.451324, 35.722759, 26.901646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123959, 35.504665, 26.829069>,  <39.927540, 35.373810, 26.785524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123959, 35.504665, 26.829069>,  <40.451324, 35.722759, 26.901646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123959, 35.504665, 26.829069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507180, 0.536961, 0.674122,
		-0.270130, 0.643732, -0.715988,
		-0.818412, -0.545236, -0.181439,
		39.878433, 35.341095, 26.774637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965343, 36.174911, 27.134499>,  <40.451324, 35.722759, 26.901646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965343, 36.174911, 27.134499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772591, 35.825291, 27.109762>,  <39.656940, 35.615517, 27.094921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772591, 35.825291, 27.109762>,  <39.965343, 36.174911, 27.134499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772591, 35.825291, 27.109762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641574, 0.303881, 0.704301,
		-0.596804, 0.379062, -0.707203,
		-0.481879, -0.874053, -0.061839,
		39.628025, 35.563076, 27.091211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384869, 36.299923, 27.472357>,  <39.965343, 36.174911, 27.134499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384869, 36.299923, 27.472357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366856, 35.900349, 27.476276>,  <39.356049, 35.660603, 27.478628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366856, 35.900349, 27.476276>,  <39.384869, 36.299923, 27.472357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366856, 35.900349, 27.476276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560325, 0.033379, 0.827600,
		-0.827048, 0.031777, -0.561233,
		-0.045032, -0.998938, 0.009800,
		39.353348, 35.600666, 27.479216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581478, 36.112659, 27.552040>,  <39.384869, 36.299923, 27.472357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581478, 36.112659, 27.552040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805580, 35.806396, 27.678457>,  <38.940041, 35.622639, 27.754307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805580, 35.806396, 27.678457>,  <38.581478, 36.112659, 27.552040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805580, 35.806396, 27.678457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442427, 0.045953, 0.895627,
		-0.700265, -0.641607, -0.313001,
		0.560257, -0.765656, 0.316043,
		38.973656, 35.576698, 27.773270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151745, 35.638214, 27.823902>,  <38.581478, 36.112659, 27.552040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151745, 35.638214, 27.823902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497040, 35.504044, 27.974798>,  <38.704216, 35.423542, 28.065336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497040, 35.504044, 27.974798>,  <38.151745, 35.638214, 27.823902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497040, 35.504044, 27.974798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454536, -0.191421, 0.869917,
		-0.219588, -0.922412, -0.317707,
		0.863237, -0.335432, 0.377236,
		38.756012, 35.403416, 28.087971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012138, 34.902218, 28.081213>,  <38.151745, 35.638214, 27.823902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012138, 34.902218, 28.081213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314869, 35.069824, 28.281864>,  <38.496510, 35.170387, 28.402256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314869, 35.069824, 28.281864>,  <38.012138, 34.902218, 28.081213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314869, 35.069824, 28.281864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478422, -0.167770, 0.861955,
		0.445335, -0.892343, 0.073495,
		0.756829, 0.419020, 0.501630,
		38.541916, 35.195530, 28.432354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979061, 34.570587, 28.654417>,  <38.012138, 34.902218, 28.081213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979061, 34.570587, 28.654417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230858, 34.869675, 28.738945>,  <38.381935, 35.049126, 28.789661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230858, 34.869675, 28.738945>,  <37.979061, 34.570587, 28.654417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230858, 34.869675, 28.738945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295399, -0.021245, 0.955138,
		0.718663, -0.663677, 0.207502,
		0.629494, 0.747718, 0.211318,
		38.419704, 35.093990, 28.802340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582020, 34.473766, 29.230303>,  <37.979061, 34.570587, 28.654417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582020, 34.473766, 29.230303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468662, 34.856949, 29.212370>,  <38.400650, 35.086857, 29.201611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468662, 34.856949, 29.212370>,  <38.582020, 34.473766, 29.230303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468662, 34.856949, 29.212370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342541, -0.057445, 0.937745,
		0.895743, 0.281105, 0.344419,
		-0.283390, 0.957956, -0.044834,
		38.383644, 35.144337, 29.198919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755554, 34.664478, 29.867607>,  <38.582020, 34.473766, 29.230303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755554, 34.664478, 29.867607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511604, 34.950333, 29.730583>,  <38.365234, 35.121845, 29.648369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511604, 34.950333, 29.730583>,  <38.755554, 34.664478, 29.867607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511604, 34.950333, 29.730583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547697, -0.067663, 0.833936,
		0.572784, 0.696214, 0.432671,
		-0.609874, 0.714638, -0.342559,
		38.328644, 35.164722, 29.627815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400398, 34.622284, 30.201931>,  <38.755554, 34.664478, 29.867607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400398, 34.622284, 30.201931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521488, 34.312046, 30.423494>,  <39.594143, 34.125904, 30.556433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521488, 34.312046, 30.423494>,  <39.400398, 34.622284, 30.201931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521488, 34.312046, 30.423494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462009, -0.388908, -0.797056,
		0.833610, 0.497200, 0.240598,
		0.302726, -0.775592, 0.553908,
		39.612305, 34.079369, 30.589666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118382, 34.574215, 30.132223>,  <39.400398, 34.622284, 30.201931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118382, 34.574215, 30.132223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010735, 34.203495, 30.237009>,  <39.946148, 33.981064, 30.299881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010735, 34.203495, 30.237009>,  <40.118382, 34.574215, 30.132223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010735, 34.203495, 30.237009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427027, -0.358625, -0.830082,
		0.863264, -0.111522, 0.492279,
		-0.269115, -0.926796, 0.261965,
		39.930000, 33.925457, 30.315599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603569, 34.267906, 29.983812>,  <40.118382, 34.574215, 30.132223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603569, 34.267906, 29.983812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370667, 33.945515, 30.026482>,  <40.230927, 33.752079, 30.052084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370667, 33.945515, 30.026482>,  <40.603569, 34.267906, 29.983812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370667, 33.945515, 30.026482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598276, -0.513610, -0.615037,
		0.550494, -0.294290, 0.781249,
		-0.582256, -0.805977, 0.106673,
		40.195988, 33.703720, 30.058483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988644, 33.654419, 30.247663>,  <40.603569, 34.267906, 29.983812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988644, 33.654419, 30.247663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677658, 33.506657, 30.044064>,  <40.491066, 33.417999, 29.921904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677658, 33.506657, 30.044064>,  <40.988644, 33.654419, 30.247663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677658, 33.506657, 30.044064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626327, -0.381328, -0.679929,
		0.057078, -0.847423, 0.527842,
		-0.777468, -0.369411, -0.508998,
		40.444416, 33.395832, 29.891363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201603, 32.953819, 30.041740>,  <40.988644, 33.654419, 30.247663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201603, 32.953819, 30.041740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902802, 33.069523, 29.802303>,  <40.723518, 33.138943, 29.658642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902802, 33.069523, 29.802303>,  <41.201603, 32.953819, 30.041740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902802, 33.069523, 29.802303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409633, -0.508902, -0.757113,
		-0.523629, -0.810769, 0.261660,
		-0.747003, 0.289261, -0.598593,
		40.678699, 33.156300, 29.622726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976967, 32.341278, 29.621910>,  <41.201603, 32.953819, 30.041740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976967, 32.341278, 29.621910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858410, 32.663399, 29.416523>,  <40.787277, 32.856670, 29.293291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858410, 32.663399, 29.416523>,  <40.976967, 32.341278, 29.621910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858410, 32.663399, 29.416523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260845, -0.448928, -0.854649,
		-0.918755, -0.387247, -0.076998,
		-0.296393, 0.805297, -0.513466,
		40.769493, 32.904987, 29.262484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594448, 32.020409, 29.025873>,  <40.976967, 32.341278, 29.621910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594448, 32.020409, 29.025873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697903, 32.392143, 28.920467>,  <40.759975, 32.615185, 28.857224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697903, 32.392143, 28.920467>,  <40.594448, 32.020409, 29.025873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697903, 32.392143, 28.920467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363960, -0.346446, -0.864586,
		-0.894785, 0.127703, -0.427845,
		0.258636, 0.929337, -0.263516,
		40.775494, 32.670944, 28.841412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543091, 32.083138, 28.342081>,  <40.594448, 32.020409, 29.025873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543091, 32.083138, 28.342081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797707, 32.380848, 28.422947>,  <40.950474, 32.559475, 28.471466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797707, 32.380848, 28.422947>,  <40.543091, 32.083138, 28.342081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797707, 32.380848, 28.422947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588667, -0.299504, -0.750845,
		-0.498290, 0.596947, -0.628778,
		0.636536, 0.744279, 0.202164,
		40.988667, 32.604134, 28.483597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643085, 32.423512, 27.734232>,  <40.543091, 32.083138, 28.342081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643085, 32.423512, 27.734232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965401, 32.534218, 27.943655>,  <41.158791, 32.600639, 28.069309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965401, 32.534218, 27.943655>,  <40.643085, 32.423512, 27.734232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965401, 32.534218, 27.943655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585861, -0.243461, -0.772977,
		-0.086465, 0.929586, -0.358322,
		0.805786, 0.276762, 0.523557,
		41.207138, 32.617245, 28.100721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088512, 32.782612, 27.302191>,  <40.643085, 32.423512, 27.734232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088512, 32.782612, 27.302191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348705, 32.690899, 27.591825>,  <41.504822, 32.635872, 27.765606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348705, 32.690899, 27.591825>,  <41.088512, 32.782612, 27.302191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348705, 32.690899, 27.591825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695470, -0.203373, -0.689174,
		0.305274, 0.951877, 0.027167,
		0.650484, -0.229280, 0.724087,
		41.543850, 32.622116, 27.809052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716515, 33.036404, 27.045530>,  <41.088512, 32.782612, 27.302191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716515, 33.036404, 27.045530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822113, 32.802574, 27.352406>,  <41.885471, 32.662277, 27.536531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822113, 32.802574, 27.352406>,  <41.716515, 33.036404, 27.045530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822113, 32.802574, 27.352406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819755, -0.283140, -0.497829,
		0.508240, 0.760332, 0.404459,
		0.263996, -0.584574, 0.767189,
		41.901314, 32.627201, 27.582561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454567, 33.133392, 27.209444>,  <41.716515, 33.036404, 27.045530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454567, 33.133392, 27.209444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373177, 32.766994, 27.347748>,  <42.324345, 32.547157, 27.430731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373177, 32.766994, 27.347748>,  <42.454567, 33.133392, 27.209444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373177, 32.766994, 27.347748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799310, -0.359354, -0.481631,
		0.565423, 0.178371, 0.805283,
		-0.203473, -0.915996, 0.345761,
		42.312134, 32.492195, 27.451475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128956, 32.899231, 27.417223>,  <42.454567, 33.133392, 27.209444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128956, 32.899231, 27.417223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891670, 32.577740, 27.398781>,  <42.749298, 32.384846, 27.387716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891670, 32.577740, 27.398781>,  <43.128956, 32.899231, 27.417223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891670, 32.577740, 27.398781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770050, -0.549787, -0.323662,
		0.234788, -0.227504, 0.945049,
		-0.593210, -0.803727, -0.046106,
		42.713707, 32.336620, 27.384949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522011, 32.365631, 27.611853>,  <43.128956, 32.899231, 27.417223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522011, 32.365631, 27.611853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240898, 32.220463, 27.367104>,  <43.072231, 32.133362, 27.220255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240898, 32.220463, 27.367104>,  <43.522011, 32.365631, 27.611853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240898, 32.220463, 27.367104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695057, -0.533624, -0.481811,
		-0.151651, -0.763893, 0.627272,
		-0.702779, -0.362922, -0.611873,
		43.030064, 32.111588, 27.183542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.467392, 29.074177, 24.551546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.609116, 29.445910, 24.509958>,  <35.694149, 29.668949, 24.485006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.609116, 29.445910, 24.509958>,  <35.467392, 29.074177, 24.551546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609116, 29.445910, 24.509958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202151, 0.184669, 0.961786,
		0.913018, -0.319750, 0.253295,
		0.354307, 0.929332, -0.103968,
		35.715408, 29.724709, 24.478767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033543, 29.149302, 24.991753>,  <35.467392, 29.074177, 24.551546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033543, 29.149302, 24.991753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.866127, 29.503160, 24.909557>,  <35.765678, 29.715475, 24.860239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.866127, 29.503160, 24.909557>,  <36.033543, 29.149302, 24.991753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866127, 29.503160, 24.909557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215941, 0.122838, 0.968648,
		0.882154, 0.449789, 0.139619,
		-0.418537, 0.884647, -0.205490,
		35.740566, 29.768555, 24.847910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244225, 29.610590, 25.546413>,  <36.033543, 29.149302, 24.991753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244225, 29.610590, 25.546413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921379, 29.796793, 25.401161>,  <35.727673, 29.908514, 25.314011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921379, 29.796793, 25.401161>,  <36.244225, 29.610590, 25.546413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921379, 29.796793, 25.401161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233345, 0.313462, 0.920484,
		0.542320, 0.827674, -0.144377,
		-0.807118, 0.465507, -0.363131,
		35.679245, 29.936445, 25.292223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201874, 30.128483, 26.060139>,  <36.244225, 29.610590, 25.546413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201874, 30.128483, 26.060139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860138, 30.170336, 25.856512>,  <35.655094, 30.195448, 25.734337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860138, 30.170336, 25.856512>,  <36.201874, 30.128483, 26.060139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860138, 30.170336, 25.856512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440175, 0.375075, 0.815821,
		0.276301, 0.921070, -0.274386,
		-0.854344, 0.104634, -0.509066,
		35.603836, 30.201727, 25.703793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946705, 30.848640, 26.198439>,  <36.201874, 30.128483, 26.060139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946705, 30.848640, 26.198439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.646957, 30.603874, 26.097237>,  <35.467110, 30.457014, 26.036516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.646957, 30.603874, 26.097237>,  <35.946705, 30.848640, 26.198439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646957, 30.603874, 26.097237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445186, 0.182745, 0.876592,
		-0.490164, 0.769522, -0.409359,
		-0.749365, -0.611915, -0.253005,
		35.422150, 30.420300, 26.021336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383835, 31.188086, 26.343613>,  <35.946705, 30.848640, 26.198439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383835, 31.188086, 26.343613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.255157, 30.810633, 26.312433>,  <35.177952, 30.584162, 26.293726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.255157, 30.810633, 26.312433>,  <35.383835, 31.188086, 26.343613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255157, 30.810633, 26.312433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578389, 0.130662, 0.805229,
		-0.749654, 0.304119, -0.587818,
		-0.321691, -0.943631, -0.077948,
		35.158649, 30.527544, 26.289049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539680, 31.235739, 26.343422>,  <35.383835, 31.188086, 26.343613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539680, 31.235739, 26.343422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.689278, 30.876608, 26.436403>,  <34.779037, 30.661129, 26.492191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.689278, 30.876608, 26.436403>,  <34.539680, 31.235739, 26.343422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689278, 30.876608, 26.436403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530280, -0.001385, 0.847821,
		-0.760875, -0.440346, -0.476618,
		0.373995, -0.897827, 0.232453,
		34.801476, 30.607260, 26.506140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999680, 30.952641, 26.672371>,  <34.539680, 31.235739, 26.343422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999680, 30.952641, 26.672371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324879, 30.758047, 26.800354>,  <34.519997, 30.641291, 26.877144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324879, 30.758047, 26.800354>,  <33.999680, 30.952641, 26.672371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324879, 30.758047, 26.800354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306019, 0.110501, 0.945591,
		-0.495371, -0.866673, -0.059037,
		0.812994, -0.486485, 0.319958,
		34.568775, 30.612103, 26.896341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721436, 30.406826, 27.171232>,  <33.999680, 30.952641, 26.672371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721436, 30.406826, 27.171232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092567, 30.491333, 27.294189>,  <34.315247, 30.542038, 27.367964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092567, 30.491333, 27.294189>,  <33.721436, 30.406826, 27.171232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092567, 30.491333, 27.294189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332142, 0.092978, 0.938636,
		0.169729, -0.972995, 0.156441,
		0.927833, 0.211274, 0.307391,
		34.370918, 30.554714, 27.386408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661617, 30.237442, 27.854223>,  <33.721436, 30.406826, 27.171232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661617, 30.237442, 27.854223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017006, 30.420736, 27.844078>,  <34.230240, 30.530712, 27.837992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.017006, 30.420736, 27.844078>,  <33.661617, 30.237442, 27.854223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017006, 30.420736, 27.844078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141916, 0.326876, 0.934351,
		0.436444, -0.826542, 0.355450,
		0.888468, 0.458236, -0.025364,
		34.283546, 30.558207, 27.836470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096313, 29.964611, 28.361412>,  <33.661617, 30.237442, 27.854223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096313, 29.964611, 28.361412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.251293, 30.332937, 28.343620>,  <34.344280, 30.553932, 28.332947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.251293, 30.332937, 28.343620>,  <34.096313, 29.964611, 28.361412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251293, 30.332937, 28.343620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310536, 0.175787, 0.934166,
		0.868014, -0.348134, 0.354056,
		0.387453, 0.920816, -0.044477,
		34.367531, 30.609182, 28.330276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290062, 30.058111, 29.007740>,  <34.096313, 29.964611, 28.361412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290062, 30.058111, 29.007740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295044, 30.435617, 28.875586>,  <34.298031, 30.662121, 28.796293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295044, 30.435617, 28.875586>,  <34.290062, 30.058111, 29.007740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295044, 30.435617, 28.875586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079143, 0.330306, 0.940550,
		0.996786, 0.014437, 0.078804,
		0.012451, 0.943763, -0.330387,
		34.298779, 30.718746, 28.776470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797066, 30.471302, 29.346481>,  <34.290062, 30.058111, 29.007740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797066, 30.471302, 29.346481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525078, 30.740164, 29.229279>,  <34.361885, 30.901480, 29.158957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525078, 30.740164, 29.229279>,  <34.797066, 30.471302, 29.346481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525078, 30.740164, 29.229279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071119, 0.337265, 0.938720,
		0.729785, 0.659137, -0.181527,
		-0.679968, 0.672153, -0.293008,
		34.321087, 30.941811, 29.141376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984570, 31.029764, 29.654366>,  <34.797066, 30.471302, 29.346481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984570, 31.029764, 29.654366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601589, 31.091242, 29.556660>,  <34.371799, 31.128128, 29.498035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.601589, 31.091242, 29.556660>,  <34.984570, 31.029764, 29.654366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601589, 31.091242, 29.556660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208912, 0.214824, 0.954048,
		0.199106, 0.964484, -0.173575,
		-0.957451, 0.153695, -0.244265,
		34.314354, 31.137350, 29.483379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613113, 31.420876, 30.025927>,  <34.984570, 31.029764, 29.654366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613113, 31.420876, 30.025927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735519, 31.100332, 30.231520>,  <35.808964, 30.908007, 30.354876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735519, 31.100332, 30.231520>,  <35.613113, 31.420876, 30.025927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735519, 31.100332, 30.231520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564788, -0.281804, -0.775629,
		0.766399, 0.527649, 0.366360,
		0.306018, -0.801357, 0.513984,
		35.827324, 30.859924, 30.385715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417011, 31.292955, 29.918001>,  <35.613113, 31.420876, 30.025927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417011, 31.292955, 29.918001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278397, 30.941132, 30.048407>,  <36.195229, 30.730038, 30.126650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.278397, 30.941132, 30.048407>,  <36.417011, 31.292955, 29.918001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278397, 30.941132, 30.048407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530964, -0.470439, -0.704815,
		0.773298, -0.071141, 0.630039,
		-0.346536, -0.879560, 0.326016,
		36.174435, 30.677263, 30.146212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974941, 30.947258, 30.062252>,  <36.417011, 31.292955, 29.918001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974941, 30.947258, 30.062252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682503, 30.683743, 29.991255>,  <36.507042, 30.525633, 29.948656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.682503, 30.683743, 29.991255>,  <36.974941, 30.947258, 30.062252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682503, 30.683743, 29.991255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550023, -0.415150, -0.724655,
		0.403707, -0.627415, 0.665861,
		-0.731092, -0.658787, -0.177494,
		36.463177, 30.486107, 29.938007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311714, 30.300169, 29.881895>,  <36.974941, 30.947258, 30.062252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311714, 30.300169, 29.881895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938923, 30.223238, 29.758982>,  <36.715248, 30.177078, 29.685234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.938923, 30.223238, 29.758982>,  <37.311714, 30.300169, 29.881895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938923, 30.223238, 29.758982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360957, -0.413972, -0.835666,
		0.033517, -0.889740, 0.455237,
		-0.931980, -0.192330, -0.307282,
		36.659328, 30.165539, 29.666798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259552, 29.664730, 29.669779>,  <37.311714, 30.300169, 29.881895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259552, 29.664730, 29.669779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945671, 29.809008, 29.468126>,  <36.757343, 29.895575, 29.347136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945671, 29.809008, 29.468126>,  <37.259552, 29.664730, 29.669779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945671, 29.809008, 29.468126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360590, -0.395906, -0.844531,
		-0.504207, -0.844486, 0.180603,
		-0.784697, 0.360695, -0.504132,
		36.710262, 29.917215, 29.316887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943890, 29.043180, 29.348650>,  <37.259552, 29.664730, 29.669779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943890, 29.043180, 29.348650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807140, 29.363789, 29.152411>,  <36.725090, 29.556154, 29.034666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.807140, 29.363789, 29.152411>,  <36.943890, 29.043180, 29.348650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807140, 29.363789, 29.152411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236872, -0.431700, -0.870360,
		-0.909403, -0.413761, -0.042272,
		-0.341873, 0.801521, -0.490598,
		36.704578, 29.604244, 29.005232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598698, 28.773964, 28.729700>,  <36.943890, 29.043180, 29.348650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598698, 28.773964, 28.729700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671215, 29.159201, 28.650118>,  <36.714725, 29.390343, 28.602369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671215, 29.159201, 28.650118>,  <36.598698, 28.773964, 28.729700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671215, 29.159201, 28.650118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365624, -0.253815, -0.895487,
		-0.912935, 0.089607, -0.398146,
		0.181297, 0.963093, -0.198954,
		36.725605, 29.448128, 28.590431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471714, 28.797438, 28.006498>,  <36.598698, 28.773964, 28.729700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471714, 28.797438, 28.006498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674652, 29.129253, 28.099850>,  <36.796417, 29.328342, 28.155861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674652, 29.129253, 28.099850>,  <36.471714, 28.797438, 28.006498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674652, 29.129253, 28.099850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376296, 0.030372, -0.926002,
		-0.775241, 0.557625, -0.296742,
		0.507349, 0.829537, 0.233378,
		36.826859, 29.378115, 28.169863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466976, 29.070213, 27.452763>,  <36.471714, 28.797438, 28.006498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466976, 29.070213, 27.452763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752621, 29.283705, 27.633953>,  <36.924007, 29.411800, 27.742666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752621, 29.283705, 27.633953>,  <36.466976, 29.070213, 27.452763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752621, 29.283705, 27.633953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412206, 0.202403, -0.888324,
		-0.565807, 0.821077, -0.075468,
		0.714107, 0.533728, 0.452974,
		36.966854, 29.443823, 27.769846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562809, 29.671286, 27.025652>,  <36.466976, 29.070213, 27.452763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562809, 29.671286, 27.025652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888859, 29.647951, 27.256187>,  <37.084488, 29.633949, 27.394508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.888859, 29.647951, 27.256187>,  <36.562809, 29.671286, 27.025652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888859, 29.647951, 27.256187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578871, 0.044563, -0.814200,
		0.021815, 0.997302, 0.070095,
		0.815127, -0.058338, 0.576337,
		37.133396, 29.630449, 27.429089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940079, 30.200533, 26.902382>,  <36.562809, 29.671286, 27.025652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940079, 30.200533, 26.902382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209671, 29.939884, 27.041597>,  <37.371426, 29.783495, 27.125128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209671, 29.939884, 27.041597>,  <36.940079, 30.200533, 26.902382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209671, 29.939884, 27.041597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458338, -0.000642, -0.888778,
		0.579371, 0.758543, 0.298231,
		0.673985, -0.651623, 0.348041,
		37.411865, 29.744398, 27.146009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558453, 30.510122, 26.634005>,  <36.940079, 30.200533, 26.902382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558453, 30.510122, 26.634005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635162, 30.129917, 26.731777>,  <37.681190, 29.901794, 26.790442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635162, 30.129917, 26.731777>,  <37.558453, 30.510122, 26.634005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635162, 30.129917, 26.731777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487186, -0.124006, -0.864449,
		0.851981, 0.284866, 0.439295,
		0.191777, -0.950512, 0.244434,
		37.692696, 29.844763, 26.805107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328564, 30.371742, 26.607965>,  <37.558453, 30.510122, 26.634005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328564, 30.371742, 26.607965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154938, 30.014900, 26.557789>,  <38.050762, 29.800795, 26.527683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.154938, 30.014900, 26.557789>,  <38.328564, 30.371742, 26.607965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154938, 30.014900, 26.557789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456171, -0.097583, -0.884525,
		0.776849, -0.441165, 0.449310,
		-0.434066, -0.892105, -0.125440,
		38.024719, 29.747269, 26.520157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881596, 29.931150, 26.358482>,  <38.328564, 30.371742, 26.607965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881596, 29.931150, 26.358482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565144, 29.715904, 26.242176>,  <38.375271, 29.586756, 26.172392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.565144, 29.715904, 26.242176>,  <38.881596, 29.931150, 26.358482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565144, 29.715904, 26.242176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389098, -0.075979, -0.918057,
		0.471929, -0.839440, 0.269489,
		-0.791129, -0.538115, -0.290768,
		38.327805, 29.554470, 26.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209740, 29.386799, 26.844572>,  <38.881596, 29.931150, 26.358482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209740, 29.386799, 26.844572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.549896, 29.352509, 27.052219>,  <39.753990, 29.331934, 27.176807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.549896, 29.352509, 27.052219>,  <39.209740, 29.386799, 26.844572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549896, 29.352509, 27.052219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466228, 0.334504, 0.818986,
		-0.243855, -0.938487, 0.244492,
		0.850392, -0.085725, 0.519120,
		39.805016, 29.326792, 27.207954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976498, 29.222523, 27.480354>,  <39.209740, 29.386799, 26.844572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976498, 29.222523, 27.480354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354797, 29.338709, 27.538568>,  <39.581779, 29.408421, 27.573498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354797, 29.338709, 27.538568>,  <38.976498, 29.222523, 27.480354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354797, 29.338709, 27.538568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263947, 0.425763, 0.865481,
		0.189428, -0.856946, 0.479334,
		0.945753, 0.290465, 0.145537,
		39.638523, 29.425848, 27.582230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219582, 28.882639, 28.103043>,  <38.976498, 29.222523, 27.480354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219582, 28.882639, 28.103043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.431183, 29.217060, 28.044834>,  <39.558144, 29.417713, 28.009909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.431183, 29.217060, 28.044834>,  <39.219582, 28.882639, 28.103043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431183, 29.217060, 28.044834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149911, 0.260849, 0.953669,
		0.835275, -0.482677, 0.263322,
		0.529001, 0.836051, -0.145522,
		39.589882, 29.467875, 28.001177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522659, 29.005089, 28.722763>,  <39.219582, 28.882639, 28.103043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522659, 29.005089, 28.722763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573467, 29.379011, 28.590094>,  <39.603951, 29.603365, 28.510492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573467, 29.379011, 28.590094>,  <39.522659, 29.005089, 28.722763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573467, 29.379011, 28.590094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135068, 0.347566, 0.927876,
		0.982661, -0.073061, 0.170411,
		0.127020, 0.934805, -0.331672,
		39.611572, 29.659452, 28.490593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869450, 29.303663, 29.269806>,  <39.522659, 29.005089, 28.722763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869450, 29.303663, 29.269806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764423, 29.618641, 29.046740>,  <39.701408, 29.807629, 28.912901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764423, 29.618641, 29.046740>,  <39.869450, 29.303663, 29.269806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764423, 29.618641, 29.046740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049341, 0.588142, 0.807251,
		0.963652, 0.184439, -0.193278,
		-0.262563, 0.787446, -0.557664,
		39.685654, 29.854876, 28.879440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276173, 29.804831, 29.508955>,  <39.869450, 29.303663, 29.269806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276173, 29.804831, 29.508955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961731, 29.965002, 29.320620>,  <39.773064, 30.061106, 29.207619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.961731, 29.965002, 29.320620>,  <40.276173, 29.804831, 29.508955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961731, 29.965002, 29.320620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238772, 0.505895, 0.828890,
		0.570107, 0.764021, -0.302078,
		-0.786108, 0.400428, -0.470841,
		39.725899, 30.085131, 29.179367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342720, 30.587994, 29.665854>,  <40.276173, 29.804831, 29.508955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342720, 30.587994, 29.665854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964977, 30.487534, 29.580900>,  <39.738331, 30.427258, 29.529928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964977, 30.487534, 29.580900>,  <40.342720, 30.587994, 29.665854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964977, 30.487534, 29.580900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293793, 0.353774, 0.887992,
		-0.147884, 0.900981, -0.407877,
		-0.944360, -0.251152, -0.212384,
		39.681671, 30.412188, 29.517185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925671, 31.254900, 29.772552>,  <40.342720, 30.587994, 29.665854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925671, 31.254900, 29.772552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670815, 30.948114, 29.803055>,  <39.517899, 30.764044, 29.821356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670815, 30.948114, 29.803055>,  <39.925671, 31.254900, 29.772552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670815, 30.948114, 29.803055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210663, 0.268464, 0.939973,
		-0.741396, 0.582834, -0.332621,
		-0.637145, -0.766963, 0.076256,
		39.479671, 30.718025, 29.825932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444347, 31.542189, 30.205643>,  <39.925671, 31.254900, 29.772552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444347, 31.542189, 30.205643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397587, 31.145157, 30.219049>,  <39.369530, 30.906939, 30.227093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397587, 31.145157, 30.219049>,  <39.444347, 31.542189, 30.205643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397587, 31.145157, 30.219049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220372, 0.058831, 0.973640,
		-0.968386, 0.106431, -0.225613,
		-0.116899, -0.992578, 0.033517,
		39.362518, 30.847383, 30.229105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705540, 31.387554, 30.508259>,  <39.444347, 31.542189, 30.205643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705540, 31.387554, 30.508259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952389, 31.076548, 30.556641>,  <39.100498, 30.889944, 30.585670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952389, 31.076548, 30.556641>,  <38.705540, 31.387554, 30.508259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952389, 31.076548, 30.556641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350416, -0.133920, 0.926970,
		-0.704537, -0.614436, -0.355100,
		0.617119, -0.777517, 0.120957,
		39.137524, 30.843292, 30.592928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352604, 30.933769, 30.795502>,  <38.705540, 31.387554, 30.508259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352604, 30.933769, 30.795502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718449, 30.808939, 30.898333>,  <38.937958, 30.734041, 30.960032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718449, 30.808939, 30.898333>,  <38.352604, 30.933769, 30.795502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718449, 30.808939, 30.898333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246713, 0.072979, 0.966337,
		-0.320333, -0.947250, -0.010246,
		0.914615, -0.312077, 0.257076,
		38.992832, 30.715317, 30.975456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317192, 30.389561, 31.261635>,  <38.352604, 30.933769, 30.795502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317192, 30.389561, 31.261635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.690723, 30.511747, 31.336090>,  <38.914845, 30.585060, 31.380762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.690723, 30.511747, 31.336090>,  <38.317192, 30.389561, 31.261635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690723, 30.511747, 31.336090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145499, -0.151003, 0.977767,
		0.326782, -0.940153, -0.096566,
		0.933833, 0.305467, 0.186136,
		38.970875, 30.603388, 31.391932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579285, 29.829248, 31.690414>,  <38.317192, 30.389561, 31.261635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579285, 29.829248, 31.690414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795605, 30.164164, 31.722614>,  <38.925396, 30.365112, 31.741934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795605, 30.164164, 31.722614>,  <38.579285, 29.829248, 31.690414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795605, 30.164164, 31.722614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142263, -0.003277, 0.989824,
		0.829032, -0.546751, 0.117343,
		0.540803, 0.837289, 0.080499,
		38.957844, 30.415350, 31.746763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013458, 29.842968, 32.421577>,  <38.579285, 29.829248, 31.690414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013458, 29.842968, 32.421577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036896, 30.226797, 32.311459>,  <39.050961, 30.457094, 32.245388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036896, 30.226797, 32.311459>,  <39.013458, 29.842968, 32.421577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036896, 30.226797, 32.311459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118426, 0.280502, 0.952520,
		0.991232, -0.023213, 0.130075,
		0.058597, 0.959573, -0.275294,
		39.054474, 30.514669, 32.228870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.877064, 31.593378, 27.354496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.563904, 31.679255, 27.120922>,  <43.376007, 31.730780, 26.980778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.563904, 31.679255, 27.120922>,  <43.877064, 31.593378, 27.354496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563904, 31.679255, 27.120922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373291, -0.588763, -0.716946,
		-0.497720, -0.779273, 0.380799,
		-0.782898, 0.214689, -0.583935,
		43.329033, 31.743662, 26.945742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575981, 30.917627, 27.202610>,  <43.877064, 31.593378, 27.354496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575981, 30.917627, 27.202610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.484074, 31.188559, 26.923058>,  <43.428928, 31.351118, 26.755327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.484074, 31.188559, 26.923058>,  <43.575981, 30.917627, 27.202610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484074, 31.188559, 26.923058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173013, -0.678227, -0.714195,
		-0.957743, -0.285017, 0.038651,
		-0.229772, 0.677328, -0.698879,
		43.415142, 31.391756, 26.713394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343006, 30.544554, 26.642775>,  <43.575981, 30.917627, 27.202610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343006, 30.544554, 26.642775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.373646, 30.885189, 26.435339>,  <43.392029, 31.089569, 26.310879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.373646, 30.885189, 26.435339>,  <43.343006, 30.544554, 26.642775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373646, 30.885189, 26.435339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222304, -0.521611, -0.823713,
		-0.971963, -0.052185, -0.229268,
		0.076604, 0.851586, -0.518587,
		43.396626, 31.140665, 26.279762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092289, 30.340584, 26.037262>,  <43.343006, 30.544554, 26.642775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092289, 30.340584, 26.037262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265331, 30.683773, 25.926460>,  <43.369156, 30.889687, 25.859980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.265331, 30.683773, 25.926460>,  <43.092289, 30.340584, 26.037262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265331, 30.683773, 25.926460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264051, -0.414342, -0.870975,
		-0.862050, 0.303645, -0.405795,
		0.432605, 0.857975, -0.277006,
		43.395111, 30.941166, 25.843359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820686, 30.554470, 25.370209>,  <43.092289, 30.340584, 26.037262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820686, 30.554470, 25.370209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.178825, 30.726156, 25.417761>,  <43.393707, 30.829168, 25.446293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.178825, 30.726156, 25.417761>,  <42.820686, 30.554470, 25.370209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178825, 30.726156, 25.417761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223148, -0.201319, -0.953769,
		-0.385441, 0.880479, -0.276029,
		0.895344, 0.429217, 0.118880,
		43.447430, 30.854921, 25.453424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957314, 30.969316, 24.819246>,  <42.820686, 30.554470, 25.370209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957314, 30.969316, 24.819246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.319149, 30.882671, 24.966103>,  <43.536251, 30.830685, 25.054216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.319149, 30.882671, 24.966103>,  <42.957314, 30.969316, 24.819246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319149, 30.882671, 24.966103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311704, -0.251384, -0.916323,
		0.290779, 0.943337, -0.159881,
		0.904593, -0.216612, 0.367139,
		43.590527, 30.817688, 25.076244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458275, 31.332567, 24.316530>,  <42.957314, 30.969316, 24.819246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458275, 31.332567, 24.316530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.626549, 31.019188, 24.499496>,  <43.727512, 30.831160, 24.609276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.626549, 31.019188, 24.499496>,  <43.458275, 31.332567, 24.316530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626549, 31.019188, 24.499496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291833, -0.360538, -0.885915,
		0.858986, 0.506182, 0.076963,
		0.420687, -0.783449, 0.457417,
		43.752754, 30.784153, 24.636723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.978954, 31.191872, 23.889414>,  <43.458275, 31.332567, 24.316530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.978954, 31.191872, 23.889414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.952164, 30.847010, 24.090294>,  <43.936089, 30.640093, 24.210821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.952164, 30.847010, 24.090294>,  <43.978954, 31.191872, 23.889414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952164, 30.847010, 24.090294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193251, -0.505009, -0.841202,
		0.978860, 0.040708, 0.200437,
		-0.066979, -0.862154, 0.502200,
		43.932072, 30.588364, 24.240953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547249, 30.809408, 23.751980>,  <43.978954, 31.191872, 23.889414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547249, 30.809408, 23.751980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.257240, 30.555424, 23.858694>,  <44.083237, 30.403034, 23.922724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.257240, 30.555424, 23.858694>,  <44.547249, 30.809408, 23.751980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257240, 30.555424, 23.858694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169763, -0.540166, -0.824258,
		0.667480, -0.552311, 0.499422,
		-0.725018, -0.634960, 0.266788,
		44.039734, 30.364937, 23.938730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838383, 30.284264, 23.515272>,  <44.547249, 30.809408, 23.751980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838383, 30.284264, 23.515272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.480167, 30.125059, 23.594875>,  <44.265240, 30.029537, 23.642637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.480167, 30.125059, 23.594875>,  <44.838383, 30.284264, 23.515272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480167, 30.125059, 23.594875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097947, -0.612556, -0.784335,
		0.434077, -0.682907, 0.587550,
		-0.895535, -0.398010, 0.199008,
		44.211506, 30.005655, 23.654577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941906, 29.603624, 23.273981>,  <44.838383, 30.284264, 23.515272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941906, 29.603624, 23.273981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547565, 29.669840, 23.284546>,  <44.310963, 29.709568, 23.290884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547565, 29.669840, 23.284546>,  <44.941906, 29.603624, 23.273981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547565, 29.669840, 23.284546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118939, -0.579723, -0.806086,
		-0.118126, -0.797821, 0.591209,
		-0.985850, 0.165537, 0.026412,
		44.251812, 29.719501, 23.292469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640491, 29.037647, 23.091038>,  <44.941906, 29.603624, 23.273981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640491, 29.037647, 23.091038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.330448, 29.284506, 23.036882>,  <44.144421, 29.432621, 23.004389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.330448, 29.284506, 23.036882>,  <44.640491, 29.037647, 23.091038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330448, 29.284506, 23.036882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155293, -0.393798, -0.905984,
		-0.612442, -0.681214, 0.401076,
		-0.775112, 0.617148, -0.135391,
		44.097916, 29.469650, 22.996265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.004929, 28.628229, 22.791395>,  <44.640491, 29.037647, 23.091038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.004929, 28.628229, 22.791395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011200, 29.012751, 22.681379>,  <44.014961, 29.243464, 22.615370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.011200, 29.012751, 22.681379>,  <44.004929, 28.628229, 22.791395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011200, 29.012751, 22.681379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052292, -0.275486, -0.959882,
		-0.998509, 0.000665, -0.054587,
		0.015676, 0.961305, -0.275040,
		44.015903, 29.301142, 22.598867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733513, 28.622526, 22.076229>,  <44.004929, 28.628229, 22.791395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733513, 28.622526, 22.076229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.892242, 28.987316, 22.117865>,  <43.987480, 29.206190, 22.142845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.892242, 28.987316, 22.117865>,  <43.733513, 28.622526, 22.076229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892242, 28.987316, 22.117865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136522, 0.053498, -0.989192,
		-0.907687, 0.406741, -0.103276,
		0.396820, 0.911976, 0.104089,
		44.011288, 29.260908, 22.149092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164192, 28.813383, 22.471067>,  <43.733513, 28.622526, 22.076229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164192, 28.813383, 22.471067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.843903, 28.577162, 22.430908>,  <42.651730, 28.435429, 22.406813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.843903, 28.577162, 22.430908>,  <43.164192, 28.813383, 22.471067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843903, 28.577162, 22.430908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393867, 0.392758, 0.831029,
		-0.451335, 0.704973, -0.547093,
		-0.800728, -0.590554, -0.100400,
		42.603683, 28.399996, 22.400787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675659, 29.227343, 22.594160>,  <43.164192, 28.813383, 22.471067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675659, 29.227343, 22.594160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487301, 28.875250, 22.617659>,  <42.374287, 28.663994, 22.631758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.487301, 28.875250, 22.617659>,  <42.675659, 29.227343, 22.594160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487301, 28.875250, 22.617659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547012, 0.343578, 0.763369,
		-0.692125, 0.327331, -0.643286,
		-0.470894, -0.880232, 0.058745,
		42.346031, 28.611179, 22.635283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019737, 29.460438, 22.759417>,  <42.675659, 29.227343, 22.594160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019737, 29.460438, 22.759417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.038609, 29.072193, 22.853807>,  <42.049931, 28.839247, 22.910442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.038609, 29.072193, 22.853807>,  <42.019737, 29.460438, 22.759417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038609, 29.072193, 22.853807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629264, 0.154594, 0.761661,
		-0.775759, -0.184424, -0.603478,
		0.047174, -0.970613, 0.235979,
		42.052761, 28.781010, 22.924601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370640, 29.275379, 22.741817>,  <42.019737, 29.460438, 22.759417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370640, 29.275379, 22.741817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557579, 29.020744, 22.987204>,  <41.669743, 28.867964, 23.134436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557579, 29.020744, 22.987204>,  <41.370640, 29.275379, 22.741817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557579, 29.020744, 22.987204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691227, 0.169496, 0.702479,
		-0.551169, -0.752348, -0.360812,
		0.467352, -0.636587, 0.613464,
		41.697784, 28.829767, 23.171244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865959, 28.843058, 23.132702>,  <41.370640, 29.275379, 22.741817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865959, 28.843058, 23.132702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.201988, 28.789156, 23.342892>,  <41.403606, 28.756815, 23.469006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.201988, 28.789156, 23.342892>,  <40.865959, 28.843058, 23.132702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201988, 28.789156, 23.342892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535957, -0.056436, 0.842357,
		-0.083862, -0.989269, -0.119637,
		0.840070, -0.134762, 0.525473,
		41.454010, 28.748730, 23.500534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665718, 28.269234, 23.477514>,  <40.865959, 28.843058, 23.132702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665718, 28.269234, 23.477514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952682, 28.450760, 23.688938>,  <41.124859, 28.559675, 23.815792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952682, 28.450760, 23.688938>,  <40.665718, 28.269234, 23.477514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952682, 28.450760, 23.688938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589040, -0.009954, 0.808043,
		0.371965, -0.891039, 0.260176,
		0.717408, 0.453818, 0.528560,
		41.167904, 28.586905, 23.847506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723660, 27.908878, 24.140156>,  <40.665718, 28.269234, 23.477514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723660, 27.908878, 24.140156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.903339, 28.260546, 24.203760>,  <41.011147, 28.471546, 24.241922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.903339, 28.260546, 24.203760>,  <40.723660, 27.908878, 24.140156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903339, 28.260546, 24.203760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433314, 0.058735, 0.899327,
		0.781321, -0.472877, 0.407340,
		0.449196, 0.879169, 0.159013,
		41.038097, 28.524296, 24.251465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053471, 27.788649, 24.806206>,  <40.723660, 27.908878, 24.140156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053471, 27.788649, 24.806206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077244, 28.184807, 24.756266>,  <41.091507, 28.422501, 24.726301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.077244, 28.184807, 24.756266>,  <41.053471, 27.788649, 24.806206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077244, 28.184807, 24.756266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279326, 0.136572, 0.950434,
		0.958355, -0.021611, 0.284759,
		0.059430, 0.990395, -0.124848,
		41.095074, 28.481926, 24.718811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579369, 28.113667, 25.298981>,  <41.053471, 27.788649, 24.806206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579369, 28.113667, 25.298981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.322147, 28.398455, 25.186142>,  <41.167812, 28.569328, 25.118439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.322147, 28.398455, 25.186142>,  <41.579369, 28.113667, 25.298981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322147, 28.398455, 25.186142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199738, 0.199683, 0.959287,
		0.739313, 0.673221, 0.013800,
		-0.643056, 0.711970, -0.282096,
		41.129230, 28.612045, 25.101513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818317, 28.684843, 25.611406>,  <41.579369, 28.113667, 25.298981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818317, 28.684843, 25.611406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.425030, 28.733137, 25.556692>,  <41.189056, 28.762114, 25.523865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.425030, 28.733137, 25.556692>,  <41.818317, 28.684843, 25.611406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425030, 28.733137, 25.556692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104765, 0.240181, 0.965058,
		0.149370, 0.963190, -0.223501,
		-0.983216, 0.120736, -0.136785,
		41.130066, 28.769358, 25.515657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663357, 29.335329, 25.944166>,  <41.818317, 28.684843, 25.611406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663357, 29.335329, 25.944166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.306187, 29.159052, 25.907352>,  <41.091885, 29.053286, 25.885263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.306187, 29.159052, 25.907352>,  <41.663357, 29.335329, 25.944166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306187, 29.159052, 25.907352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258787, 0.335157, 0.905925,
		-0.368386, 0.832743, -0.413316,
		-0.892928, -0.440691, -0.092036,
		41.038307, 29.026844, 25.879742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226810, 29.796080, 26.249510>,  <41.663357, 29.335329, 25.944166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226810, 29.796080, 26.249510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.005928, 29.462645, 26.243795>,  <40.873398, 29.262585, 26.240366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.005928, 29.462645, 26.243795>,  <41.226810, 29.796080, 26.249510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005928, 29.462645, 26.243795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407455, 0.254887, 0.876934,
		-0.727358, 0.490069, -0.480398,
		-0.552206, -0.833586, -0.014287,
		40.840267, 29.212568, 26.239510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462563, 30.021076, 26.223064>,  <41.226810, 29.796080, 26.249510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462563, 30.021076, 26.223064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431892, 29.641773, 26.346308>,  <40.413490, 29.414192, 26.420254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.431892, 29.641773, 26.346308>,  <40.462563, 30.021076, 26.223064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431892, 29.641773, 26.346308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585962, 0.292877, 0.755560,
		-0.806703, -0.122607, -0.578099,
		-0.076675, -0.948256, 0.308108,
		40.408890, 29.357296, 26.438740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749878, 29.760555, 26.251764>,  <40.462563, 30.021076, 26.223064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749878, 29.760555, 26.251764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941254, 29.546322, 26.530117>,  <40.056080, 29.417782, 26.697128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941254, 29.546322, 26.530117>,  <39.749878, 29.760555, 26.251764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941254, 29.546322, 26.530117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601206, 0.377819, 0.704133,
		-0.640038, -0.755251, -0.141232,
		0.478438, -0.535582, 0.695881,
		40.084785, 29.385647, 26.738882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106136, 29.331009, 26.028399>,  <39.749878, 29.760555, 26.251764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106136, 29.331009, 26.028399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729034, 29.353121, 25.896849>,  <38.502773, 29.366388, 25.817919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729034, 29.353121, 25.896849>,  <39.106136, 29.331009, 26.028399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729034, 29.353121, 25.896849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271317, -0.446271, -0.852777,
		-0.193908, -0.893189, 0.405726,
		-0.942755, 0.055281, -0.328873,
		38.446209, 29.369705, 25.798187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986824, 28.662561, 25.613462>,  <39.106136, 29.331009, 26.028399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986824, 28.662561, 25.613462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729195, 28.951637, 25.513149>,  <38.574619, 29.125082, 25.452961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729195, 28.951637, 25.513149>,  <38.986824, 28.662561, 25.613462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729195, 28.951637, 25.513149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151662, -0.200692, -0.967844,
		-0.749781, -0.661394, 0.019655,
		-0.644071, 0.722690, -0.250784,
		38.535973, 29.168444, 25.437914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598335, 28.422743, 25.160492>,  <38.986824, 28.662561, 25.613462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598335, 28.422743, 25.160492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.532101, 28.808376, 25.077425>,  <38.492359, 29.039757, 25.027586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.532101, 28.808376, 25.077425>,  <38.598335, 28.422743, 25.160492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532101, 28.808376, 25.077425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181094, -0.177266, -0.967358,
		-0.969425, -0.197792, -0.145236,
		-0.165590, 0.964082, -0.207665,
		38.482422, 29.097601, 25.015125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247993, 28.389978, 24.583504>,  <38.598335, 28.422743, 25.160492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247993, 28.389978, 24.583504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368874, 28.771221, 24.577024>,  <38.441402, 28.999968, 24.573137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368874, 28.771221, 24.577024>,  <38.247993, 28.389978, 24.583504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368874, 28.771221, 24.577024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003574, -0.018128, -0.999829,
		-0.953238, 0.302089, -0.008884,
		0.302198, 0.953107, -0.016201,
		38.459534, 29.057154, 24.572165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848881, 28.674191, 24.081707>,  <38.247993, 28.389978, 24.583504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848881, 28.674191, 24.081707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166859, 28.915171, 24.110321>,  <38.357647, 29.059759, 24.127489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.166859, 28.915171, 24.110321>,  <37.848881, 28.674191, 24.081707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166859, 28.915171, 24.110321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034936, 0.072257, -0.996774,
		-0.605674, 0.794880, 0.036393,
		0.794945, 0.602449, 0.071534,
		38.405342, 29.095905, 24.131781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726799, 29.120964, 23.583569>,  <37.848881, 28.674191, 24.081707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726799, 29.120964, 23.583569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118679, 29.145000, 23.660065>,  <38.353809, 29.159422, 23.705961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118679, 29.145000, 23.660065>,  <37.726799, 29.120964, 23.583569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118679, 29.145000, 23.660065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195566, -0.077037, -0.977660,
		-0.044016, 0.995216, -0.087225,
		0.979702, 0.060091, 0.191239,
		38.412590, 29.163027, 23.717436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989960, 29.154142, 22.984640>,  <37.726799, 29.120964, 23.583569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989960, 29.154142, 22.984640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348175, 29.148058, 23.162531>,  <38.563103, 29.144407, 23.269264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348175, 29.148058, 23.162531>,  <37.989960, 29.154142, 22.984640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348175, 29.148058, 23.162531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436008, -0.169744, -0.883789,
		0.088934, 0.985371, -0.145379,
		0.895537, -0.015213, 0.444726,
		38.616837, 29.143494, 23.295948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822693, 29.848169, 22.593245>,  <37.989960, 29.154142, 22.984640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822693, 29.848169, 22.593245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512856, 29.827902, 22.341076>,  <37.326954, 29.815741, 22.189774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512856, 29.827902, 22.341076>,  <37.822693, 29.848169, 22.593245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512856, 29.827902, 22.341076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621407, 0.246482, 0.743707,
		0.117704, 0.967822, -0.222410,
		-0.774596, -0.050670, -0.630423,
		37.280476, 29.812700, 22.151949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458416, 30.447908, 22.666960>,  <37.822693, 29.848169, 22.593245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458416, 30.447908, 22.666960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211281, 30.171671, 22.516571>,  <37.063000, 30.005928, 22.426338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.211281, 30.171671, 22.516571>,  <37.458416, 30.447908, 22.666960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211281, 30.171671, 22.516571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612759, 0.123236, 0.780602,
		-0.492745, 0.712667, -0.499307,
		-0.617842, -0.690593, -0.375970,
		37.025928, 29.964493, 22.403780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751163, 30.750889, 22.615622>,  <37.458416, 30.447908, 22.666960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751163, 30.750889, 22.615622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687881, 30.356001, 22.623234>,  <36.649910, 30.119068, 22.627802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.687881, 30.356001, 22.623234>,  <36.751163, 30.750889, 22.615622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687881, 30.356001, 22.623234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755679, 0.133465, 0.641200,
		-0.635547, 0.087061, -0.767138,
		-0.158209, -0.987222, 0.019032,
		36.640419, 30.059834, 22.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976250, 30.702663, 22.633104>,  <36.751163, 30.750889, 22.615622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976250, 30.702663, 22.633104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.115868, 30.343666, 22.740934>,  <36.199638, 30.128267, 22.805632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.115868, 30.343666, 22.740934>,  <35.976250, 30.702663, 22.633104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115868, 30.343666, 22.740934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710556, -0.065923, 0.700546,
		-0.610966, -0.436068, -0.660731,
		0.349043, -0.897496, 0.269574,
		36.220581, 30.074417, 22.821806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430332, 30.293184, 22.867754>,  <35.976250, 30.702663, 22.633104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430332, 30.293184, 22.867754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741402, 30.120464, 23.050520>,  <35.928043, 30.016832, 23.160179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741402, 30.120464, 23.050520>,  <35.430332, 30.293184, 22.867754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741402, 30.120464, 23.050520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509154, -0.006283, 0.860653,
		-0.368760, -0.901947, -0.224739,
		0.777675, -0.431801, 0.456913,
		35.974705, 29.990925, 23.187593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172775, 29.662844, 23.346334>,  <35.430332, 30.293184, 22.867754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172775, 29.662844, 23.346334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535213, 29.773193, 23.474636>,  <35.752678, 29.839403, 23.551617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535213, 29.773193, 23.474636>,  <35.172775, 29.662844, 23.346334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535213, 29.773193, 23.474636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310542, -0.081200, 0.947085,
		0.287320, -0.957758, 0.012095,
		0.906096, 0.275873, 0.320754,
		35.807041, 29.855955, 23.570862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334282, 29.252920, 23.793730>,  <35.172775, 29.662844, 23.346334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334282, 29.252920, 23.793730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579655, 29.548920, 23.904081>,  <35.726879, 29.726519, 23.970291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.579655, 29.548920, 23.904081>,  <35.334282, 29.252920, 23.793730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579655, 29.548920, 23.904081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309635, -0.096000, 0.945997,
		0.726521, -0.665722, 0.170241,
		0.613428, 0.739999, 0.275877,
		35.763683, 29.770920, 23.986845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.919994, 31.481977, 21.501907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.247864, 31.396221, 21.714386>,  <42.444584, 31.344767, 21.841873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.247864, 31.396221, 21.714386>,  <41.919994, 31.481977, 21.501907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247864, 31.396221, 21.714386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510249, 0.148198, 0.847162,
		-0.260349, -0.965439, 0.012079,
		0.819674, -0.214394, 0.531197,
		42.493767, 31.331903, 21.873745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634262, 31.392920, 22.110117>,  <41.919994, 31.481977, 21.501907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634262, 31.392920, 22.110117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021568, 31.416430, 22.207287>,  <42.253952, 31.430536, 22.265589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.021568, 31.416430, 22.207287>,  <41.634262, 31.392920, 22.110117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021568, 31.416430, 22.207287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247971, 0.347479, 0.904306,
		-0.031261, -0.935844, 0.351026,
		0.968263, 0.058775, 0.242924,
		42.312046, 31.434063, 22.280165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600426, 31.239229, 22.773046>,  <41.634262, 31.392920, 22.110117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600426, 31.239229, 22.773046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.940731, 31.449228, 22.763405>,  <42.144913, 31.575228, 22.757620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.940731, 31.449228, 22.763405>,  <41.600426, 31.239229, 22.773046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940731, 31.449228, 22.763405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192549, 0.354047, 0.915191,
		0.489009, -0.773968, 0.402298,
		0.850761, 0.524999, -0.024105,
		42.195961, 31.606728, 22.756174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850559, 31.173256, 23.419420>,  <41.600426, 31.239229, 22.773046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850559, 31.173256, 23.419420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.037655, 31.501171, 23.287260>,  <42.149914, 31.697922, 23.207964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.037655, 31.501171, 23.287260>,  <41.850559, 31.173256, 23.419420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037655, 31.501171, 23.287260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253370, 0.482487, 0.838457,
		0.846773, -0.308464, 0.433388,
		0.467738, 0.819790, -0.330401,
		42.177975, 31.747108, 23.188139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232281, 31.451954, 23.946352>,  <41.850559, 31.173256, 23.419420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232281, 31.451954, 23.946352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178066, 31.759226, 23.696062>,  <42.145538, 31.943590, 23.545889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.178066, 31.759226, 23.696062>,  <42.232281, 31.451954, 23.946352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178066, 31.759226, 23.696062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175233, 0.603008, 0.778251,
		0.975153, 0.215127, 0.052882,
		-0.135535, 0.768181, -0.625723,
		42.137405, 31.989679, 23.508345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528656, 31.992325, 24.332092>,  <42.232281, 31.451954, 23.946352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528656, 31.992325, 24.332092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.311359, 32.177067, 24.051641>,  <42.180981, 32.287910, 23.883371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.311359, 32.177067, 24.051641>,  <42.528656, 31.992325, 24.332092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311359, 32.177067, 24.051641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309592, 0.666050, 0.678623,
		0.780412, 0.585718, -0.218838,
		-0.543239, 0.461856, -0.701128,
		42.148388, 32.315624, 23.841303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572956, 32.780758, 24.459112>,  <42.528656, 31.992325, 24.332092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572956, 32.780758, 24.459112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.241581, 32.728355, 24.241295>,  <42.042755, 32.696915, 24.110605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.241581, 32.728355, 24.241295>,  <42.572956, 32.780758, 24.459112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241581, 32.728355, 24.241295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423316, 0.783080, 0.455620,
		0.366731, 0.607967, -0.704190,
		-0.828439, -0.131005, -0.544542,
		41.993050, 32.689053, 24.077932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312019, 33.408665, 24.225786>,  <42.572956, 32.780758, 24.459112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312019, 33.408665, 24.225786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.989098, 33.180683, 24.164577>,  <41.795345, 33.043896, 24.127853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.989098, 33.180683, 24.164577>,  <42.312019, 33.408665, 24.225786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989098, 33.180683, 24.164577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570323, 0.686897, 0.450449,
		-0.151624, 0.450921, -0.879591,
		-0.807305, -0.569950, -0.153020,
		41.746906, 33.009697, 24.118671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773495, 33.933975, 24.029160>,  <42.312019, 33.408665, 24.225786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773495, 33.933975, 24.029160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.557064, 33.605309, 24.100821>,  <41.427208, 33.408108, 24.143818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.557064, 33.605309, 24.100821>,  <41.773495, 33.933975, 24.029160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557064, 33.605309, 24.100821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672369, 0.550622, 0.494707,
		-0.505132, 0.147217, -0.850393,
		-0.541075, -0.821671, 0.179152,
		41.394741, 33.358807, 24.154566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041531, 34.123196, 23.730299>,  <41.773495, 33.933975, 24.029160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041531, 34.123196, 23.730299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009212, 33.840286, 24.011221>,  <40.989822, 33.670540, 24.179775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.009212, 33.840286, 24.011221>,  <41.041531, 34.123196, 23.730299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009212, 33.840286, 24.011221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772158, 0.489965, 0.404605,
		-0.630273, -0.509604, -0.585713,
		-0.080791, -0.707275, 0.702307,
		40.984974, 33.628105, 24.221912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309956, 34.028469, 23.828188>,  <41.041531, 34.123196, 23.730299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309956, 34.028469, 23.828188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483448, 33.894512, 24.162786>,  <40.587543, 33.814137, 24.363544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.483448, 33.894512, 24.162786>,  <40.309956, 34.028469, 23.828188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483448, 33.894512, 24.162786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557016, 0.630064, 0.541066,
		-0.708245, -0.700618, 0.086738,
		0.433731, -0.334893, 0.836496,
		40.613567, 33.794044, 24.413734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729454, 34.012432, 24.330107>,  <40.309956, 34.028469, 23.828188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729454, 34.012432, 24.330107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.063732, 34.016853, 24.549742>,  <40.264297, 34.019508, 24.681522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.063732, 34.016853, 24.549742>,  <39.729454, 34.012432, 24.330107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063732, 34.016853, 24.549742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464210, 0.548484, 0.695467,
		-0.293477, -0.836088, 0.463496,
		0.835692, 0.011056, 0.549088,
		40.314438, 34.020172, 24.714468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084362, 33.769672, 24.452976>,  <39.729454, 34.012432, 24.330107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084362, 33.769672, 24.452976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.719299, 33.877708, 24.330267>,  <38.500263, 33.942528, 24.256641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.719299, 33.877708, 24.330267>,  <39.084362, 33.769672, 24.452976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719299, 33.877708, 24.330267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278551, -0.138252, -0.950419,
		-0.299110, -0.952858, 0.050943,
		-0.912657, 0.270089, -0.306773,
		38.445503, 33.958736, 24.238235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736835, 33.170513, 23.983334>,  <39.084362, 33.769672, 24.452976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736835, 33.170513, 23.983334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558887, 33.516617, 23.890884>,  <38.452118, 33.724277, 23.835415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.558887, 33.516617, 23.890884>,  <38.736835, 33.170513, 23.983334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558887, 33.516617, 23.890884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065678, -0.225853, -0.971945,
		-0.893186, -0.447565, 0.043646,
		-0.444866, 0.865261, -0.231124,
		38.425426, 33.776196, 23.821547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139977, 32.973896, 23.484575>,  <38.736835, 33.170513, 23.983334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139977, 32.973896, 23.484575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230015, 33.360397, 23.434483>,  <38.284039, 33.592300, 23.404427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230015, 33.360397, 23.434483>,  <38.139977, 32.973896, 23.484575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230015, 33.360397, 23.434483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134542, -0.158121, -0.978211,
		-0.965003, 0.203341, -0.165594,
		0.225094, 0.966256, -0.125230,
		38.297543, 33.650272, 23.396914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771084, 33.190140, 22.940823>,  <38.139977, 32.973896, 23.484575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771084, 33.190140, 22.940823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070919, 33.454899, 22.939493>,  <38.250820, 33.613754, 22.938696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.070919, 33.454899, 22.939493>,  <37.771084, 33.190140, 22.940823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070919, 33.454899, 22.939493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104783, -0.123622, -0.986782,
		-0.653562, 0.739328, -0.162021,
		0.749585, 0.661900, -0.003326,
		38.295795, 33.653469, 22.938496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596035, 33.650169, 22.453207>,  <37.771084, 33.190140, 22.940823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596035, 33.650169, 22.453207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989719, 33.703548, 22.499704>,  <38.225929, 33.735577, 22.527603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.989719, 33.703548, 22.499704>,  <37.596035, 33.650169, 22.453207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989719, 33.703548, 22.499704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142300, -0.206198, -0.968108,
		-0.105219, 0.969368, -0.221932,
		0.984215, 0.133444, 0.116245,
		38.284985, 33.743580, 22.534578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718025, 34.018494, 21.886761>,  <37.596035, 33.650169, 22.453207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718025, 34.018494, 21.886761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085514, 33.902222, 21.993687>,  <38.306007, 33.832458, 22.057842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085514, 33.902222, 21.993687>,  <37.718025, 34.018494, 21.886761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085514, 33.902222, 21.993687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119742, -0.439986, -0.889986,
		0.376317, 0.849657, -0.369418,
		0.918721, -0.290682, 0.267313,
		38.361130, 33.815018, 22.073881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199986, 34.338665, 21.356256>,  <37.718025, 34.018494, 21.886761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199986, 34.338665, 21.356256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354019, 34.022915, 21.547504>,  <38.446438, 33.833466, 21.662252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.354019, 34.022915, 21.547504>,  <38.199986, 34.338665, 21.356256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354019, 34.022915, 21.547504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207573, -0.430714, -0.878293,
		0.899235, 0.437461, -0.002008,
		0.385084, -0.789375, 0.478118,
		38.469543, 33.786102, 21.690939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665543, 34.153164, 20.861547>,  <38.199986, 34.338665, 21.356256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665543, 34.153164, 20.861547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658592, 33.845123, 21.116621>,  <38.654423, 33.660297, 21.269665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658592, 33.845123, 21.116621>,  <38.665543, 34.153164, 20.861547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658592, 33.845123, 21.116621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288358, -0.614541, -0.734295,
		0.957365, 0.171120, 0.232744,
		-0.017378, -0.770102, 0.637684,
		38.653378, 33.614094, 21.307926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299225, 33.784847, 20.789583>,  <38.665543, 34.153164, 20.861547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299225, 33.784847, 20.789583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.047119, 33.516285, 20.945522>,  <38.895855, 33.355148, 21.039085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.047119, 33.516285, 20.945522>,  <39.299225, 33.784847, 20.789583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047119, 33.516285, 20.945522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436805, -0.721772, -0.536886,
		0.641850, -0.168093, 0.748180,
		-0.630262, -0.671409, 0.389846,
		38.858040, 33.314861, 21.062475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655529, 33.133133, 21.190540>,  <39.299225, 33.784847, 20.789583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655529, 33.133133, 21.190540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306355, 33.061543, 21.009016>,  <39.096848, 33.018589, 20.900101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306355, 33.061543, 21.009016>,  <39.655529, 33.133133, 21.190540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306355, 33.061543, 21.009016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419297, -0.750741, -0.510467,
		-0.249332, -0.635889, 0.730397,
		-0.872939, -0.178978, -0.453810,
		39.044472, 33.007851, 20.872873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845856, 32.630703, 20.765930>,  <39.655529, 33.133133, 21.190540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845856, 32.630703, 20.765930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.460762, 32.653927, 20.660273>,  <39.229706, 32.667862, 20.596878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.460762, 32.653927, 20.660273>,  <39.845856, 32.630703, 20.765930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460762, 32.653927, 20.660273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162361, -0.657024, -0.736178,
		-0.216291, -0.751631, 0.623112,
		-0.962734, 0.058060, -0.264144,
		39.171944, 32.671345, 20.581030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588982, 31.942057, 20.651489>,  <39.845856, 32.630703, 20.765930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588982, 31.942057, 20.651489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.345497, 32.183239, 20.445219>,  <39.199406, 32.327950, 20.321457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.345497, 32.183239, 20.445219>,  <39.588982, 31.942057, 20.651489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345497, 32.183239, 20.445219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053904, -0.679888, -0.731332,
		-0.791561, -0.417371, 0.446354,
		-0.608708, 0.602954, -0.515675,
		39.162884, 32.364124, 20.290516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940563, 31.505816, 20.427990>,  <39.588982, 31.942057, 20.651489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940563, 31.505816, 20.427990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.989048, 31.793167, 20.153986>,  <39.018139, 31.965578, 19.989584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.989048, 31.793167, 20.153986>,  <38.940563, 31.505816, 20.427990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989048, 31.793167, 20.153986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036716, -0.686381, -0.726315,
		-0.991948, 0.113186, -0.056819,
		0.121208, 0.718381, -0.685009,
		39.025410, 32.008682, 19.948483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019646, 31.131561, 19.816763>,  <38.940563, 31.505816, 20.427990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019646, 31.131561, 19.816763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956776, 30.781078, 19.634529>,  <38.919056, 30.570789, 19.525188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956776, 30.781078, 19.634529>,  <39.019646, 31.131561, 19.816763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956776, 30.781078, 19.634529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648339, -0.256437, 0.716866,
		-0.744952, 0.408044, -0.527775,
		-0.157172, -0.876208, -0.455584,
		38.909622, 30.518215, 19.497854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300980, 31.014624, 19.739523>,  <39.019646, 31.131561, 19.816763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300980, 31.014624, 19.739523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.476437, 30.655210, 19.733404>,  <38.581711, 30.439562, 19.729733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.476437, 30.655210, 19.733404>,  <38.300980, 31.014624, 19.739523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476437, 30.655210, 19.733404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547328, -0.280616, 0.788471,
		-0.712760, -0.337482, -0.614882,
		0.438640, -0.898533, -0.015298,
		38.608028, 30.385651, 19.728815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722469, 30.524126, 19.776676>,  <38.300980, 31.014624, 19.739523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722469, 30.524126, 19.776676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049530, 30.335480, 19.908752>,  <38.245766, 30.222292, 19.987999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049530, 30.335480, 19.908752>,  <37.722469, 30.524126, 19.776676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049530, 30.335480, 19.908752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514682, -0.341801, 0.786305,
		-0.257975, -0.812865, -0.522206,
		0.817650, -0.471616, 0.330191,
		38.294827, 30.193995, 20.007811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520496, 29.882803, 19.728607>,  <37.722469, 30.524126, 19.776676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520496, 29.882803, 19.728607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.836575, 29.874275, 19.973598>,  <38.026222, 29.869158, 20.120594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.836575, 29.874275, 19.973598>,  <37.520496, 29.882803, 19.728607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836575, 29.874275, 19.973598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527637, -0.532040, 0.662218,
		0.311745, -0.846451, -0.431666,
		0.790199, -0.021319, 0.612480,
		38.073635, 29.867880, 20.157343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619598, 29.218107, 19.978001>,  <37.520496, 29.882803, 19.728607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619598, 29.218107, 19.978001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813931, 29.426414, 20.258789>,  <37.930531, 29.551399, 20.427261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813931, 29.426414, 20.258789>,  <37.619598, 29.218107, 19.978001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813931, 29.426414, 20.258789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495658, -0.497352, 0.712014,
		0.719923, -0.693859, 0.016493,
		0.485834, 0.520770, 0.701972,
		37.959682, 29.582645, 20.469381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686291, 28.826916, 20.700405>,  <37.619598, 29.218107, 19.978001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686291, 28.826916, 20.700405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.742035, 29.209620, 20.802536>,  <37.775482, 29.439241, 20.863815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.742035, 29.209620, 20.802536>,  <37.686291, 28.826916, 20.700405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742035, 29.209620, 20.802536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631878, -0.112607, 0.766844,
		0.762436, -0.268206, 0.588861,
		0.139362, 0.956758, 0.255329,
		37.783844, 29.496647, 20.879135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933388, 28.825624, 21.465979>,  <37.686291, 28.826916, 20.700405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933388, 28.825624, 21.465979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765312, 29.183004, 21.402489>,  <37.664467, 29.397432, 21.364395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.765312, 29.183004, 21.402489>,  <37.933388, 28.825624, 21.465979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765312, 29.183004, 21.402489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489291, -0.075761, 0.868824,
		0.764224, 0.442730, 0.468990,
		-0.420186, 0.893449, -0.158725,
		37.639256, 29.451038, 21.354872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019344, 29.269545, 22.046804>,  <37.933388, 28.825624, 21.465979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019344, 29.269545, 22.046804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.703407, 29.424974, 21.857000>,  <37.513844, 29.518232, 21.743118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.703407, 29.424974, 21.857000>,  <38.019344, 29.269545, 22.046804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703407, 29.424974, 21.857000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502878, 0.032576, 0.863743,
		0.351088, 0.920841, 0.169676,
		-0.789842, 0.388576, -0.474508,
		37.466454, 29.541548, 21.714647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507973, 29.658096, 22.601717>,  <38.019344, 29.269545, 22.046804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507973, 29.658096, 22.601717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686985, 29.352270, 22.787254>,  <38.794392, 29.168774, 22.898577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686985, 29.352270, 22.787254>,  <38.507973, 29.658096, 22.601717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686985, 29.352270, 22.787254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312475, -0.352291, -0.882185,
		0.837897, 0.539748, 0.081245,
		0.447535, -0.764567, 0.463842,
		38.821247, 29.122900, 22.926407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135059, 29.669374, 22.284273>,  <38.507973, 29.658096, 22.601717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135059, 29.669374, 22.284273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.112854, 29.305168, 22.448166>,  <39.099529, 29.086645, 22.546501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.112854, 29.305168, 22.448166>,  <39.135059, 29.669374, 22.284273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112854, 29.305168, 22.448166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596650, -0.359290, -0.717579,
		0.800579, 0.204632, 0.563204,
		-0.055514, -0.910514, 0.409734,
		39.096199, 29.032013, 22.571087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904137, 29.433475, 22.095589>,  <39.135059, 29.669374, 22.284273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904137, 29.433475, 22.095589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.703476, 29.113981, 22.228476>,  <39.583080, 28.922285, 22.308208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.703476, 29.113981, 22.228476>,  <39.904137, 29.433475, 22.095589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703476, 29.113981, 22.228476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608991, -0.598823, -0.520135,
		0.614389, -0.058610, 0.786823,
		-0.501653, -0.798734, 0.332217,
		39.552979, 28.874361, 22.328140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386784, 28.937069, 22.373692>,  <39.904137, 29.433475, 22.095589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386784, 28.937069, 22.373692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.063828, 28.736221, 22.249758>,  <39.870052, 28.615713, 22.175398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.063828, 28.736221, 22.249758>,  <40.386784, 28.937069, 22.373692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063828, 28.736221, 22.249758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568109, -0.519822, -0.637995,
		0.159291, -0.691131, 0.704957,
		-0.807390, -0.502119, -0.309834,
		39.821609, 28.585585, 22.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598797, 28.221060, 22.351486>,  <40.386784, 28.937069, 22.373692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598797, 28.221060, 22.351486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.280426, 28.272053, 22.114759>,  <40.089405, 28.302649, 21.972723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.280426, 28.272053, 22.114759>,  <40.598797, 28.221060, 22.351486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280426, 28.272053, 22.114759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525024, -0.341356, -0.779632,
		-0.301407, -0.931249, 0.204765,
		-0.795929, 0.127480, -0.591815,
		40.041649, 28.310297, 21.937214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499420, 27.630470, 22.053534>,  <40.598797, 28.221060, 22.351486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499420, 27.630470, 22.053534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329704, 27.892698, 21.803667>,  <40.227875, 28.050035, 21.653748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.329704, 27.892698, 21.803667>,  <40.499420, 27.630470, 22.053534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329704, 27.892698, 21.803667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521947, -0.386658, -0.760307,
		-0.739968, -0.648630, -0.178120,
		-0.424287, 0.655571, -0.624665,
		40.202419, 28.089371, 21.616268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250278, 27.138697, 21.490332>,  <40.499420, 27.630470, 22.053534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250278, 27.138697, 21.490332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203575, 27.503286, 21.332554>,  <40.175552, 27.722040, 21.237886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.203575, 27.503286, 21.332554>,  <40.250278, 27.138697, 21.490332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203575, 27.503286, 21.332554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504323, -0.287733, -0.814167,
		-0.855585, -0.293987, -0.426082,
		-0.116757, 0.911472, -0.394444,
		40.168549, 27.776728, 21.214220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010674, 26.994860, 20.784773>,  <40.250278, 27.138697, 21.490332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010674, 26.994860, 20.784773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161751, 27.364218, 20.812162>,  <40.252399, 27.585833, 20.828596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.161751, 27.364218, 20.812162>,  <40.010674, 26.994860, 20.784773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161751, 27.364218, 20.812162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464793, -0.125114, -0.876535,
		-0.800820, 0.362892, -0.476442,
		0.377697, 0.923394, 0.068476,
		40.275059, 27.641235, 20.832705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337109, 26.940901, 20.479954>,  <40.010674, 26.994860, 20.784773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337109, 26.940901, 20.479954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074646, 27.018425, 20.188231>,  <38.917168, 27.064939, 20.013197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.074646, 27.018425, 20.188231>,  <39.337109, 26.940901, 20.479954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074646, 27.018425, 20.188231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475430, -0.856700, 0.200080,
		-0.586022, 0.478020, 0.654275,
		-0.656159, 0.193811, -0.729310,
		38.877800, 27.076569, 19.969437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.219387, 31.302092, 34.865696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595634, 31.413979, 34.942638>,  <34.821381, 31.481112, 34.988804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595634, 31.413979, 34.942638>,  <34.219387, 31.302092, 34.865696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595634, 31.413979, 34.942638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281206, -0.324571, -0.903093,
		-0.190178, 0.903555, -0.383954,
		0.940615, 0.279719, 0.192359,
		34.877819, 31.497894, 35.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334076, 31.799465, 34.360912>,  <34.219387, 31.302092, 34.865696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334076, 31.799465, 34.360912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705093, 31.695208, 34.468044>,  <34.927704, 31.632654, 34.532326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705093, 31.695208, 34.468044>,  <34.334076, 31.799465, 34.360912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705093, 31.695208, 34.468044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239043, -0.137120, -0.961279,
		0.287275, 0.955648, -0.064879,
		0.927540, -0.260643, 0.267832,
		34.983356, 31.617014, 34.548393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835030, 32.256500, 33.950981>,  <34.334076, 31.799465, 34.360912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835030, 32.256500, 33.950981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052898, 31.946058, 34.078098>,  <35.183620, 31.759792, 34.154369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052898, 31.946058, 34.078098>,  <34.835030, 32.256500, 33.950981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052898, 31.946058, 34.078098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235646, -0.222040, -0.946134,
		0.804865, 0.590216, 0.061949,
		0.544668, -0.776108, 0.317794,
		35.216297, 31.713226, 34.173435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423519, 32.307583, 33.647068>,  <34.835030, 32.256500, 33.950981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423519, 32.307583, 33.647068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377026, 31.919916, 33.733974>,  <35.349129, 31.687315, 33.786118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377026, 31.919916, 33.733974>,  <35.423519, 32.307583, 33.647068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377026, 31.919916, 33.733974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275752, -0.241634, -0.930362,
		0.954176, -0.048225, 0.295335,
		-0.116230, -0.969168, 0.217263,
		35.342155, 31.629166, 33.799152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134247, 31.953819, 33.507088>,  <35.423519, 32.307583, 33.647068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134247, 31.953819, 33.507088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870842, 31.652872, 33.500134>,  <35.712799, 31.472303, 33.495960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.870842, 31.652872, 33.500134>,  <36.134247, 31.953819, 33.507088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870842, 31.652872, 33.500134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322871, -0.261580, -0.909577,
		0.679790, -0.604580, 0.415172,
		-0.658513, -0.752369, -0.017382,
		35.673286, 31.427162, 33.494919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470222, 31.398260, 33.152729>,  <36.134247, 31.953819, 33.507088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470222, 31.398260, 33.152729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079037, 31.319565, 33.124767>,  <35.844326, 31.272346, 33.107990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079037, 31.319565, 33.124767>,  <36.470222, 31.398260, 33.152729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079037, 31.319565, 33.124767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153362, -0.449712, -0.879909,
		0.141678, -0.871236, 0.469973,
		-0.977961, -0.196740, -0.069900,
		35.785648, 31.260544, 33.103798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436638, 30.601805, 32.920536>,  <36.470222, 31.398260, 33.152729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436638, 30.601805, 32.920536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083847, 30.778252, 32.854172>,  <35.872173, 30.884119, 32.814354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083847, 30.778252, 32.854172>,  <36.436638, 30.601805, 32.920536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083847, 30.778252, 32.854172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019363, -0.317817, -0.947954,
		-0.470888, -0.839290, 0.271767,
		-0.881980, 0.441118, -0.165907,
		35.819252, 30.910587, 32.804401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002594, 30.132328, 32.609352>,  <36.436638, 30.601805, 32.920536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002594, 30.132328, 32.609352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818611, 30.479513, 32.534431>,  <35.708221, 30.687824, 32.489479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.818611, 30.479513, 32.534431>,  <36.002594, 30.132328, 32.609352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818611, 30.479513, 32.534431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062620, -0.242120, -0.968224,
		-0.885732, -0.433609, 0.165716,
		-0.459954, 0.867964, -0.187300,
		35.680626, 30.739902, 32.478241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380898, 29.971874, 32.179451>,  <36.002594, 30.132328, 32.609352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380898, 29.971874, 32.179451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473980, 30.355114, 32.112644>,  <35.529831, 30.585058, 32.072559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473980, 30.355114, 32.112644>,  <35.380898, 29.971874, 32.179451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473980, 30.355114, 32.112644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053656, -0.158827, -0.985848,
		-0.971066, 0.238376, 0.014447,
		0.232707, 0.958098, -0.167021,
		35.543793, 30.642544, 32.062538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869873, 30.259846, 31.625475>,  <35.380898, 29.971874, 32.179451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869873, 30.259846, 31.625475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199535, 30.486387, 31.624126>,  <35.397331, 30.622313, 31.623318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199535, 30.486387, 31.624126>,  <34.869873, 30.259846, 31.625475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199535, 30.486387, 31.624126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090385, -0.137397, -0.986384,
		-0.559105, 0.812629, -0.164427,
		0.824156, 0.566353, -0.003370,
		35.446781, 30.656294, 31.623116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836636, 30.621117, 30.970352>,  <34.869873, 30.259846, 31.625475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836636, 30.621117, 30.970352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219463, 30.664423, 31.077904>,  <35.449162, 30.690407, 31.142435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219463, 30.664423, 31.077904>,  <34.836636, 30.621117, 30.970352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219463, 30.664423, 31.077904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273558, -0.030700, -0.961365,
		-0.095827, 0.993648, -0.058998,
		0.957070, 0.108264, 0.268879,
		35.506584, 30.696903, 31.158567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144772, 31.147608, 30.482632>,  <34.836636, 30.621117, 30.970352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144772, 31.147608, 30.482632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441647, 30.941183, 30.653671>,  <35.619770, 30.817327, 30.756294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441647, 30.941183, 30.653671>,  <35.144772, 31.147608, 30.482632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441647, 30.941183, 30.653671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435921, -0.112889, -0.892877,
		0.509050, 0.849080, 0.141177,
		0.742186, -0.516061, 0.427598,
		35.664303, 30.786366, 30.781950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853638, 31.707821, 30.018646>,  <35.144772, 31.147608, 30.482632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853638, 31.707821, 30.018646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497398, 31.562353, 29.909405>,  <34.283657, 31.475073, 29.843859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497398, 31.562353, 29.909405>,  <34.853638, 31.707821, 30.018646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497398, 31.562353, 29.909405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381297, 0.269733, 0.884226,
		-0.247901, 0.891621, -0.378889,
		-0.890594, -0.363670, -0.273105,
		34.230221, 31.453253, 29.827473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276470, 32.221546, 30.218292>,  <34.853638, 31.707821, 30.018646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276470, 32.221546, 30.218292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095760, 31.866806, 30.179533>,  <33.987335, 31.653961, 30.156279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095760, 31.866806, 30.179533>,  <34.276470, 32.221546, 30.218292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095760, 31.866806, 30.179533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551299, 0.192136, 0.811883,
		-0.701403, 0.420211, -0.575723,
		-0.451779, -0.886852, -0.096897,
		33.960228, 31.600750, 30.150463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544285, 32.324379, 30.138292>,  <34.276470, 32.221546, 30.218292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544285, 32.324379, 30.138292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618092, 31.951843, 30.263866>,  <33.662376, 31.728321, 30.339211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618092, 31.951843, 30.263866>,  <33.544285, 32.324379, 30.138292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618092, 31.951843, 30.263866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563071, 0.161630, 0.810448,
		-0.805546, -0.326308, -0.494589,
		0.184515, -0.931343, 0.313935,
		33.673447, 31.672440, 30.358047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872910, 32.206387, 30.552916>,  <33.544285, 32.324379, 30.138292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872910, 32.206387, 30.552916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086899, 31.891989, 30.676859>,  <33.215294, 31.703350, 30.751225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086899, 31.891989, 30.676859>,  <32.872910, 32.206387, 30.552916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086899, 31.891989, 30.676859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516550, -0.014070, 0.856141,
		-0.668562, -0.618074, -0.413532,
		0.534977, -0.785994, 0.309859,
		33.247391, 31.656191, 30.769817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380161, 31.826223, 30.912031>,  <32.872910, 32.206387, 30.552916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380161, 31.826223, 30.912031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737289, 31.694973, 31.035452>,  <32.951565, 31.616222, 31.109505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.737289, 31.694973, 31.035452>,  <32.380161, 31.826223, 30.912031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737289, 31.694973, 31.035452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304454, 0.065197, 0.950293,
		-0.331933, -0.942381, -0.041690,
		0.892821, -0.328126, 0.308553,
		33.005135, 31.596535, 31.128017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316704, 31.390963, 31.381506>,  <32.380161, 31.826223, 30.912031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316704, 31.390963, 31.381506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695854, 31.477924, 31.474680>,  <32.923344, 31.530102, 31.530584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695854, 31.477924, 31.474680>,  <32.316704, 31.390963, 31.381506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695854, 31.477924, 31.474680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250167, 0.055040, 0.966637,
		0.197331, -0.974528, 0.106559,
		0.947880, 0.217405, 0.232934,
		32.980217, 31.543146, 31.544559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546970, 30.962128, 31.867983>,  <32.316704, 31.390963, 31.381506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546970, 30.962128, 31.867983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775654, 31.289131, 31.895794>,  <32.912865, 31.485332, 31.912481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775654, 31.289131, 31.895794>,  <32.546970, 30.962128, 31.867983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775654, 31.289131, 31.895794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308194, 0.135445, 0.941632,
		0.760374, -0.559764, 0.329386,
		0.571705, 0.817508, 0.069528,
		32.947166, 31.534384, 31.916653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014484, 30.828648, 32.418186>,  <32.546970, 30.962128, 31.867983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014484, 30.828648, 32.418186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977638, 31.224869, 32.377552>,  <32.955532, 31.462601, 32.353172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977638, 31.224869, 32.377552>,  <33.014484, 30.828648, 32.418186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977638, 31.224869, 32.377552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077427, 0.094587, 0.992501,
		0.992734, 0.099288, 0.067982,
		-0.092113, 0.990553, -0.101587,
		32.950005, 31.522036, 32.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275848, 31.076757, 33.007881>,  <33.014484, 30.828648, 32.418186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275848, 31.076757, 33.007881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083912, 31.396378, 32.862957>,  <32.968750, 31.588150, 32.776001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083912, 31.396378, 32.862957>,  <33.275848, 31.076757, 33.007881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083912, 31.396378, 32.862957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025642, 0.400012, 0.916151,
		0.876981, 0.448896, -0.171452,
		-0.479839, 0.799051, -0.362314,
		32.939960, 31.636093, 32.754261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556248, 31.606695, 33.411083>,  <33.275848, 31.076757, 33.007881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556248, 31.606695, 33.411083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200989, 31.737835, 33.282269>,  <32.987831, 31.816519, 33.204979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200989, 31.737835, 33.282269>,  <33.556248, 31.606695, 33.411083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200989, 31.737835, 33.282269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145972, 0.463201, 0.874149,
		0.435754, 0.823383, -0.363535,
		-0.888150, 0.327848, -0.322033,
		32.934544, 31.836189, 33.185658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504688, 32.399368, 33.577839>,  <33.556248, 31.606695, 33.411083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504688, 32.399368, 33.577839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118324, 32.323738, 33.507114>,  <32.886505, 32.278358, 33.464680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118324, 32.323738, 33.507114>,  <33.504688, 32.399368, 33.577839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118324, 32.323738, 33.507114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243179, 0.428585, 0.870160,
		-0.088749, 0.883496, -0.459956,
		-0.965913, -0.189078, -0.176810,
		32.828552, 32.267014, 33.454071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208164, 32.996635, 33.708199>,  <33.504688, 32.399368, 33.577839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208164, 32.996635, 33.708199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.931877, 32.711723, 33.758114>,  <32.766106, 32.540775, 33.788063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.931877, 32.711723, 33.758114>,  <33.208164, 32.996635, 33.708199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931877, 32.711723, 33.758114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181714, 0.337994, 0.923440,
		-0.699924, 0.615158, -0.362888,
		-0.690715, -0.712279, 0.124787,
		32.724663, 32.498039, 33.795551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565727, 33.367279, 33.921539>,  <33.208164, 32.996635, 33.708199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565727, 33.367279, 33.921539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490677, 32.988541, 34.026062>,  <32.445648, 32.761299, 34.088776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.490677, 32.988541, 34.026062>,  <32.565727, 33.367279, 33.921539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490677, 32.988541, 34.026062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377240, 0.315091, 0.870866,
		-0.906911, 0.064818, -0.416306,
		-0.187622, -0.946846, 0.261307,
		32.434391, 32.704487, 34.104454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948936, 33.365833, 34.302303>,  <32.565727, 33.367279, 33.921539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948936, 33.365833, 34.302303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130817, 33.020538, 34.390003>,  <32.239944, 32.813362, 34.442623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130817, 33.020538, 34.390003>,  <31.948936, 33.365833, 34.302303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130817, 33.020538, 34.390003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203662, 0.138867, 0.969143,
		-0.867046, -0.485322, -0.112666,
		0.454700, -0.863238, 0.219246,
		32.267227, 32.761566, 34.455776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045635, 33.715874, 33.532108>,  <31.948936, 33.365833, 34.302303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045635, 33.715874, 33.532108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062840, 34.033104, 33.775146>,  <32.073162, 34.223442, 33.920971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062840, 34.033104, 33.775146>,  <32.045635, 33.715874, 33.532108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062840, 34.033104, 33.775146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070727, 0.604217, -0.793675,
		-0.996568, 0.077114, -0.030101,
		0.043015, 0.793080, 0.607597,
		32.075745, 34.271027, 33.957424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039898, 33.910179, 32.769276>,  <32.045635, 33.715874, 33.532108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039898, 33.910179, 32.769276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296234, 34.172058, 32.929623>,  <32.450035, 34.329185, 33.025829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.296234, 34.172058, 32.929623>,  <32.039898, 33.910179, 32.769276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296234, 34.172058, 32.929623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266369, 0.300101, -0.915962,
		-0.719981, 0.693762, 0.017925,
		0.640839, 0.654701, 0.400864,
		32.488487, 34.368469, 33.049881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959211, 34.647511, 32.460114>,  <32.039898, 33.910179, 32.769276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959211, 34.647511, 32.460114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332554, 34.576897, 32.585129>,  <32.556561, 34.534527, 32.660137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332554, 34.576897, 32.585129>,  <31.959211, 34.647511, 32.460114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332554, 34.576897, 32.585129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354220, 0.312040, -0.881566,
		0.058103, 0.933523, 0.353777,
		0.933355, -0.176537, 0.312542,
		32.612560, 34.523937, 32.678890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330139, 35.294498, 32.270596>,  <31.959211, 34.647511, 32.460114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330139, 35.294498, 32.270596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592255, 34.997150, 32.324265>,  <32.749523, 34.818741, 32.356468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592255, 34.997150, 32.324265>,  <32.330139, 35.294498, 32.270596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592255, 34.997150, 32.324265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478866, 0.271434, -0.834872,
		0.584198, 0.611331, 0.533841,
		0.655286, -0.743369, 0.134174,
		32.788841, 34.774139, 32.364517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001881, 35.575287, 31.970427>,  <32.330139, 35.294498, 32.270596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001881, 35.575287, 31.970427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098373, 35.189800, 32.016140>,  <33.156269, 34.958508, 32.043568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098373, 35.189800, 32.016140>,  <33.001881, 35.575287, 31.970427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098373, 35.189800, 32.016140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514586, 0.027180, -0.857008,
		0.822805, 0.265547, 0.502471,
		0.241233, -0.963715, 0.114283,
		33.170742, 34.900684, 32.050426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707603, 35.653408, 31.946003>,  <33.001881, 35.575287, 31.970427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707603, 35.653408, 31.946003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611443, 35.277367, 31.849321>,  <33.553745, 35.051743, 31.791313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611443, 35.277367, 31.849321>,  <33.707603, 35.653408, 31.946003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611443, 35.277367, 31.849321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571964, 0.063991, -0.817779,
		0.784261, -0.334839, 0.522320,
		-0.240401, -0.940100, -0.241702,
		33.539322, 34.995338, 31.776812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319489, 35.352200, 31.765179>,  <33.707603, 35.653408, 31.946003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319489, 35.352200, 31.765179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047256, 35.102657, 31.611502>,  <33.883915, 34.952930, 31.519295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.047256, 35.102657, 31.611502>,  <34.319489, 35.352200, 31.765179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047256, 35.102657, 31.611502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539095, -0.071292, -0.839222,
		0.496166, -0.778279, 0.384840,
		-0.680585, -0.623859, -0.384194,
		33.843082, 34.915501, 31.496244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612457, 34.719521, 31.496094>,  <34.319489, 35.352200, 31.765179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612457, 34.719521, 31.496094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265446, 34.773964, 31.304729>,  <34.057240, 34.806629, 31.189911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.265446, 34.773964, 31.304729>,  <34.612457, 34.719521, 31.496094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265446, 34.773964, 31.304729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484950, 0.017648, -0.874364,
		-0.110565, -0.990537, -0.081316,
		-0.867525, 0.136108, -0.478409,
		34.005188, 34.814796, 31.161207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566311, 34.229668, 30.999743>,  <34.612457, 34.719521, 31.496094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566311, 34.229668, 30.999743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350681, 34.543510, 30.877239>,  <34.221302, 34.731815, 30.803738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350681, 34.543510, 30.877239>,  <34.566311, 34.229668, 30.999743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350681, 34.543510, 30.877239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203265, -0.231677, -0.951320,
		-0.817364, -0.575082, -0.034592,
		-0.539073, 0.784606, -0.306258,
		34.188961, 34.778893, 30.785362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434689, 33.978409, 30.386831>,  <34.566311, 34.229668, 30.999743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434689, 33.978409, 30.386831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276192, 34.344608, 30.358971>,  <34.181095, 34.564327, 30.342255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276192, 34.344608, 30.358971>,  <34.434689, 33.978409, 30.386831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276192, 34.344608, 30.358971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136362, -0.016341, -0.990524,
		-0.907965, -0.401981, -0.118365,
		-0.396238, 0.915502, -0.069652,
		34.157322, 34.619259, 30.338076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885303, 33.979263, 29.874521>,  <34.434689, 33.978409, 30.386831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885303, 33.979263, 29.874521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020081, 34.354622, 29.905205>,  <34.100945, 34.579838, 29.923615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.020081, 34.354622, 29.905205>,  <33.885303, 33.979263, 29.874521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020081, 34.354622, 29.905205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194079, 0.010499, -0.980930,
		-0.921306, 0.345402, -0.178586,
		0.336940, 0.938396, 0.076708,
		34.121162, 34.636139, 29.928217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523205, 34.379711, 29.339363>,  <33.885303, 33.979263, 29.874521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523205, 34.379711, 29.339363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861801, 34.568104, 29.438658>,  <34.064960, 34.681141, 29.498234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.861801, 34.568104, 29.438658>,  <33.523205, 34.379711, 29.339363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861801, 34.568104, 29.438658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231374, 0.094485, -0.968266,
		-0.479491, 0.877067, -0.028992,
		0.846495, 0.470983, 0.248236,
		34.115749, 34.709400, 29.513128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565281, 34.844894, 28.742010>,  <33.523205, 34.379711, 29.339363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565281, 34.844894, 28.742010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922245, 34.840851, 28.922453>,  <34.136425, 34.838425, 29.030718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.922245, 34.840851, 28.922453>,  <33.565281, 34.844894, 28.742010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922245, 34.840851, 28.922453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451143, 0.001544, -0.892451,
		0.008322, 0.999948, 0.005937,
		0.892413, -0.010106, 0.451106,
		34.189968, 34.837818, 29.057785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908047, 35.264954, 28.251467>,  <33.565281, 34.844894, 28.742010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908047, 35.264954, 28.251467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179306, 35.066422, 28.468267>,  <34.342064, 34.947300, 28.598347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179306, 35.066422, 28.468267>,  <33.908047, 35.264954, 28.251467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179306, 35.066422, 28.468267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588285, -0.075419, -0.805129,
		0.440488, 0.864851, 0.240839,
		0.678152, -0.496332, 0.542000,
		34.382751, 34.917522, 28.630867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429890, 35.696388, 28.275419>,  <33.908047, 35.264954, 28.251467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429890, 35.696388, 28.275419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573864, 35.331886, 28.355484>,  <34.660248, 35.113186, 28.403522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573864, 35.331886, 28.355484>,  <34.429890, 35.696388, 28.275419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573864, 35.331886, 28.355484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631648, 0.080118, -0.771104,
		0.686633, 0.403984, 0.604428,
		0.359939, -0.911251, 0.200164,
		34.681847, 35.058510, 28.415533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074547, 35.848133, 28.166491>,  <34.429890, 35.696388, 28.275419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074547, 35.848133, 28.166491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088493, 35.448425, 28.172661>,  <35.096859, 35.208599, 28.176363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088493, 35.448425, 28.172661>,  <35.074547, 35.848133, 28.166491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088493, 35.448425, 28.172661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861251, 0.022210, -0.507694,
		0.506982, 0.030986, 0.861399,
		0.034864, -0.999273, 0.015427,
		35.098953, 35.148643, 28.177288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775066, 35.651287, 28.486952>,  <35.074547, 35.848133, 28.166491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775066, 35.651287, 28.486952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647106, 35.346699, 28.261446>,  <35.570332, 35.163948, 28.126143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647106, 35.346699, 28.261446>,  <35.775066, 35.651287, 28.486952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647106, 35.346699, 28.261446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882180, -0.022353, -0.470382,
		0.345579, -0.647816, 0.678903,
		-0.319896, -0.761469, -0.563765,
		35.551136, 35.118259, 28.092316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346733, 35.111641, 28.458788>,  <35.775066, 35.651287, 28.486952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346733, 35.111641, 28.458788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110191, 35.046146, 28.142944>,  <35.968266, 35.006851, 27.953438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110191, 35.046146, 28.142944>,  <36.346733, 35.111641, 28.458788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110191, 35.046146, 28.142944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805197, -0.066219, -0.589299,
		0.044203, -0.984279, 0.171001,
		-0.591358, -0.163738, -0.789611,
		35.932785, 34.997025, 27.906061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721554, 34.560020, 28.061516>,  <36.346733, 35.111641, 28.458788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721554, 34.560020, 28.061516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475033, 34.697960, 27.778320>,  <36.327122, 34.780724, 27.608402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475033, 34.697960, 27.778320>,  <36.721554, 34.560020, 28.061516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475033, 34.697960, 27.778320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684996, -0.208796, -0.697986,
		-0.388524, -0.915142, -0.107538,
		-0.616303, 0.344847, -0.707991,
		36.290142, 34.801414, 27.565924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763805, 34.069324, 27.542938>,  <36.721554, 34.560020, 28.061516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763805, 34.069324, 27.542938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605686, 34.381153, 27.348616>,  <36.510815, 34.568249, 27.232021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605686, 34.381153, 27.348616>,  <36.763805, 34.069324, 27.542938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605686, 34.381153, 27.348616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618222, -0.165372, -0.768410,
		-0.679369, -0.604087, -0.416577,
		-0.395296, 0.779571, -0.485809,
		36.487099, 34.615025, 27.202873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501160, 33.864349, 26.873690>,  <36.763805, 34.069324, 27.542938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501160, 33.864349, 26.873690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536713, 34.253014, 26.786077>,  <36.558044, 34.486214, 26.733511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536713, 34.253014, 26.786077>,  <36.501160, 33.864349, 26.873690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536713, 34.253014, 26.786077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546170, -0.231435, -0.805069,
		-0.832946, -0.048072, -0.551263,
		0.088880, 0.971662, -0.219029,
		36.563377, 34.544514, 26.720369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456367, 33.876987, 26.238087>,  <36.501160, 33.864349, 26.873690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456367, 33.876987, 26.238087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624340, 34.232578, 26.311169>,  <36.725124, 34.445930, 26.355019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.624340, 34.232578, 26.311169>,  <36.456367, 33.876987, 26.238087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624340, 34.232578, 26.311169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600466, -0.121200, -0.790412,
		-0.680511, 0.441631, -0.584694,
		0.419936, 0.888973, 0.182706,
		36.750320, 34.499271, 26.365980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413929, 34.290436, 25.536083>,  <36.456367, 33.876987, 26.238087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413929, 34.290436, 25.536083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699711, 34.454617, 25.762741>,  <36.871178, 34.553123, 25.898735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699711, 34.454617, 25.762741>,  <36.413929, 34.290436, 25.536083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699711, 34.454617, 25.762741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562899, 0.143831, -0.813915,
		-0.415575, 0.900467, -0.128284,
		0.714452, 0.410453, 0.566644,
		36.914047, 34.577751, 25.932734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642876, 34.834911, 25.102938>,  <36.413929, 34.290436, 25.536083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642876, 34.834911, 25.102938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933392, 34.757282, 25.366707>,  <37.107700, 34.710705, 25.524967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933392, 34.757282, 25.366707>,  <36.642876, 34.834911, 25.102938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933392, 34.757282, 25.366707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664100, -0.049470, -0.746005,
		0.177404, 0.979738, 0.092957,
		0.726291, -0.194077, 0.659421,
		37.151279, 34.699059, 25.564533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211472, 35.241665, 24.939190>,  <36.642876, 34.834911, 25.102938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211472, 35.241665, 24.939190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372620, 34.949585, 25.159920>,  <37.469307, 34.774338, 25.292358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372620, 34.949585, 25.159920>,  <37.211472, 35.241665, 24.939190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372620, 34.949585, 25.159920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704586, -0.137389, -0.696191,
		0.584172, 0.669280, 0.459137,
		0.402867, -0.730197, 0.551825,
		37.493481, 34.730526, 25.325466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931286, 35.442974, 24.940228>,  <37.211472, 35.241665, 24.939190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931286, 35.442974, 24.940228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895473, 35.054108, 25.026833>,  <37.873985, 34.820789, 25.078794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895473, 35.054108, 25.026833>,  <37.931286, 35.442974, 24.940228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895473, 35.054108, 25.026833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490571, -0.232232, -0.839886,
		0.866789, 0.031015, 0.497709,
		-0.089535, -0.972166, 0.216511,
		37.868614, 34.762459, 25.091785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607250, 35.093903, 24.846167>,  <37.931286, 35.442974, 24.940228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607250, 35.093903, 24.846167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345432, 34.791935, 24.862507>,  <38.188343, 34.610756, 24.872311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345432, 34.791935, 24.862507>,  <38.607250, 35.093903, 24.846167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345432, 34.791935, 24.862507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507462, -0.478757, -0.716431,
		0.560405, -0.448206, 0.696461,
		-0.654544, -0.754920, 0.040850,
		38.149071, 34.565460, 24.874762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993340, 34.427921, 24.895420>,  <38.607250, 35.093903, 24.846167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993340, 34.427921, 24.895420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637234, 34.352810, 24.729450>,  <38.423569, 34.307743, 24.629868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637234, 34.352810, 24.729450>,  <38.993340, 34.427921, 24.895420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637234, 34.352810, 24.729450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453983, -0.293109, -0.841419,
		0.036384, -0.937457, 0.346194,
		-0.890267, -0.187781, -0.414925,
		38.370155, 34.296474, 24.604973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545452, 33.906437, 25.012976>,  <38.993340, 34.427921, 24.895420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545452, 33.906437, 25.012976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.919022, 34.041523, 25.059851>,  <40.143162, 34.122574, 25.087976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.919022, 34.041523, 25.059851>,  <39.545452, 33.906437, 25.012976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919022, 34.041523, 25.059851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261417, 0.421641, 0.868263,
		0.243815, -0.841527, 0.482065,
		0.933925, 0.337716, 0.117187,
		40.199200, 34.142838, 25.095007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746708, 33.545341, 25.684092>,  <39.545452, 33.906437, 25.012976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746708, 33.545341, 25.684092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946045, 33.882156, 25.601496>,  <40.065647, 34.084244, 25.551939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.946045, 33.882156, 25.601496>,  <39.746708, 33.545341, 25.684092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946045, 33.882156, 25.601496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358590, 0.417028, 0.835165,
		0.789349, -0.342150, 0.509766,
		0.498339, 0.842034, -0.206489,
		40.095547, 34.134766, 25.539549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979095, 33.714783, 26.375952>,  <39.746708, 33.545341, 25.684092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979095, 33.714783, 26.375952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.049137, 34.056087, 26.179472>,  <40.091164, 34.260872, 26.061584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.049137, 34.056087, 26.179472>,  <39.979095, 33.714783, 26.375952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049137, 34.056087, 26.179472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262706, 0.521314, 0.811922,
		0.948853, -0.013133, 0.315444,
		0.175108, 0.853264, -0.491201,
		40.101669, 34.312065, 26.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468235, 34.184547, 26.851749>,  <39.979095, 33.714783, 26.375952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468235, 34.184547, 26.851749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.268196, 34.424858, 26.602280>,  <40.148174, 34.569046, 26.452599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.268196, 34.424858, 26.602280>,  <40.468235, 34.184547, 26.851749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268196, 34.424858, 26.602280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334652, 0.530172, 0.779054,
		0.798693, 0.598316, -0.064086,
		-0.500097, 0.600779, -0.623673,
		40.118168, 34.605091, 26.415178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673664, 34.882866, 26.930943>,  <40.468235, 34.184547, 26.851749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673664, 34.882866, 26.930943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.307701, 34.891590, 26.769711>,  <40.088123, 34.896824, 26.672972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.307701, 34.891590, 26.769711>,  <40.673664, 34.882866, 26.930943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307701, 34.891590, 26.769711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352251, 0.444544, 0.823590,
		0.197150, 0.895492, -0.399032,
		-0.914905, 0.021812, -0.403079,
		40.033230, 34.898132, 26.648787>
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
