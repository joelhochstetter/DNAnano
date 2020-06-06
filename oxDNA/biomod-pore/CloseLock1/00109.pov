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
	<24.668839, 34.979393, 35.242188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385788, 35.056480, 34.970268>,  <24.215958, 35.102734, 34.807117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385788, 35.056480, 34.970268>,  <24.668839, 34.979393, 35.242188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.385788, 35.056480, 34.970268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514325, 0.519201, 0.682569,
		0.484494, 0.832641, -0.268281,
		-0.707626, 0.192717, -0.679798,
		24.173500, 35.114296, 34.766331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446194, 34.997200, 35.281380>,  <24.668839, 34.979393, 35.242188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446194, 34.997200, 35.281380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128202, 34.867195, 35.486271>,  <24.937408, 34.789192, 35.609207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128202, 34.867195, 35.486271>,  <25.446194, 34.997200, 35.281380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128202, 34.867195, 35.486271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559495, 0.066465, -0.826165,
		0.234468, -0.943372, -0.234680,
		-0.794978, -0.325012, 0.512228,
		24.889709, 34.769691, 35.639938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130074, 35.232262, 35.390266>,  <25.446194, 34.997200, 35.281380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130074, 35.232262, 35.390266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028959, 34.849369, 35.333965>,  <25.968290, 34.619633, 35.300186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028959, 34.849369, 35.333965>,  <26.130074, 35.232262, 35.390266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028959, 34.849369, 35.333965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169133, -0.186953, 0.967700,
		-0.952624, 0.220816, 0.209158,
		-0.252786, -0.957230, -0.140749,
		25.953123, 34.562199, 35.291740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843832, 35.100075, 35.732822>,  <26.130074, 35.232262, 35.390266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843832, 35.100075, 35.732822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649145, 34.897545, 36.017567>,  <26.532333, 34.776028, 36.188412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649145, 34.897545, 36.017567>,  <26.843832, 35.100075, 35.732822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649145, 34.897545, 36.017567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829829, -0.522583, 0.195681,
		0.272927, 0.685962, 0.674512,
		-0.486718, -0.506323, 0.711859,
		26.503130, 34.745647, 36.231125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314453, 34.989231, 36.252205>,  <26.843832, 35.100075, 35.732822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314453, 34.989231, 36.252205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031481, 34.716530, 36.326771>,  <26.861696, 34.552910, 36.371510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031481, 34.716530, 36.326771>,  <27.314453, 34.989231, 36.252205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031481, 34.716530, 36.326771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700908, -0.642784, 0.309123,
		-0.090921, 0.349343, 0.932573,
		-0.707433, -0.681754, 0.186415,
		26.819250, 34.512005, 36.382694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412954, 34.651638, 36.877426>,  <27.314453, 34.989231, 36.252205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412954, 34.651638, 36.877426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212906, 34.389896, 36.650551>,  <27.092876, 34.232853, 36.514427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212906, 34.389896, 36.650551>,  <27.412954, 34.651638, 36.877426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212906, 34.389896, 36.650551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723411, -0.675720, 0.141699,
		-0.475980, -0.339442, 0.811309,
		-0.500120, -0.654356, -0.567185,
		27.062870, 34.193588, 36.480396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875904, 34.151638, 36.903255>,  <27.412954, 34.651638, 36.877426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875904, 34.151638, 36.903255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589504, 33.996628, 36.670990>,  <27.417665, 33.903622, 36.531631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589504, 33.996628, 36.670990>,  <27.875904, 34.151638, 36.903255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589504, 33.996628, 36.670990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454034, -0.890323, 0.034329,
		-0.530283, -0.239062, 0.813418,
		-0.715998, -0.387524, -0.580665,
		27.374704, 33.880371, 36.496792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719627, 33.451340, 37.154594>,  <27.875904, 34.151638, 36.903255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719627, 33.451340, 37.154594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637550, 33.441681, 36.763226>,  <27.588305, 33.435886, 36.528404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637550, 33.441681, 36.763226>,  <27.719627, 33.451340, 37.154594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637550, 33.441681, 36.763226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485914, -0.870298, -0.080428,
		-0.849578, -0.491934, 0.190312,
		-0.205193, -0.024145, -0.978424,
		27.575993, 33.434437, 36.469700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101206, 32.949520, 36.979656>,  <27.719627, 33.451340, 37.154594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101206, 32.949520, 36.979656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351433, 33.006229, 36.672783>,  <27.501568, 33.040253, 36.488659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351433, 33.006229, 36.672783>,  <27.101206, 32.949520, 36.979656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351433, 33.006229, 36.672783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373684, -0.917661, 0.135126,
		-0.684857, -0.371214, -0.627034,
		0.625566, 0.141771, -0.767183,
		27.539103, 33.048759, 36.442627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948679, 32.382000, 36.530670>,  <27.101206, 32.949520, 36.979656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948679, 32.382000, 36.530670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314335, 32.513451, 36.435715>,  <27.533728, 32.592319, 36.378742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314335, 32.513451, 36.435715>,  <26.948679, 32.382000, 36.530670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314335, 32.513451, 36.435715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321478, -0.944372, -0.069386,
		-0.246989, -0.012889, -0.968933,
		0.914138, 0.328628, -0.237393,
		27.588575, 32.612038, 36.364498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151785, 32.046169, 35.992832>,  <26.948679, 32.382000, 36.530670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151785, 32.046169, 35.992832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495213, 32.194988, 36.133934>,  <27.701269, 32.284279, 36.218594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.495213, 32.194988, 36.133934>,  <27.151785, 32.046169, 35.992832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495213, 32.194988, 36.133934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467549, -0.850492, -0.240960,
		0.210365, 0.371811, -0.904159,
		0.858571, 0.372049, 0.352753,
		27.752785, 32.306602, 36.239761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594070, 31.785173, 35.460957>,  <27.151785, 32.046169, 35.992832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594070, 31.785173, 35.460957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797970, 31.875786, 35.792942>,  <27.920309, 31.930153, 35.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797970, 31.875786, 35.792942>,  <27.594070, 31.785173, 35.460957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797970, 31.875786, 35.792942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469582, -0.881594, -0.047788,
		0.720866, 0.414096, -0.555767,
		0.509749, 0.226530, 0.829964,
		27.950895, 31.943745, 36.041931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251972, 31.415133, 35.279701>,  <27.594070, 31.785173, 35.460957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251972, 31.415133, 35.279701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295523, 31.524359, 35.662025>,  <28.321653, 31.589895, 35.891422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295523, 31.524359, 35.662025>,  <28.251972, 31.415133, 35.279701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295523, 31.524359, 35.662025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686361, -0.716188, 0.126423,
		0.719065, 0.642269, -0.265399,
		0.108878, 0.273066, 0.955814,
		28.328186, 31.606279, 35.948769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979883, 31.502066, 35.333908>,  <28.251972, 31.415133, 35.279701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979883, 31.502066, 35.333908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802774, 31.429487, 35.685143>,  <28.696508, 31.385941, 35.895882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802774, 31.429487, 35.685143>,  <28.979883, 31.502066, 35.333908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802774, 31.429487, 35.685143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499648, -0.863096, 0.073599,
		0.744516, 0.471320, 0.472814,
		-0.442773, -0.181445, 0.878083,
		28.669943, 31.375053, 35.948566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525063, 31.306524, 35.723133>,  <28.979883, 31.502066, 35.333908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525063, 31.306524, 35.723133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200310, 31.187138, 35.923840>,  <29.005459, 31.115505, 36.044262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200310, 31.187138, 35.923840>,  <29.525063, 31.306524, 35.723133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200310, 31.187138, 35.923840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419604, -0.895882, 0.146043,
		0.405934, 0.329112, 0.852586,
		-0.811881, -0.298465, 0.501765,
		28.956745, 31.097599, 36.074368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785244, 30.894461, 36.337914>,  <29.525063, 31.306524, 35.723133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785244, 30.894461, 36.337914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405077, 30.789482, 36.271191>,  <29.176977, 30.726496, 36.231155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.405077, 30.789482, 36.271191>,  <29.785244, 30.894461, 36.337914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405077, 30.789482, 36.271191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235743, -0.957894, 0.163905,
		-0.202799, 0.116455, 0.972271,
		-0.950420, -0.262446, -0.166807,
		29.119951, 30.710749, 36.221149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828716, 30.376097, 36.767231>,  <29.785244, 30.894461, 36.337914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828716, 30.376097, 36.767231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496618, 30.342005, 36.546894>,  <29.297359, 30.321548, 36.414692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496618, 30.342005, 36.546894>,  <29.828716, 30.376097, 36.767231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496618, 30.342005, 36.546894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003370, -0.988989, 0.147947,
		-0.557386, 0.120976, 0.821393,
		-0.830247, -0.085232, -0.550841,
		29.247543, 30.316435, 36.381641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400745, 29.878731, 37.186108>,  <29.828716, 30.376097, 36.767231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400745, 29.878731, 37.186108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307690, 29.885311, 36.797138>,  <29.251856, 29.889259, 36.563755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307690, 29.885311, 36.797138>,  <29.400745, 29.878731, 37.186108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307690, 29.885311, 36.797138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171717, -0.983454, -0.057716,
		-0.957283, -0.180409, 0.225967,
		-0.232641, 0.016449, -0.972424,
		29.237898, 29.890245, 36.505409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791954, 29.460327, 37.031574>,  <29.400745, 29.878731, 37.186108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791954, 29.460327, 37.031574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024038, 29.494986, 36.707638>,  <29.163290, 29.515781, 36.513275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.024038, 29.494986, 36.707638>,  <28.791954, 29.460327, 37.031574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024038, 29.494986, 36.707638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032627, -0.996000, -0.083190,
		-0.813811, 0.021846, -0.580718,
		0.580213, 0.086648, -0.809843,
		29.198103, 29.520981, 36.464684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869234, 28.799381, 36.738361>,  <28.791954, 29.460327, 37.031574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869234, 28.799381, 36.738361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154221, 28.969910, 36.515419>,  <29.325212, 29.072226, 36.381653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154221, 28.969910, 36.515419>,  <28.869234, 28.799381, 36.738361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154221, 28.969910, 36.515419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294088, -0.902573, -0.314445,
		-0.637108, 0.060119, -0.768426,
		0.712465, 0.426320, -0.557356,
		29.367960, 29.097805, 36.348213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926344, 28.368052, 36.194744>,  <28.869234, 28.799381, 36.738361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926344, 28.368052, 36.194744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267662, 28.575645, 36.214935>,  <29.472452, 28.700201, 36.227051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267662, 28.575645, 36.214935>,  <28.926344, 28.368052, 36.194744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267662, 28.575645, 36.214935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490979, -0.767092, -0.412927,
		-0.175584, 0.377129, -0.909364,
		0.853293, 0.518983, 0.050474,
		29.523649, 28.731340, 36.230076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199850, 28.318026, 35.511311>,  <28.926344, 28.368052, 36.194744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199850, 28.318026, 35.511311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501223, 28.394793, 35.762867>,  <29.682047, 28.440853, 35.913803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501223, 28.394793, 35.762867>,  <29.199850, 28.318026, 35.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501223, 28.394793, 35.762867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534407, -0.735972, -0.415637,
		0.383080, 0.649240, -0.657067,
		0.753431, 0.191919, 0.628894,
		29.727253, 28.452368, 35.951534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706182, 28.234186, 35.109509>,  <29.199850, 28.318026, 35.511311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706182, 28.234186, 35.109509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869091, 28.218441, 35.474491>,  <29.966835, 28.208994, 35.693481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869091, 28.218441, 35.474491>,  <29.706182, 28.234186, 35.109509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869091, 28.218441, 35.474491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545771, -0.790578, -0.277705,
		0.732302, 0.611094, -0.300496,
		0.407270, -0.039362, 0.912459,
		29.991272, 28.206633, 35.748230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409197, 28.111712, 35.010826>,  <29.706182, 28.234186, 35.109509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409197, 28.111712, 35.010826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340908, 28.008789, 35.391277>,  <30.299934, 27.947035, 35.619549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340908, 28.008789, 35.391277>,  <30.409197, 28.111712, 35.010826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340908, 28.008789, 35.391277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430259, -0.887873, -0.162967,
		0.886415, 0.381409, 0.262288,
		-0.170722, -0.257308, 0.951129,
		30.289692, 27.931597, 35.676617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009682, 27.751078, 35.287846>,  <30.409197, 28.111712, 35.010826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009682, 27.751078, 35.287846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721834, 27.627930, 35.536800>,  <30.549126, 27.554041, 35.686172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721834, 27.627930, 35.536800>,  <31.009682, 27.751078, 35.287846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721834, 27.627930, 35.536800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209938, -0.950852, -0.227611,
		0.661874, -0.033129, 0.748882,
		-0.719617, -0.307869, 0.622389,
		30.505949, 27.535568, 35.723518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313540, 27.130852, 35.691917>,  <31.009682, 27.751078, 35.287846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313540, 27.130852, 35.691917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913744, 27.126064, 35.680069>,  <30.673866, 27.123192, 35.672958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913744, 27.126064, 35.680069>,  <31.313540, 27.130852, 35.691917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913744, 27.126064, 35.680069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016575, -0.986906, -0.160444,
		-0.027312, -0.160853, 0.986600,
		-0.999489, -0.011971, -0.029620,
		30.613897, 27.122473, 35.671185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220953, 26.482388, 35.467789>,  <31.313540, 27.130852, 35.691917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220953, 26.482388, 35.467789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255562, 26.502892, 35.069817>,  <31.276327, 26.515194, 34.831032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255562, 26.502892, 35.069817>,  <31.220953, 26.482388, 35.467789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255562, 26.502892, 35.069817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950439, -0.303605, 0.067009,
		-0.298631, -0.951418, -0.074989,
		0.086521, 0.051262, -0.994930,
		31.281519, 26.518270, 34.771336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623219, 25.910349, 35.218437>,  <31.220953, 26.482388, 35.467789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623219, 25.910349, 35.218437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649353, 26.169313, 34.914703>,  <31.665033, 26.324692, 34.732464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649353, 26.169313, 34.914703>,  <31.623219, 25.910349, 35.218437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649353, 26.169313, 34.914703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940283, -0.294699, -0.170355,
		-0.334065, -0.702860, -0.628004,
		0.065337, 0.647411, -0.759335,
		31.668955, 26.363537, 34.686901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259621, 25.863899, 34.903629>,  <31.623219, 25.910349, 35.218437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259621, 25.863899, 34.903629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876431, 25.823105, 34.796383>,  <31.646517, 25.798628, 34.732037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876431, 25.823105, 34.796383>,  <32.259621, 25.863899, 34.903629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876431, 25.823105, 34.796383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034305, -0.887227, 0.460056,
		-0.284797, 0.449919, 0.846441,
		-0.957974, -0.101985, -0.268114,
		31.589039, 25.792509, 34.715950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332016, 25.611225, 34.218784>,  <32.259621, 25.863899, 34.903629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332016, 25.611225, 34.218784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262775, 25.657173, 33.827511>,  <32.221230, 25.684742, 33.592747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262775, 25.657173, 33.827511>,  <32.332016, 25.611225, 34.218784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262775, 25.657173, 33.827511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284204, -0.956753, -0.062060,
		-0.943008, 0.267261, 0.198262,
		-0.173101, 0.114870, -0.978183,
		32.210846, 25.691633, 33.534058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726456, 25.236012, 33.973049>,  <32.332016, 25.611225, 34.218784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726456, 25.236012, 33.973049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006439, 25.250940, 33.687767>,  <32.174431, 25.259897, 33.516598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006439, 25.250940, 33.687767>,  <31.726456, 25.236012, 33.973049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006439, 25.250940, 33.687767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171702, -0.960550, -0.218776,
		-0.693235, 0.275593, -0.665938,
		0.699960, 0.037320, -0.713207,
		32.216427, 25.262136, 33.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003775, 25.037106, 34.274212>,  <31.726456, 25.236012, 33.973049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003775, 25.037106, 34.274212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955742, 25.429754, 34.333534>,  <30.926922, 25.665344, 34.369129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955742, 25.429754, 34.333534>,  <31.003775, 25.037106, 34.274212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955742, 25.429754, 34.333534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241931, 0.173820, -0.954597,
		-0.962835, -0.078747, -0.258357,
		-0.120080, 0.981624, 0.148308,
		30.919718, 25.724241, 34.378025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493853, 25.477928, 33.697971>,  <31.003775, 25.037106, 34.274212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493853, 25.477928, 33.697971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805531, 25.676451, 33.851093>,  <30.992537, 25.795565, 33.942966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805531, 25.676451, 33.851093>,  <30.493853, 25.477928, 33.697971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805531, 25.676451, 33.851093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279313, 0.271796, -0.920929,
		-0.561108, 0.824503, 0.073157,
		0.779193, 0.496307, 0.382801,
		31.039289, 25.825342, 33.965935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796379, 25.895306, 33.207195>,  <30.493853, 25.477928, 33.697971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796379, 25.895306, 33.207195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099405, 25.896650, 33.468296>,  <31.281221, 25.897457, 33.624954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099405, 25.896650, 33.468296>,  <30.796379, 25.895306, 33.207195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099405, 25.896650, 33.468296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451148, 0.720012, -0.527302,
		-0.471759, 0.693953, 0.543942,
		0.757568, 0.003361, 0.652748,
		31.326675, 25.897659, 33.664120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283672, 26.274185, 32.803074>,  <30.796379, 25.895306, 33.207195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283672, 26.274185, 32.803074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967396, 26.459517, 32.963142>,  <30.777630, 26.570715, 33.059185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967396, 26.459517, 32.963142>,  <31.283672, 26.274185, 32.803074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967396, 26.459517, 32.963142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239310, 0.835543, -0.494568,
		-0.563507, -0.295285, -0.771535,
		-0.790690, 0.463329, 0.400170,
		30.730188, 26.598515, 33.083195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759117, 25.896366, 32.435116>,  <31.283672, 26.274185, 32.803074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759117, 25.896366, 32.435116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561756, 25.928770, 32.088707>,  <31.443340, 25.948212, 31.880861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561756, 25.928770, 32.088707>,  <31.759117, 25.896366, 32.435116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561756, 25.928770, 32.088707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740993, 0.482263, 0.467281,
		0.455504, 0.872273, -0.177922,
		-0.493402, 0.081009, -0.866021,
		31.413736, 25.953074, 31.828901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705399, 26.673761, 32.351753>,  <31.759117, 25.896366, 32.435116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705399, 26.673761, 32.351753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406874, 26.503489, 32.147083>,  <31.227758, 26.401325, 32.024281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406874, 26.503489, 32.147083>,  <31.705399, 26.673761, 32.351753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406874, 26.503489, 32.147083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632599, 0.692690, 0.346408,
		0.206974, 0.582215, -0.786249,
		-0.746311, -0.425683, -0.511678,
		31.182980, 26.375784, 31.993580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422228, 27.218475, 31.825644>,  <31.705399, 26.673761, 32.351753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422228, 27.218475, 31.825644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139748, 26.946972, 31.906212>,  <30.970261, 26.784069, 31.954552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139748, 26.946972, 31.906212>,  <31.422228, 27.218475, 31.825644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139748, 26.946972, 31.906212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681787, 0.728653, 0.065046,
		-0.190915, -0.091390, -0.977343,
		-0.706199, -0.678758, 0.201420,
		30.927887, 26.743345, 31.966639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857328, 27.303688, 31.343367>,  <31.422228, 27.218475, 31.825644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857328, 27.303688, 31.343367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700155, 27.125601, 31.665207>,  <30.605852, 27.018749, 31.858311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700155, 27.125601, 31.665207>,  <30.857328, 27.303688, 31.343367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700155, 27.125601, 31.665207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735753, 0.677076, 0.015344,
		-0.551609, -0.585960, -0.593615,
		-0.392931, -0.445218, 0.804603,
		30.582275, 26.992035, 31.906588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218519, 27.315538, 31.260015>,  <30.857328, 27.303688, 31.343367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218519, 27.315538, 31.260015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255987, 27.262234, 31.654673>,  <30.278467, 27.230251, 31.891468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255987, 27.262234, 31.654673>,  <30.218519, 27.315538, 31.260015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255987, 27.262234, 31.654673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659326, 0.734249, 0.161767,
		-0.746000, -0.665672, -0.019089,
		0.093668, -0.133264, 0.986645,
		30.284088, 27.222256, 31.950666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453203, 27.396914, 31.482531>,  <30.218519, 27.315538, 31.260015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453203, 27.396914, 31.482531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682402, 27.422289, 31.809370>,  <29.819921, 27.437513, 32.005474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682402, 27.422289, 31.809370>,  <29.453203, 27.396914, 31.482531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682402, 27.422289, 31.809370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642651, 0.653496, 0.399929,
		-0.508599, -0.754267, 0.415220,
		0.572998, 0.063438, 0.817098,
		29.854301, 27.441320, 32.054501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970762, 27.362864, 32.046352>,  <29.453203, 27.396914, 31.482531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970762, 27.362864, 32.046352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311390, 27.523817, 32.180767>,  <29.515766, 27.620390, 32.261414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311390, 27.523817, 32.180767>,  <28.970762, 27.362864, 32.046352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311390, 27.523817, 32.180767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524188, 0.662975, 0.534500,
		-0.007708, -0.631309, 0.775493,
		0.851568, 0.402385, 0.336035,
		29.566860, 27.644533, 32.281578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761770, 27.653116, 32.670033>,  <28.970762, 27.362864, 32.046352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761770, 27.653116, 32.670033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102772, 27.836037, 32.568748>,  <29.307373, 27.945789, 32.507977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102772, 27.836037, 32.568748>,  <28.761770, 27.653116, 32.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102772, 27.836037, 32.568748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308041, 0.830863, 0.463440,
		0.422317, -0.317083, 0.849180,
		0.852501, 0.457301, -0.253213,
		29.358522, 27.973227, 32.492783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031193, 28.032642, 33.260048>,  <28.761770, 27.653116, 32.670033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031193, 28.032642, 33.260048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177122, 28.232298, 32.945656>,  <29.264679, 28.352091, 32.757019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177122, 28.232298, 32.945656>,  <29.031193, 28.032642, 33.260048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177122, 28.232298, 32.945656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228430, 0.866346, 0.444145,
		0.902621, 0.017507, 0.430081,
		0.364823, 0.499138, -0.785981,
		29.286570, 28.382040, 32.709862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445414, 28.563095, 33.516514>,  <29.031193, 28.032642, 33.260048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445414, 28.563095, 33.516514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352798, 28.685062, 33.146992>,  <29.297230, 28.758244, 32.925278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352798, 28.685062, 33.146992>,  <29.445414, 28.563095, 33.516514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352798, 28.685062, 33.146992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153139, 0.926346, 0.344140,
		0.960698, 0.221152, -0.167787,
		-0.231536, 0.304919, -0.923805,
		29.283339, 28.776539, 32.869850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729380, 29.313030, 33.454468>,  <29.445414, 28.563095, 33.516514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729380, 29.313030, 33.454468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460531, 29.284218, 33.159695>,  <29.299223, 29.266932, 32.982830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460531, 29.284218, 33.159695>,  <29.729380, 29.313030, 33.454468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460531, 29.284218, 33.159695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177745, 0.981851, 0.066144,
		0.718790, 0.175442, -0.672726,
		-0.672122, -0.072030, -0.736929,
		29.258894, 29.262609, 32.938618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773170, 29.933500, 33.031071>,  <29.729380, 29.313030, 33.454468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773170, 29.933500, 33.031071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412470, 29.825548, 32.896008>,  <29.196051, 29.760777, 32.814972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412470, 29.825548, 32.896008>,  <29.773170, 29.933500, 33.031071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412470, 29.825548, 32.896008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315559, 0.944860, 0.087531,
		0.295413, 0.185481, -0.937191,
		-0.901750, -0.269881, -0.337654,
		29.141945, 29.744583, 32.794712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688717, 30.342873, 32.497845>,  <29.773170, 29.933500, 33.031071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688717, 30.342873, 32.497845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324471, 30.212765, 32.599804>,  <29.105923, 30.134701, 32.660980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324471, 30.212765, 32.599804>,  <29.688717, 30.342873, 32.497845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324471, 30.212765, 32.599804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276236, 0.937878, 0.209950,
		-0.307357, 0.120771, -0.943899,
		-0.910618, -0.325269, 0.254902,
		29.051285, 30.115185, 32.676273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195976, 30.751078, 32.140160>,  <29.688717, 30.342873, 32.497845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195976, 30.751078, 32.140160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971937, 30.599726, 32.434944>,  <28.837513, 30.508915, 32.611816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971937, 30.599726, 32.434944>,  <29.195976, 30.751078, 32.140160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971937, 30.599726, 32.434944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310458, 0.920637, 0.236733,
		-0.768053, -0.096204, -0.633119,
		-0.560098, -0.378380, 0.736966,
		28.803907, 30.486212, 32.656033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577278, 31.218664, 32.161552>,  <29.195976, 30.751078, 32.140160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577278, 31.218664, 32.161552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555578, 31.032946, 32.515160>,  <28.542559, 30.921515, 32.727325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555578, 31.032946, 32.515160>,  <28.577278, 31.218664, 32.161552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555578, 31.032946, 32.515160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391133, 0.824454, 0.409011,
		-0.918734, -0.323579, -0.226329,
		-0.054250, -0.464297, 0.884016,
		28.539303, 30.893656, 32.780365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968151, 31.350657, 32.447678>,  <28.577278, 31.218664, 32.161552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968151, 31.350657, 32.447678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172083, 31.249954, 32.776722>,  <28.294441, 31.189533, 32.974148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172083, 31.249954, 32.776722>,  <27.968151, 31.350657, 32.447678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172083, 31.249954, 32.776722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125996, 0.924059, 0.360888,
		-0.851000, -0.287637, 0.439391,
		0.509828, -0.251754, 0.822615,
		28.325031, 31.174427, 33.023506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558552, 31.489918, 33.102119>,  <27.968151, 31.350657, 32.447678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558552, 31.489918, 33.102119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941320, 31.503771, 33.217430>,  <28.170982, 31.512083, 33.286617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941320, 31.503771, 33.217430>,  <27.558552, 31.489918, 33.102119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941320, 31.503771, 33.217430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158762, 0.893696, 0.419646,
		-0.243098, -0.447335, 0.860694,
		0.956921, 0.034630, 0.288275,
		28.228397, 31.514160, 33.303913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480539, 31.785389, 33.747314>,  <27.558552, 31.489918, 33.102119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480539, 31.785389, 33.747314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867533, 31.830830, 33.656921>,  <28.099730, 31.858095, 33.602684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867533, 31.830830, 33.656921>,  <27.480539, 31.785389, 33.747314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867533, 31.830830, 33.656921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053140, 0.964812, 0.257514,
		0.247285, -0.237132, 0.939478,
		0.967484, 0.113603, -0.225982,
		28.157778, 31.864910, 33.589127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884645, 31.849726, 34.425457>,  <27.480539, 31.785389, 33.747314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884645, 31.849726, 34.425457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091440, 32.005772, 34.120686>,  <28.215517, 32.099400, 33.937820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091440, 32.005772, 34.120686>,  <27.884645, 31.849726, 34.425457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091440, 32.005772, 34.120686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024687, 0.882947, 0.468824,
		0.855638, -0.261185, 0.446840,
		0.516986, 0.390112, -0.761931,
		28.246536, 32.122807, 33.892105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436174, 32.122089, 34.699997>,  <27.884645, 31.849726, 34.425457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436174, 32.122089, 34.699997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397467, 32.311733, 34.349945>,  <28.374243, 32.425518, 34.139912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.397467, 32.311733, 34.349945>,  <28.436174, 32.122089, 34.699997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397467, 32.311733, 34.349945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115443, 0.878671, 0.463262,
		0.988589, -0.056198, -0.139761,
		-0.096770, 0.474110, -0.875132,
		28.368435, 32.453968, 34.087406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686588, 32.729359, 34.853748>,  <28.436174, 32.122089, 34.699997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686588, 32.729359, 34.853748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547707, 32.821503, 34.490128>,  <28.464376, 32.876789, 34.271954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547707, 32.821503, 34.490128>,  <28.686588, 32.729359, 34.853748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547707, 32.821503, 34.490128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002109, 0.969165, 0.246403,
		0.937787, 0.087470, -0.336014,
		-0.347206, 0.230365, -0.909055,
		28.443544, 32.890614, 34.217411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169804, 33.312149, 34.487091>,  <28.686588, 32.729359, 34.853748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169804, 33.312149, 34.487091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791397, 33.324982, 34.358078>,  <28.564354, 33.332680, 34.280670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791397, 33.324982, 34.358078>,  <29.169804, 33.312149, 34.487091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791397, 33.324982, 34.358078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061874, 0.958915, 0.276862,
		0.318161, 0.281872, -0.905164,
		-0.946015, 0.032080, -0.322530,
		28.507593, 33.334606, 34.261318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811789, 33.730076, 34.532284>,  <29.169804, 33.312149, 34.487091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811789, 33.730076, 34.532284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699963, 34.032284, 34.769276>,  <29.632868, 34.213608, 34.911472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699963, 34.032284, 34.769276>,  <29.811789, 33.730076, 34.532284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699963, 34.032284, 34.769276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571695, 0.626758, -0.529470,
		-0.771368, 0.190697, -0.607146,
		-0.279566, 0.755519, 0.592481,
		29.616093, 34.258938, 34.947021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527273, 34.364059, 34.158321>,  <29.811789, 33.730076, 34.532284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527273, 34.364059, 34.158321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752438, 34.433750, 34.481499>,  <29.887537, 34.475563, 34.675407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752438, 34.433750, 34.481499>,  <29.527273, 34.364059, 34.158321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752438, 34.433750, 34.481499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485110, 0.721799, -0.493633,
		-0.669176, 0.669815, 0.321793,
		0.562913, 0.174222, 0.807945,
		29.921312, 34.486015, 34.723881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403627, 34.951313, 34.600193>,  <29.527273, 34.364059, 34.158321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403627, 34.951313, 34.600193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784306, 34.866657, 34.511208>,  <30.012712, 34.815865, 34.457817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784306, 34.866657, 34.511208>,  <29.403627, 34.951313, 34.600193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784306, 34.866657, 34.511208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097515, 0.895336, -0.434586,
		0.291155, 0.391899, 0.872723,
		0.951693, -0.211636, -0.222465,
		30.069813, 34.803165, 34.444469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.805708, 35.507431, 34.742088>,  <29.403627, 34.951313, 34.600193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.805708, 35.507431, 34.742088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034761, 35.303272, 34.485470>,  <30.172194, 35.180779, 34.331497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034761, 35.303272, 34.485470>,  <29.805708, 35.507431, 34.742088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034761, 35.303272, 34.485470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326987, 0.859811, -0.392180,
		0.751779, 0.014796, 0.659249,
		0.572632, -0.510399, -0.641550,
		30.206551, 35.150154, 34.293003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422668, 35.869900, 34.777107>,  <29.805708, 35.507431, 34.742088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422668, 35.869900, 34.777107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418484, 35.674335, 34.428200>,  <30.415972, 35.556995, 34.218853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418484, 35.674335, 34.428200>,  <30.422668, 35.869900, 34.777107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418484, 35.674335, 34.428200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476412, 0.764512, -0.434227,
		0.879160, -0.420104, 0.224923,
		-0.010464, -0.488911, -0.872271,
		30.415344, 35.527660, 34.166519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906086, 35.310890, 34.541927>,  <30.422668, 35.869900, 34.777107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906086, 35.310890, 34.541927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093483, 34.986450, 34.401855>,  <31.205921, 34.791786, 34.317814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093483, 34.986450, 34.401855>,  <30.906086, 35.310890, 34.541927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093483, 34.986450, 34.401855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786173, 0.563580, -0.253595,
		0.403045, -0.156494, 0.901701,
		0.468494, -0.811103, -0.350179,
		31.234032, 34.743118, 34.296803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617416, 35.393520, 34.767715>,  <30.906086, 35.310890, 34.541927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617416, 35.393520, 34.767715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608440, 35.125576, 34.470856>,  <31.603054, 34.964809, 34.292740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608440, 35.125576, 34.470856>,  <31.617416, 35.393520, 34.767715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608440, 35.125576, 34.470856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897625, 0.313350, -0.309971,
		0.440189, -0.673127, 0.594251,
		-0.022441, -0.669860, -0.742148,
		31.601707, 34.924618, 34.248211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298290, 35.043781, 34.639687>,  <31.617416, 35.393520, 34.767715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298290, 35.043781, 34.639687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113354, 35.026043, 34.285450>,  <32.002392, 35.015400, 34.072906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113354, 35.026043, 34.285450>,  <32.298290, 35.043781, 34.639687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113354, 35.026043, 34.285450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861758, 0.212752, -0.460553,
		0.208830, -0.976100, -0.060160,
		-0.462345, -0.044334, -0.885591,
		31.974651, 35.012741, 34.019772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569820, 34.371544, 35.008678>,  <32.298290, 35.043781, 34.639687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569820, 34.371544, 35.008678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949760, 34.257038, 35.059013>,  <33.177723, 34.188335, 35.089214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949760, 34.257038, 35.059013>,  <32.569820, 34.371544, 35.008678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949760, 34.257038, 35.059013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037726, 0.294579, 0.954882,
		-0.310423, -0.911742, 0.269006,
		0.949850, -0.286269, 0.125840,
		33.234715, 34.171158, 35.096764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622646, 33.799141, 35.475307>,  <32.569820, 34.371544, 35.008678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622646, 33.799141, 35.475307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971821, 33.993870, 35.487900>,  <33.181324, 34.110706, 35.495457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971821, 33.993870, 35.487900>,  <32.622646, 33.799141, 35.475307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971821, 33.993870, 35.487900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181557, 0.264301, 0.947197,
		0.452799, -0.832554, 0.319103,
		0.872932, 0.486825, 0.031481,
		33.233700, 34.139915, 35.497345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784355, 33.842297, 36.161785>,  <32.622646, 33.799141, 35.475307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784355, 33.842297, 36.161785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071159, 34.097027, 36.048409>,  <33.243244, 34.249866, 35.980381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071159, 34.097027, 36.048409>,  <32.784355, 33.842297, 36.161785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071159, 34.097027, 36.048409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151985, 0.539669, 0.828045,
		0.680289, -0.550640, 0.483738,
		0.717013, 0.636831, -0.283442,
		33.286263, 34.288074, 35.963375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333660, 33.859898, 36.734089>,  <32.784355, 33.842297, 36.161785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333660, 33.859898, 36.734089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349197, 34.206741, 36.535450>,  <33.358521, 34.414848, 36.416267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349197, 34.206741, 36.535450>,  <33.333660, 33.859898, 36.734089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349197, 34.206741, 36.535450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152862, 0.485967, 0.860505,
		0.987484, -0.109332, -0.113674,
		0.038839, 0.867112, -0.496597,
		33.360847, 34.466873, 36.386471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962944, 34.182171, 36.918236>,  <33.333660, 33.859898, 36.734089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962944, 34.182171, 36.918236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739353, 34.487080, 36.787708>,  <33.605198, 34.670025, 36.709393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739353, 34.487080, 36.787708>,  <33.962944, 34.182171, 36.918236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739353, 34.487080, 36.787708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180506, 0.495965, 0.849374,
		0.809298, 0.415878, -0.414828,
		-0.558976, 0.762276, -0.326315,
		33.571659, 34.715763, 36.689816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398151, 34.758820, 37.022957>,  <33.962944, 34.182171, 36.918236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398151, 34.758820, 37.022957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034874, 34.918621, 36.973038>,  <33.816906, 35.014503, 36.943085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034874, 34.918621, 36.973038>,  <34.398151, 34.758820, 37.022957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034874, 34.918621, 36.973038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102216, 0.500851, 0.859477,
		0.405868, 0.767819, -0.495707,
		-0.908198, 0.399503, -0.124796,
		33.762413, 35.038471, 36.935600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498199, 35.451233, 37.138905>,  <34.398151, 34.758820, 37.022957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498199, 35.451233, 37.138905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109116, 35.370041, 37.183857>,  <33.875664, 35.321327, 37.210831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109116, 35.370041, 37.183857>,  <34.498199, 35.451233, 37.138905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109116, 35.370041, 37.183857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016903, 0.421104, 0.906855,
		-0.231396, 0.884009, -0.406183,
		-0.972713, -0.202977, 0.112384,
		33.817303, 35.309147, 37.217571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244675, 36.075607, 37.317902>,  <34.498199, 35.451233, 37.138905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244675, 36.075607, 37.317902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007736, 35.789017, 37.465298>,  <33.865574, 35.617062, 37.553734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007736, 35.789017, 37.465298>,  <34.244675, 36.075607, 37.317902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007736, 35.789017, 37.465298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065970, 0.412694, 0.908478,
		-0.802976, 0.562445, -0.197193,
		-0.592349, -0.716477, 0.368488,
		33.830032, 35.574074, 37.575844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670517, 36.460266, 37.618546>,  <34.244675, 36.075607, 37.317902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670517, 36.460266, 37.618546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669067, 36.102882, 37.798195>,  <33.668198, 35.888451, 37.905983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669067, 36.102882, 37.798195>,  <33.670517, 36.460266, 37.618546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669067, 36.102882, 37.798195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050613, 0.448712, 0.892242,
		-0.998712, -0.019497, -0.046848,
		-0.003625, -0.893464, 0.449121,
		33.667980, 35.834843, 37.932930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139015, 36.462757, 38.072063>,  <33.670517, 36.460266, 37.618546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139015, 36.462757, 38.072063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342873, 36.146286, 38.207298>,  <33.465187, 35.956406, 38.288441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342873, 36.146286, 38.207298>,  <33.139015, 36.462757, 38.072063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342873, 36.146286, 38.207298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013964, 0.400507, 0.916187,
		-0.860272, -0.462209, 0.215164,
		0.509645, -0.791174, 0.338091,
		33.495766, 35.908936, 38.308727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811508, 36.382545, 38.701553>,  <33.139015, 36.462757, 38.072063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811508, 36.382545, 38.701553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158344, 36.183498, 38.692333>,  <33.366447, 36.064068, 38.686802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158344, 36.183498, 38.692333>,  <32.811508, 36.382545, 38.701553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158344, 36.183498, 38.692333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153149, 0.222259, 0.962884,
		-0.474028, -0.838436, 0.268929,
		0.867089, -0.497620, -0.023049,
		33.418472, 36.034214, 38.685417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833340, 35.939220, 39.312309>,  <32.811508, 36.382545, 38.701553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833340, 35.939220, 39.312309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220802, 35.990685, 39.227322>,  <33.453281, 36.021564, 39.176327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220802, 35.990685, 39.227322>,  <32.833340, 35.939220, 39.312309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220802, 35.990685, 39.227322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138843, 0.428816, 0.892659,
		0.205964, -0.894183, 0.397513,
		0.968660, 0.128664, -0.212471,
		33.511398, 36.029285, 39.163582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108067, 35.549385, 39.827408>,  <32.833340, 35.939220, 39.312309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108067, 35.549385, 39.827408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383991, 35.810108, 39.701355>,  <33.549545, 35.966541, 39.625721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383991, 35.810108, 39.701355>,  <33.108067, 35.549385, 39.827408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383991, 35.810108, 39.701355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044823, 0.395988, 0.917161,
		0.722605, -0.646789, 0.243940,
		0.689807, 0.651811, -0.315134,
		33.590935, 36.005650, 39.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629997, 35.474483, 40.199310>,  <33.108067, 35.549385, 39.827408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629997, 35.474483, 40.199310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672562, 35.844246, 40.052807>,  <33.698101, 36.066105, 39.964905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672562, 35.844246, 40.052807>,  <33.629997, 35.474483, 40.199310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672562, 35.844246, 40.052807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169610, 0.346080, 0.922746,
		0.979750, -0.160308, -0.119964,
		0.106406, 0.924408, -0.366262,
		33.704483, 36.121567, 39.942928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275036, 35.798050, 40.461807>,  <33.629997, 35.474483, 40.199310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275036, 35.798050, 40.461807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030548, 36.106033, 40.388504>,  <33.883858, 36.290821, 40.344521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030548, 36.106033, 40.388504>,  <34.275036, 35.798050, 40.461807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030548, 36.106033, 40.388504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148070, 0.338697, 0.929172,
		0.777490, 0.540789, -0.321024,
		-0.611216, 0.769956, -0.183259,
		33.847183, 36.337021, 40.333527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546761, 36.085945, 41.030544>,  <34.275036, 35.798050, 40.461807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546761, 36.085945, 41.030544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274620, 36.331566, 40.870514>,  <34.111336, 36.478939, 40.774494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274620, 36.331566, 40.870514>,  <34.546761, 36.085945, 41.030544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274620, 36.331566, 40.870514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295220, 0.270026, 0.916478,
		0.670800, 0.741634, -0.002430,
		-0.680347, 0.614056, -0.400078,
		34.070515, 36.515781, 40.750492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638023, 36.861244, 41.230133>,  <34.546761, 36.085945, 41.030544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638023, 36.861244, 41.230133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249336, 36.813721, 41.148506>,  <34.016125, 36.785206, 41.099529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249336, 36.813721, 41.148506>,  <34.638023, 36.861244, 41.230133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249336, 36.813721, 41.148506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234499, 0.384066, 0.893031,
		-0.027728, 0.915629, -0.401066,
		-0.971721, -0.118812, -0.204065,
		33.957821, 36.778076, 41.087288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424892, 37.461391, 41.496391>,  <34.638023, 36.861244, 41.230133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424892, 37.461391, 41.496391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148518, 37.172558, 41.482506>,  <33.982693, 36.999260, 41.474174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148518, 37.172558, 41.482506>,  <34.424892, 37.461391, 41.496391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148518, 37.172558, 41.482506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204541, 0.149207, 0.967419,
		-0.693375, 0.675527, -0.250788,
		-0.690937, -0.722080, -0.034717,
		33.941235, 36.955933, 41.472092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957542, 37.789028, 41.782650>,  <34.424892, 37.461391, 41.496391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957542, 37.789028, 41.782650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867992, 37.400394, 41.813389>,  <33.814262, 37.167213, 41.831833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867992, 37.400394, 41.813389>,  <33.957542, 37.789028, 41.782650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867992, 37.400394, 41.813389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329111, 0.149582, 0.932369,
		-0.917368, 0.183447, -0.353247,
		-0.223879, -0.971583, 0.076847,
		33.800827, 37.108921, 41.836441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362556, 37.819824, 41.924389>,  <33.957542, 37.789028, 41.782650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362556, 37.819824, 41.924389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503353, 37.463444, 42.039154>,  <33.587830, 37.249615, 42.108013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503353, 37.463444, 42.039154>,  <33.362556, 37.819824, 41.924389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503353, 37.463444, 42.039154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283255, 0.190766, 0.939880,
		-0.892116, -0.412095, -0.185218,
		0.351987, -0.890947, 0.286914,
		33.608948, 37.196159, 42.125229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918407, 37.586952, 42.533768>,  <33.362556, 37.819824, 41.924389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918407, 37.586952, 42.533768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209774, 37.313351, 42.549503>,  <33.384594, 37.149189, 42.558945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209774, 37.313351, 42.549503>,  <32.918407, 37.586952, 42.533768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209774, 37.313351, 42.549503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021472, 0.080181, 0.996549,
		-0.684800, -0.725057, 0.073092,
		0.728415, -0.684006, 0.039340,
		33.428299, 37.108150, 42.561306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727058, 36.972370, 43.073868>,  <32.918407, 37.586952, 42.533768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727058, 36.972370, 43.073868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123783, 36.988895, 43.025528>,  <33.361816, 36.998810, 42.996525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123783, 36.988895, 43.025528>,  <32.727058, 36.972370, 43.073868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123783, 36.988895, 43.025528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121190, -0.005905, 0.992612,
		0.040301, -0.999128, -0.010864,
		0.991811, 0.041320, -0.120847,
		33.421326, 37.001289, 42.989273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002102, 36.340611, 43.466824>,  <32.727058, 36.972370, 43.073868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002102, 36.340611, 43.466824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292229, 36.609886, 43.409218>,  <33.466305, 36.771450, 43.374653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292229, 36.609886, 43.409218>,  <33.002102, 36.340611, 43.466824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292229, 36.609886, 43.409218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176471, 0.020392, 0.984095,
		0.665416, -0.739191, -0.104007,
		0.725313, 0.673187, -0.144015,
		33.509823, 36.811844, 43.366013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470299, 36.147442, 43.919994>,  <33.002102, 36.340611, 43.466824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470299, 36.147442, 43.919994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597237, 36.513241, 43.819611>,  <33.673401, 36.732719, 43.759380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597237, 36.513241, 43.819611>,  <33.470299, 36.147442, 43.919994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597237, 36.513241, 43.819611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468008, 0.079131, 0.880174,
		0.824778, -0.396770, -0.402882,
		0.317347, 0.914501, -0.250957,
		33.692440, 36.787590, 43.744324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099083, 36.186275, 44.290215>,  <33.470299, 36.147442, 43.919994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099083, 36.186275, 44.290215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948288, 36.549873, 44.219101>,  <33.857811, 36.768032, 44.176434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948288, 36.549873, 44.219101>,  <34.099083, 36.186275, 44.290215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948288, 36.549873, 44.219101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445836, 0.346330, 0.825401,
		0.811858, 0.231902, -0.535825,
		-0.376984, 0.908998, -0.177780,
		33.835194, 36.822575, 44.165768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731266, 36.604862, 44.333069>,  <34.099083, 36.186275, 44.290215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731266, 36.604862, 44.333069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414494, 36.846550, 44.368332>,  <34.224430, 36.991562, 44.389488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414494, 36.846550, 44.368332>,  <34.731266, 36.604862, 44.333069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414494, 36.846550, 44.368332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317062, 0.283514, 0.905037,
		0.521844, 0.744676, -0.416097,
		-0.791928, 0.604217, 0.088158,
		34.176914, 37.027817, 44.394779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009289, 37.299126, 44.596226>,  <34.731266, 36.604862, 44.333069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009289, 37.299126, 44.596226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618362, 37.275978, 44.677719>,  <34.383808, 37.262089, 44.726616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618362, 37.275978, 44.677719>,  <35.009289, 37.299126, 44.596226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618362, 37.275978, 44.677719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163803, 0.403232, 0.900318,
		-0.134253, 0.913266, -0.384606,
		-0.977315, -0.057871, 0.203730,
		34.325169, 37.258617, 44.738838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830956, 37.854595, 44.909550>,  <35.009289, 37.299126, 44.596226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830956, 37.854595, 44.909550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523247, 37.625420, 45.022655>,  <34.338619, 37.487915, 45.090519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523247, 37.625420, 45.022655>,  <34.830956, 37.854595, 44.909550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523247, 37.625420, 45.022655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102710, 0.325916, 0.939803,
		-0.630608, 0.752010, -0.191872,
		-0.769275, -0.572940, 0.282764,
		34.292465, 37.453537, 45.107483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404976, 38.339245, 45.279808>,  <34.830956, 37.854595, 44.909550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404976, 38.339245, 45.279808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317368, 37.963501, 45.385357>,  <34.264801, 37.738052, 45.448685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317368, 37.963501, 45.385357>,  <34.404976, 38.339245, 45.279808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317368, 37.963501, 45.385357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083626, 0.287516, 0.954118,
		-0.972130, 0.186904, -0.141527,
		-0.219020, -0.939362, 0.263873,
		34.251663, 37.681694, 45.464520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825787, 38.329781, 45.721382>,  <34.404976, 38.339245, 45.279808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825787, 38.329781, 45.721382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949642, 37.960918, 45.814114>,  <34.023956, 37.739601, 45.869755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949642, 37.960918, 45.814114>,  <33.825787, 38.329781, 45.721382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949642, 37.960918, 45.814114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119974, 0.203978, 0.971596,
		-0.943255, -0.328657, -0.047476,
		0.309638, -0.922159, 0.231833,
		34.042534, 37.684269, 45.883663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346767, 38.113743, 46.208195>,  <33.825787, 38.329781, 45.721382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346767, 38.113743, 46.208195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695202, 37.920803, 46.245178>,  <33.904263, 37.805038, 46.267368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695202, 37.920803, 46.245178>,  <33.346767, 38.113743, 46.208195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695202, 37.920803, 46.245178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000812, 0.186847, 0.982389,
		-0.491135, -0.855817, 0.162367,
		0.871083, -0.482354, 0.092462,
		33.956528, 37.776096, 46.272919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301632, 37.747005, 46.806534>,  <33.346767, 38.113743, 46.208195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301632, 37.747005, 46.806534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695747, 37.718006, 46.744633>,  <33.932217, 37.700607, 46.707493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695747, 37.718006, 46.744633>,  <33.301632, 37.747005, 46.806534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695747, 37.718006, 46.744633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153364, -0.024360, 0.987869,
		-0.075394, -0.997071, -0.012883,
		0.985290, -0.072504, -0.154751,
		33.991333, 37.696255, 46.698208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475239, 37.239685, 47.157303>,  <33.301632, 37.747005, 46.806534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475239, 37.239685, 47.157303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830639, 37.414928, 47.102703>,  <34.043877, 37.520073, 47.069942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830639, 37.414928, 47.102703>,  <33.475239, 37.239685, 47.157303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830639, 37.414928, 47.102703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218268, -0.141819, 0.965529,
		0.403649, -0.887664, -0.221631,
		0.888497, 0.438109, -0.136503,
		34.097187, 37.546360, 47.061752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841560, 36.818466, 47.535545>,  <33.475239, 37.239685, 47.157303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841560, 36.818466, 47.535545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041794, 37.163704, 47.508755>,  <34.161934, 37.370846, 47.492680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041794, 37.163704, 47.508755>,  <33.841560, 36.818466, 47.535545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041794, 37.163704, 47.508755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357109, -0.135403, 0.924196,
		0.788597, -0.486558, -0.375999,
		0.500587, 0.863091, -0.066976,
		34.191971, 37.422630, 47.488663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498211, 36.658363, 47.646351>,  <33.841560, 36.818466, 47.535545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498211, 36.658363, 47.646351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490479, 37.046673, 47.742043>,  <34.485840, 37.279659, 47.799458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490479, 37.046673, 47.742043>,  <34.498211, 36.658363, 47.646351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490479, 37.046673, 47.742043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463519, -0.203304, 0.862449,
		0.885876, 0.127557, -0.446041,
		-0.019330, 0.970771, 0.239227,
		34.484680, 37.337906, 47.813812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828388, 36.615547, 48.219585>,  <34.498211, 36.658363, 47.646351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828388, 36.615547, 48.219585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750767, 37.007751, 48.231880>,  <34.704193, 37.243073, 48.239258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750767, 37.007751, 48.231880>,  <34.828388, 36.615547, 48.219585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750767, 37.007751, 48.231880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326733, 0.035057, 0.944466,
		0.924980, 0.193324, -0.327167,
		-0.194057, 0.980508, 0.030738,
		34.692551, 37.301903, 48.241100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395683, 37.064922, 48.369179>,  <34.828388, 36.615547, 48.219585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395683, 37.064922, 48.369179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047546, 37.219349, 48.491467>,  <34.838665, 37.312004, 48.564838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047546, 37.219349, 48.491467>,  <35.395683, 37.064922, 48.369179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047546, 37.219349, 48.491467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312372, -0.047129, 0.948790,
		0.380702, 0.921267, -0.079577,
		-0.870339, 0.386064, 0.305720,
		34.786446, 37.335167, 48.583183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570179, 37.276661, 49.000828>,  <35.395683, 37.064922, 48.369179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570179, 37.276661, 49.000828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171791, 37.312149, 48.995586>,  <34.932758, 37.333443, 48.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171791, 37.312149, 48.995586>,  <35.570179, 37.276661, 49.000828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171791, 37.312149, 48.995586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029075, -0.181255, 0.983006,
		0.084841, 0.979426, 0.183104,
		-0.995970, 0.088723, -0.013099,
		34.873001, 37.338764, 48.991657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336487, 37.718517, 49.587456>,  <35.570179, 37.276661, 49.000828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336487, 37.718517, 49.587456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018185, 37.488853, 49.510406>,  <34.827202, 37.351055, 49.464176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018185, 37.488853, 49.510406>,  <35.336487, 37.718517, 49.587456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018185, 37.488853, 49.510406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021125, -0.291547, 0.956323,
		-0.605243, 0.765073, 0.219872,
		-0.795760, -0.574163, -0.192619,
		34.779457, 37.316605, 49.452621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001015, 37.717724, 50.239861>,  <35.336487, 37.718517, 49.587456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001015, 37.717724, 50.239861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832012, 37.411480, 50.045818>,  <34.730610, 37.227734, 49.929394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832012, 37.411480, 50.045818>,  <35.001015, 37.717724, 50.239861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832012, 37.411480, 50.045818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032748, -0.521977, 0.852330,
		-0.905769, 0.375999, 0.195465,
		-0.422504, -0.765614, -0.485105,
		34.705261, 37.181797, 49.900288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405624, 37.431419, 50.642918>,  <35.001015, 37.717724, 50.239861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405624, 37.431419, 50.642918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506588, 37.124329, 50.407330>,  <34.567165, 36.940075, 50.265976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506588, 37.124329, 50.407330>,  <34.405624, 37.431419, 50.642918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506588, 37.124329, 50.407330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089187, -0.624543, 0.775882,
		-0.963502, -0.143311, -0.226110,
		0.252408, -0.767729, -0.588967,
		34.582310, 36.894009, 50.230640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155418, 37.666420, 51.377083>,  <34.405624, 37.431419, 50.642918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155418, 37.666420, 51.377083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304680, 37.446926, 51.676323>,  <34.394238, 37.315231, 51.855865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304680, 37.446926, 51.676323>,  <34.155418, 37.666420, 51.377083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304680, 37.446926, 51.676323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509419, -0.552729, -0.659532,
		0.775401, 0.627203, 0.073280,
		0.373157, -0.548732, 0.748096,
		34.416626, 37.282307, 51.900753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824627, 37.674805, 51.268330>,  <34.155418, 37.666420, 51.377083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824627, 37.674805, 51.268330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674614, 37.356571, 51.458656>,  <34.584606, 37.165630, 51.572853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674614, 37.356571, 51.458656>,  <34.824627, 37.674805, 51.268330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674614, 37.356571, 51.458656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538684, -0.604755, -0.586593,
		0.754436, 0.036327, 0.655368,
		-0.375028, -0.795583, 0.475817,
		34.562107, 37.117897, 51.601402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340664, 37.236191, 51.649117>,  <34.824627, 37.674805, 51.268330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340664, 37.236191, 51.649117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032001, 37.041405, 51.485451>,  <34.846806, 36.924534, 51.387253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032001, 37.041405, 51.485451>,  <35.340664, 37.236191, 51.649117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032001, 37.041405, 51.485451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635327, -0.559648, -0.532121,
		0.030136, -0.670567, 0.741237,
		-0.771655, -0.486964, -0.409164,
		34.800507, 36.895317, 51.362701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328873, 36.402264, 51.772541>,  <35.340664, 37.236191, 51.649117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328873, 36.402264, 51.772541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203987, 36.556362, 51.425182>,  <35.129055, 36.648823, 51.216766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203987, 36.556362, 51.425182>,  <35.328873, 36.402264, 51.772541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203987, 36.556362, 51.425182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727136, -0.491366, -0.479408,
		-0.611390, -0.781117, -0.126718,
		-0.312209, 0.385246, -0.868395,
		35.110325, 36.671936, 51.164665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073833, 35.930374, 51.239822>,  <35.328873, 36.402264, 51.772541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073833, 35.930374, 51.239822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265923, 36.250412, 51.096024>,  <35.381176, 36.442436, 51.009743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.265923, 36.250412, 51.096024>,  <35.073833, 35.930374, 51.239822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265923, 36.250412, 51.096024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679418, -0.598511, -0.424471,
		-0.554780, -0.040409, -0.831015,
		0.480219, 0.800095, -0.359496,
		35.409988, 36.490440, 50.988174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274883, 36.055119, 51.067173>,  <35.073833, 35.930374, 51.239822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274883, 36.055119, 51.067173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054962, 36.293205, 51.301586>,  <33.923008, 36.436058, 51.442234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054962, 36.293205, 51.301586>,  <34.274883, 36.055119, 51.067173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054962, 36.293205, 51.301586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080306, -0.660675, 0.746364,
		0.831426, 0.457415, 0.315441,
		-0.549802, 0.595215, 0.586035,
		33.890022, 36.471771, 51.477398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164230, 36.062302, 50.233116>,  <34.274883, 36.055119, 51.067173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164230, 36.062302, 50.233116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404911, 35.905983, 50.511753>,  <34.549320, 35.812191, 50.678936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404911, 35.905983, 50.511753>,  <34.164230, 36.062302, 50.233116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404911, 35.905983, 50.511753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013551, -0.867010, -0.498107,
		0.798609, 0.309149, -0.516382,
		0.601697, -0.390795, 0.696591,
		34.585419, 35.788746, 50.720730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792381, 35.858074, 49.959854>,  <34.164230, 36.062302, 50.233116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792381, 35.858074, 49.959854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716602, 35.623466, 50.274841>,  <34.671135, 35.482700, 50.463833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716602, 35.623466, 50.274841>,  <34.792381, 35.858074, 49.959854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716602, 35.623466, 50.274841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002184, -0.802237, -0.597001,
		0.981888, -0.111380, 0.153262,
		-0.189447, -0.586523, 0.787464,
		34.659767, 35.447510, 50.511082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214531, 35.252216, 49.952221>,  <34.792381, 35.858074, 49.959854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214531, 35.252216, 49.952221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872154, 35.151527, 50.132885>,  <34.666729, 35.091114, 50.241283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872154, 35.151527, 50.132885>,  <35.214531, 35.252216, 49.952221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872154, 35.151527, 50.132885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091239, -0.786269, -0.611110,
		0.508959, -0.564284, 0.650034,
		-0.855942, -0.251721, 0.451664,
		34.615372, 35.076012, 50.268383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241997, 34.642586, 50.192249>,  <35.214531, 35.252216, 49.952221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241997, 34.642586, 50.192249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874088, 34.729603, 50.061596>,  <34.653343, 34.781811, 49.983204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874088, 34.729603, 50.061596>,  <35.241997, 34.642586, 50.192249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874088, 34.729603, 50.061596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145538, -0.583876, -0.798691,
		-0.364460, -0.782154, 0.505375,
		-0.919776, 0.217540, -0.326633,
		34.598156, 34.794865, 49.963608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798500, 34.014915, 50.163975>,  <35.241997, 34.642586, 50.192249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798500, 34.014915, 50.163975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767818, 34.310387, 49.896103>,  <34.749409, 34.487671, 49.735382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767818, 34.310387, 49.896103>,  <34.798500, 34.014915, 50.163975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767818, 34.310387, 49.896103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138289, -0.657283, -0.740848,
		-0.987417, -0.149438, -0.051733,
		-0.076707, 0.738680, -0.669678,
		34.744804, 34.531990, 49.695198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415886, 33.613846, 49.576897>,  <34.798500, 34.014915, 50.163975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415886, 33.613846, 49.576897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514503, 33.954338, 49.391586>,  <34.573673, 34.158634, 49.280399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514503, 33.954338, 49.391586>,  <34.415886, 33.613846, 49.576897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514503, 33.954338, 49.391586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205870, -0.421121, -0.883331,
		-0.947012, 0.313157, 0.071417,
		0.246546, 0.851228, -0.463277,
		34.588467, 34.209705, 49.252602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964527, 33.708664, 49.105556>,  <34.415886, 33.613846, 49.576897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964527, 33.708664, 49.105556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273182, 33.933430, 48.986340>,  <34.458374, 34.068291, 48.914810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273182, 33.933430, 48.986340>,  <33.964527, 33.708664, 49.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273182, 33.933430, 48.986340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073332, -0.386852, -0.919221,
		-0.631820, 0.731162, -0.257304,
		0.771639, 0.561914, -0.298039,
		34.504673, 34.102005, 48.896927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736099, 33.742992, 48.385925>,  <33.964527, 33.708664, 49.105556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736099, 33.742992, 48.385925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115978, 33.867809, 48.396484>,  <34.343906, 33.942699, 48.402821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115978, 33.867809, 48.396484>,  <33.736099, 33.742992, 48.385925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115978, 33.867809, 48.396484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130353, -0.317270, -0.939334,
		-0.284740, 0.895526, -0.341988,
		0.949700, 0.312046, 0.026395,
		34.400887, 33.961422, 48.404404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963776, 34.108425, 47.763863>,  <33.736099, 33.742992, 48.385925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963776, 34.108425, 47.763863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312088, 33.978489, 47.911491>,  <34.521076, 33.900528, 48.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312088, 33.978489, 47.911491>,  <33.963776, 34.108425, 47.763863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312088, 33.978489, 47.911491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285265, -0.277597, -0.917368,
		0.400453, 0.904112, -0.149061,
		0.870782, -0.324841, 0.369076,
		34.573322, 33.881035, 48.022213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521713, 34.211998, 47.130344>,  <33.963776, 34.108425, 47.763863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521713, 34.211998, 47.130344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682304, 33.954205, 47.390636>,  <34.778660, 33.799530, 47.546814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682304, 33.954205, 47.390636>,  <34.521713, 34.211998, 47.130344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682304, 33.954205, 47.390636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379654, -0.529480, -0.758626,
		0.833474, 0.551625, 0.032107,
		0.401477, -0.644485, 0.650735,
		34.802746, 33.760860, 47.585857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128166, 34.144299, 46.888897>,  <34.521713, 34.211998, 47.130344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128166, 34.144299, 46.888897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079411, 33.828270, 47.129208>,  <35.050156, 33.638653, 47.273396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079411, 33.828270, 47.129208>,  <35.128166, 34.144299, 46.888897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079411, 33.828270, 47.129208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254431, -0.609940, -0.750492,
		0.959379, 0.061378, 0.275364,
		-0.121892, -0.790067, 0.600780,
		35.042843, 33.591251, 47.309441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808029, 33.805901, 46.923725>,  <35.128166, 34.144299, 46.888897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808029, 33.805901, 46.923725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510124, 33.551888, 47.005768>,  <35.331383, 33.399479, 47.054993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510124, 33.551888, 47.005768>,  <35.808029, 33.805901, 46.923725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510124, 33.551888, 47.005768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219885, -0.523708, -0.823031,
		0.630068, -0.567859, 0.529670,
		-0.744758, -0.635032, 0.205108,
		35.286697, 33.361378, 47.067299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071869, 33.290340, 46.615150>,  <35.808029, 33.805901, 46.923725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071869, 33.290340, 46.615150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693722, 33.182457, 46.688404>,  <35.466835, 33.117725, 46.732357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693722, 33.182457, 46.688404>,  <36.071869, 33.290340, 46.615150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693722, 33.182457, 46.688404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033171, -0.479248, -0.877052,
		0.324314, -0.835211, 0.444119,
		-0.945368, -0.269709, 0.183132,
		35.410110, 33.101543, 46.743343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084583, 32.618816, 46.532925>,  <36.071869, 33.290340, 46.615150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084583, 32.618816, 46.532925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704010, 32.728333, 46.476612>,  <35.475666, 32.794041, 46.442825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704010, 32.728333, 46.476612>,  <36.084583, 32.618816, 46.532925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704010, 32.728333, 46.476612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044750, -0.575415, -0.816636,
		-0.304592, -0.770673, 0.559720,
		-0.951431, 0.273789, -0.140779,
		35.418579, 32.810471, 46.434380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811642, 32.025372, 46.319492>,  <36.084583, 32.618816, 46.532925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811642, 32.025372, 46.319492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565075, 32.311279, 46.187351>,  <35.417133, 32.482822, 46.108067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565075, 32.311279, 46.187351>,  <35.811642, 32.025372, 46.319492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565075, 32.311279, 46.187351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042158, -0.388982, -0.920281,
		-0.786287, -0.581208, 0.209643,
		-0.616422, 0.714767, -0.330354,
		35.380150, 32.525711, 46.088245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277294, 31.676500, 45.896790>,  <35.811642, 32.025372, 46.319492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277294, 31.676500, 45.896790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231754, 32.047485, 45.754322>,  <35.204430, 32.270077, 45.668842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231754, 32.047485, 45.754322>,  <35.277294, 31.676500, 45.896790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231754, 32.047485, 45.754322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034909, -0.362009, -0.931521,
		-0.992884, -0.093623, 0.073592,
		-0.113853, 0.927461, -0.356165,
		35.197598, 32.325726, 45.647472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858547, 31.523832, 45.447727>,  <35.277294, 31.676500, 45.896790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858547, 31.523832, 45.447727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979641, 31.894562, 45.358868>,  <35.052296, 32.117001, 45.305550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979641, 31.894562, 45.358868>,  <34.858547, 31.523832, 45.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979641, 31.894562, 45.358868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218903, -0.159241, -0.962665,
		-0.927597, 0.340058, 0.154678,
		0.302730, 0.926824, -0.222152,
		35.070461, 32.172607, 45.292221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379997, 31.826405, 45.069550>,  <34.858547, 31.523832, 45.447727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379997, 31.826405, 45.069550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722797, 32.005569, 44.967625>,  <34.928478, 32.113068, 44.906471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722797, 32.005569, 44.967625>,  <34.379997, 31.826405, 45.069550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722797, 32.005569, 44.967625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248294, -0.074380, -0.965825,
		-0.451558, 0.890978, 0.047471,
		0.856998, 0.447913, -0.254811,
		34.979897, 32.139942, 44.891182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183094, 32.375397, 44.648632>,  <34.379997, 31.826405, 45.069550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183094, 32.375397, 44.648632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561905, 32.273159, 44.570843>,  <34.789192, 32.211815, 44.524170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561905, 32.273159, 44.570843>,  <34.183094, 32.375397, 44.648632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561905, 32.273159, 44.570843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217068, -0.063115, -0.974114,
		0.236703, 0.964722, -0.115253,
		0.947023, -0.255593, -0.194471,
		34.846012, 32.196480, 44.512501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247730, 32.656532, 43.952839>,  <34.183094, 32.375397, 44.648632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247730, 32.656532, 43.952839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554752, 32.408257, 44.016850>,  <34.738964, 32.259293, 44.055256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554752, 32.408257, 44.016850>,  <34.247730, 32.656532, 43.952839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554752, 32.408257, 44.016850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092826, -0.354660, -0.930376,
		0.634228, 0.699259, -0.329837,
		0.767554, -0.620687, 0.160026,
		34.785019, 32.222050, 44.064857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697914, 32.706318, 43.478378>,  <34.247730, 32.656532, 43.952839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697914, 32.706318, 43.478378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802376, 32.342098, 43.606560>,  <34.865051, 32.123566, 43.683468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802376, 32.342098, 43.606560>,  <34.697914, 32.706318, 43.478378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802376, 32.342098, 43.606560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146404, -0.290775, -0.945524,
		0.954131, 0.293841, 0.057372,
		0.261151, -0.910553, 0.320457,
		34.880722, 32.068932, 43.702698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377354, 32.563557, 43.126450>,  <34.697914, 32.706318, 43.478378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377354, 32.563557, 43.126450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211166, 32.223145, 43.254902>,  <35.111454, 32.018898, 43.331974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211166, 32.223145, 43.254902>,  <35.377354, 32.563557, 43.126450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211166, 32.223145, 43.254902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128298, -0.404343, -0.905564,
		0.900513, -0.335034, 0.277178,
		-0.415470, -0.851034, 0.321133,
		35.086525, 31.967834, 43.351242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823078, 31.986273, 42.851360>,  <35.377354, 32.563557, 43.126450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823078, 31.986273, 42.851360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461090, 31.830433, 42.919762>,  <35.243896, 31.736929, 42.960800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461090, 31.830433, 42.919762>,  <35.823078, 31.986273, 42.851360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461090, 31.830433, 42.919762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031870, -0.338702, -0.940354,
		0.424281, -0.856442, 0.294098,
		-0.904970, -0.389601, 0.170999,
		35.189598, 31.713552, 42.971062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817776, 31.270201, 42.533218>,  <35.823078, 31.986273, 42.851360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817776, 31.270201, 42.533218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431614, 31.348991, 42.601570>,  <35.199917, 31.396265, 42.642582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431614, 31.348991, 42.601570>,  <35.817776, 31.270201, 42.533218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431614, 31.348991, 42.601570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248150, -0.492538, -0.834163,
		-0.080144, -0.847706, 0.524376,
		-0.965401, 0.196977, 0.170884,
		35.141994, 31.408085, 42.652836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434471, 30.606510, 42.357422>,  <35.817776, 31.270201, 42.533218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434471, 30.606510, 42.357422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185146, 30.918201, 42.331242>,  <35.035553, 31.105217, 42.315533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185146, 30.918201, 42.331242>,  <35.434471, 30.606510, 42.357422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185146, 30.918201, 42.331242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352402, -0.354638, -0.866051,
		-0.698065, -0.516753, 0.495652,
		-0.623312, 0.779229, -0.065455,
		34.998154, 31.151970, 42.311604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696831, 30.293419, 42.170624>,  <35.434471, 30.606510, 42.357422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696831, 30.293419, 42.170624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709164, 30.680468, 42.070419>,  <34.716564, 30.912697, 42.010296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709164, 30.680468, 42.070419>,  <34.696831, 30.293419, 42.170624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709164, 30.680468, 42.070419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330458, -0.226668, -0.916198,
		-0.943317, 0.111028, 0.312771,
		0.030829, 0.967623, -0.250510,
		34.718410, 30.970755, 41.995266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068863, 30.548065, 41.849007>,  <34.696831, 30.293419, 42.170624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068863, 30.548065, 41.849007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320843, 30.821653, 41.701851>,  <34.472031, 30.985807, 41.613556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320843, 30.821653, 41.701851>,  <34.068863, 30.548065, 41.849007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320843, 30.821653, 41.701851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402176, -0.117940, -0.907934,
		-0.664390, 0.719912, 0.200780,
		0.629952, 0.683972, -0.367890,
		34.509827, 31.026844, 41.591484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612514, 30.760195, 41.313114>,  <34.068863, 30.548065, 41.849007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612514, 30.760195, 41.313114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961769, 30.927567, 41.213074>,  <34.171322, 31.027988, 41.153049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961769, 30.927567, 41.213074>,  <33.612514, 30.760195, 41.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961769, 30.927567, 41.213074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242907, -0.071376, -0.967420,
		-0.422646, 0.905441, 0.039318,
		0.873136, 0.418427, -0.250105,
		34.223709, 31.053095, 41.138042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466133, 31.238438, 40.689949>,  <33.612514, 30.760195, 41.313114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466133, 31.238438, 40.689949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856689, 31.152559, 40.699478>,  <34.091022, 31.101032, 40.705196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856689, 31.152559, 40.699478>,  <33.466133, 31.238438, 40.689949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856689, 31.152559, 40.699478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000291, -0.108987, -0.994043,
		0.216015, 0.970581, -0.106351,
		0.976390, -0.214698, 0.023825,
		34.149605, 31.088150, 40.706627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784451, 31.673058, 40.186962>,  <33.466133, 31.238438, 40.689949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784451, 31.673058, 40.186962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052006, 31.380495, 40.240078>,  <34.212540, 31.204958, 40.271950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052006, 31.380495, 40.240078>,  <33.784451, 31.673058, 40.186962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052006, 31.380495, 40.240078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025710, -0.201293, -0.979194,
		0.742916, 0.651559, -0.153447,
		0.668890, -0.731404, 0.132793,
		34.252674, 31.161074, 40.279915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161625, 31.788322, 39.638287>,  <33.784451, 31.673058, 40.186962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161625, 31.788322, 39.638287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281349, 31.422110, 39.745777>,  <34.353184, 31.202381, 39.810272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281349, 31.422110, 39.745777>,  <34.161625, 31.788322, 39.638287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281349, 31.422110, 39.745777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182024, -0.221679, -0.957980,
		0.936633, 0.335647, 0.100298,
		0.299309, -0.915532, 0.268727,
		34.371143, 31.147449, 39.826397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760841, 31.730330, 39.218510>,  <34.161625, 31.788322, 39.638287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760841, 31.730330, 39.218510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619083, 31.375256, 39.336102>,  <34.534031, 31.162210, 39.406654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619083, 31.375256, 39.336102>,  <34.760841, 31.730330, 39.218510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619083, 31.375256, 39.336102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071496, -0.339182, -0.938000,
		0.932360, -0.311402, 0.183669,
		-0.354392, -0.887684, 0.293976,
		34.512764, 31.108950, 39.424294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195652, 31.152075, 39.023220>,  <34.760841, 31.730330, 39.218510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195652, 31.152075, 39.023220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831360, 30.991163, 39.060638>,  <34.612785, 30.894617, 39.083088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831360, 30.991163, 39.060638>,  <35.195652, 31.152075, 39.023220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831360, 30.991163, 39.060638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033151, -0.296965, -0.954313,
		0.411679, -0.866016, 0.283790,
		-0.910726, -0.402278, 0.093545,
		34.558144, 30.870480, 39.088703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211941, 30.647167, 38.539318>,  <35.195652, 31.152075, 39.023220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211941, 30.647167, 38.539318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821732, 30.674240, 38.623005>,  <34.587605, 30.690483, 38.673218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821732, 30.674240, 38.623005>,  <35.211941, 30.647167, 38.539318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821732, 30.674240, 38.623005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218546, -0.193266, -0.956497,
		-0.024300, -0.978809, 0.203327,
		-0.975524, 0.067679, 0.209219,
		34.529076, 30.694544, 38.685772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818031, 30.037102, 38.258030>,  <35.211941, 30.647167, 38.539318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818031, 30.037102, 38.258030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541718, 30.322357, 38.305767>,  <34.375927, 30.493511, 38.334412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541718, 30.322357, 38.305767>,  <34.818031, 30.037102, 38.258030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541718, 30.322357, 38.305767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275082, -0.106554, -0.955498,
		-0.668686, -0.692877, 0.269778,
		-0.690788, 0.713139, 0.119347,
		34.334480, 30.536299, 38.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146191, 29.842525, 37.842453>,  <34.818031, 30.037102, 38.258030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146191, 29.842525, 37.842453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122761, 30.234234, 37.920017>,  <34.108704, 30.469259, 37.966557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122761, 30.234234, 37.920017>,  <34.146191, 29.842525, 37.842453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122761, 30.234234, 37.920017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355657, 0.161027, -0.920640,
		-0.932779, -0.122895, 0.338851,
		-0.058578, 0.979269, 0.193911,
		34.105186, 30.528015, 37.978191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598007, 29.962864, 37.452400>,  <34.146191, 29.842525, 37.842453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598007, 29.962864, 37.452400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813522, 30.291664, 37.526180>,  <33.942833, 30.488945, 37.570450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813522, 30.291664, 37.526180>,  <33.598007, 29.962864, 37.452400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813522, 30.291664, 37.526180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130947, 0.298001, -0.945541,
		-0.832203, 0.485292, 0.268198,
		0.538787, 0.822002, 0.184449,
		33.975159, 30.538265, 37.581516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200211, 30.596067, 37.371456>,  <33.598007, 29.962864, 37.452400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200211, 30.596067, 37.371456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572392, 30.735847, 37.327381>,  <33.795700, 30.819715, 37.300934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572392, 30.735847, 37.327381>,  <33.200211, 30.596067, 37.371456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572392, 30.735847, 37.327381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252163, 0.392509, -0.884506,
		-0.265838, 0.850778, 0.453329,
		0.930453, 0.349448, -0.110191,
		33.851528, 30.840681, 37.294323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100067, 31.124140, 37.024864>,  <33.200211, 30.596067, 37.371456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100067, 31.124140, 37.024864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494877, 31.121092, 36.960712>,  <33.731762, 31.119263, 36.922222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494877, 31.121092, 36.960712>,  <33.100067, 31.124140, 37.024864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494877, 31.121092, 36.960712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133253, 0.518373, -0.844709,
		0.089574, 0.855121, 0.510632,
		0.987026, -0.007621, -0.160380,
		33.790985, 31.118805, 36.912598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212730, 31.826145, 36.861084>,  <33.100067, 31.124140, 37.024864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212730, 31.826145, 36.861084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557449, 31.652090, 36.756813>,  <33.764282, 31.547657, 36.694248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557449, 31.652090, 36.756813>,  <33.212730, 31.826145, 36.861084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557449, 31.652090, 36.756813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112046, 0.664518, -0.738824,
		0.494718, 0.607510, 0.621438,
		0.861800, -0.435139, -0.260680,
		33.815990, 31.521547, 36.678608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915249, 32.310337, 36.879902>,  <33.212730, 31.826145, 36.861084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915249, 32.310337, 36.879902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947765, 32.012524, 36.614857>,  <33.967274, 31.833836, 36.455830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947765, 32.012524, 36.614857>,  <33.915249, 32.310337, 36.879902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947765, 32.012524, 36.614857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179023, 0.664909, -0.725153,
		0.980481, -0.059675, 0.187339,
		0.081290, -0.744537, -0.662614,
		33.972153, 31.789162, 36.416073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440861, 32.500511, 36.638805>,  <33.915249, 32.310337, 36.879902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440861, 32.500511, 36.638805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268082, 32.253239, 36.376118>,  <34.164413, 32.104874, 36.218506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268082, 32.253239, 36.376118>,  <34.440861, 32.500511, 36.638805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268082, 32.253239, 36.376118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136787, 0.674821, -0.725194,
		0.891467, -0.403074, -0.206927,
		-0.431945, -0.618181, -0.656715,
		34.138496, 32.067783, 36.179104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753532, 32.752934, 36.010471>,  <34.440861, 32.500511, 36.638805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753532, 32.752934, 36.010471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434078, 32.526527, 35.928692>,  <34.242405, 32.390682, 35.879623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434078, 32.526527, 35.928692>,  <34.753532, 32.752934, 36.010471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434078, 32.526527, 35.928692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220388, 0.591200, -0.775829,
		0.560004, -0.574550, -0.596899,
		-0.798640, -0.566017, -0.204451,
		34.194489, 32.356720, 35.867355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825924, 32.656391, 35.292603>,  <34.753532, 32.752934, 36.010471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825924, 32.656391, 35.292603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452118, 32.630619, 35.432621>,  <34.227837, 32.615158, 35.516632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452118, 32.630619, 35.432621>,  <34.825924, 32.656391, 35.292603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452118, 32.630619, 35.432621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243129, 0.833826, -0.495603,
		-0.259950, -0.548254, -0.794886,
		-0.934513, -0.064428, 0.350050,
		34.171764, 32.611290, 35.537636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072590, 32.070107, 35.533264>,  <34.825924, 32.656391, 35.292603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072590, 32.070107, 35.533264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387268, 32.209862, 35.329678>,  <35.576077, 32.293713, 35.207527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387268, 32.209862, 35.329678>,  <35.072590, 32.070107, 35.533264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387268, 32.209862, 35.329678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344866, 0.435087, 0.831725,
		0.512032, -0.829838, 0.221791,
		0.786695, 0.349382, -0.508962,
		35.623276, 32.314678, 35.176991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744865, 31.784222, 35.782860>,  <35.072590, 32.070107, 35.533264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744865, 31.784222, 35.782860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812599, 32.149368, 35.634262>,  <35.853237, 32.368454, 35.545105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812599, 32.149368, 35.634262>,  <35.744865, 31.784222, 35.782860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812599, 32.149368, 35.634262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390460, 0.283953, 0.875735,
		0.904913, -0.293342, -0.308355,
		0.169331, 0.912864, -0.371491,
		35.863400, 32.423229, 35.522816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492058, 31.943466, 35.955429>,  <35.744865, 31.784222, 35.782860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492058, 31.943466, 35.955429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352188, 32.311131, 35.882908>,  <36.268265, 32.531731, 35.839397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352188, 32.311131, 35.882908>,  <36.492058, 31.943466, 35.955429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352188, 32.311131, 35.882908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464129, 0.338058, 0.818719,
		0.813824, 0.202141, -0.544820,
		-0.349677, 0.919161, -0.181300,
		36.247284, 32.586880, 35.828518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062103, 32.322319, 36.121395>,  <36.492058, 31.943466, 35.955429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062103, 32.322319, 36.121395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738605, 32.556633, 36.142529>,  <36.544506, 32.697220, 36.155209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738605, 32.556633, 36.142529>,  <37.062103, 32.322319, 36.121395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738605, 32.556633, 36.142529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353318, 0.412046, 0.839872,
		0.470214, 0.697907, -0.540208,
		-0.808743, 0.585784, 0.052833,
		36.495983, 32.732368, 36.158379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322540, 32.990833, 36.240311>,  <37.062103, 32.322319, 36.121395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322540, 32.990833, 36.240311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935688, 33.034729, 36.332062>,  <36.703575, 33.061066, 36.387112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935688, 33.034729, 36.332062>,  <37.322540, 32.990833, 36.240311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935688, 33.034729, 36.332062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253825, 0.362893, 0.896594,
		0.015148, 0.925347, -0.378819,
		-0.967131, 0.109736, 0.229379,
		36.645550, 33.067650, 36.400875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285034, 33.616016, 36.546478>,  <37.322540, 32.990833, 36.240311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285034, 33.616016, 36.546478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982803, 33.385010, 36.670139>,  <36.801464, 33.246407, 36.744335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982803, 33.385010, 36.670139>,  <37.285034, 33.616016, 36.546478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982803, 33.385010, 36.670139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306694, 0.105145, 0.945983,
		-0.578823, 0.809582, 0.097675,
		-0.755581, -0.577513, 0.309154,
		36.756130, 33.211758, 36.762886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003250, 34.031464, 37.048534>,  <37.285034, 33.616016, 36.546478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003250, 34.031464, 37.048534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854343, 33.676655, 37.157787>,  <36.764999, 33.463768, 37.223339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854343, 33.676655, 37.157787>,  <37.003250, 34.031464, 37.048534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854343, 33.676655, 37.157787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241688, 0.191487, 0.951273,
		-0.896106, 0.420139, 0.143100,
		-0.372265, -0.887027, 0.273135,
		36.742664, 33.410545, 37.239727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623634, 34.127274, 37.683365>,  <37.003250, 34.031464, 37.048534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623634, 34.127274, 37.683365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686279, 33.732418, 37.696224>,  <36.723866, 33.495506, 37.703938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686279, 33.732418, 37.696224>,  <36.623634, 34.127274, 37.683365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686279, 33.732418, 37.696224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179321, 0.060427, 0.981933,
		-0.971245, -0.148019, 0.186478,
		0.156613, -0.987137, 0.032146,
		36.733265, 33.436275, 37.705868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237808, 33.934765, 38.257099>,  <36.623634, 34.127274, 37.683365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237808, 33.934765, 38.257099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528931, 33.668823, 38.189854>,  <36.703606, 33.509258, 38.149506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528931, 33.668823, 38.189854>,  <36.237808, 33.934765, 38.257099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528931, 33.668823, 38.189854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226760, 0.001955, 0.973949,
		-0.647205, -0.746971, 0.152185,
		0.727809, -0.664853, -0.168118,
		36.747272, 33.469368, 38.139420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093479, 33.380867, 38.686916>,  <36.237808, 33.934765, 38.257099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093479, 33.380867, 38.686916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481335, 33.338829, 38.598595>,  <36.714046, 33.313606, 38.545601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481335, 33.338829, 38.598595>,  <36.093479, 33.380867, 38.686916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481335, 33.338829, 38.598595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174768, -0.333752, 0.926318,
		-0.171045, -0.936784, -0.305252,
		0.969639, -0.105094, -0.220807,
		36.772224, 33.307301, 38.532352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370670, 32.675518, 38.975346>,  <36.093479, 33.380867, 38.686916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370670, 32.675518, 38.975346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692833, 32.907646, 38.927109>,  <36.886131, 33.046925, 38.898167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692833, 32.907646, 38.927109>,  <36.370670, 32.675518, 38.975346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692833, 32.907646, 38.927109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405345, -0.390843, 0.826400,
		0.432447, -0.714470, -0.550020,
		0.805410, 0.580322, -0.120588,
		36.934456, 33.081741, 38.890934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876190, 32.368454, 39.333210>,  <36.370670, 32.675518, 38.975346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876190, 32.368454, 39.333210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049480, 32.725323, 39.282059>,  <37.153454, 32.939442, 39.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049480, 32.725323, 39.282059>,  <36.876190, 32.368454, 39.333210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049480, 32.725323, 39.282059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370374, -0.046882, 0.927699,
		0.821668, -0.449266, -0.350746,
		0.433227, 0.892167, -0.127875,
		37.179447, 32.992973, 39.243698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636322, 32.303501, 39.538307>,  <36.876190, 32.368454, 39.333210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636322, 32.303501, 39.538307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489281, 32.672085, 39.588539>,  <37.401054, 32.893234, 39.618679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489281, 32.672085, 39.588539>,  <37.636322, 32.303501, 39.538307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489281, 32.672085, 39.588539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237715, -0.037449, 0.970613,
		0.899086, 0.386658, -0.205279,
		-0.367608, 0.921462, 0.125584,
		37.378998, 32.948524, 39.626213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110126, 32.639454, 40.070889>,  <37.636322, 32.303501, 39.538307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110126, 32.639454, 40.070889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788296, 32.876972, 40.074070>,  <37.595196, 33.019482, 40.075981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788296, 32.876972, 40.074070>,  <38.110126, 32.639454, 40.070889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788296, 32.876972, 40.074070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024222, 0.019426, 0.999518,
		0.593356, 0.804380, -0.030013,
		-0.804576, 0.593797, 0.007957,
		37.546925, 33.055111, 40.076458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312683, 33.056007, 40.456223>,  <38.110126, 32.639454, 40.070889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312683, 33.056007, 40.456223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920601, 33.134907, 40.463081>,  <37.685352, 33.182247, 40.467197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920601, 33.134907, 40.463081>,  <38.312683, 33.056007, 40.456223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920601, 33.134907, 40.463081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022171, 0.023274, 0.999483,
		0.196745, 0.980078, -0.027186,
		-0.980204, 0.197246, 0.017150,
		37.626541, 33.194080, 40.468227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194054, 33.591022, 40.888180>,  <38.312683, 33.056007, 40.456223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194054, 33.591022, 40.888180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833534, 33.417786, 40.892048>,  <37.617222, 33.313843, 40.894371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833534, 33.417786, 40.892048>,  <38.194054, 33.591022, 40.888180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833534, 33.417786, 40.892048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026934, 0.078308, 0.996565,
		-0.432360, 0.897943, -0.082244,
		-0.901299, -0.433090, 0.009672,
		37.563145, 33.287857, 40.894951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791096, 34.021091, 41.404362>,  <38.194054, 33.591022, 40.888180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791096, 34.021091, 41.404362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566227, 33.695801, 41.344193>,  <37.431305, 33.500626, 41.308090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566227, 33.695801, 41.344193>,  <37.791096, 34.021091, 41.404362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566227, 33.695801, 41.344193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075343, -0.130763, 0.988547,
		-0.823579, 0.567070, 0.012241,
		-0.562176, -0.813223, -0.150419,
		37.397575, 33.451832, 41.299068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160469, 34.086140, 41.808060>,  <37.791096, 34.021091, 41.404362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160469, 34.086140, 41.808060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215359, 33.692989, 41.758862>,  <37.248291, 33.457100, 41.729343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215359, 33.692989, 41.758862>,  <37.160469, 34.086140, 41.808060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215359, 33.692989, 41.758862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054912, -0.131527, 0.989791,
		-0.989017, -0.129070, -0.072020,
		0.137225, -0.982874, -0.122995,
		37.256527, 33.398129, 41.721962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639565, 33.856720, 42.249500>,  <37.160469, 34.086140, 41.808060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639565, 33.856720, 42.249500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906498, 33.563290, 42.198067>,  <37.066658, 33.387230, 42.167206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906498, 33.563290, 42.198067>,  <36.639565, 33.856720, 42.249500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906498, 33.563290, 42.198067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042705, -0.210063, 0.976755,
		-0.743537, -0.646326, -0.171509,
		0.667329, -0.733578, -0.128588,
		37.106697, 33.343216, 42.159489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402119, 33.147346, 42.497196>,  <36.639565, 33.856720, 42.249500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402119, 33.147346, 42.497196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801693, 33.129425, 42.501427>,  <37.041439, 33.118671, 42.503963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801693, 33.129425, 42.501427>,  <36.402119, 33.147346, 42.497196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801693, 33.129425, 42.501427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025632, -0.350617, 0.936168,
		-0.038235, -0.935447, -0.351394,
		0.998940, -0.044802, 0.010572,
		37.101376, 33.115986, 42.504597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435833, 32.743755, 42.950748>,  <36.402119, 33.147346, 42.497196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435833, 32.743755, 42.950748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803318, 32.900509, 42.931213>,  <37.023811, 32.994560, 42.919491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803318, 32.900509, 42.931213>,  <36.435833, 32.743755, 42.950748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803318, 32.900509, 42.931213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101783, -0.115474, 0.988082,
		0.381578, -0.912737, -0.145976,
		0.918715, 0.391889, -0.048839,
		37.078934, 33.018074, 42.916561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982513, 32.292240, 43.252064>,  <36.435833, 32.743755, 42.950748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982513, 32.292240, 43.252064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143143, 32.656563, 43.290382>,  <37.239521, 32.875156, 43.313374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143143, 32.656563, 43.290382>,  <36.982513, 32.292240, 43.252064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143143, 32.656563, 43.290382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225900, -0.199881, 0.953424,
		0.887529, -0.361228, -0.286017,
		0.401573, 0.910803, 0.095799,
		37.263615, 32.929802, 43.319122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659389, 32.216259, 43.711525>,  <36.982513, 32.292240, 43.252064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659389, 32.216259, 43.711525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554878, 32.602360, 43.713570>,  <37.492172, 32.834019, 43.714798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554878, 32.602360, 43.713570>,  <37.659389, 32.216259, 43.711525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554878, 32.602360, 43.713570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303776, 0.077196, 0.949611,
		0.916218, 0.249663, -0.313390,
		-0.261275, 0.965251, 0.005113,
		37.476498, 32.891933, 43.715103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077873, 32.496769, 44.241642>,  <37.659389, 32.216259, 43.711525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077873, 32.496769, 44.241642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804375, 32.782909, 44.184010>,  <37.640274, 32.954594, 44.149429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804375, 32.782909, 44.184010>,  <38.077873, 32.496769, 44.241642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804375, 32.782909, 44.184010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160039, 0.339644, 0.926838,
		0.711954, 0.610663, -0.346715,
		-0.683746, 0.715354, -0.144081,
		37.599251, 32.997517, 44.140785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337643, 33.123386, 44.565582>,  <38.077873, 32.496769, 44.241642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337643, 33.123386, 44.565582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948021, 33.204975, 44.526348>,  <37.714249, 33.253929, 44.502808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.948021, 33.204975, 44.526348>,  <38.337643, 33.123386, 44.565582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948021, 33.204975, 44.526348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005194, 0.453414, 0.891285,
		0.226275, 0.867647, -0.442707,
		-0.974050, 0.203974, -0.098090,
		37.655807, 33.266167, 44.496922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277645, 33.856972, 44.762295>,  <38.337643, 33.123386, 44.565582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277645, 33.856972, 44.762295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919621, 33.681072, 44.791916>,  <37.704807, 33.575531, 44.809689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919621, 33.681072, 44.791916>,  <38.277645, 33.856972, 44.762295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919621, 33.681072, 44.791916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210606, 0.563207, 0.799027,
		-0.393079, 0.699583, -0.596719,
		-0.895061, -0.439753, 0.074048,
		37.651104, 33.549145, 44.814129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752518, 34.420536, 44.834446>,  <38.277645, 33.856972, 44.762295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752518, 34.420536, 44.834446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589439, 34.091431, 44.992855>,  <37.491592, 33.893967, 45.087902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589439, 34.091431, 44.992855>,  <37.752518, 34.420536, 44.834446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589439, 34.091431, 44.992855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180901, 0.497889, 0.848164,
		-0.895017, 0.274154, -0.351828,
		-0.407699, -0.822767, 0.396024,
		37.467129, 33.844601, 45.111664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060215, 34.607944, 45.036133>,  <37.752518, 34.420536, 44.834446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060215, 34.607944, 45.036133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187355, 34.295475, 45.251072>,  <37.263638, 34.107994, 45.380035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187355, 34.295475, 45.251072>,  <37.060215, 34.607944, 45.036133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187355, 34.295475, 45.251072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066366, 0.547021, 0.834484,
		-0.945816, -0.300901, 0.122027,
		0.317848, -0.781170, 0.537351,
		37.282711, 34.061123, 45.412277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605206, 34.571842, 45.518879>,  <37.060215, 34.607944, 45.036133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605206, 34.571842, 45.518879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912674, 34.359314, 45.661343>,  <37.097153, 34.231796, 45.746822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912674, 34.359314, 45.661343>,  <36.605206, 34.571842, 45.518879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912674, 34.359314, 45.661343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019014, 0.575544, 0.817550,
		-0.639366, -0.621652, 0.452504,
		0.768667, -0.531318, 0.356164,
		37.143272, 34.199917, 45.768192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424271, 34.512798, 46.185650>,  <36.605206, 34.571842, 45.518879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424271, 34.512798, 46.185650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819660, 34.452541, 46.191715>,  <37.056892, 34.416386, 46.195354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819660, 34.452541, 46.191715>,  <36.424271, 34.512798, 46.185650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819660, 34.452541, 46.191715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060725, 0.486181, 0.871746,
		-0.138695, -0.860775, 0.489724,
		0.988472, -0.150646, 0.015161,
		37.116203, 34.407349, 46.196262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487820, 34.359119, 46.929176>,  <36.424271, 34.512798, 46.185650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487820, 34.359119, 46.929176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841911, 34.446774, 46.765053>,  <37.054367, 34.499367, 46.666580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841911, 34.446774, 46.765053>,  <36.487820, 34.359119, 46.929176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841911, 34.446774, 46.765053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203288, 0.611129, 0.764981,
		0.418386, -0.760592, 0.496440,
		0.885227, 0.219137, -0.410307,
		37.107479, 34.512516, 46.641960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071156, 34.373466, 47.542606>,  <36.487820, 34.359119, 46.929176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071156, 34.373466, 47.542606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262066, 34.544418, 47.235477>,  <37.376610, 34.646988, 47.051201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262066, 34.544418, 47.235477>,  <37.071156, 34.373466, 47.542606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262066, 34.544418, 47.235477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481874, 0.603394, 0.635384,
		0.734852, -0.673247, 0.082040,
		0.477273, 0.427380, -0.767826,
		37.405247, 34.672634, 47.005131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773182, 34.342690, 47.657417>,  <37.071156, 34.373466, 47.542606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773182, 34.342690, 47.657417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738838, 34.649605, 47.403206>,  <37.718231, 34.833755, 47.250679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738838, 34.649605, 47.403206>,  <37.773182, 34.342690, 47.657417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738838, 34.649605, 47.403206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455292, 0.597602, 0.659986,
		0.886193, -0.232684, -0.400650,
		-0.085861, 0.767288, -0.635529,
		37.713081, 34.879791, 47.212547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426098, 34.562828, 47.577953>,  <37.773182, 34.342690, 47.657417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426098, 34.562828, 47.577953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160816, 34.855690, 47.515846>,  <38.001648, 35.031406, 47.478580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160816, 34.855690, 47.515846>,  <38.426098, 34.562828, 47.577953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160816, 34.855690, 47.515846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457760, 0.560941, 0.689784,
		0.592124, 0.386394, -0.707170,
		-0.663208, 0.732151, -0.155271,
		37.961853, 35.075336, 47.469265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717251, 35.142254, 47.771557>,  <38.426098, 34.562828, 47.577953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717251, 35.142254, 47.771557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361595, 35.324982, 47.760628>,  <38.148201, 35.434616, 47.754070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361595, 35.324982, 47.760628>,  <38.717251, 35.142254, 47.771557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361595, 35.324982, 47.760628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318534, 0.660645, 0.679767,
		0.328576, 0.595708, -0.732919,
		-0.889142, 0.456815, -0.027319,
		38.094852, 35.462025, 47.752434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820400, 35.941013, 47.700054>,  <38.717251, 35.142254, 47.771557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820400, 35.941013, 47.700054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450550, 35.902832, 47.847542>,  <38.228638, 35.879925, 47.936035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450550, 35.902832, 47.847542>,  <38.820400, 35.941013, 47.700054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450550, 35.902832, 47.847542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148877, 0.800492, 0.580559,
		-0.350568, 0.591695, -0.725947,
		-0.924628, -0.095448, 0.368716,
		38.173161, 35.874199, 47.958157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599102, 36.615410, 47.819347>,  <38.820400, 35.941013, 47.700054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599102, 36.615410, 47.819347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380600, 36.379639, 48.057400>,  <38.249500, 36.238174, 48.200230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380600, 36.379639, 48.057400>,  <38.599102, 36.615410, 47.819347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380600, 36.379639, 48.057400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167697, 0.619159, 0.767150,
		-0.820660, 0.518862, -0.239374,
		-0.546255, -0.589428, 0.595130,
		38.216724, 36.202812, 48.235939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055527, 37.054955, 47.935337>,  <38.599102, 36.615410, 47.819347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055527, 37.054955, 47.935337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119804, 36.777012, 48.215725>,  <38.158371, 36.610249, 48.383957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119804, 36.777012, 48.215725>,  <38.055527, 37.054955, 47.935337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119804, 36.777012, 48.215725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149297, 0.719139, 0.678638,
		-0.975647, -0.004402, 0.219303,
		0.160697, -0.694853, 0.700968,
		38.168015, 36.568558, 48.426014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280621, 37.381676, 47.999001>,  <38.055527, 37.054955, 47.935337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280621, 37.381676, 47.999001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357693, 37.772995, 47.968521>,  <37.403934, 38.007786, 47.950233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357693, 37.772995, 47.968521>,  <37.280621, 37.381676, 47.999001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357693, 37.772995, 47.968521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105153, -0.056617, -0.992843,
		-0.975612, 0.199310, 0.091963,
		0.192677, 0.978300, -0.076194,
		37.415497, 38.066486, 47.945663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668331, 37.730518, 47.748329>,  <37.280621, 37.381676, 47.999001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668331, 37.730518, 47.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980167, 37.961212, 47.650661>,  <37.167267, 38.099628, 47.592060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980167, 37.961212, 47.650661>,  <36.668331, 37.730518, 47.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980167, 37.961212, 47.650661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293256, -0.008339, -0.955998,
		-0.553395, 0.816888, 0.162630,
		0.779587, 0.576736, -0.244172,
		37.214043, 38.134232, 47.577412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421425, 38.345604, 47.312141>,  <36.668331, 37.730518, 47.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421425, 38.345604, 47.312141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814526, 38.318348, 47.243370>,  <37.050385, 38.301994, 47.202106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814526, 38.318348, 47.243370>,  <36.421425, 38.345604, 47.312141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814526, 38.318348, 47.243370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160212, 0.150725, -0.975507,
		0.092385, 0.986225, 0.137208,
		0.982750, -0.068140, -0.171930,
		37.109352, 38.297905, 47.191792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451527, 38.779427, 46.713039>,  <36.421425, 38.345604, 47.312141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451527, 38.779427, 46.713039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785057, 38.558773, 46.721275>,  <36.985176, 38.426380, 46.726215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785057, 38.558773, 46.721275>,  <36.451527, 38.779427, 46.713039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785057, 38.558773, 46.721275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056199, -0.121929, -0.990947,
		0.549154, 0.825124, -0.132669,
		0.833830, -0.551638, 0.020587,
		37.035206, 38.393280, 46.727451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818623, 38.981873, 46.134007>,  <36.451527, 38.779427, 46.713039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818623, 38.981873, 46.134007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976398, 38.624161, 46.218552>,  <37.071064, 38.409534, 46.269279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976398, 38.624161, 46.218552>,  <36.818623, 38.981873, 46.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976398, 38.624161, 46.218552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188214, -0.303756, -0.933974,
		0.899440, 0.328616, -0.288131,
		0.394441, -0.894284, 0.211360,
		37.094730, 38.355877, 46.281960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218472, 38.850426, 45.557892>,  <36.818623, 38.981873, 46.134007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218472, 38.850426, 45.557892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155090, 38.486717, 45.711834>,  <37.117062, 38.268490, 45.804199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155090, 38.486717, 45.711834>,  <37.218472, 38.850426, 45.557892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155090, 38.486717, 45.711834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164479, -0.360029, -0.918328,
		0.973571, -0.208809, -0.092510,
		-0.158449, -0.909274, 0.384858,
		37.107555, 38.213936, 45.827290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717804, 38.308891, 45.220387>,  <37.218472, 38.850426, 45.557892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717804, 38.308891, 45.220387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387779, 38.134918, 45.364662>,  <37.189762, 38.030533, 45.451229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387779, 38.134918, 45.364662>,  <37.717804, 38.308891, 45.220387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387779, 38.134918, 45.364662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157759, -0.435643, -0.886187,
		0.542566, -0.788065, 0.290820,
		-0.825066, -0.434935, 0.360689,
		37.140259, 38.004436, 45.472870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812706, 37.599251, 45.039478>,  <37.717804, 38.308891, 45.220387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812706, 37.599251, 45.039478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423237, 37.623604, 45.127342>,  <37.189556, 37.638214, 45.180061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423237, 37.623604, 45.127342>,  <37.812706, 37.599251, 45.039478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423237, 37.623604, 45.127342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218453, -0.524418, -0.822961,
		0.065091, -0.849281, 0.523912,
		-0.973674, 0.060883, 0.219663,
		37.131134, 37.641869, 45.193241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558002, 36.868526, 44.972538>,  <37.812706, 37.599251, 45.039478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558002, 36.868526, 44.972538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241673, 37.111603, 44.943375>,  <37.051876, 37.257450, 44.925877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241673, 37.111603, 44.943375>,  <37.558002, 36.868526, 44.972538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241673, 37.111603, 44.943375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289877, -0.476794, -0.829843,
		-0.539050, -0.635122, 0.553213,
		-0.790820, 0.607691, -0.072909,
		37.004425, 37.293911, 44.921501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989956, 36.422310, 44.967243>,  <37.558002, 36.868526, 44.972538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989956, 36.422310, 44.967243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888458, 36.762192, 44.782368>,  <36.827560, 36.966122, 44.671444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888458, 36.762192, 44.782368>,  <36.989956, 36.422310, 44.967243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888458, 36.762192, 44.782368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323341, -0.524853, -0.787388,
		-0.911627, -0.050352, 0.407923,
		-0.253747, 0.849702, -0.462189,
		36.812336, 37.017101, 44.643711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276604, 36.207661, 44.635048>,  <36.989956, 36.422310, 44.967243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276604, 36.207661, 44.635048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442589, 36.529911, 44.465919>,  <36.542179, 36.723263, 44.364445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442589, 36.529911, 44.465919>,  <36.276604, 36.207661, 44.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442589, 36.529911, 44.465919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103311, -0.419991, -0.901629,
		-0.903956, 0.417821, -0.091049,
		0.414959, 0.805626, -0.422819,
		36.567078, 36.771599, 44.339073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958054, 36.264496, 44.044815>,  <36.276604, 36.207661, 44.635048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958054, 36.264496, 44.044815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292305, 36.480171, 44.002876>,  <36.492855, 36.609577, 43.977711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292305, 36.480171, 44.002876>,  <35.958054, 36.264496, 44.044815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292305, 36.480171, 44.002876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012234, -0.209106, -0.977816,
		-0.549152, 0.815813, -0.181332,
		0.835633, 0.539189, -0.104850,
		36.542995, 36.641930, 43.971420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934818, 36.811619, 43.481781>,  <35.958054, 36.264496, 44.044815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934818, 36.811619, 43.481781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318382, 36.703388, 43.515915>,  <36.548519, 36.638451, 43.536396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318382, 36.703388, 43.515915>,  <35.934818, 36.811619, 43.481781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318382, 36.703388, 43.515915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092520, 0.013872, -0.995614,
		0.268202, 0.962600, 0.038335,
		0.958910, -0.270573, 0.085340,
		36.606056, 36.622215, 43.541515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187592, 37.070271, 42.869549>,  <35.934818, 36.811619, 43.481781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187592, 37.070271, 42.869549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474537, 36.833008, 43.015732>,  <36.646702, 36.690651, 43.103443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474537, 36.833008, 43.015732>,  <36.187592, 37.070271, 42.869549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474537, 36.833008, 43.015732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207382, -0.318986, -0.924792,
		0.665122, 0.739199, -0.105819,
		0.717361, -0.593154, 0.365461,
		36.689747, 36.655060, 43.125370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872318, 37.244217, 42.525101>,  <36.187592, 37.070271, 42.869549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872318, 37.244217, 42.525101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912037, 36.860340, 42.630276>,  <36.935867, 36.630016, 42.693382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912037, 36.860340, 42.630276>,  <36.872318, 37.244217, 42.525101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912037, 36.860340, 42.630276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327554, -0.217993, -0.919341,
		0.939601, 0.177411, 0.292705,
		0.099294, -0.959690, 0.262938,
		36.941826, 36.572433, 42.709156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501423, 36.990799, 42.219261>,  <36.872318, 37.244217, 42.525101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501423, 36.990799, 42.219261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318092, 36.648834, 42.316471>,  <37.208092, 36.443657, 42.374798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318092, 36.648834, 42.316471>,  <37.501423, 36.990799, 42.219261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318092, 36.648834, 42.316471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410724, -0.446218, -0.795107,
		0.788188, -0.264605, 0.555647,
		-0.458329, -0.854912, 0.243024,
		37.180595, 36.392361, 42.389378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999931, 36.510941, 42.084976>,  <37.501423, 36.990799, 42.219261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999931, 36.510941, 42.084976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658722, 36.303276, 42.106216>,  <37.453995, 36.178677, 42.118961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658722, 36.303276, 42.106216>,  <37.999931, 36.510941, 42.084976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658722, 36.303276, 42.106216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262141, -0.514237, -0.816604,
		0.451254, -0.682665, 0.574751,
		-0.853025, -0.519162, 0.053097,
		37.402813, 36.147526, 42.122147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144981, 35.869942, 42.064953>,  <37.999931, 36.510941, 42.084976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144981, 35.869942, 42.064953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767628, 35.876076, 41.932415>,  <37.541214, 35.879757, 41.852894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767628, 35.876076, 41.932415>,  <38.144981, 35.869942, 42.064953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767628, 35.876076, 41.932415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291388, -0.438948, -0.849951,
		-0.158478, -0.898381, 0.409629,
		-0.943386, 0.015338, -0.331342,
		37.484612, 35.880676, 41.833012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041534, 35.210270, 41.700542>,  <38.144981, 35.869942, 42.064953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041534, 35.210270, 41.700542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727150, 35.424400, 41.576805>,  <37.538521, 35.552879, 41.502563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727150, 35.424400, 41.576805>,  <38.041534, 35.210270, 41.700542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727150, 35.424400, 41.576805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028907, -0.467958, -0.883278,
		-0.617603, -0.703162, 0.352321,
		-0.785959, 0.535331, -0.309339,
		37.491364, 35.584999, 41.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545647, 34.736370, 41.556614>,  <38.041534, 35.210270, 41.700542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545647, 34.736370, 41.556614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489506, 35.078026, 41.356316>,  <37.455822, 35.283020, 41.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489506, 35.078026, 41.356316>,  <37.545647, 34.736370, 41.556614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489506, 35.078026, 41.356316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069221, -0.496052, -0.865529,
		-0.987680, -0.156138, 0.010496,
		-0.140349, 0.854139, -0.500749,
		37.447403, 35.334267, 41.206093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305454, 34.507740, 41.027462>,  <37.545647, 34.736370, 41.556614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305454, 34.507740, 41.027462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386593, 34.878868, 40.902245>,  <37.435276, 35.101547, 40.827114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386593, 34.878868, 40.902245>,  <37.305454, 34.507740, 41.027462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386593, 34.878868, 40.902245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212680, -0.353804, -0.910818,
		-0.955834, 0.118181, -0.269099,
		0.202850, 0.927823, -0.313043,
		37.447449, 35.157215, 40.808331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864933, 34.757988, 40.388084>,  <37.305454, 34.507740, 41.027462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864933, 34.757988, 40.388084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193993, 34.985405, 40.387508>,  <37.391430, 35.121857, 40.387165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193993, 34.985405, 40.387508>,  <36.864933, 34.757988, 40.388084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193993, 34.985405, 40.387508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236158, -0.344005, -0.908785,
		-0.517179, 0.747274, -0.417263,
		0.822651, 0.568544, -0.001437,
		37.440788, 35.155968, 40.387077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765194, 34.982479, 39.729778>,  <36.864933, 34.757988, 40.388084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765194, 34.982479, 39.729778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137074, 35.065201, 39.851685>,  <37.360203, 35.114834, 39.924828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137074, 35.065201, 39.851685>,  <36.765194, 34.982479, 39.729778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137074, 35.065201, 39.851685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336016, -0.137417, -0.931778,
		-0.150819, 0.968683, -0.197248,
		0.929703, 0.206808, 0.304768,
		37.415985, 35.127243, 39.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981651, 35.410892, 39.238262>,  <36.765194, 34.982479, 39.729778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981651, 35.410892, 39.238262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298363, 35.242371, 39.415161>,  <37.488388, 35.141258, 39.521301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298363, 35.242371, 39.415161>,  <36.981651, 35.410892, 39.238262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298363, 35.242371, 39.415161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365636, -0.253065, -0.895694,
		0.489281, 0.870895, -0.046327,
		0.791780, -0.421307, 0.442250,
		37.535896, 35.115978, 39.547836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645554, 35.687534, 38.874573>,  <36.981651, 35.410892, 39.238262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645554, 35.687534, 38.874573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745365, 35.348930, 39.062687>,  <37.805252, 35.145767, 39.175556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745365, 35.348930, 39.062687>,  <37.645554, 35.687534, 38.874573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745365, 35.348930, 39.062687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551341, -0.275058, -0.787634,
		0.796091, 0.455820, 0.398079,
		0.249525, -0.846505, 0.470283,
		37.820221, 35.094978, 39.203773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372032, 35.626026, 38.826767>,  <37.645554, 35.687534, 38.874573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372032, 35.626026, 38.826767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209499, 35.263279, 38.871464>,  <38.111980, 35.045631, 38.898281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209499, 35.263279, 38.871464>,  <38.372032, 35.626026, 38.826767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209499, 35.263279, 38.871464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590521, -0.353949, -0.725262,
		0.697267, -0.228712, 0.679346,
		-0.406330, -0.906869, 0.111738,
		38.087601, 34.991219, 38.904984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907963, 35.028667, 38.812836>,  <38.372032, 35.626026, 38.826767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907963, 35.028667, 38.812836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566822, 34.849724, 38.705124>,  <38.362137, 34.742355, 38.640495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566822, 34.849724, 38.705124>,  <38.907963, 35.028667, 38.812836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566822, 34.849724, 38.705124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491518, -0.513755, -0.703183,
		0.176233, -0.732066, 0.658043,
		-0.852849, -0.447364, -0.269283,
		38.310966, 34.715515, 38.624340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999752, 34.304173, 38.770676>,  <38.907963, 35.028667, 38.812836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999752, 34.304173, 38.770676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674095, 34.337082, 38.540752>,  <38.478703, 34.356827, 38.402798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674095, 34.337082, 38.540752>,  <38.999752, 34.304173, 38.770676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674095, 34.337082, 38.540752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483851, -0.451171, -0.749888,
		-0.321031, -0.888637, 0.327511,
		-0.814142, 0.082271, -0.574808,
		38.429852, 34.361763, 38.368309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808895, 33.627335, 38.419220>,  <38.999752, 34.304173, 38.770676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808895, 33.627335, 38.419220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622871, 33.917011, 38.215546>,  <38.511257, 34.090816, 38.093342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622871, 33.917011, 38.215546>,  <38.808895, 33.627335, 38.419220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622871, 33.917011, 38.215546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487731, -0.270411, -0.830058,
		-0.738808, -0.634372, -0.227453,
		-0.465059, 0.724189, -0.509185,
		38.483353, 34.134270, 38.062790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592220, 33.275471, 37.706970>,  <38.808895, 33.627335, 38.419220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592220, 33.275471, 37.706970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616058, 33.672871, 37.668159>,  <38.630360, 33.911308, 37.644871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616058, 33.672871, 37.668159>,  <38.592220, 33.275471, 37.706970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616058, 33.672871, 37.668159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494673, -0.113819, -0.861594,
		-0.867033, 0.003346, -0.498239,
		0.059592, 0.993496, -0.097030,
		38.633934, 33.970921, 37.639050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380661, 33.428768, 36.895435>,  <38.592220, 33.275471, 37.706970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380661, 33.428768, 36.895435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574497, 33.752037, 37.029320>,  <38.690800, 33.945999, 37.109650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574497, 33.752037, 37.029320>,  <38.380661, 33.428768, 36.895435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574497, 33.752037, 37.029320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472070, 0.080517, -0.877876,
		-0.736427, 0.583414, -0.342497,
		0.484588, 0.808174, 0.334707,
		38.719875, 33.994488, 37.129730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177055, 34.098171, 36.502232>,  <38.380661, 33.428768, 36.895435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177055, 34.098171, 36.502232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545414, 34.140827, 36.652206>,  <38.766430, 34.166420, 36.742191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545414, 34.140827, 36.652206>,  <38.177055, 34.098171, 36.502232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545414, 34.140827, 36.652206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329635, 0.300337, -0.895063,
		-0.208058, 0.947853, 0.241427,
		0.920898, 0.106642, 0.374933,
		38.821682, 34.172821, 36.764687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440819, 34.588573, 36.099934>,  <38.177055, 34.098171, 36.502232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440819, 34.588573, 36.099934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773823, 34.471069, 36.287819>,  <38.973625, 34.400566, 36.400551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773823, 34.471069, 36.287819>,  <38.440819, 34.588573, 36.099934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773823, 34.471069, 36.287819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525290, 0.149142, -0.837751,
		0.176041, 0.944174, 0.278470,
		0.832514, -0.293756, 0.469710,
		39.023579, 34.382942, 36.428730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012985, 35.102081, 35.984016>,  <38.440819, 34.588573, 36.099934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012985, 35.102081, 35.984016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184055, 34.748806, 36.061035>,  <39.286697, 34.536842, 36.107246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184055, 34.748806, 36.061035>,  <39.012985, 35.102081, 35.984016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184055, 34.748806, 36.061035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685109, 0.177744, -0.706422,
		0.589680, 0.434034, 0.681097,
		0.427672, -0.883188, 0.192548,
		39.312359, 34.483849, 36.118801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740738, 35.229267, 36.002975>,  <39.012985, 35.102081, 35.984016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740738, 35.229267, 36.002975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724869, 34.829666, 36.011242>,  <39.715347, 34.589905, 36.016201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724869, 34.829666, 36.011242>,  <39.740738, 35.229267, 36.002975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724869, 34.829666, 36.011242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897785, -0.044717, -0.438157,
		0.438643, 0.001173, 0.898661,
		-0.039671, -0.998999, 0.020668,
		39.712967, 34.529968, 36.017441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434017, 34.969631, 36.281620>,  <39.740738, 35.229267, 36.002975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434017, 34.969631, 36.281620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270329, 34.677094, 36.063381>,  <40.172115, 34.501572, 35.932438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270329, 34.677094, 36.063381>,  <40.434017, 34.969631, 36.281620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270329, 34.677094, 36.063381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824997, -0.041133, -0.563639,
		0.389772, -0.680768, 0.620188,
		-0.409217, -0.731344, -0.545599,
		40.147564, 34.457691, 35.899700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955135, 34.473331, 36.223293>,  <40.434017, 34.969631, 36.281620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955135, 34.473331, 36.223293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692413, 34.416084, 35.927151>,  <40.534782, 34.381737, 35.749466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692413, 34.416084, 35.927151>,  <40.955135, 34.473331, 36.223293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692413, 34.416084, 35.927151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753837, -0.100561, -0.649321,
		0.018476, -0.984584, 0.173934,
		-0.656802, -0.143115, -0.740358,
		40.495373, 34.373150, 35.705044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416367, 34.091022, 35.795330>,  <40.955135, 34.473331, 36.223293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416367, 34.091022, 35.795330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092659, 34.158329, 35.570198>,  <40.898434, 34.198711, 35.435120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092659, 34.158329, 35.570198>,  <41.416367, 34.091022, 35.795330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092659, 34.158329, 35.570198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554822, -0.095889, -0.826425,
		-0.193026, -0.981067, -0.015756,
		-0.809267, 0.168264, -0.562827,
		40.849880, 34.208809, 35.401352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332279, 33.458599, 35.240379>,  <41.416367, 34.091022, 35.795330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332279, 33.458599, 35.240379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198872, 33.813301, 35.112366>,  <41.118828, 34.026123, 35.035557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198872, 33.813301, 35.112366>,  <41.332279, 33.458599, 35.240379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198872, 33.813301, 35.112366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635330, -0.039388, -0.771236,
		-0.696504, -0.460554, -0.550246,
		-0.333523, 0.886757, -0.320038,
		41.098816, 34.079327, 35.016354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442055, 33.418709, 34.537128>,  <41.332279, 33.458599, 35.240379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442055, 33.418709, 34.537128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423702, 33.805321, 34.638103>,  <41.412693, 34.037289, 34.698689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423702, 33.805321, 34.638103>,  <41.442055, 33.418709, 34.537128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423702, 33.805321, 34.638103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805933, 0.185120, -0.562319,
		-0.590227, 0.177648, -0.787447,
		-0.045878, 0.966525, 0.252436,
		41.409939, 34.095280, 34.713833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173637, 33.941410, 34.027748>,  <41.442055, 33.418709, 34.537128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173637, 33.941410, 34.027748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473755, 34.003769, 34.284733>,  <41.653828, 34.041183, 34.438923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473755, 34.003769, 34.284733>,  <41.173637, 33.941410, 34.027748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473755, 34.003769, 34.284733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659618, -0.111449, -0.743292,
		-0.044276, 0.981466, -0.186452,
		0.750296, 0.155897, 0.642458,
		41.698845, 34.050537, 34.477470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611172, 34.522362, 33.702473>,  <41.173637, 33.941410, 34.027748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611172, 34.522362, 33.702473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780643, 34.255455, 33.947502>,  <41.882324, 34.095310, 34.094521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780643, 34.255455, 33.947502>,  <41.611172, 34.522362, 33.702473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780643, 34.255455, 33.947502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687007, -0.204042, -0.697415,
		0.590356, 0.716321, 0.371973,
		0.423675, -0.667271, 0.612576,
		41.907745, 34.055275, 34.131275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299465, 34.647579, 33.966934>,  <41.611172, 34.522362, 33.702473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299465, 34.647579, 33.966934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250816, 34.251835, 33.935017>,  <42.221626, 34.014389, 33.915867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250816, 34.251835, 33.935017>,  <42.299465, 34.647579, 33.966934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250816, 34.251835, 33.935017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683766, -0.025236, -0.729265,
		0.719495, -0.143256, 0.679562,
		-0.121621, -0.989364, -0.079797,
		42.214329, 33.955025, 33.911079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993408, 34.606056, 34.076061>,  <42.299465, 34.647579, 33.966934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993408, 34.606056, 34.076061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104309, 34.990173, 34.088486>,  <43.170849, 35.220646, 34.095940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104309, 34.990173, 34.088486>,  <42.993408, 34.606056, 34.076061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104309, 34.990173, 34.088486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910215, -0.272870, 0.311528,
		0.307634, -0.058103, -0.949729,
		0.277254, 0.960295, 0.031058,
		43.187485, 35.278263, 34.097805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740139, 34.672741, 33.919991>,  <42.993408, 34.606056, 34.076061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740139, 34.672741, 33.919991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642380, 34.966713, 34.173019>,  <43.583725, 35.143097, 34.324837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642380, 34.966713, 34.173019>,  <43.740139, 34.672741, 33.919991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642380, 34.966713, 34.173019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882509, -0.101741, 0.459159,
		0.401808, 0.670468, -0.623717,
		-0.244394, 0.734929, 0.632574,
		43.569061, 35.187191, 34.362793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368771, 34.941563, 34.050488>,  <43.740139, 34.672741, 33.919991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368771, 34.941563, 34.050488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176685, 35.090172, 34.368320>,  <44.061432, 35.179337, 34.559021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176685, 35.090172, 34.368320>,  <44.368771, 34.941563, 34.050488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176685, 35.090172, 34.368320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805849, -0.170884, 0.566926,
		0.346409, 0.912561, -0.217331,
		-0.480217, 0.371524, 0.794583,
		44.032619, 35.201630, 34.606697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637516, 34.744068, 34.700504>,  <44.368771, 34.941563, 34.050488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637516, 34.744068, 34.700504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999580, 34.696938, 34.863873>,  <45.216820, 34.668659, 34.961891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999580, 34.696938, 34.863873>,  <44.637516, 34.744068, 34.700504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999580, 34.696938, 34.863873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404046, 0.059963, 0.912771,
		-0.132036, -0.991222, 0.006669,
		0.905159, -0.117824, 0.408417,
		45.271130, 34.661591, 34.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588631, 34.126839, 35.188557>,  <44.637516, 34.744068, 34.700504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588631, 34.126839, 35.188557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902317, 34.359798, 35.274166>,  <45.090530, 34.499577, 35.325531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902317, 34.359798, 35.274166>,  <44.588631, 34.126839, 35.188557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902317, 34.359798, 35.274166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288822, 0.037347, 0.956654,
		0.549164, -0.812042, 0.197499,
		0.784219, 0.582402, 0.214026,
		45.137585, 34.534519, 35.338375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926361, 33.870922, 35.793278>,  <44.588631, 34.126839, 35.188557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926361, 33.870922, 35.793278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034851, 34.255917, 35.790150>,  <45.099945, 34.486912, 35.788273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.034851, 34.255917, 35.790150>,  <44.926361, 33.870922, 35.793278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034851, 34.255917, 35.790150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170309, 0.055989, 0.983799,
		0.947329, -0.265496, 0.179106,
		0.271223, 0.962485, -0.007824,
		45.116219, 34.544662, 35.787804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211983, 33.956440, 36.408970>,  <44.926361, 33.870922, 35.793278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211983, 33.956440, 36.408970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172852, 34.333256, 36.280598>,  <45.149372, 34.559345, 36.203575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.172852, 34.333256, 36.280598>,  <45.211983, 33.956440, 36.408970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172852, 34.333256, 36.280598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192713, 0.298442, 0.934770,
		0.976366, 0.153298, 0.152345,
		-0.097832, 0.942036, -0.320931,
		45.143501, 34.615868, 36.184319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643291, 34.379169, 36.848827>,  <45.211983, 33.956440, 36.408970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643291, 34.379169, 36.848827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360313, 34.613140, 36.690144>,  <45.190525, 34.753521, 36.594933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360313, 34.613140, 36.690144>,  <45.643291, 34.379169, 36.848827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360313, 34.613140, 36.690144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240206, 0.328900, 0.913305,
		0.664694, 0.741407, -0.092177,
		-0.707448, 0.584927, -0.396709,
		45.148079, 34.788620, 36.571133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587677, 34.977345, 37.311321>,  <45.643291, 34.379169, 36.848827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587677, 34.977345, 37.311321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250031, 34.982857, 37.096928>,  <45.047443, 34.986164, 36.968292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.250031, 34.982857, 37.096928>,  <45.587677, 34.977345, 37.311321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250031, 34.982857, 37.096928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533966, 0.068838, 0.842699,
		0.048509, 0.997533, -0.050749,
		-0.844113, 0.013781, -0.535988,
		44.996796, 34.986992, 36.936131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228760, 35.494915, 37.599590>,  <45.587677, 34.977345, 37.311321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228760, 35.494915, 37.599590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959251, 35.277691, 37.399147>,  <44.797546, 35.147354, 37.278881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959251, 35.277691, 37.399147>,  <45.228760, 35.494915, 37.599590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959251, 35.277691, 37.399147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627045, 0.061394, 0.776560,
		-0.390956, 0.837444, -0.381891,
		-0.673772, -0.543064, -0.501113,
		44.757118, 35.114773, 37.248814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642101, 35.859909, 37.789680>,  <45.228760, 35.494915, 37.599590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642101, 35.859909, 37.789680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526615, 35.504066, 37.648121>,  <44.457321, 35.290562, 37.563183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526615, 35.504066, 37.648121>,  <44.642101, 35.859909, 37.789680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526615, 35.504066, 37.648121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645064, -0.092401, 0.758522,
		-0.707485, 0.447287, -0.547174,
		-0.288718, -0.889604, -0.353901,
		44.439999, 35.237186, 37.541950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940536, 35.919296, 37.813099>,  <44.642101, 35.859909, 37.789680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940536, 35.919296, 37.813099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003693, 35.524315, 37.813507>,  <44.041588, 35.287327, 37.813751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003693, 35.524315, 37.813507>,  <43.940536, 35.919296, 37.813099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003693, 35.524315, 37.813507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808355, -0.128663, 0.574464,
		-0.567127, -0.091525, -0.818529,
		0.157893, -0.987456, 0.001017,
		44.051060, 35.228077, 37.813812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380119, 35.617165, 37.402596>,  <43.940536, 35.919296, 37.813099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380119, 35.617165, 37.402596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533619, 35.376583, 37.682877>,  <43.625721, 35.232235, 37.851048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.533619, 35.376583, 37.682877>,  <43.380119, 35.617165, 37.402596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.533619, 35.376583, 37.682877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905143, -0.094708, 0.414424,
		-0.182894, -0.793275, -0.580745,
		0.383753, -0.601453, 0.700705,
		43.648746, 35.196148, 37.893089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923340, 35.058765, 37.580898>,  <43.380119, 35.617165, 37.402596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923340, 35.058765, 37.580898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163738, 35.035305, 37.899734>,  <43.307980, 35.021229, 38.091038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163738, 35.035305, 37.899734>,  <42.923340, 35.058765, 37.580898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163738, 35.035305, 37.899734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758551, -0.356043, 0.545742,
		0.251793, -0.932627, -0.258469,
		0.601000, -0.058648, 0.797094,
		43.344040, 35.017712, 38.138863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909958, 34.334415, 37.780140>,  <42.923340, 35.058765, 37.580898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909958, 34.334415, 37.780140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029896, 34.536484, 38.103844>,  <43.101860, 34.657722, 38.298065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029896, 34.536484, 38.103844>,  <42.909958, 34.334415, 37.780140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029896, 34.536484, 38.103844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678836, -0.483032, 0.553048,
		0.670280, -0.715181, 0.198092,
		0.299845, 0.505169, 0.809257,
		43.119850, 34.688034, 38.346622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823586, 33.902348, 38.388363>,  <42.909958, 34.334415, 37.780140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823586, 33.902348, 38.388363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880466, 34.253025, 38.572186>,  <42.914597, 34.463432, 38.682480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880466, 34.253025, 38.572186>,  <42.823586, 33.902348, 38.388363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880466, 34.253025, 38.572186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588348, -0.298497, 0.751496,
		0.796005, -0.377247, 0.473350,
		0.142205, 0.876689, 0.459558,
		42.923126, 34.516033, 38.710052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916569, 33.726280, 39.012699>,  <42.823586, 33.902348, 38.388363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916569, 33.726280, 39.012699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829197, 34.112221, 39.071152>,  <42.776772, 34.343784, 39.106224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829197, 34.112221, 39.071152>,  <42.916569, 33.726280, 39.012699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829197, 34.112221, 39.071152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514797, -0.241150, 0.822697,
		0.829018, 0.104474, 0.549376,
		-0.218433, 0.964848, 0.146135,
		42.763668, 34.401676, 39.114994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067924, 33.869713, 39.756207>,  <42.916569, 33.726280, 39.012699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067924, 33.869713, 39.756207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810635, 34.141228, 39.614498>,  <42.656261, 34.304138, 39.529472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810635, 34.141228, 39.614498>,  <43.067924, 33.869713, 39.756207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810635, 34.141228, 39.614498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529680, -0.060358, 0.846047,
		0.552906, 0.731846, 0.398366,
		-0.643221, 0.678792, -0.354272,
		42.617668, 34.344864, 39.508217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966557, 34.303810, 40.358604>,  <43.067924, 33.869713, 39.756207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966557, 34.303810, 40.358604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653854, 34.392834, 40.125595>,  <42.466232, 34.446247, 39.985790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.653854, 34.392834, 40.125595>,  <42.966557, 34.303810, 40.358604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653854, 34.392834, 40.125595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618643, -0.159375, 0.769338,
		0.078383, 0.961804, 0.262276,
		-0.781753, 0.222558, -0.582521,
		42.419327, 34.459602, 39.950840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555840, 34.671188, 40.794418>,  <42.966557, 34.303810, 40.358604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555840, 34.671188, 40.794418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329285, 34.538780, 40.492523>,  <42.193352, 34.459335, 40.311386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329285, 34.538780, 40.492523>,  <42.555840, 34.671188, 40.794418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329285, 34.538780, 40.492523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717052, -0.253496, 0.649289,
		-0.406248, 0.908938, -0.093778,
		-0.566392, -0.331016, -0.754738,
		42.159367, 34.439476, 40.266102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961857, 34.971806, 41.011097>,  <42.555840, 34.671188, 40.794418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961857, 34.971806, 41.011097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856964, 34.686218, 40.751411>,  <41.794029, 34.514866, 40.595600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856964, 34.686218, 40.751411>,  <41.961857, 34.971806, 41.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856964, 34.686218, 40.751411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560148, -0.435198, 0.704867,
		-0.785791, 0.548496, -0.285806,
		-0.262234, -0.713972, -0.649214,
		41.778294, 34.472027, 40.556648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183174, 34.941650, 41.050301>,  <41.961857, 34.971806, 41.011097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183174, 34.941650, 41.050301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332443, 34.600441, 40.904373>,  <41.422005, 34.395714, 40.816818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332443, 34.600441, 40.904373>,  <41.183174, 34.941650, 41.050301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332443, 34.600441, 40.904373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528950, -0.518674, 0.671706,
		-0.762202, -0.057694, -0.644763,
		0.373175, -0.853023, -0.364817,
		41.444397, 34.344536, 40.794930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607353, 34.509121, 40.955505>,  <41.183174, 34.941650, 41.050301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607353, 34.509121, 40.955505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913578, 34.251984, 40.965855>,  <41.097313, 34.097702, 40.972065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913578, 34.251984, 40.965855>,  <40.607353, 34.509121, 40.955505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913578, 34.251984, 40.965855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538803, -0.618641, 0.571816,
		-0.351579, -0.451703, -0.819973,
		0.765561, -0.642843, 0.025877,
		41.143246, 34.059132, 40.973618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313896, 33.872276, 40.758415>,  <40.607353, 34.509121, 40.955505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313896, 33.872276, 40.758415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639580, 33.813133, 40.982986>,  <40.834988, 33.777649, 41.117729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639580, 33.813133, 40.982986>,  <40.313896, 33.872276, 40.758415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639580, 33.813133, 40.982986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517503, -0.623169, 0.586388,
		0.263168, -0.767984, -0.583903,
		0.814207, -0.147853, 0.561433,
		40.883842, 33.768776, 41.151417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548077, 33.204174, 40.792828>,  <40.313896, 33.872276, 40.758415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548077, 33.204174, 40.792828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659645, 33.370586, 41.139034>,  <40.726585, 33.470432, 41.346760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659645, 33.370586, 41.139034>,  <40.548077, 33.204174, 40.792828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659645, 33.370586, 41.139034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553147, -0.667148, 0.498941,
		0.785003, -0.617925, 0.044043,
		0.278925, 0.416033, 0.865516,
		40.743324, 33.495396, 41.398689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674225, 32.783913, 41.401859>,  <40.548077, 33.204174, 40.792828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674225, 32.783913, 41.401859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564812, 33.135098, 41.559010>,  <40.499165, 33.345810, 41.653301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564812, 33.135098, 41.559010>,  <40.674225, 32.783913, 41.401859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564812, 33.135098, 41.559010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708295, -0.460206, 0.535284,
		0.650765, -0.131853, 0.747743,
		-0.273537, 0.877967, 0.392877,
		40.482750, 33.398487, 41.676872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551903, 32.761696, 42.078968>,  <40.674225, 32.783913, 41.401859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551903, 32.761696, 42.078968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326031, 33.076645, 41.980034>,  <40.190506, 33.265614, 41.920673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326031, 33.076645, 41.980034>,  <40.551903, 32.761696, 42.078968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326031, 33.076645, 41.980034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785927, -0.421546, 0.452346,
		0.251902, 0.449820, 0.856859,
		-0.564680, 0.787375, -0.247338,
		40.156628, 33.312859, 41.905834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171223, 32.243793, 41.994633>,  <40.551903, 32.761696, 42.078968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171223, 32.243793, 41.994633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899197, 32.105370, 42.253170>,  <40.735981, 32.022316, 42.408291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899197, 32.105370, 42.253170>,  <41.171223, 32.243793, 41.994633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899197, 32.105370, 42.253170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420519, 0.906275, 0.042774,
		-0.600563, -0.242709, -0.761850,
		-0.680064, -0.346061, 0.646339,
		40.695179, 32.001553, 42.447071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800762, 31.601791, 41.761250>,  <41.171223, 32.243793, 41.994633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800762, 31.601791, 41.761250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940872, 31.315739, 41.519295>,  <41.024937, 31.144106, 41.374123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940872, 31.315739, 41.519295>,  <40.800762, 31.601791, 41.761250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940872, 31.315739, 41.519295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919728, 0.140402, 0.366590,
		-0.177234, -0.684741, 0.706907,
		0.350271, -0.715134, -0.604892,
		41.045952, 31.101198, 41.337826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366329, 31.113720, 42.103004>,  <40.800762, 31.601791, 41.761250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366329, 31.113720, 42.103004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399513, 31.142302, 41.705410>,  <41.419426, 31.159451, 41.466854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399513, 31.142302, 41.705410>,  <41.366329, 31.113720, 42.103004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399513, 31.142302, 41.705410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982197, 0.162829, 0.093684,
		0.168544, -0.984064, -0.056673,
		0.082963, 0.071454, -0.993988,
		41.424400, 31.163738, 41.407215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894890, 30.518427, 41.792572>,  <41.366329, 31.113720, 42.103004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894890, 30.518427, 41.792572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862816, 30.889580, 41.646912>,  <41.843571, 31.112272, 41.559517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862816, 30.889580, 41.646912>,  <41.894890, 30.518427, 41.792572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862816, 30.889580, 41.646912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888723, 0.231983, 0.395418,
		0.451378, -0.291921, -0.843232,
		-0.080184, 0.927883, -0.364149,
		41.838760, 31.167944, 41.537666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429749, 30.306656, 41.377781>,  <41.894890, 30.518427, 41.792572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429749, 30.306656, 41.377781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554146, 30.074692, 41.076588>,  <42.628784, 29.935513, 40.895870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554146, 30.074692, 41.076588>,  <42.429749, 30.306656, 41.377781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554146, 30.074692, 41.076588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842221, 0.198964, -0.501076,
		0.440397, 0.790010, -0.426537,
		0.310990, -0.579911, -0.752986,
		42.647442, 29.900719, 40.850693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390030, 29.812424, 41.960995>,  <42.429749, 30.306656, 41.377781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390030, 29.812424, 41.960995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218540, 29.532499, 41.732449>,  <42.115646, 29.364546, 41.595322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218540, 29.532499, 41.732449>,  <42.390030, 29.812424, 41.960995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218540, 29.532499, 41.732449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497368, 0.345140, -0.795929,
		0.754201, -0.625415, 0.200093,
		-0.428726, -0.699810, -0.571367,
		42.089924, 29.322556, 41.561039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888561, 29.513948, 41.573761>,  <42.390030, 29.812424, 41.960995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888561, 29.513948, 41.573761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561481, 29.441927, 41.355061>,  <42.365234, 29.398714, 41.223839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561481, 29.441927, 41.355061>,  <42.888561, 29.513948, 41.573761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561481, 29.441927, 41.355061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443160, 0.409288, -0.797554,
		0.367382, -0.894464, -0.254885,
		-0.817704, -0.180052, -0.546755,
		42.316170, 29.387911, 41.191032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077721, 29.120289, 40.994797>,  <42.888561, 29.513948, 41.573761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077721, 29.120289, 40.994797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758656, 29.338425, 40.891773>,  <42.567215, 29.469307, 40.829960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758656, 29.338425, 40.891773>,  <43.077721, 29.120289, 40.994797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758656, 29.338425, 40.891773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403801, 0.165700, -0.899716,
		-0.447974, -0.821673, -0.352382,
		-0.797662, 0.545341, -0.257562,
		42.519356, 29.502028, 40.814503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950294, 28.876724, 40.370907>,  <43.077721, 29.120289, 40.994797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950294, 28.876724, 40.370907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772991, 29.235212, 40.363853>,  <42.666611, 29.450306, 40.359623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772991, 29.235212, 40.363853>,  <42.950294, 28.876724, 40.370907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772991, 29.235212, 40.363853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462579, 0.211849, -0.860895,
		-0.767817, -0.389755, -0.508477,
		-0.443259, 0.896220, -0.017631,
		42.640015, 29.504078, 40.358562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579929, 29.015200, 39.709713>,  <42.950294, 28.876724, 40.370907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579929, 29.015200, 39.709713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682056, 29.357382, 39.889938>,  <42.743332, 29.562691, 39.998074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682056, 29.357382, 39.889938>,  <42.579929, 29.015200, 39.709713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682056, 29.357382, 39.889938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544871, 0.257654, -0.797953,
		-0.798704, 0.449231, -0.400329,
		0.255319, 0.855456, 0.450563,
		42.758652, 29.614019, 40.025108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670635, 29.458372, 39.143383>,  <42.579929, 29.015200, 39.709713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670635, 29.458372, 39.143383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830841, 29.668800, 39.443470>,  <42.926964, 29.795057, 39.623524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830841, 29.668800, 39.443470>,  <42.670635, 29.458372, 39.143383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830841, 29.668800, 39.443470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574850, 0.493324, -0.652823,
		-0.713535, 0.692733, -0.104827,
		0.400519, 0.526072, 0.750222,
		42.950996, 29.826622, 39.668537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663811, 30.089558, 38.865509>,  <42.670635, 29.458372, 39.143383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663811, 30.089558, 38.865509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939438, 30.109673, 39.154690>,  <43.104813, 30.121740, 39.328197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939438, 30.109673, 39.154690>,  <42.663811, 30.089558, 38.865509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939438, 30.109673, 39.154690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664790, 0.353292, -0.658209,
		-0.288511, 0.934161, 0.210013,
		0.689069, 0.050286, 0.722949,
		43.146160, 30.124758, 39.371574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974388, 30.674643, 38.744728>,  <42.663811, 30.089558, 38.865509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974388, 30.674643, 38.744728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249611, 30.489271, 38.968090>,  <43.414745, 30.378048, 39.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249611, 30.489271, 38.968090>,  <42.974388, 30.674643, 38.744728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249611, 30.489271, 38.968090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719114, 0.332355, -0.610259,
		0.097224, 0.821446, 0.561937,
		0.688057, -0.463429, 0.558400,
		43.456028, 30.350243, 39.135609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578049, 31.091736, 38.808254>,  <42.974388, 30.674643, 38.744728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578049, 31.091736, 38.808254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741890, 30.733282, 38.876575>,  <43.840195, 30.518209, 38.917568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741890, 30.733282, 38.876575>,  <43.578049, 31.091736, 38.808254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741890, 30.733282, 38.876575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750464, 0.224545, -0.621597,
		0.518682, 0.382784, 0.764490,
		0.409600, -0.896134, 0.170798,
		43.864769, 30.464441, 38.927814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267529, 31.204128, 39.099743>,  <43.578049, 31.091736, 38.808254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267529, 31.204128, 39.099743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234585, 30.861660, 38.895710>,  <44.214817, 30.656179, 38.773289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.234585, 30.861660, 38.895710>,  <44.267529, 31.204128, 39.099743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234585, 30.861660, 38.895710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725505, 0.299400, -0.619679,
		0.683272, -0.421105, 0.596498,
		-0.082358, -0.856172, -0.510085,
		44.209877, 30.604809, 38.742683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920307, 30.949047, 39.173573>,  <44.267529, 31.204128, 39.099743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920307, 30.949047, 39.173573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757862, 30.743456, 38.871342>,  <44.660397, 30.620102, 38.690002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.757862, 30.743456, 38.871342>,  <44.920307, 30.949047, 39.173573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757862, 30.743456, 38.871342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767200, 0.257435, -0.587479,
		0.496463, -0.818263, 0.289776,
		-0.406113, -0.513977, -0.755579,
		44.636028, 30.589262, 38.644669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525806, 30.570560, 38.862522>,  <44.920307, 30.949047, 39.173573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525806, 30.570560, 38.862522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.226768, 30.578421, 38.596973>,  <45.047348, 30.583138, 38.437645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.226768, 30.578421, 38.596973>,  <45.525806, 30.570560, 38.862522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226768, 30.578421, 38.596973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642686, 0.273517, -0.715642,
		0.167515, -0.961666, -0.217109,
		-0.747592, 0.019652, -0.663867,
		45.002491, 30.584316, 38.397812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911537, 30.446716, 38.334183>,  <45.525806, 30.570560, 38.862522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911537, 30.446716, 38.334183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570129, 30.611111, 38.206066>,  <45.365284, 30.709747, 38.129196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.570129, 30.611111, 38.206066>,  <45.911537, 30.446716, 38.334183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570129, 30.611111, 38.206066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494759, 0.446439, -0.745590,
		-0.163437, -0.794846, -0.584386,
		-0.853523, 0.410988, -0.320293,
		45.314072, 30.734407, 38.109978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975735, 30.433571, 37.543240>,  <45.911537, 30.446716, 38.334183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975735, 30.433571, 37.543240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682503, 30.689663, 37.635059>,  <45.506561, 30.843319, 37.690151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682503, 30.689663, 37.635059>,  <45.975735, 30.433571, 37.543240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682503, 30.689663, 37.635059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393883, 0.674783, -0.624118,
		-0.554479, -0.367112, -0.746848,
		-0.733081, 0.640231, 0.229554,
		45.462578, 30.881733, 37.703926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919056, 30.787704, 36.973068>,  <45.975735, 30.433571, 37.543240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919056, 30.787704, 36.973068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722672, 31.041418, 37.211948>,  <45.604843, 31.193645, 37.355274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722672, 31.041418, 37.211948>,  <45.919056, 30.787704, 36.973068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722672, 31.041418, 37.211948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453794, 0.771354, -0.446188,
		-0.743661, 0.051946, -0.666536,
		-0.490958, 0.634283, 0.597199,
		45.575386, 31.231703, 37.391109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473484, 31.270275, 36.619217>,  <45.919056, 30.787704, 36.973068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473484, 31.270275, 36.619217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536819, 31.479418, 36.954250>,  <45.574821, 31.604902, 37.155270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536819, 31.479418, 36.954250>,  <45.473484, 31.270275, 36.619217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536819, 31.479418, 36.954250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371083, 0.754590, -0.541194,
		-0.915001, 0.396506, -0.074543,
		0.158337, 0.522855, 0.837587,
		45.584320, 31.636274, 37.205528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272865, 31.926313, 36.467697>,  <45.473484, 31.270275, 36.619217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272865, 31.926313, 36.467697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495934, 31.981594, 36.795090>,  <45.629776, 32.014763, 36.991524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495934, 31.981594, 36.795090>,  <45.272865, 31.926313, 36.467697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495934, 31.981594, 36.795090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335225, 0.864557, -0.374387,
		-0.759361, 0.483158, 0.435809,
		0.557670, 0.138200, 0.818477,
		45.663235, 32.023056, 37.040634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202648, 32.591053, 36.560070>,  <45.272865, 31.926313, 36.467697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202648, 32.591053, 36.560070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536320, 32.492085, 36.757221>,  <45.736523, 32.432701, 36.875511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.536320, 32.492085, 36.757221>,  <45.202648, 32.591053, 36.560070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536320, 32.492085, 36.757221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436748, 0.842086, -0.316452,
		-0.336751, 0.479241, 0.810510,
		0.834176, -0.247423, 0.492881,
		45.786572, 32.417858, 36.905087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500957, 33.258598, 36.535465>,  <45.202648, 32.591053, 36.560070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500957, 33.258598, 36.535465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794247, 33.004143, 36.631554>,  <45.970219, 32.851467, 36.689205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794247, 33.004143, 36.631554>,  <45.500957, 33.258598, 36.535465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794247, 33.004143, 36.631554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678727, 0.663179, -0.315475,
		0.041380, 0.394356, 0.918026,
		0.733224, -0.636143, 0.240218,
		46.014214, 32.813301, 36.703617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971363, 33.572041, 37.034199>,  <45.500957, 33.258598, 36.535465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971363, 33.572041, 37.034199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179749, 33.289326, 36.842762>,  <46.304779, 33.119698, 36.727901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179749, 33.289326, 36.842762>,  <45.971363, 33.572041, 37.034199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179749, 33.289326, 36.842762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671187, 0.685599, -0.281891,
		0.527358, -0.174369, 0.831558,
		0.520962, -0.706788, -0.478590,
		46.336037, 33.077290, 36.699184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593845, 33.795586, 37.070908>,  <45.971363, 33.572041, 37.034199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593845, 33.795586, 37.070908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670105, 33.544106, 36.769341>,  <46.715858, 33.393219, 36.588402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.670105, 33.544106, 36.769341>,  <46.593845, 33.795586, 37.070908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.670105, 33.544106, 36.769341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636452, 0.663879, -0.392675,
		0.747384, -0.404971, 0.526702,
		0.190645, -0.628700, -0.753917,
		46.727299, 33.355495, 36.543167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.293411, 33.762466, 36.866421>,  <46.593845, 33.795586, 37.070908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.293411, 33.762466, 36.866421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.080196, 33.645885, 36.548698>,  <46.952267, 33.575935, 36.358063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.080196, 33.645885, 36.548698>,  <47.293411, 33.762466, 36.866421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.080196, 33.645885, 36.548698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454793, 0.692942, -0.559459,
		0.713468, -0.659458, -0.236809,
		-0.533035, -0.291457, -0.794309,
		46.920284, 33.558449, 36.310406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.825706, 33.504051, 36.258453>,  <47.293411, 33.762466, 36.866421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.825706, 33.504051, 36.258453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464100, 33.645897, 36.162952>,  <47.247135, 33.731003, 36.105652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464100, 33.645897, 36.162952>,  <47.825706, 33.504051, 36.258453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.464100, 33.645897, 36.162952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425456, 0.691845, -0.583384,
		-0.041695, -0.628968, -0.776312,
		-0.904018, 0.354611, -0.238752,
		47.192894, 33.752281, 36.091328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.762962, 33.505638, 35.526814>,  <47.825706, 33.504051, 36.258453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.762962, 33.505638, 35.526814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556011, 33.801991, 35.698124>,  <47.431843, 33.979801, 35.800911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556011, 33.801991, 35.698124>,  <47.762962, 33.505638, 35.526814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.556011, 33.801991, 35.698124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441696, 0.659837, -0.607881,
		-0.732959, -0.125335, -0.668627,
		-0.517374, 0.740882, 0.428274,
		47.400799, 34.024254, 35.826607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245155, 33.853928, 35.081917>,  <47.762962, 33.505638, 35.526814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245155, 33.853928, 35.081917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.425430, 34.063869, 35.370754>,  <47.533596, 34.189835, 35.544056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.425430, 34.063869, 35.370754>,  <47.245155, 33.853928, 35.081917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425430, 34.063869, 35.370754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430834, 0.580570, -0.690884,
		-0.781835, 0.622472, 0.035530,
		0.450683, 0.524850, 0.722092,
		47.560635, 34.221325, 35.587383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.101986, 34.609623, 35.049061>,  <47.245155, 33.853928, 35.081917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.101986, 34.609623, 35.049061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444065, 34.607769, 35.256371>,  <47.649315, 34.606655, 35.380756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.444065, 34.607769, 35.256371>,  <47.101986, 34.609623, 35.049061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.444065, 34.607769, 35.256371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420574, 0.590604, -0.688698,
		-0.302905, 0.806949, 0.507033,
		0.855199, -0.004635, 0.518278,
		47.700626, 34.606377, 35.411854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.277790, 35.291161, 35.208347>,  <47.101986, 34.609623, 35.049061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.277790, 35.291161, 35.208347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612682, 35.075775, 35.170177>,  <47.813618, 34.946545, 35.147274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612682, 35.075775, 35.170177>,  <47.277790, 35.291161, 35.208347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612682, 35.075775, 35.170177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141497, 0.381870, -0.913320,
		0.528228, 0.751156, 0.395904,
		0.837230, -0.538460, -0.095428,
		47.863850, 34.914238, 35.141548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.017494, 39.546383, 41.870556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671505, 39.386864, 41.992397>,  <35.463913, 39.291153, 42.065502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.671505, 39.386864, 41.992397>,  <36.017494, 39.546383, 41.870556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671505, 39.386864, 41.992397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211613, -0.260515, -0.941994,
		0.455018, -0.879257, 0.140948,
		-0.864974, -0.398797, 0.304601,
		35.412014, 39.267223, 42.083778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020504, 38.863750, 41.582298>,  <36.017494, 39.546383, 41.870556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020504, 38.863750, 41.582298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638260, 38.959846, 41.650517>,  <35.408913, 39.017506, 41.691448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638260, 38.959846, 41.650517>,  <36.020504, 38.863750, 41.582298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638260, 38.959846, 41.650517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242616, -0.313296, -0.918141,
		-0.167146, -0.918765, 0.357677,
		-0.955614, 0.240242, 0.170541,
		35.351574, 39.031918, 41.701679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643158, 38.187271, 41.326054>,  <36.020504, 38.863750, 41.582298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643158, 38.187271, 41.326054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379742, 38.486347, 41.360195>,  <35.221691, 38.665794, 41.380680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.379742, 38.486347, 41.360195>,  <35.643158, 38.187271, 41.326054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379742, 38.486347, 41.360195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443979, -0.294430, -0.846282,
		-0.607626, -0.595206, 0.525852,
		-0.658539, 0.747691, 0.085356,
		35.182178, 38.710655, 41.385803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008835, 37.959896, 41.442448>,  <35.643158, 38.187271, 41.326054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008835, 37.959896, 41.442448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960251, 38.317207, 41.269333>,  <34.931099, 38.531593, 41.165462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960251, 38.317207, 41.269333>,  <35.008835, 37.959896, 41.442448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960251, 38.317207, 41.269333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211937, -0.449299, -0.867878,
		-0.969706, -0.013688, 0.243890,
		-0.121459, 0.893277, -0.432787,
		34.923813, 38.585190, 41.139496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621307, 37.850060, 40.891449>,  <35.008835, 37.959896, 41.442448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621307, 37.850060, 40.891449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756241, 38.215641, 40.801212>,  <34.837200, 38.434990, 40.747070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.756241, 38.215641, 40.801212>,  <34.621307, 37.850060, 40.891449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756241, 38.215641, 40.801212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134539, -0.190374, -0.972449,
		-0.931722, 0.358390, 0.058743,
		0.337333, 0.913955, -0.225593,
		34.857441, 38.489826, 40.733536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243004, 37.942398, 40.367294>,  <34.621307, 37.850060, 40.891449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243004, 37.942398, 40.367294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560356, 38.185745, 40.358883>,  <34.750767, 38.331753, 40.353836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.560356, 38.185745, 40.358883>,  <34.243004, 37.942398, 40.367294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560356, 38.185745, 40.358883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119913, -0.190066, -0.974421,
		-0.596800, 0.770563, -0.223745,
		0.793379, 0.608364, -0.021031,
		34.798370, 38.368256, 40.352573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099266, 38.471352, 39.776131>,  <34.243004, 37.942398, 40.367294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099266, 38.471352, 39.776131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486744, 38.426979, 39.864971>,  <34.719231, 38.400356, 39.918274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486744, 38.426979, 39.864971>,  <34.099266, 38.471352, 39.776131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486744, 38.426979, 39.864971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186629, -0.264575, -0.946134,
		0.163718, 0.957964, -0.235589,
		0.968693, -0.110931, 0.222099,
		34.777351, 38.393700, 39.931602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418621, 38.644634, 39.238308>,  <34.099266, 38.471352, 39.776131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418621, 38.644634, 39.238308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731678, 38.472164, 39.417889>,  <34.919514, 38.368683, 39.525639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731678, 38.472164, 39.417889>,  <34.418621, 38.644634, 39.238308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731678, 38.472164, 39.417889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377770, -0.244223, -0.893110,
		0.494727, 0.868589, -0.028257,
		0.782646, -0.431171, 0.448950,
		34.966473, 38.342812, 39.552574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009995, 38.800869, 38.872021>,  <34.418621, 38.644634, 39.238308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009995, 38.800869, 38.872021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145657, 38.486816, 39.079304>,  <35.227055, 38.298386, 39.203674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.145657, 38.486816, 39.079304>,  <35.009995, 38.800869, 38.872021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145657, 38.486816, 39.079304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488655, -0.323680, -0.810214,
		0.803858, 0.528018, 0.273879,
		0.339158, -0.785130, 0.518211,
		35.247402, 38.251278, 39.234768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712612, 38.699287, 38.722633>,  <35.009995, 38.800869, 38.872021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712612, 38.699287, 38.722633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609612, 38.333191, 38.846581>,  <35.547810, 38.113533, 38.920948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609612, 38.333191, 38.846581>,  <35.712612, 38.699287, 38.722633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609612, 38.333191, 38.846581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627875, -0.402240, -0.666315,
		0.734482, 0.022978, 0.678239,
		-0.257505, -0.915246, 0.309865,
		35.532360, 38.058617, 38.939541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345020, 38.392876, 38.914921>,  <35.712612, 38.699287, 38.722633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345020, 38.392876, 38.914921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075840, 38.115208, 38.812733>,  <35.914330, 37.948608, 38.751419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075840, 38.115208, 38.812733>,  <36.345020, 38.392876, 38.914921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075840, 38.115208, 38.812733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689108, -0.462845, -0.557588,
		0.268816, -0.551278, 0.789829,
		-0.672955, -0.694166, -0.255470,
		35.873955, 37.906960, 38.736092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745491, 37.833660, 38.705681>,  <36.345020, 38.392876, 38.914921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745491, 37.833660, 38.705681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394619, 37.696232, 38.571514>,  <36.184093, 37.613773, 38.491013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394619, 37.696232, 38.571514>,  <36.745491, 37.833660, 38.705681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394619, 37.696232, 38.571514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435889, -0.276828, -0.856368,
		0.201370, -0.897399, 0.392588,
		-0.877184, -0.343572, -0.335421,
		36.131462, 37.593159, 38.470886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877708, 37.177013, 38.509449>,  <36.745491, 37.833660, 38.705681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877708, 37.177013, 38.509449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544128, 37.240971, 38.298180>,  <36.343979, 37.279343, 38.171417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.544128, 37.240971, 38.298180>,  <36.877708, 37.177013, 38.509449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544128, 37.240971, 38.298180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438416, -0.389306, -0.810082,
		-0.335143, -0.907126, 0.254563,
		-0.833949, 0.159889, -0.528172,
		36.293945, 37.288937, 38.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741840, 36.591843, 38.159191>,  <36.877708, 37.177013, 38.509449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741840, 36.591843, 38.159191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541233, 36.878639, 37.965530>,  <36.420868, 37.050716, 37.849335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.541233, 36.878639, 37.965530>,  <36.741840, 36.591843, 38.159191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541233, 36.878639, 37.965530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354172, -0.340421, -0.871020,
		-0.789327, -0.608308, -0.083209,
		-0.501522, 0.716990, -0.484149,
		36.390778, 37.093735, 37.820286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380455, 36.185852, 37.689171>,  <36.741840, 36.591843, 38.159191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380455, 36.185852, 37.689171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394691, 36.557682, 37.542400>,  <36.403233, 36.780781, 37.454338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.394691, 36.557682, 37.542400>,  <36.380455, 36.185852, 37.689171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394691, 36.557682, 37.542400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264679, -0.362812, -0.893483,
		-0.963680, -0.065316, -0.258951,
		0.035592, 0.929570, -0.366922,
		36.405369, 36.836552, 37.432323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969841, 36.230583, 37.098484>,  <36.380455, 36.185852, 37.689171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969841, 36.230583, 37.098484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204273, 36.544483, 37.017815>,  <36.344933, 36.732822, 36.969414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204273, 36.544483, 37.017815>,  <35.969841, 36.230583, 37.098484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204273, 36.544483, 37.017815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231861, -0.400925, -0.886284,
		-0.776367, 0.472677, -0.416929,
		0.586084, 0.784752, -0.201670,
		36.380096, 36.779907, 36.957314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866722, 36.421757, 36.432945>,  <35.969841, 36.230583, 37.098484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866722, 36.421757, 36.432945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224541, 36.582127, 36.511982>,  <36.439232, 36.678349, 36.559402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224541, 36.582127, 36.511982>,  <35.866722, 36.421757, 36.432945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224541, 36.582127, 36.511982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336636, -0.313508, -0.887913,
		-0.294044, 0.860795, -0.415415,
		0.894547, 0.400929, 0.197589,
		36.492905, 36.702404, 36.571259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983295, 36.797096, 35.827011>,  <35.866722, 36.421757, 36.432945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983295, 36.797096, 35.827011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345226, 36.750736, 35.990891>,  <36.562386, 36.722919, 36.089218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345226, 36.750736, 35.990891>,  <35.983295, 36.797096, 35.827011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345226, 36.750736, 35.990891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391615, -0.151116, -0.907635,
		0.167104, 0.981699, -0.091347,
		0.904828, -0.115897, 0.409700,
		36.616676, 36.715969, 36.113800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514996, 37.217823, 35.392166>,  <35.983295, 36.797096, 35.827011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514996, 37.217823, 35.392166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737980, 36.958462, 35.599552>,  <36.871773, 36.802845, 35.723984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.737980, 36.958462, 35.599552>,  <36.514996, 37.217823, 35.392166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737980, 36.958462, 35.599552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606117, -0.108893, -0.787886,
		0.567324, 0.753471, 0.332303,
		0.557463, -0.648401, 0.518470,
		36.905220, 36.763943, 35.755093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280865, 37.445553, 35.288013>,  <36.514996, 37.217823, 35.392166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280865, 37.445553, 35.288013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302639, 37.057774, 35.383678>,  <37.315704, 36.825104, 35.441078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302639, 37.057774, 35.383678>,  <37.280865, 37.445553, 35.288013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302639, 37.057774, 35.383678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331844, -0.208338, -0.920041,
		0.941762, 0.129451, 0.310365,
		0.054440, -0.969452, 0.239162,
		37.318970, 36.766937, 35.455425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986866, 37.255501, 35.224411>,  <37.280865, 37.445553, 35.288013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986866, 37.255501, 35.224411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780483, 36.913902, 35.197624>,  <37.656654, 36.708942, 35.181553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.780483, 36.913902, 35.197624>,  <37.986866, 37.255501, 35.224411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780483, 36.913902, 35.197624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495466, -0.233743, -0.836587,
		0.698788, -0.464819, 0.543726,
		-0.515954, -0.853995, -0.066965,
		37.625698, 36.657703, 35.177536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500885, 36.760460, 35.057854>,  <37.986866, 37.255501, 35.224411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500885, 36.760460, 35.057854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158913, 36.571537, 34.972038>,  <37.953732, 36.458183, 34.920551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.158913, 36.571537, 34.972038>,  <38.500885, 36.760460, 35.057854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158913, 36.571537, 34.972038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364574, -0.252845, -0.896189,
		0.369029, -0.844392, 0.388355,
		-0.854929, -0.472304, -0.214536,
		37.902435, 36.429848, 34.907677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299335, 36.603043, 35.077606>,  <38.500885, 36.760460, 35.057854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299335, 36.603043, 35.077606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678101, 36.713608, 35.011944>,  <39.905361, 36.779949, 34.972546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678101, 36.713608, 35.011944>,  <39.299335, 36.603043, 35.077606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678101, 36.713608, 35.011944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106349, 0.212554, 0.971345,
		0.303389, -0.937238, 0.171873,
		0.946914, 0.276417, -0.164161,
		39.962173, 36.796532, 34.962696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719315, 36.220741, 35.549034>,  <39.299335, 36.603043, 35.077606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719315, 36.220741, 35.549034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918343, 36.549557, 35.438274>,  <40.037758, 36.746845, 35.371819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.918343, 36.549557, 35.438274>,  <39.719315, 36.220741, 35.549034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918343, 36.549557, 35.438274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047636, 0.344630, 0.937529,
		0.866115, -0.453296, 0.210636,
		0.497570, 0.822042, -0.276896,
		40.067616, 36.796169, 35.355206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111130, 36.407207, 36.150681>,  <39.719315, 36.220741, 35.549034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111130, 36.407207, 36.150681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137234, 36.738247, 35.927673>,  <40.152897, 36.936871, 35.793869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.137234, 36.738247, 35.927673>,  <40.111130, 36.407207, 36.150681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137234, 36.738247, 35.927673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064597, 0.554036, 0.829983,
		0.995775, -0.090178, -0.017304,
		0.065259, 0.827594, -0.557521,
		40.156811, 36.986526, 35.760418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676720, 36.756138, 36.432560>,  <40.111130, 36.407207, 36.150681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676720, 36.756138, 36.432560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471024, 37.044811, 36.247208>,  <40.347607, 37.218018, 36.135994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.471024, 37.044811, 36.247208>,  <40.676720, 36.756138, 36.432560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471024, 37.044811, 36.247208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054591, 0.566745, 0.822083,
		0.855908, 0.397450, -0.330840,
		-0.514239, 0.721688, -0.463384,
		40.316753, 37.261318, 36.108192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795799, 37.321098, 36.862797>,  <40.676720, 36.756138, 36.432560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795799, 37.321098, 36.862797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501278, 37.460381, 36.630726>,  <40.324566, 37.543949, 36.491482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.501278, 37.460381, 36.630726>,  <40.795799, 37.321098, 36.862797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501278, 37.460381, 36.630726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188668, 0.717777, 0.670224,
		0.649813, 0.602952, -0.462809,
		-0.736306, 0.348204, -0.580178,
		40.280388, 37.564842, 36.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781792, 38.091122, 36.781689>,  <40.795799, 37.321098, 36.862797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781792, 38.091122, 36.781689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404587, 37.983513, 36.703358>,  <40.178265, 37.918949, 36.656357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404587, 37.983513, 36.703358>,  <40.781792, 38.091122, 36.781689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404587, 37.983513, 36.703358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328485, 0.658692, 0.676921,
		-0.053114, 0.702674, -0.709526,
		-0.943015, -0.269023, -0.195832,
		40.121681, 37.902805, 36.644608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412285, 38.620667, 36.688999>,  <40.781792, 38.091122, 36.781689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412285, 38.620667, 36.688999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164440, 38.332855, 36.814445>,  <40.015732, 38.160168, 36.889713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.164440, 38.332855, 36.814445>,  <40.412285, 38.620667, 36.688999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164440, 38.332855, 36.814445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347111, 0.609551, 0.712715,
		-0.703982, 0.332751, -0.627444,
		-0.619615, -0.719531, 0.313612,
		39.978554, 38.116997, 36.908527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782509, 38.964508, 37.076782>,  <40.412285, 38.620667, 36.688999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782509, 38.964508, 37.076782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726124, 38.581451, 37.177227>,  <39.692295, 38.351620, 37.237495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.726124, 38.581451, 37.177227>,  <39.782509, 38.964508, 37.076782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726124, 38.581451, 37.177227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478048, 0.287957, 0.829790,
		-0.866949, -0.003079, -0.498387,
		-0.140959, -0.957639, 0.251116,
		39.683838, 38.294159, 37.252563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107914, 38.911396, 37.233753>,  <39.782509, 38.964508, 37.076782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107914, 38.911396, 37.233753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.248291, 38.587616, 37.422062>,  <39.332516, 38.393349, 37.535046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.248291, 38.587616, 37.422062>,  <39.107914, 38.911396, 37.233753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248291, 38.587616, 37.422062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467237, 0.284314, 0.837171,
		-0.811498, -0.513759, -0.278429,
		0.350943, -0.809455, 0.470767,
		39.353573, 38.344780, 37.563293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513386, 38.440182, 37.499393>,  <39.107914, 38.911396, 37.233753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513386, 38.440182, 37.499393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847252, 38.387333, 37.713264>,  <39.047573, 38.355625, 37.841587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847252, 38.387333, 37.713264>,  <38.513386, 38.440182, 37.499393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847252, 38.387333, 37.713264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482632, 0.292218, 0.825636,
		-0.265326, -0.947182, 0.180138,
		0.834667, -0.132122, 0.534673,
		39.097652, 38.347698, 37.873665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237804, 38.120567, 38.056458>,  <38.513386, 38.440182, 37.499393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237804, 38.120567, 38.056458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599171, 38.257030, 38.160347>,  <38.815990, 38.338909, 38.222679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.599171, 38.257030, 38.160347>,  <38.237804, 38.120567, 38.056458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599171, 38.257030, 38.160347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369283, 0.311262, 0.875641,
		0.217890, -0.886976, 0.407181,
		0.903413, 0.341158, 0.259724,
		38.870193, 38.359379, 38.238266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303883, 37.854946, 38.714874>,  <38.237804, 38.120567, 38.056458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303883, 37.854946, 38.714874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.581532, 38.142345, 38.697144>,  <38.748119, 38.314785, 38.686504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.581532, 38.142345, 38.697144>,  <38.303883, 37.854946, 38.714874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581532, 38.142345, 38.697144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260363, 0.307990, 0.915070,
		0.671127, -0.623624, 0.400851,
		0.694118, 0.718495, -0.044331,
		38.789768, 38.357895, 38.683846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526581, 37.717308, 39.331131>,  <38.303883, 37.854946, 38.714874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526581, 37.717308, 39.331131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656517, 38.074974, 39.207878>,  <38.734478, 38.289574, 39.133926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.656517, 38.074974, 39.207878>,  <38.526581, 37.717308, 39.331131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656517, 38.074974, 39.207878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130423, 0.365042, 0.921810,
		0.936734, -0.259250, 0.235199,
		0.324837, 0.894166, -0.308136,
		38.753967, 38.343224, 39.115437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090843, 37.893021, 39.802479>,  <38.526581, 37.717308, 39.331131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090843, 37.893021, 39.802479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945316, 38.211742, 39.609509>,  <38.857998, 38.402977, 39.493725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.945316, 38.211742, 39.609509>,  <39.090843, 37.893021, 39.802479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945316, 38.211742, 39.609509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017191, 0.512091, 0.858759,
		0.931310, 0.320729, -0.172612,
		-0.363822, 0.796803, -0.482430,
		38.836170, 38.450783, 39.464779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410088, 38.461063, 40.010090>,  <39.090843, 37.893021, 39.802479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410088, 38.461063, 40.010090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066109, 38.621021, 39.883236>,  <38.859722, 38.716995, 39.807121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.066109, 38.621021, 39.883236>,  <39.410088, 38.461063, 40.010090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066109, 38.621021, 39.883236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079073, 0.509476, 0.856844,
		0.504225, 0.761915, -0.406499,
		-0.859945, 0.399899, -0.317138,
		38.808125, 38.740990, 39.788094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398815, 39.121895, 40.222057>,  <39.410088, 38.461063, 40.010090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398815, 39.121895, 40.222057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.011543, 39.095352, 40.125538>,  <38.779179, 39.079426, 40.067627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.011543, 39.095352, 40.125538>,  <39.398815, 39.121895, 40.222057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011543, 39.095352, 40.125538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240537, 0.512833, 0.824102,
		0.069058, 0.855920, -0.512477,
		-0.968180, -0.066359, -0.241295,
		38.721088, 39.075443, 40.053150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068134, 39.808887, 40.406979>,  <39.398815, 39.121895, 40.222057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068134, 39.808887, 40.406979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788734, 39.522682, 40.402222>,  <38.621094, 39.350960, 40.399368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788734, 39.522682, 40.402222>,  <39.068134, 39.808887, 40.406979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788734, 39.522682, 40.402222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350199, 0.327279, 0.877639,
		-0.624071, 0.617192, -0.479176,
		-0.698496, -0.715516, -0.011894,
		38.579185, 39.308029, 40.398655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442642, 40.076096, 40.640598>,  <39.068134, 39.808887, 40.406979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442642, 40.076096, 40.640598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378986, 39.683186, 40.680229>,  <38.340794, 39.447441, 40.704010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.378986, 39.683186, 40.680229>,  <38.442642, 40.076096, 40.640598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378986, 39.683186, 40.680229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370598, 0.152458, 0.916195,
		-0.915058, 0.109087, -0.388290,
		-0.159143, -0.982271, 0.099081,
		38.331242, 39.388504, 40.709953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.457806, 40.012970, 40.693535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642532, 39.683823, 40.825966>,  <37.753368, 39.486336, 40.905426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642532, 39.683823, 40.825966>,  <37.457806, 40.012970, 40.693535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642532, 39.683823, 40.825966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101780, 0.419966, 0.901814,
		-0.881116, -0.382776, 0.277699,
		0.461817, -0.822867, 0.331080,
		37.781078, 39.436962, 40.925289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068134, 39.752251, 41.236008>,  <37.457806, 40.012970, 40.693535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068134, 39.752251, 41.236008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436440, 39.601273, 41.275475>,  <37.657421, 39.510685, 41.299156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436440, 39.601273, 41.275475>,  <37.068134, 39.752251, 41.236008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436440, 39.601273, 41.275475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011263, 0.278534, 0.960360,
		-0.389965, -0.883151, 0.260715,
		0.920761, -0.377444, 0.098672,
		37.712669, 39.488041, 41.305077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971500, 39.059669, 41.719330>,  <37.068134, 39.752251, 41.236008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971500, 39.059669, 41.719330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349453, 39.187660, 41.747112>,  <37.576225, 39.264454, 41.763783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349453, 39.187660, 41.747112>,  <36.971500, 39.059669, 41.719330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349453, 39.187660, 41.747112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143655, 0.214493, 0.966103,
		0.294232, -0.922826, 0.248636,
		0.944876, 0.319976, 0.069458,
		37.632915, 39.283653, 41.767948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220940, 38.839111, 42.451881>,  <36.971500, 39.059669, 41.719330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220940, 38.839111, 42.451881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513382, 39.096718, 42.361794>,  <37.688847, 39.251282, 42.307739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513382, 39.096718, 42.361794>,  <37.220940, 38.839111, 42.451881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513382, 39.096718, 42.361794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067063, 0.396344, 0.915649,
		0.678958, -0.654335, 0.332960,
		0.731108, 0.644017, -0.225219,
		37.732716, 39.289925, 42.294228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729046, 38.844769, 42.967800>,  <37.220940, 38.839111, 42.451881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729046, 38.844769, 42.967800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805626, 39.194633, 42.789669>,  <37.851574, 39.404552, 42.682789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.805626, 39.194633, 42.789669>,  <37.729046, 38.844769, 42.967800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805626, 39.194633, 42.789669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131418, 0.426790, 0.894751,
		0.972664, -0.229828, -0.033235,
		0.191454, 0.874660, -0.445327,
		37.863064, 39.457031, 42.656071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338524, 39.148716, 43.280369>,  <37.729046, 38.844769, 42.967800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338524, 39.148716, 43.280369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129498, 39.459538, 43.140015>,  <38.004082, 39.646030, 43.055801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129498, 39.459538, 43.140015>,  <38.338524, 39.148716, 43.280369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129498, 39.459538, 43.140015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129150, 0.334656, 0.933448,
		0.842762, 0.533103, -0.074523,
		-0.522564, 0.777050, -0.350886,
		37.972729, 39.692654, 43.034748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634796, 39.692364, 43.608055>,  <38.338524, 39.148716, 43.280369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634796, 39.692364, 43.608055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285343, 39.848747, 43.492176>,  <38.075672, 39.942577, 43.422649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285343, 39.848747, 43.492176>,  <38.634796, 39.692364, 43.608055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285343, 39.848747, 43.492176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130224, 0.385781, 0.913353,
		0.468842, 0.835658, -0.286118,
		-0.873630, 0.390959, -0.289693,
		38.023254, 39.966034, 43.405270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653938, 40.288906, 43.883244>,  <38.634796, 39.692364, 43.608055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653938, 40.288906, 43.883244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262589, 40.254574, 43.807964>,  <38.027779, 40.233974, 43.762794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.262589, 40.254574, 43.807964>,  <38.653938, 40.288906, 43.883244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262589, 40.254574, 43.807964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204608, 0.535192, 0.819576,
		0.030376, 0.840358, -0.541180,
		-0.978372, -0.085835, -0.188201,
		37.969078, 40.228825, 43.751503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398499, 41.027447, 43.841537>,  <38.653938, 40.288906, 43.883244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398499, 41.027447, 43.841537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107166, 40.775906, 43.950401>,  <37.932365, 40.624981, 44.015720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107166, 40.775906, 43.950401>,  <38.398499, 41.027447, 43.841537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107166, 40.775906, 43.950401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217045, 0.588450, 0.778857,
		-0.649940, 0.508198, -0.565078,
		-0.728333, -0.628857, 0.272156,
		37.888668, 40.587250, 44.032047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789864, 41.460953, 43.963806>,  <38.398499, 41.027447, 43.841537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789864, 41.460953, 43.963806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.731815, 41.115349, 44.156651>,  <37.696987, 40.907986, 44.272358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.731815, 41.115349, 44.156651>,  <37.789864, 41.460953, 43.963806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731815, 41.115349, 44.156651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142151, 0.500416, 0.854035,
		-0.979149, 0.055405, -0.195440,
		-0.145119, -0.864010, 0.482106,
		37.688278, 40.856144, 44.301281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347504, 41.582249, 44.468468>,  <37.789864, 41.460953, 43.963806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347504, 41.582249, 44.468468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462219, 41.228489, 44.615757>,  <37.531048, 41.016232, 44.704132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462219, 41.228489, 44.615757>,  <37.347504, 41.582249, 44.468468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462219, 41.228489, 44.615757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007472, 0.382296, 0.924010,
		-0.957965, -0.267746, 0.103029,
		0.286787, -0.884399, 0.368227,
		37.548256, 40.963169, 44.726227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899738, 41.350761, 45.005196>,  <37.347504, 41.582249, 44.468468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899738, 41.350761, 45.005196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248558, 41.163681, 45.062855>,  <37.457851, 41.051434, 45.097450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.248558, 41.163681, 45.062855>,  <36.899738, 41.350761, 45.005196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248558, 41.163681, 45.062855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004883, 0.302837, 0.953030,
		-0.489387, -0.830389, 0.266374,
		0.872053, -0.467701, 0.144150,
		37.510174, 41.023373, 45.106098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839516, 40.974350, 45.574856>,  <36.899738, 41.350761, 45.005196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839516, 40.974350, 45.574856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237427, 41.011181, 45.557243>,  <37.476173, 41.033279, 45.546677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.237427, 41.011181, 45.557243>,  <36.839516, 40.974350, 45.574856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237427, 41.011181, 45.557243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012721, 0.316175, 0.948615,
		0.101270, -0.944222, 0.313353,
		0.994777, 0.092080, -0.044030,
		37.535858, 41.038803, 45.544033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077251, 40.502754, 46.056499>,  <36.839516, 40.974350, 45.574856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077251, 40.502754, 46.056499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375397, 40.768188, 46.030918>,  <37.554283, 40.927448, 46.015568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.375397, 40.768188, 46.030918>,  <37.077251, 40.502754, 46.056499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375397, 40.768188, 46.030918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045739, 0.044802, 0.997948,
		0.665089, -0.746758, 0.003042,
		0.745362, 0.663585, -0.063953,
		37.599007, 40.967262, 46.011734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264214, 40.452637, 46.657543>,  <37.077251, 40.502754, 46.056499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264214, 40.452637, 46.657543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496761, 40.759094, 46.547981>,  <37.636292, 40.942970, 46.482243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496761, 40.759094, 46.547981>,  <37.264214, 40.452637, 46.657543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496761, 40.759094, 46.547981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021256, 0.350829, 0.936198,
		0.813360, -0.538458, 0.220247,
		0.581372, 0.766148, -0.273904,
		37.671173, 40.988937, 46.465809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823326, 40.511295, 47.139240>,  <37.264214, 40.452637, 46.657543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823326, 40.511295, 47.139240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812664, 40.886257, 47.000351>,  <37.806267, 41.111233, 46.917015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.812664, 40.886257, 47.000351>,  <37.823326, 40.511295, 47.139240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812664, 40.886257, 47.000351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038121, 0.346145, 0.937406,
		0.998918, 0.038221, 0.026509,
		-0.026653, 0.937402, -0.347228,
		37.804668, 41.167477, 46.896183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433544, 40.849655, 47.403160>,  <37.823326, 40.511295, 47.139240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433544, 40.849655, 47.403160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157291, 41.129417, 47.329556>,  <37.991539, 41.297276, 47.285393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157291, 41.129417, 47.329556>,  <38.433544, 40.849655, 47.403160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157291, 41.129417, 47.329556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041386, 0.215794, 0.975561,
		0.722023, 0.681367, -0.120088,
		-0.690630, 0.699408, -0.184008,
		37.950104, 41.339241, 47.274353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725063, 41.463699, 47.682938>,  <38.433544, 40.849655, 47.403160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725063, 41.463699, 47.682938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.330708, 41.525143, 47.656345>,  <38.094093, 41.562008, 47.640388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.330708, 41.525143, 47.656345>,  <38.725063, 41.463699, 47.682938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330708, 41.525143, 47.656345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003832, 0.417817, 0.908523,
		0.167334, 0.895452, -0.412512,
		-0.985893, 0.153607, -0.066484,
		38.034939, 41.571224, 47.636402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581699, 42.047832, 47.932674>,  <38.725063, 41.463699, 47.682938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581699, 42.047832, 47.932674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214733, 41.888741, 47.937634>,  <37.994553, 41.793285, 47.940609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214733, 41.888741, 47.937634>,  <38.581699, 42.047832, 47.932674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214733, 41.888741, 47.937634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135603, 0.341771, 0.929949,
		-0.374108, 0.851470, -0.367480,
		-0.917417, -0.397733, 0.012398,
		37.939507, 41.769421, 47.941353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237114, 42.432697, 48.356766>,  <38.581699, 42.047832, 47.932674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237114, 42.432697, 48.356766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945438, 42.159142, 48.347118>,  <37.770435, 41.995007, 48.341331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.945438, 42.159142, 48.347118>,  <38.237114, 42.432697, 48.356766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945438, 42.159142, 48.347118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145451, 0.120455, 0.982005,
		-0.668679, 0.719573, -0.187306,
		-0.729186, -0.683890, -0.024117,
		37.726681, 41.953976, 48.339882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598438, 42.719501, 48.715942>,  <38.237114, 42.432697, 48.356766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598438, 42.719501, 48.715942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567547, 42.320698, 48.716984>,  <37.549011, 42.081417, 48.717609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567547, 42.320698, 48.716984>,  <37.598438, 42.719501, 48.715942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567547, 42.320698, 48.716984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192399, 0.017465, 0.981161,
		-0.978273, 0.075269, -0.193173,
		-0.077225, -0.997010, 0.002604,
		37.544380, 42.021595, 48.717766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009487, 42.526665, 49.084217>,  <37.598438, 42.719501, 48.715942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009487, 42.526665, 49.084217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240719, 42.200348, 49.091167>,  <37.379459, 42.004559, 49.095337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240719, 42.200348, 49.091167>,  <37.009487, 42.526665, 49.084217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240719, 42.200348, 49.091167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250624, -0.157250, 0.955228,
		-0.776536, -0.556556, -0.295360,
		0.578083, -0.815793, 0.017376,
		37.414143, 41.955608, 49.096382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644432, 42.007008, 49.325874>,  <37.009487, 42.526665, 49.084217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644432, 42.007008, 49.325874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013382, 41.896248, 49.433620>,  <37.234753, 41.829792, 49.498268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013382, 41.896248, 49.433620>,  <36.644432, 42.007008, 49.325874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013382, 41.896248, 49.433620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319096, -0.153096, 0.935275,
		-0.217739, -0.948624, -0.229569,
		0.922370, -0.276900, 0.269367,
		37.290092, 41.813179, 49.514431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585331, 41.329609, 49.451725>,  <36.644432, 42.007008, 49.325874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585331, 41.329609, 49.451725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863792, 41.529057, 49.658318>,  <37.030869, 41.648724, 49.782272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863792, 41.529057, 49.658318>,  <36.585331, 41.329609, 49.451725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863792, 41.529057, 49.658318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402405, -0.324755, 0.855923,
		0.594506, -0.803689, -0.025435,
		0.696156, 0.498616, 0.516478,
		37.072639, 41.678642, 49.813259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025772, 41.580940, 49.206581>,  <36.585331, 41.329609, 49.451725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025772, 41.580940, 49.206581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672520, 41.534859, 49.388481>,  <35.460567, 41.507210, 49.497623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672520, 41.534859, 49.388481>,  <36.025772, 41.580940, 49.206581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672520, 41.534859, 49.388481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140494, -0.859936, -0.490686,
		0.447587, -0.497232, 0.743254,
		-0.883135, -0.115202, 0.454754,
		35.407578, 41.500298, 49.524906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899311, 40.826359, 49.459835>,  <36.025772, 41.580940, 49.206581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899311, 40.826359, 49.459835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553074, 41.021549, 49.414886>,  <35.345333, 41.138664, 49.387917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553074, 41.021549, 49.414886>,  <35.899311, 40.826359, 49.459835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553074, 41.021549, 49.414886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358470, -0.760536, -0.541372,
		-0.349639, -0.428327, 0.833240,
		-0.865593, 0.487976, -0.112371,
		35.293396, 41.167942, 49.381176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366474, 40.310665, 49.518959>,  <35.899311, 40.826359, 49.459835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366474, 40.310665, 49.518959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217587, 40.613045, 49.303555>,  <35.128254, 40.794472, 49.174313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217587, 40.613045, 49.303555>,  <35.366474, 40.310665, 49.518959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217587, 40.613045, 49.303555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032337, -0.590416, -0.806451,
		-0.927581, -0.282763, 0.244210,
		-0.372220, 0.755946, -0.538515,
		35.105919, 40.839828, 49.141998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835331, 39.977062, 49.203903>,  <35.366474, 40.310665, 49.518959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835331, 39.977062, 49.203903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854080, 40.324669, 49.006882>,  <34.865330, 40.533234, 48.888668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854080, 40.324669, 49.006882>,  <34.835331, 39.977062, 49.203903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854080, 40.324669, 49.006882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312489, -0.455585, -0.833543,
		-0.948764, 0.192989, 0.250203,
		0.046876, 0.869021, -0.492549,
		34.868141, 40.585377, 48.859116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271542, 40.007572, 48.690937>,  <34.835331, 39.977062, 49.203903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271542, 40.007572, 48.690937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516350, 40.283962, 48.537064>,  <34.663235, 40.449799, 48.444740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516350, 40.283962, 48.537064>,  <34.271542, 40.007572, 48.690937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516350, 40.283962, 48.537064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095371, -0.418385, -0.903248,
		-0.785072, 0.589492, -0.190160,
		0.612018, 0.690980, -0.384683,
		34.699955, 40.491257, 48.421658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109291, 40.110596, 48.113163>,  <34.271542, 40.007572, 48.690937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109291, 40.110596, 48.113163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489944, 40.219723, 48.056648>,  <34.718338, 40.285198, 48.022739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489944, 40.219723, 48.056648>,  <34.109291, 40.110596, 48.113163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489944, 40.219723, 48.056648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058778, -0.289693, -0.955313,
		-0.301559, 0.917413, -0.259646,
		0.951634, 0.272822, -0.141283,
		34.775436, 40.301571, 48.014263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184238, 40.384949, 47.441311>,  <34.109291, 40.110596, 48.113163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184238, 40.384949, 47.441311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579418, 40.360073, 47.497997>,  <34.816528, 40.345146, 47.532009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579418, 40.360073, 47.497997>,  <34.184238, 40.384949, 47.441311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579418, 40.360073, 47.497997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129707, -0.166804, -0.977421,
		0.084426, 0.984027, -0.156728,
		0.987952, -0.062191, 0.141717,
		34.875805, 40.341415, 47.540512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488983, 40.717705, 46.854801>,  <34.184238, 40.384949, 47.441311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488983, 40.717705, 46.854801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762913, 40.468170, 47.005447>,  <34.927269, 40.318451, 47.095837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.762913, 40.468170, 47.005447>,  <34.488983, 40.717705, 46.854801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762913, 40.468170, 47.005447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196581, -0.339513, -0.919830,
		0.701691, 0.703959, -0.109872,
		0.684825, -0.623838, 0.376618,
		34.968361, 40.281017, 47.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146095, 40.892941, 46.612206>,  <34.488983, 40.717705, 46.854801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146095, 40.892941, 46.612206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166573, 40.507748, 46.718063>,  <35.178860, 40.276630, 46.781578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166573, 40.507748, 46.718063>,  <35.146095, 40.892941, 46.612206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166573, 40.507748, 46.718063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280498, -0.240462, -0.929247,
		0.958489, 0.121803, 0.257805,
		0.051193, -0.962986, 0.264646,
		35.181931, 40.218853, 46.797459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686325, 40.756981, 46.324291>,  <35.146095, 40.892941, 46.612206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686325, 40.756981, 46.324291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529495, 40.393467, 46.381405>,  <35.435398, 40.175358, 46.415672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.529495, 40.393467, 46.381405>,  <35.686325, 40.756981, 46.324291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529495, 40.393467, 46.381405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248552, -0.254082, -0.934700,
		0.885721, -0.330981, 0.325499,
		-0.392071, -0.908787, 0.142780,
		35.411873, 40.120831, 46.424240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221066, 40.177067, 46.011284>,  <35.686325, 40.756981, 46.324291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221066, 40.177067, 46.011284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859856, 40.007915, 46.041546>,  <35.643131, 39.906425, 46.059704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859856, 40.007915, 46.041546>,  <36.221066, 40.177067, 46.011284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859856, 40.007915, 46.041546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118051, -0.413596, -0.902775,
		0.413053, -0.806296, 0.423408,
		-0.903023, -0.422878, 0.075653,
		35.588947, 39.881054, 46.064243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295364, 39.562370, 45.659473>,  <36.221066, 40.177067, 46.011284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295364, 39.562370, 45.659473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899395, 39.608788, 45.691925>,  <35.661812, 39.636639, 45.711395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899395, 39.608788, 45.691925>,  <36.295364, 39.562370, 45.659473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899395, 39.608788, 45.691925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096439, -0.133078, -0.986402,
		-0.103660, -0.984290, 0.142927,
		-0.989926, 0.116034, 0.081129,
		35.602417, 39.643600, 45.716263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961235, 38.946270, 45.381840>,  <36.295364, 39.562370, 45.659473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961235, 38.946270, 45.381840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664612, 39.213299, 45.355186>,  <35.486637, 39.373516, 45.339195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.664612, 39.213299, 45.355186>,  <35.961235, 38.946270, 45.381840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664612, 39.213299, 45.355186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085325, -0.192366, -0.977607,
		-0.665439, -0.719268, 0.199611,
		-0.741559, 0.667570, -0.066636,
		35.442142, 39.413570, 45.335197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415985, 38.595695, 44.987419>,  <35.961235, 38.946270, 45.381840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415985, 38.595695, 44.987419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338566, 38.986130, 44.947826>,  <35.292114, 39.220390, 44.924072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338566, 38.986130, 44.947826>,  <35.415985, 38.595695, 44.987419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338566, 38.986130, 44.947826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196080, -0.137337, -0.970923,
		-0.961297, -0.168513, 0.217972,
		-0.193549, 0.976085, -0.098980,
		35.280502, 39.278954, 44.918133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749702, 38.665936, 44.587673>,  <35.415985, 38.595695, 44.987419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749702, 38.665936, 44.587673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940365, 39.014858, 44.544067>,  <35.054764, 39.224213, 44.517906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940365, 39.014858, 44.544067>,  <34.749702, 38.665936, 44.587673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940365, 39.014858, 44.544067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325923, 0.060191, -0.943478,
		-0.816438, 0.485246, 0.312995,
		0.476659, 0.872303, -0.109010,
		35.083363, 39.276550, 44.511364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278992, 39.168488, 44.237099>,  <34.749702, 38.665936, 44.587673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278992, 39.168488, 44.237099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655571, 39.295662, 44.192219>,  <34.881519, 39.371967, 44.165291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655571, 39.295662, 44.192219>,  <34.278992, 39.168488, 44.237099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655571, 39.295662, 44.192219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212974, 0.302810, -0.928950,
		-0.261366, 0.898458, 0.352792,
		0.941451, 0.317932, -0.112204,
		34.938007, 39.391041, 44.158558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307163, 39.615017, 43.652439>,  <34.278992, 39.168488, 44.237099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307163, 39.615017, 43.652439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703930, 39.582119, 43.691109>,  <34.941990, 39.562382, 43.714310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703930, 39.582119, 43.691109>,  <34.307163, 39.615017, 43.652439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703930, 39.582119, 43.691109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110131, 0.179131, -0.977642,
		0.063085, 0.980382, 0.186739,
		0.991913, -0.082241, 0.096670,
		35.001503, 39.557446, 43.720108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522903, 40.116909, 43.260708>,  <34.307163, 39.615017, 43.652439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522903, 40.116909, 43.260708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.834229, 39.867458, 43.289875>,  <35.021023, 39.717789, 43.307377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.834229, 39.867458, 43.289875>,  <34.522903, 40.116909, 43.260708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834229, 39.867458, 43.289875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186269, 0.118426, -0.975335,
		0.599606, 0.772702, 0.208335,
		0.778316, -0.623624, 0.072922,
		35.067722, 39.680370, 43.311752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931557, 40.342266, 42.705265>,  <34.522903, 40.116909, 43.260708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931557, 40.342266, 42.705265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061981, 39.970585, 42.774860>,  <35.140236, 39.747578, 42.816616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061981, 39.970585, 42.774860>,  <34.931557, 40.342266, 42.705265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061981, 39.970585, 42.774860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038239, -0.170928, -0.984541,
		0.944576, 0.327671, -0.020201,
		0.326058, -0.929202, 0.173984,
		35.159798, 39.691826, 42.827057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514107, 40.190670, 42.187149>,  <34.931557, 40.342266, 42.705265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514107, 40.190670, 42.187149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375916, 39.836960, 42.312820>,  <35.293003, 39.624733, 42.388226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375916, 39.836960, 42.312820>,  <35.514107, 40.190670, 42.187149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375916, 39.836960, 42.312820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050907, -0.316643, -0.947178,
		0.937046, -0.343220, 0.064377,
		-0.345475, -0.884272, 0.314181,
		35.272274, 39.571678, 42.407074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.968521, 33.405106, 41.699921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.625607, 33.494495, 41.514397>,  <41.419857, 33.548130, 41.403084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.625607, 33.494495, 41.514397>,  <41.968521, 33.405106, 41.699921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625607, 33.494495, 41.514397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514751, 0.355497, -0.780162,
		-0.009462, -0.907569, -0.419796,
		-0.857287, 0.223473, -0.463809,
		41.368420, 33.561539, 41.375256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983131, 33.122978, 40.969593>,  <41.968521, 33.405106, 41.699921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983131, 33.122978, 40.969593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.727661, 33.430607, 40.979630>,  <41.574379, 33.615185, 40.985653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.727661, 33.430607, 40.979630>,  <41.983131, 33.122978, 40.969593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727661, 33.430607, 40.979630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509220, 0.446882, -0.735521,
		-0.576878, -0.456982, -0.677037,
		-0.638676, 0.769067, 0.025092,
		41.536060, 33.661327, 40.987156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854694, 33.215031, 40.314964>,  <41.983131, 33.122978, 40.969593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854694, 33.215031, 40.314964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.725327, 33.565952, 40.456802>,  <41.647705, 33.776505, 40.541904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.725327, 33.565952, 40.456802>,  <41.854694, 33.215031, 40.314964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725327, 33.565952, 40.456802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430005, 0.470068, -0.770800,
		-0.842910, -0.096812, -0.529273,
		-0.323417, 0.877305, 0.354596,
		41.628300, 33.829144, 40.563183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392994, 33.538654, 39.792469>,  <41.854694, 33.215031, 40.314964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392994, 33.538654, 39.792469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521488, 33.842556, 40.018597>,  <41.598583, 34.024899, 40.154274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521488, 33.842556, 40.018597>,  <41.392994, 33.538654, 39.792469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521488, 33.842556, 40.018597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416617, 0.422705, -0.804829,
		-0.850435, 0.494058, -0.180740,
		0.321232, 0.759754, 0.565317,
		41.617859, 34.070484, 40.188190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247559, 34.100128, 39.369560>,  <41.392994, 33.538654, 39.792469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247559, 34.100128, 39.369560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.526676, 34.201599, 39.637508>,  <41.694149, 34.262482, 39.798279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.526676, 34.201599, 39.637508>,  <41.247559, 34.100128, 39.369560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526676, 34.201599, 39.637508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492021, 0.509902, -0.705631,
		-0.520572, 0.821978, 0.230992,
		0.697797, 0.253679, 0.669871,
		41.736015, 34.277702, 39.838470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430885, 34.699165, 39.078171>,  <41.247559, 34.100128, 39.369560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430885, 34.699165, 39.078171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722599, 34.646709, 39.346783>,  <41.897625, 34.615234, 39.507950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722599, 34.646709, 39.346783>,  <41.430885, 34.699165, 39.078171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722599, 34.646709, 39.346783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633197, 0.501239, -0.589763,
		-0.259253, 0.855313, 0.448583,
		0.729280, -0.131143, 0.671530,
		41.941383, 34.607365, 39.548241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755508, 35.278893, 39.181137>,  <41.430885, 34.699165, 39.078171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755508, 35.278893, 39.181137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015827, 35.000435, 39.302361>,  <42.172020, 34.833359, 39.375095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.015827, 35.000435, 39.302361>,  <41.755508, 35.278893, 39.181137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015827, 35.000435, 39.302361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740041, 0.492387, -0.458142,
		0.169714, 0.522430, 0.835622,
		0.650797, -0.696148, 0.303055,
		42.211067, 34.791592, 39.393276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385254, 35.616821, 39.159161>,  <41.755508, 35.278893, 39.181137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385254, 35.616821, 39.159161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530411, 35.244255, 39.170319>,  <42.617504, 35.020714, 39.177013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.530411, 35.244255, 39.170319>,  <42.385254, 35.616821, 39.159161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530411, 35.244255, 39.170319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773267, 0.284297, -0.566775,
		0.519971, 0.227250, 0.823400,
		0.362890, -0.931414, 0.027899,
		42.639278, 34.964832, 39.178688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104908, 35.592091, 39.396576>,  <42.385254, 35.616821, 39.159161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104908, 35.592091, 39.396576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039921, 35.273251, 39.163944>,  <43.000931, 35.081947, 39.024364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039921, 35.273251, 39.163944>,  <43.104908, 35.592091, 39.396576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039921, 35.273251, 39.163944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800855, 0.237789, -0.549625,
		0.576400, -0.555059, 0.599727,
		-0.162466, -0.797098, -0.581583,
		42.991180, 35.034122, 38.989468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755692, 35.222008, 39.365307>,  <43.104908, 35.592091, 39.396576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755692, 35.222008, 39.365307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553204, 35.084484, 39.048946>,  <43.431709, 35.001968, 38.859131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.553204, 35.084484, 39.048946>,  <43.755692, 35.222008, 39.365307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553204, 35.084484, 39.048946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832155, 0.046024, -0.552631,
		0.226402, -0.937910, 0.262807,
		-0.506222, -0.343813, -0.790906,
		43.401337, 34.981339, 38.811676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173977, 34.715179, 39.081623>,  <43.755692, 35.222008, 39.365307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173977, 34.715179, 39.081623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920395, 34.824966, 38.792412>,  <43.768246, 34.890839, 38.618885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.920395, 34.824966, 38.792412>,  <44.173977, 34.715179, 39.081623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920395, 34.824966, 38.792412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765298, 0.087899, -0.637646,
		-0.111458, -0.957571, -0.265771,
		-0.633953, 0.274464, -0.723031,
		43.730209, 34.907307, 38.575504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257954, 34.206833, 38.610905>,  <44.173977, 34.715179, 39.081623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257954, 34.206833, 38.610905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095306, 34.514538, 38.413769>,  <43.997719, 34.699162, 38.295486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.095306, 34.514538, 38.413769>,  <44.257954, 34.206833, 38.610905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095306, 34.514538, 38.413769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636117, -0.148810, -0.757107,
		-0.655754, -0.621361, -0.428833,
		-0.406622, 0.769264, -0.492841,
		43.973320, 34.745316, 38.265915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216457, 33.957729, 37.848179>,  <44.257954, 34.206833, 38.610905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216457, 33.957729, 37.848179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174175, 34.354980, 37.828098>,  <44.148808, 34.593330, 37.816051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174175, 34.354980, 37.828098>,  <44.216457, 33.957729, 37.848179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174175, 34.354980, 37.828098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482896, 0.007134, -0.875649,
		-0.869274, -0.116803, -0.480332,
		-0.105704, 0.993130, -0.050202,
		44.142464, 34.652920, 37.813038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989494, 34.092804, 37.216526>,  <44.216457, 33.957729, 37.848179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989494, 34.092804, 37.216526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136799, 34.448502, 37.325062>,  <44.225182, 34.661922, 37.390182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136799, 34.448502, 37.325062>,  <43.989494, 34.092804, 37.216526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136799, 34.448502, 37.325062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345542, 0.140036, -0.927896,
		-0.863125, 0.435466, -0.255702,
		0.368260, 0.889246, 0.271341,
		44.247276, 34.715275, 37.406464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847527, 34.422085, 36.618484>,  <43.989494, 34.092804, 37.216526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847527, 34.422085, 36.618484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108459, 34.669445, 36.793777>,  <44.265018, 34.817860, 36.898952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108459, 34.669445, 36.793777>,  <43.847527, 34.422085, 36.618484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108459, 34.669445, 36.793777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432344, 0.171298, -0.885289,
		-0.622532, 0.766966, -0.155620,
		0.652329, 0.618401, 0.438231,
		44.304157, 34.854965, 36.925247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881290, 35.180229, 36.288437>,  <43.847527, 34.422085, 36.618484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881290, 35.180229, 36.288437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227341, 35.119576, 36.479668>,  <44.434971, 35.083183, 36.594406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227341, 35.119576, 36.479668>,  <43.881290, 35.180229, 36.288437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227341, 35.119576, 36.479668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501441, 0.241804, -0.830715,
		0.010362, 0.958404, 0.285227,
		0.865130, -0.151632, 0.478078,
		44.486881, 35.074085, 36.623093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340969, 35.623196, 36.029583>,  <43.881290, 35.180229, 36.288437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340969, 35.623196, 36.029583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601326, 35.376030, 36.205997>,  <44.757542, 35.227730, 36.311848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601326, 35.376030, 36.205997>,  <44.340969, 35.623196, 36.029583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601326, 35.376030, 36.205997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581530, 0.032369, -0.812881,
		0.488017, 0.785576, 0.380406,
		0.650893, -0.617917, 0.441039,
		44.796593, 35.190655, 36.338310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971725, 35.824356, 35.790142>,  <44.340969, 35.623196, 36.029583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971725, 35.824356, 35.790142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016380, 35.448196, 35.918629>,  <45.043175, 35.222500, 35.995720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016380, 35.448196, 35.918629>,  <44.971725, 35.824356, 35.790142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016380, 35.448196, 35.918629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621450, -0.186165, -0.761014,
		0.775459, 0.284576, 0.563631,
		0.111638, -0.940404, 0.321213,
		45.049873, 35.166077, 36.014992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735355, 35.710072, 35.826225>,  <44.971725, 35.824356, 35.790142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735355, 35.710072, 35.826225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534302, 35.364979, 35.804108>,  <45.413670, 35.157925, 35.790836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.534302, 35.364979, 35.804108>,  <45.735355, 35.710072, 35.826225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534302, 35.364979, 35.804108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576361, -0.286753, -0.765233,
		0.644332, -0.416502, 0.641375,
		-0.502637, -0.862728, -0.055291,
		45.383511, 35.106159, 35.787521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228790, 35.152866, 35.673664>,  <45.735355, 35.710072, 35.826225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228790, 35.152866, 35.673664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886665, 34.974182, 35.568680>,  <45.681389, 34.866974, 35.505688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886665, 34.974182, 35.568680>,  <46.228790, 35.152866, 35.673664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886665, 34.974182, 35.568680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479341, -0.490012, -0.728094,
		0.196637, -0.748559, 0.633241,
		-0.855316, -0.446708, -0.262460,
		45.630070, 34.840168, 35.489941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.415970, 34.405098, 35.543713>,  <46.228790, 35.152866, 35.673664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.415970, 34.405098, 35.543713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069374, 34.494751, 35.365292>,  <45.861416, 34.548542, 35.258240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069374, 34.494751, 35.365292>,  <46.415970, 34.405098, 35.543713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069374, 34.494751, 35.365292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217316, -0.635067, -0.741258,
		-0.449416, -0.739225, 0.501570,
		-0.866487, 0.224134, -0.446054,
		45.809429, 34.561993, 35.231476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958748, 33.810909, 35.395100>,  <46.415970, 34.405098, 35.543713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958748, 33.810909, 35.395100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912342, 34.103775, 35.126629>,  <45.884499, 34.279495, 34.965546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.912342, 34.103775, 35.126629>,  <45.958748, 33.810909, 35.395100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912342, 34.103775, 35.126629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035239, -0.672279, -0.739459,
		-0.992622, -0.109441, 0.052195,
		-0.116016, 0.732164, -0.671175,
		45.877537, 34.323425, 34.925278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261585, 33.041916, 35.387165>,  <45.958748, 33.810909, 35.395100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261585, 33.041916, 35.387165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.590477, 33.145828, 35.589725>,  <46.787811, 33.208176, 35.711262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.590477, 33.145828, 35.589725>,  <46.261585, 33.041916, 35.387165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590477, 33.145828, 35.589725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346014, -0.478282, 0.807169,
		0.451893, -0.838904, -0.303371,
		0.822233, 0.259783, 0.506404,
		46.837147, 33.223763, 35.741646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.937386, 32.488312, 35.578999>,  <46.261585, 33.041916, 35.387165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.937386, 32.488312, 35.578999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.868336, 32.749050, 35.874378>,  <46.826908, 32.905491, 36.051605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.868336, 32.749050, 35.874378>,  <46.937386, 32.488312, 35.578999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868336, 32.749050, 35.874378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356629, -0.740197, 0.570022,
		0.918160, -0.164954, 0.360239,
		-0.172620, 0.651843, 0.738447,
		46.816551, 32.944603, 36.095913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006287, 32.098244, 36.139549>,  <46.937386, 32.488312, 35.578999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006287, 32.098244, 36.139549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802097, 32.402760, 36.299473>,  <46.679585, 32.585468, 36.395428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802097, 32.402760, 36.299473>,  <47.006287, 32.098244, 36.139549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802097, 32.402760, 36.299473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422821, -0.627087, 0.654205,
		0.748758, 0.164906, 0.642002,
		-0.510474, 0.761293, 0.399811,
		46.648956, 32.631149, 36.419415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968060, 31.918219, 36.897392>,  <47.006287, 32.098244, 36.139549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968060, 31.918219, 36.897392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.693020, 32.207947, 36.877110>,  <46.527996, 32.381783, 36.864941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.693020, 32.207947, 36.877110>,  <46.968060, 31.918219, 36.897392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.693020, 32.207947, 36.877110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621822, -0.551359, 0.556183,
		0.374894, 0.413964, 0.829511,
		-0.687598, 0.724318, -0.050711,
		46.486740, 32.425243, 36.861897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879017, 32.229996, 37.554806>,  <46.968060, 31.918219, 36.897392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879017, 32.229996, 37.554806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.540665, 32.287437, 37.349339>,  <46.337654, 32.321903, 37.226059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.540665, 32.287437, 37.349339>,  <46.879017, 32.229996, 37.554806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540665, 32.287437, 37.349339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435754, -0.741425, 0.510301,
		-0.307568, 0.655490, 0.689735,
		-0.845885, 0.143602, -0.513671,
		46.286900, 32.330517, 37.195236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454304, 32.210457, 38.046394>,  <46.879017, 32.229996, 37.554806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454304, 32.210457, 38.046394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183781, 32.166874, 37.754990>,  <46.021465, 32.140724, 37.580147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.183781, 32.166874, 37.754990>,  <46.454304, 32.210457, 38.046394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.183781, 32.166874, 37.754990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446899, -0.725501, 0.523383,
		-0.585565, 0.679541, 0.441970,
		-0.676310, -0.108958, -0.728514,
		45.980888, 32.134186, 37.536434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793732, 32.083431, 38.357792>,  <46.454304, 32.210457, 38.046394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793732, 32.083431, 38.357792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738213, 31.950081, 37.984783>,  <45.704899, 31.870071, 37.760979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.738213, 31.950081, 37.984783>,  <45.793732, 32.083431, 38.357792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738213, 31.950081, 37.984783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558346, -0.751362, 0.351716,
		-0.817914, 0.569489, -0.081847,
		-0.138802, -0.333373, -0.932522,
		45.696571, 31.850069, 37.705029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077522, 31.987556, 38.328743>,  <45.793732, 32.083431, 38.357792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077522, 31.987556, 38.328743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260643, 31.765522, 38.050953>,  <45.370514, 31.632301, 37.884277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.260643, 31.765522, 38.050953>,  <45.077522, 31.987556, 38.328743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260643, 31.765522, 38.050953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568243, -0.783448, 0.251612,
		-0.683753, 0.279443, -0.674087,
		0.457801, -0.555085, -0.694477,
		45.397984, 31.598997, 37.842609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552567, 31.747581, 37.890213>,  <45.077522, 31.987556, 38.328743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552567, 31.747581, 37.890213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.855148, 31.487448, 37.862354>,  <45.036697, 31.331367, 37.845638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.855148, 31.487448, 37.862354>,  <44.552567, 31.747581, 37.890213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855148, 31.487448, 37.862354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617759, -0.745390, 0.250537,
		-0.214843, -0.146496, -0.965599,
		0.756450, -0.650333, -0.069642,
		45.082085, 31.292347, 37.841461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305130, 31.293489, 37.503403>,  <44.552567, 31.747581, 37.890213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305130, 31.293489, 37.503403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600517, 31.122231, 37.711769>,  <44.777748, 31.019474, 37.836788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.600517, 31.122231, 37.711769>,  <44.305130, 31.293489, 37.503403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600517, 31.122231, 37.711769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660547, -0.614520, 0.431326,
		0.135443, -0.662611, -0.736615,
		0.738467, -0.428149, 0.520919,
		44.822056, 30.993786, 37.868046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035709, 30.476759, 37.474327>,  <44.305130, 31.293489, 37.503403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035709, 30.476759, 37.474327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314934, 30.522316, 37.757095>,  <44.482468, 30.549650, 37.926758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.314934, 30.522316, 37.757095>,  <44.035709, 30.476759, 37.474327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314934, 30.522316, 37.757095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536089, -0.571353, 0.621421,
		0.474676, -0.812764, -0.337784,
		0.698062, 0.113891, 0.706921,
		44.524353, 30.556482, 37.969173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102196, 29.810570, 37.773357>,  <44.035709, 30.476759, 37.474327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102196, 29.810570, 37.773357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271282, 30.057428, 38.038822>,  <44.372734, 30.205544, 38.198101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271282, 30.057428, 38.038822>,  <44.102196, 29.810570, 37.773357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271282, 30.057428, 38.038822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579621, -0.378837, 0.721472,
		0.696671, -0.689648, 0.197570,
		0.422715, 0.617145, 0.663660,
		44.398098, 30.242571, 38.237919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333019, 29.388548, 38.316219>,  <44.102196, 29.810570, 37.773357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333019, 29.388548, 38.316219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283642, 29.762133, 38.450371>,  <44.254013, 29.986284, 38.530861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.283642, 29.762133, 38.450371>,  <44.333019, 29.388548, 38.316219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283642, 29.762133, 38.450371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445050, -0.354172, 0.822492,
		0.886956, -0.047724, 0.459382,
		-0.123448, 0.933962, 0.335374,
		44.246609, 30.042322, 38.550983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402435, 29.298090, 39.131294>,  <44.333019, 29.388548, 38.316219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402435, 29.298090, 39.131294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218208, 29.644928, 39.055378>,  <44.107674, 29.853031, 39.009827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.218208, 29.644928, 39.055378>,  <44.402435, 29.298090, 39.131294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218208, 29.644928, 39.055378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466271, -0.054396, 0.882968,
		0.755294, 0.495162, 0.429355,
		-0.460567, 0.867096, -0.189795,
		44.080040, 29.905056, 38.998440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253441, 29.572210, 39.892841>,  <44.402435, 29.298090, 39.131294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253441, 29.572210, 39.892841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026203, 29.807846, 39.662971>,  <43.889862, 29.949228, 39.525051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.026203, 29.807846, 39.662971>,  <44.253441, 29.572210, 39.892841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.026203, 29.807846, 39.662971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671039, 0.072674, 0.737852,
		0.476425, 0.804792, 0.354017,
		-0.568090, 0.589090, -0.574671,
		43.855778, 29.984573, 39.490570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136623, 30.115152, 40.269142>,  <44.253441, 29.572210, 39.892841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136623, 30.115152, 40.269142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833683, 30.089790, 40.009171>,  <43.651920, 30.074574, 39.853188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.833683, 30.089790, 40.009171>,  <44.136623, 30.115152, 40.269142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833683, 30.089790, 40.009171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652825, 0.097384, 0.751223,
		0.015663, 0.993225, -0.115144,
		-0.757347, -0.063403, -0.649928,
		43.606480, 30.070770, 39.814194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652954, 30.701229, 40.355759>,  <44.136623, 30.115152, 40.269142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652954, 30.701229, 40.355759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438873, 30.414078, 40.177677>,  <43.310425, 30.241787, 40.070827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438873, 30.414078, 40.177677>,  <43.652954, 30.701229, 40.355759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438873, 30.414078, 40.177677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705899, 0.090611, 0.702493,
		-0.463962, 0.690249, -0.555243,
		-0.535206, -0.717876, -0.445206,
		43.278313, 30.198715, 40.044117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906761, 30.845905, 40.440437>,  <43.652954, 30.701229, 40.355759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906761, 30.845905, 40.440437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877651, 30.466616, 40.316776>,  <42.860184, 30.239042, 40.242580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.877651, 30.466616, 40.316776>,  <42.906761, 30.845905, 40.440437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877651, 30.466616, 40.316776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728519, -0.161161, 0.665798,
		-0.681149, 0.273680, -0.679069,
		-0.072776, -0.948223, -0.309156,
		42.855820, 30.182148, 40.224030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202724, 30.709921, 40.322681>,  <42.906761, 30.845905, 40.440437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202724, 30.709921, 40.322681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.340569, 30.338367, 40.376972>,  <42.423275, 30.115437, 40.409546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.340569, 30.338367, 40.376972>,  <42.202724, 30.709921, 40.322681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340569, 30.338367, 40.376972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723071, -0.170441, 0.669417,
		-0.598676, -0.328826, -0.730383,
		0.344609, -0.928883, 0.135726,
		42.443951, 30.059702, 40.417690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600838, 30.339977, 40.455070>,  <42.202724, 30.709921, 40.322681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600838, 30.339977, 40.455070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883400, 30.082848, 40.573574>,  <42.052937, 29.928570, 40.644676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.883400, 30.082848, 40.573574>,  <41.600838, 30.339977, 40.455070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883400, 30.082848, 40.573574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548856, -0.233188, 0.802733,
		-0.446932, -0.729658, -0.517543,
		0.706406, -0.642824, 0.296259,
		42.095322, 29.890001, 40.662453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.749748, 39.239357, 38.704025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455948, 38.968567, 38.685223>,  <39.279667, 38.806091, 38.673939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455948, 38.968567, 38.685223>,  <39.749748, 39.239357, 38.704025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455948, 38.968567, 38.685223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498426, -0.491176, -0.714365,
		0.460518, -0.548134, 0.698193,
		-0.734503, -0.676975, -0.047009,
		39.235596, 38.765472, 38.671120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124130, 38.773434, 38.478264>,  <39.749748, 39.239357, 38.704025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124130, 38.773434, 38.478264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761311, 38.606304, 38.457523>,  <39.543621, 38.506027, 38.445080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761311, 38.606304, 38.457523>,  <40.124130, 38.773434, 38.478264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761311, 38.606304, 38.457523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334787, -0.641078, -0.690606,
		0.255309, -0.643772, 0.721370,
		-0.907047, -0.417823, -0.051854,
		39.489197, 38.480957, 38.441967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149071, 38.072891, 38.532986>,  <40.124130, 38.773434, 38.478264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149071, 38.072891, 38.532986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818462, 38.157890, 38.324486>,  <39.620098, 38.208889, 38.199387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818462, 38.157890, 38.324486>,  <40.149071, 38.072891, 38.532986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818462, 38.157890, 38.324486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301284, -0.615203, -0.728528,
		-0.475487, -0.759190, 0.444457,
		-0.826523, 0.212498, -0.521253,
		39.570507, 38.221638, 38.168110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835983, 37.358524, 38.267849>,  <40.149071, 38.072891, 38.532986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835983, 37.358524, 38.267849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730572, 37.665031, 38.033451>,  <39.667324, 37.848934, 37.892811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730572, 37.665031, 38.033451>,  <39.835983, 37.358524, 38.267849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730572, 37.665031, 38.033451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240495, -0.536100, -0.809172,
		-0.934193, -0.354167, -0.043006,
		-0.263526, 0.766265, -0.585996,
		39.651512, 37.894913, 37.857651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477558, 37.104610, 37.681629>,  <39.835983, 37.358524, 38.267849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477558, 37.104610, 37.681629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538353, 37.469933, 37.530491>,  <39.574829, 37.689125, 37.439808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538353, 37.469933, 37.530491>,  <39.477558, 37.104610, 37.681629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538353, 37.469933, 37.530491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101742, -0.394713, -0.913154,
		-0.983132, 0.100344, -0.152913,
		0.151986, 0.913309, -0.377846,
		39.583950, 37.743927, 37.417137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139881, 37.165932, 37.100140>,  <39.477558, 37.104610, 37.681629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139881, 37.165932, 37.100140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408527, 37.458805, 37.054806>,  <39.569714, 37.634529, 37.027603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408527, 37.458805, 37.054806>,  <39.139881, 37.165932, 37.100140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408527, 37.458805, 37.054806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148193, -0.282636, -0.947711,
		-0.725928, 0.619701, -0.298327,
		0.671615, 0.732180, -0.113338,
		39.610012, 37.678459, 37.020805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899487, 37.544201, 36.526943>,  <39.139881, 37.165932, 37.100140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899487, 37.544201, 36.526943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288963, 37.628288, 36.562126>,  <39.522648, 37.678741, 36.583237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288963, 37.628288, 36.562126>,  <38.899487, 37.544201, 36.526943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288963, 37.628288, 36.562126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118090, -0.135368, -0.983733,
		-0.194891, 0.968238, -0.156631,
		0.973690, 0.210217, 0.087957,
		39.581070, 37.691353, 36.588512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083580, 37.738438, 35.903042>,  <38.899487, 37.544201, 36.526943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083580, 37.738438, 35.903042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449993, 37.715874, 36.061890>,  <39.669842, 37.702335, 36.157200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449993, 37.715874, 36.061890>,  <39.083580, 37.738438, 35.903042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449993, 37.715874, 36.061890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365568, -0.290037, -0.884442,
		0.165068, 0.955352, -0.245063,
		0.916031, -0.056406, 0.397122,
		39.724804, 37.698952, 36.181026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562969, 38.101044, 35.429878>,  <39.083580, 37.738438, 35.903042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562969, 38.101044, 35.429878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774002, 37.845932, 35.654339>,  <39.900623, 37.692863, 35.789017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774002, 37.845932, 35.654339>,  <39.562969, 38.101044, 35.429878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774002, 37.845932, 35.654339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321429, -0.461586, -0.826814,
		0.786346, 0.616584, -0.038523,
		0.527582, -0.637779, 0.561155,
		39.932278, 37.654598, 35.822685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177429, 38.020405, 34.980350>,  <39.562969, 38.101044, 35.429878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177429, 38.020405, 34.980350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180416, 37.705635, 35.227154>,  <40.182209, 37.516773, 35.375237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180416, 37.705635, 35.227154>,  <40.177429, 38.020405, 34.980350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180416, 37.705635, 35.227154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375053, -0.569775, -0.731226,
		0.926973, 0.236871, 0.290883,
		0.007468, -0.786923, 0.617005,
		40.182655, 37.469559, 35.412254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809292, 37.754993, 34.963509>,  <40.177429, 38.020405, 34.980350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809292, 37.754993, 34.963509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564060, 37.466812, 35.093170>,  <40.416920, 37.293903, 35.170967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564060, 37.466812, 35.093170>,  <40.809292, 37.754993, 34.963509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564060, 37.466812, 35.093170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166284, -0.518800, -0.838568,
		0.772323, -0.460207, 0.437867,
		-0.613080, -0.720455, 0.324156,
		40.380135, 37.250675, 35.190418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215778, 37.125572, 34.969921>,  <40.809292, 37.754993, 34.963509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215778, 37.125572, 34.969921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824894, 37.043724, 34.947323>,  <40.590363, 36.994614, 34.933765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824894, 37.043724, 34.947323>,  <41.215778, 37.125572, 34.969921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824894, 37.043724, 34.947323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157782, -0.522098, -0.838164,
		0.142009, -0.827976, 0.542485,
		-0.977210, -0.204621, -0.056497,
		40.531731, 36.982338, 34.930374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220871, 36.407833, 35.081497>,  <41.215778, 37.125572, 34.969921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220871, 36.407833, 35.081497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936684, 36.585075, 34.862812>,  <40.766171, 36.691422, 34.731602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936684, 36.585075, 34.862812>,  <41.220871, 36.407833, 35.081497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936684, 36.585075, 34.862812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348800, -0.453009, -0.820440,
		-0.611209, -0.773587, 0.167291,
		-0.710466, 0.443110, -0.546710,
		40.723545, 36.718010, 34.698799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663643, 35.979176, 34.616268>,  <41.220871, 36.407833, 35.081497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663643, 35.979176, 34.616268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768253, 36.322491, 34.439659>,  <40.831020, 36.528481, 34.333694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768253, 36.322491, 34.439659>,  <40.663643, 35.979176, 34.616268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768253, 36.322491, 34.439659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617362, -0.500385, -0.607024,
		-0.741934, -0.113825, -0.660741,
		0.261531, 0.858288, -0.441524,
		40.846714, 36.579979, 34.307201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679340, 35.278728, 34.715988>,  <40.663643, 35.979176, 34.616268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679340, 35.278728, 34.715988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818592, 34.914902, 34.806755>,  <40.902145, 34.696606, 34.861217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818592, 34.914902, 34.806755>,  <40.679340, 35.278728, 34.715988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818592, 34.914902, 34.806755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904629, -0.262468, 0.335791,
		-0.245864, -0.322183, -0.914193,
		0.348133, -0.909565, 0.226925,
		40.923031, 34.642033, 34.874832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094833, 34.721443, 34.545498>,  <40.679340, 35.278728, 34.715988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094833, 34.721443, 34.545498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312798, 34.550545, 34.834091>,  <40.443577, 34.448006, 35.007248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312798, 34.550545, 34.834091>,  <40.094833, 34.721443, 34.545498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312798, 34.550545, 34.834091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837719, -0.314388, 0.446527,
		0.036051, -0.847717, -0.529222,
		0.544910, -0.427242, 0.721483,
		40.476269, 34.422371, 35.050537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664970, 34.158623, 34.748562>,  <40.094833, 34.721443, 34.545498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664970, 34.158623, 34.748562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945705, 34.161407, 35.033485>,  <40.114147, 34.163078, 35.204437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945705, 34.161407, 35.033485>,  <39.664970, 34.158623, 34.748562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945705, 34.161407, 35.033485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666048, -0.348180, 0.659659,
		0.252602, -0.937402, -0.239730,
		0.701835, 0.006959, 0.712306,
		40.156258, 34.163494, 35.247177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677059, 33.471668, 35.135315>,  <39.664970, 34.158623, 34.748562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677059, 33.471668, 35.135315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814056, 33.764801, 35.370483>,  <39.896255, 33.940681, 35.511585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814056, 33.764801, 35.370483>,  <39.677059, 33.471668, 35.135315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814056, 33.764801, 35.370483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688472, -0.230047, 0.687812,
		0.639301, -0.640339, 0.425746,
		0.342492, 0.732833, 0.587925,
		39.916805, 33.984650, 35.546860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654018, 33.254139, 35.808491>,  <39.677059, 33.471668, 35.135315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654018, 33.254139, 35.808491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673634, 33.648121, 35.874779>,  <39.685402, 33.884510, 35.914551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673634, 33.648121, 35.874779>,  <39.654018, 33.254139, 35.808491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673634, 33.648121, 35.874779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571156, -0.108461, 0.813644,
		0.819375, -0.134555, 0.557243,
		0.049041, 0.984953, 0.165722,
		39.688347, 33.943607, 35.924496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783501, 33.336449, 36.493542>,  <39.654018, 33.254139, 35.808491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783501, 33.336449, 36.493542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645103, 33.697788, 36.392159>,  <39.562065, 33.914593, 36.331329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645103, 33.697788, 36.392159>,  <39.783501, 33.336449, 36.493542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645103, 33.697788, 36.392159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576277, 0.008564, 0.817210,
		0.740399, 0.428813, 0.517618,
		-0.345997, 0.903353, -0.253455,
		39.541306, 33.968796, 36.316120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004375, 33.803509, 37.048912>,  <39.783501, 33.336449, 36.493542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004375, 33.803509, 37.048912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716438, 34.004124, 36.856956>,  <39.543678, 34.124493, 36.741783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716438, 34.004124, 36.856956>,  <40.004375, 33.803509, 37.048912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716438, 34.004124, 36.856956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400492, 0.264584, 0.877269,
		0.566954, 0.823683, 0.010404,
		-0.719839, 0.501538, -0.479886,
		39.500488, 34.154587, 36.712990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907574, 34.468983, 37.417927>,  <40.004375, 33.803509, 37.048912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907574, 34.468983, 37.417927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572330, 34.373714, 37.221622>,  <39.371185, 34.316551, 37.103840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572330, 34.373714, 37.221622>,  <39.907574, 34.468983, 37.417927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572330, 34.373714, 37.221622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543985, 0.297882, 0.784440,
		-0.040644, 0.924413, -0.379221,
		-0.838110, -0.238173, -0.490759,
		39.320896, 34.302261, 37.074394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410526, 34.974579, 37.523170>,  <39.907574, 34.468983, 37.417927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410526, 34.974579, 37.523170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193714, 34.655663, 37.416939>,  <39.063629, 34.464314, 37.353199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193714, 34.655663, 37.416939>,  <39.410526, 34.974579, 37.523170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193714, 34.655663, 37.416939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643847, 0.190895, 0.740959,
		-0.540061, 0.572614, -0.616804,
		-0.542028, -0.797290, -0.265581,
		39.031105, 34.416477, 37.337265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715221, 35.238117, 37.504917>,  <39.410526, 34.974579, 37.523170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715221, 35.238117, 37.504917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706211, 34.840866, 37.550850>,  <38.700806, 34.602516, 37.578411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706211, 34.840866, 37.550850>,  <38.715221, 35.238117, 37.504917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706211, 34.840866, 37.550850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650517, 0.101781, 0.752640,
		-0.759157, -0.057751, -0.648340,
		-0.022523, -0.993129, 0.114836,
		38.699455, 34.542927, 37.585300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926655, 35.112453, 37.375206>,  <38.715221, 35.238117, 37.504917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926655, 35.112453, 37.375206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127899, 34.830437, 37.575127>,  <38.248646, 34.661228, 37.695080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127899, 34.830437, 37.575127>,  <37.926655, 35.112453, 37.375206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127899, 34.830437, 37.575127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632440, 0.093778, 0.768912,
		-0.588985, -0.702938, -0.398716,
		0.503106, -0.705042, 0.499800,
		38.278831, 34.618923, 37.725067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398220, 34.694138, 37.595741>,  <37.926655, 35.112453, 37.375206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398220, 34.694138, 37.595741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710114, 34.619766, 37.834885>,  <37.897251, 34.575142, 37.978371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710114, 34.619766, 37.834885>,  <37.398220, 34.694138, 37.595741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710114, 34.619766, 37.834885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593378, 0.085233, 0.800399,
		-0.199777, -0.978859, -0.043869,
		0.779739, -0.185932, 0.597861,
		37.944035, 34.563988, 38.014244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268803, 34.192600, 38.109077>,  <37.398220, 34.694138, 37.595741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268803, 34.192600, 38.109077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581814, 34.355709, 38.297283>,  <37.769619, 34.453575, 38.410206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581814, 34.355709, 38.297283>,  <37.268803, 34.192600, 38.109077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581814, 34.355709, 38.297283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527942, 0.033970, 0.848601,
		0.330052, -0.912452, 0.241861,
		0.782524, 0.407771, 0.470510,
		37.816570, 34.478039, 38.438435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360802, 33.872208, 38.754681>,  <37.268803, 34.192600, 38.109077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360802, 33.872208, 38.754681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560295, 34.216412, 38.796227>,  <37.679989, 34.422935, 38.821152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560295, 34.216412, 38.796227>,  <37.360802, 33.872208, 38.754681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560295, 34.216412, 38.796227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460661, 0.161652, 0.872731,
		0.734206, -0.483102, 0.477026,
		0.498731, 0.860512, 0.103861,
		37.709915, 34.474564, 38.827385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024704, 33.709229, 38.525105>,  <37.360802, 33.872208, 38.754681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024704, 33.709229, 38.525105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699474, 33.526299, 38.669193>,  <37.504337, 33.416538, 38.755646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699474, 33.526299, 38.669193>,  <38.024704, 33.709229, 38.525105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699474, 33.526299, 38.669193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249573, -0.285197, -0.925406,
		0.525949, -0.842326, 0.117749,
		-0.813075, -0.457330, 0.360221,
		37.455551, 33.389099, 38.777260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996689, 33.081043, 38.196529>,  <38.024704, 33.709229, 38.525105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996689, 33.081043, 38.196529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617573, 33.131042, 38.313873>,  <37.390102, 33.161041, 38.384281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617573, 33.131042, 38.313873>,  <37.996689, 33.081043, 38.196529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617573, 33.131042, 38.313873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311034, -0.159565, -0.936908,
		-0.070304, -0.979242, 0.190115,
		-0.947795, 0.125001, 0.293359,
		37.333233, 33.168541, 38.401882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564087, 32.482826, 37.875961>,  <37.996689, 33.081043, 38.196529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564087, 32.482826, 37.875961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314468, 32.785126, 37.955372>,  <37.164696, 32.966507, 38.003017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314468, 32.785126, 37.955372>,  <37.564087, 32.482826, 37.875961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314468, 32.785126, 37.955372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473427, -0.163570, -0.865512,
		-0.621636, -0.634106, 0.459867,
		-0.624047, 0.755747, 0.198522,
		37.127254, 33.011848, 38.014927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891346, 32.165981, 37.853260>,  <37.564087, 32.482826, 37.875961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891346, 32.165981, 37.853260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855492, 32.560432, 37.797386>,  <36.833981, 32.797104, 37.763863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855492, 32.560432, 37.797386>,  <36.891346, 32.165981, 37.853260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855492, 32.560432, 37.797386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424342, -0.164697, -0.890398,
		-0.901054, -0.020537, 0.433219,
		-0.089636, 0.986130, -0.139686,
		36.828602, 32.856270, 37.755482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296333, 32.242725, 37.451984>,  <36.891346, 32.165981, 37.853260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296333, 32.242725, 37.451984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433300, 32.614193, 37.394966>,  <36.515480, 32.837074, 37.360756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433300, 32.614193, 37.394966>,  <36.296333, 32.242725, 37.451984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433300, 32.614193, 37.394966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435911, 0.022626, -0.899705,
		-0.832307, 0.370210, 0.412566,
		0.342414, 0.928673, -0.142547,
		36.536026, 32.892796, 37.352203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717648, 32.570805, 37.198517>,  <36.296333, 32.242725, 37.451984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717648, 32.570805, 37.198517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057537, 32.737751, 37.069664>,  <36.261471, 32.837921, 36.992352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057537, 32.737751, 37.069664>,  <35.717648, 32.570805, 37.198517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057537, 32.737751, 37.069664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370065, 0.036964, -0.928270,
		-0.375524, 0.907985, 0.185863,
		0.849726, 0.417369, -0.322133,
		36.312454, 32.862961, 36.973022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413780, 33.108864, 36.774948>,  <35.717648, 32.570805, 37.198517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413780, 33.108864, 36.774948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793201, 33.083488, 36.650864>,  <36.020855, 33.068264, 36.576412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793201, 33.083488, 36.650864>,  <35.413780, 33.108864, 36.774948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793201, 33.083488, 36.650864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297637, 0.155574, -0.941918,
		0.108010, 0.985785, 0.128690,
		0.948550, -0.063434, -0.310210,
		36.077766, 33.064457, 36.557800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396843, 33.511524, 36.166889>,  <35.413780, 33.108864, 36.774948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396843, 33.511524, 36.166889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730839, 33.291420, 36.166206>,  <35.931236, 33.159355, 36.165794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730839, 33.291420, 36.166206>,  <35.396843, 33.511524, 36.166889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730839, 33.291420, 36.166206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154526, -0.231495, -0.960485,
		0.528126, 0.802258, -0.278326,
		0.834988, -0.550265, -0.001711,
		35.981335, 33.126339, 36.165691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865868, 33.801086, 35.640137>,  <35.396843, 33.511524, 36.166889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865868, 33.801086, 35.640137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937313, 33.412556, 35.702892>,  <35.980183, 33.179436, 35.740543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937313, 33.412556, 35.702892>,  <35.865868, 33.801086, 35.640137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937313, 33.412556, 35.702892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409970, -0.218421, -0.885560,
		0.894439, 0.093856, -0.437230,
		0.178616, -0.971330, 0.156886,
		35.990898, 33.121155, 35.749958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224133, 33.599289, 35.001915>,  <35.865868, 33.801086, 35.640137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224133, 33.599289, 35.001915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128365, 33.243797, 35.158295>,  <36.070904, 33.030502, 35.252121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128365, 33.243797, 35.158295>,  <36.224133, 33.599289, 35.001915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128365, 33.243797, 35.158295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190391, -0.351863, -0.916484,
		0.952065, -0.293860, -0.084962,
		-0.239423, -0.888729, 0.390945,
		36.056538, 32.977180, 35.275578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599453, 33.017387, 34.660614>,  <36.224133, 33.599289, 35.001915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599453, 33.017387, 34.660614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274433, 32.816280, 34.778587>,  <36.079422, 32.695618, 34.849373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274433, 32.816280, 34.778587>,  <36.599453, 33.017387, 34.660614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274433, 32.816280, 34.778587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095522, -0.384293, -0.918256,
		0.575012, -0.774301, 0.264232,
		-0.812549, -0.502769, 0.294937,
		36.030670, 32.665451, 34.867069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317364, 33.006210, 33.961792>,  <36.599453, 33.017387, 34.660614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317364, 33.006210, 33.961792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605503, 33.188835, 34.170654>,  <36.778389, 33.298409, 34.295971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605503, 33.188835, 34.170654>,  <36.317364, 33.006210, 33.961792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605503, 33.188835, 34.170654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102917, -0.674120, 0.731416,
		0.685932, -0.580615, -0.438616,
		0.720351, 0.456561, 0.522155,
		36.821609, 33.325802, 34.327301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.379696, 32.885307, 42.428276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991360, 32.977112, 42.455975>,  <37.758358, 33.032196, 42.472591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.991360, 32.977112, 42.455975>,  <38.379696, 32.885307, 42.428276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991360, 32.977112, 42.455975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084897, -0.059032, -0.994640,
		-0.224192, -0.971514, 0.076795,
		-0.970840, 0.229510, 0.069244,
		37.700108, 33.045963, 42.476749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010670, 32.490612, 41.921520>,  <38.379696, 32.885307, 42.428276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010670, 32.490612, 41.921520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752567, 32.785843, 42.000401>,  <37.597706, 32.962982, 42.047729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752567, 32.785843, 42.000401>,  <38.010670, 32.490612, 41.921520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752567, 32.785843, 42.000401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175434, 0.108071, -0.978542,
		-0.743548, -0.666008, 0.059749,
		-0.645260, 0.738075, 0.197196,
		37.558990, 33.007267, 42.059559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374969, 32.166569, 41.736679>,  <38.010670, 32.490612, 41.921520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374969, 32.166569, 41.736679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343021, 32.564388, 41.709873>,  <37.323853, 32.803082, 41.693790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343021, 32.564388, 41.709873>,  <37.374969, 32.166569, 41.736679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343021, 32.564388, 41.709873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460182, -0.096423, -0.882573,
		-0.884225, -0.039653, 0.465376,
		-0.079870, 0.994550, -0.067011,
		37.319061, 32.862755, 41.689770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838444, 32.273186, 41.222237>,  <37.374969, 32.166569, 41.736679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838444, 32.273186, 41.222237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.998512, 32.639664, 41.230736>,  <37.094555, 32.859550, 41.235836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.998512, 32.639664, 41.230736>,  <36.838444, 32.273186, 41.222237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998512, 32.639664, 41.230736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336535, 0.168480, -0.926476,
		-0.852412, 0.363598, 0.375752,
		0.400172, 0.916194, 0.021251,
		37.118565, 32.914520, 41.237110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422535, 32.771278, 40.853199>,  <36.838444, 32.273186, 41.222237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422535, 32.771278, 40.853199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.772659, 32.964607, 40.846992>,  <36.982735, 33.080605, 40.843269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.772659, 32.964607, 40.846992>,  <36.422535, 32.771278, 40.853199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772659, 32.964607, 40.846992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140533, 0.223544, -0.964509,
		-0.462695, 0.846423, 0.263592,
		0.875308, 0.483318, -0.015518,
		37.035252, 33.109604, 40.842339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357368, 33.424934, 40.512085>,  <36.422535, 32.771278, 40.853199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357368, 33.424934, 40.512085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749744, 33.347488, 40.505520>,  <36.985168, 33.301022, 40.501579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749744, 33.347488, 40.505520>,  <36.357368, 33.424934, 40.512085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749744, 33.347488, 40.505520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058975, 0.377145, -0.924275,
		0.185143, 0.905690, 0.381375,
		0.980940, -0.193614, -0.016413,
		37.044025, 33.289406, 40.500595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603916, 33.944550, 40.012779>,  <36.357368, 33.424934, 40.512085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603916, 33.944550, 40.012779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885727, 33.661892, 40.038986>,  <37.054813, 33.492298, 40.054710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885727, 33.661892, 40.038986>,  <36.603916, 33.944550, 40.012779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885727, 33.661892, 40.038986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194297, 0.103275, -0.975491,
		0.682559, 0.699992, 0.210059,
		0.704530, -0.706644, 0.065515,
		37.097084, 33.449898, 40.058640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166786, 34.260174, 39.635654>,  <36.603916, 33.944550, 40.012779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166786, 34.260174, 39.635654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211414, 33.863155, 39.655262>,  <37.238194, 33.624943, 39.667027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211414, 33.863155, 39.655262>,  <37.166786, 34.260174, 39.635654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211414, 33.863155, 39.655262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170075, -0.029528, -0.984989,
		0.979095, 0.118236, 0.165513,
		0.111574, -0.992547, 0.049020,
		37.244884, 33.565392, 39.669968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797222, 34.119904, 39.310627>,  <37.166786, 34.260174, 39.635654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797222, 34.119904, 39.310627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574055, 33.788612, 39.289581>,  <37.440155, 33.589840, 39.276955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574055, 33.788612, 39.289581>,  <37.797222, 34.119904, 39.310627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574055, 33.788612, 39.289581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104984, -0.007544, -0.994445,
		0.823228, -0.560344, 0.091159,
		-0.557919, -0.828225, -0.052617,
		37.406677, 33.540146, 39.273796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174259, 34.035305, 39.910316>,  <37.797222, 34.119904, 39.310627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174259, 34.035305, 39.910316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083015, 34.356297, 39.689777>,  <38.028271, 34.548893, 39.557453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083015, 34.356297, 39.689777>,  <38.174259, 34.035305, 39.910316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083015, 34.356297, 39.689777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271879, 0.491253, 0.827498,
		0.934905, 0.338661, 0.106119,
		-0.228110, 0.802483, -0.551350,
		38.014584, 34.597042, 39.524372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555710, 34.601852, 40.165356>,  <38.174259, 34.035305, 39.910316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555710, 34.601852, 40.165356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248722, 34.768311, 39.970287>,  <38.064529, 34.868183, 39.853249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.248722, 34.768311, 39.970287>,  <38.555710, 34.601852, 40.165356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248722, 34.768311, 39.970287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210127, 0.555382, 0.804610,
		0.605673, 0.719984, -0.338795,
		-0.767468, 0.416141, -0.487668,
		38.018482, 34.893154, 39.823986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657135, 35.351864, 40.112537>,  <38.555710, 34.601852, 40.165356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657135, 35.351864, 40.112537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264675, 35.279839, 40.084457>,  <38.029202, 35.236626, 40.067608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.264675, 35.279839, 40.084457>,  <38.657135, 35.351864, 40.112537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264675, 35.279839, 40.084457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172086, 0.648670, 0.741359,
		-0.087952, 0.739463, -0.667427,
		-0.981148, -0.180059, -0.070199,
		37.970329, 35.225822, 40.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414532, 36.015621, 40.361408>,  <38.657135, 35.351864, 40.112537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414532, 36.015621, 40.361408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116348, 35.749126, 40.369553>,  <37.937439, 35.589230, 40.374439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116348, 35.749126, 40.369553>,  <38.414532, 36.015621, 40.361408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116348, 35.749126, 40.369553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303958, 0.366969, 0.879172,
		-0.593209, 0.649200, -0.476069,
		-0.745461, -0.666238, 0.020360,
		37.892712, 35.549255, 40.375660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821400, 36.376251, 40.566044>,  <38.414532, 36.015621, 40.361408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821400, 36.376251, 40.566044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709724, 35.995461, 40.616310>,  <37.642719, 35.766987, 40.646469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709724, 35.995461, 40.616310>,  <37.821400, 36.376251, 40.566044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709724, 35.995461, 40.616310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604724, 0.275967, 0.747095,
		-0.745896, 0.132592, -0.652731,
		-0.279191, -0.951978, 0.125662,
		37.625969, 35.709866, 40.654007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990330, 36.412968, 40.582367>,  <37.821400, 36.376251, 40.566044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990330, 36.412968, 40.582367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.148781, 36.096848, 40.769344>,  <37.243851, 35.907173, 40.881531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.148781, 36.096848, 40.769344>,  <36.990330, 36.412968, 40.582367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148781, 36.096848, 40.769344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475801, 0.258728, 0.840639,
		-0.785300, -0.555412, -0.273537,
		0.396129, -0.790302, 0.467444,
		37.267620, 35.859756, 40.909576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410385, 36.093590, 40.973030>,  <36.990330, 36.412968, 40.582367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410385, 36.093590, 40.973030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756084, 35.974842, 41.135483>,  <36.963505, 35.903595, 41.232952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756084, 35.974842, 41.135483>,  <36.410385, 36.093590, 40.973030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756084, 35.974842, 41.135483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381319, 0.139987, 0.913783,
		-0.328123, -0.944603, 0.007784,
		0.864251, -0.296865, 0.406128,
		37.015362, 35.885784, 41.257320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208485, 35.933414, 41.637959>,  <36.410385, 36.093590, 40.973030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208485, 35.933414, 41.637959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604248, 35.895157, 41.681625>,  <36.841705, 35.872200, 41.707825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604248, 35.895157, 41.681625>,  <36.208485, 35.933414, 41.637959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604248, 35.895157, 41.681625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115450, -0.062843, 0.991323,
		-0.087957, -0.993430, -0.073220,
		0.989411, -0.095647, 0.109164,
		36.901070, 35.866463, 41.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228722, 35.546558, 42.093540>,  <36.208485, 35.933414, 41.637959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228722, 35.546558, 42.093540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588219, 35.720242, 42.117966>,  <36.803917, 35.824451, 42.132622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588219, 35.720242, 42.117966>,  <36.228722, 35.546558, 42.093540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588219, 35.720242, 42.117966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134161, 0.139732, 0.981058,
		0.417452, -0.889909, 0.183837,
		0.898740, 0.434209, 0.061060,
		36.857841, 35.850506, 42.136284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421249, 35.469429, 42.734402>,  <36.228722, 35.546558, 42.093540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421249, 35.469429, 42.734402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696415, 35.737560, 42.623089>,  <36.861515, 35.898438, 42.556301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696415, 35.737560, 42.623089>,  <36.421249, 35.469429, 42.734402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696415, 35.737560, 42.623089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100571, 0.291680, 0.951214,
		0.718794, -0.682337, 0.133234,
		0.687910, 0.670328, -0.278281,
		36.902786, 35.938660, 42.539604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149460, 35.396416, 43.150616>,  <36.421249, 35.469429, 42.734402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149460, 35.396416, 43.150616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061428, 35.758835, 43.006035>,  <37.008610, 35.976284, 42.919285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061428, 35.758835, 43.006035>,  <37.149460, 35.396416, 43.150616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061428, 35.758835, 43.006035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037071, 0.362501, 0.931246,
		0.974778, 0.218346, -0.046191,
		-0.220078, 0.906045, -0.361452,
		36.995403, 36.030647, 42.897598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541145, 35.811378, 43.529205>,  <37.149460, 35.396416, 43.150616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541145, 35.811378, 43.529205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296371, 36.098248, 43.395821>,  <37.149506, 36.270370, 43.315788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.296371, 36.098248, 43.395821>,  <37.541145, 35.811378, 43.529205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296371, 36.098248, 43.395821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060788, 0.463019, 0.884261,
		0.788566, 0.520843, -0.326935,
		-0.611938, 0.717172, -0.333460,
		37.112789, 36.313400, 43.295784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840885, 36.475376, 43.761204>,  <37.541145, 35.811378, 43.529205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840885, 36.475376, 43.761204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449875, 36.509361, 43.684021>,  <37.215271, 36.529751, 43.637711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.449875, 36.509361, 43.684021>,  <37.840885, 36.475376, 43.761204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449875, 36.509361, 43.684021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138224, 0.432838, 0.890812,
		0.159202, 0.897460, -0.411365,
		-0.977522, 0.084959, -0.192959,
		37.156620, 36.534847, 43.626133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734222, 37.118778, 43.963055>,  <37.840885, 36.475376, 43.761204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734222, 37.118778, 43.963055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365810, 36.963253, 43.953857>,  <37.144764, 36.869938, 43.948341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.365810, 36.963253, 43.953857>,  <37.734222, 37.118778, 43.963055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365810, 36.963253, 43.953857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198711, 0.418305, 0.886304,
		-0.334987, 0.820882, -0.462533,
		-0.921031, -0.388810, -0.022991,
		37.089500, 36.846611, 43.946960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.209393, 37.867672, 44.560310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489822, 37.590061, 44.494816>,  <33.658081, 37.423492, 44.455517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.489822, 37.590061, 44.494816>,  <33.209393, 37.867672, 44.560310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489822, 37.590061, 44.494816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296609, -0.075007, -0.952049,
		0.648469, 0.716028, -0.258442,
		0.701079, -0.694030, -0.163740,
		33.700146, 37.381851, 44.445694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485474, 38.085632, 43.906204>,  <33.209393, 37.867672, 44.560310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485474, 38.085632, 43.906204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592270, 37.707237, 43.979774>,  <33.656345, 37.480202, 44.023918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.592270, 37.707237, 43.979774>,  <33.485474, 38.085632, 43.906204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592270, 37.707237, 43.979774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075053, -0.210683, -0.974669,
		0.960773, 0.246419, -0.127249,
		0.266986, -0.945986, 0.183924,
		33.672367, 37.423443, 44.034950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080120, 38.048916, 43.622578>,  <33.485474, 38.085632, 43.906204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080120, 38.048916, 43.622578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952839, 37.669899, 43.634720>,  <33.876472, 37.442490, 43.642006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952839, 37.669899, 43.634720>,  <34.080120, 38.048916, 43.622578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952839, 37.669899, 43.634720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019269, -0.038475, -0.999074,
		0.947828, -0.317320, 0.030501,
		-0.318200, -0.947538, 0.030353,
		33.857380, 37.385639, 43.643826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495018, 37.664951, 43.184265>,  <34.080120, 38.048916, 43.622578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495018, 37.664951, 43.184265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.199913, 37.397839, 43.223812>,  <34.022850, 37.237572, 43.247540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.199913, 37.397839, 43.223812>,  <34.495018, 37.664951, 43.184265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199913, 37.397839, 43.223812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053499, -0.203830, -0.977543,
		0.672940, -0.715904, 0.186103,
		-0.737760, -0.667784, 0.098866,
		33.978584, 37.197502, 43.253471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715118, 36.978611, 43.021191>,  <34.495018, 37.664951, 43.184265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715118, 36.978611, 43.021191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318401, 36.997841, 42.973797>,  <34.080372, 37.009377, 42.945362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.318401, 36.997841, 42.973797>,  <34.715118, 36.978611, 43.021191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318401, 36.997841, 42.973797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095774, -0.334612, -0.937477,
		-0.084710, -0.941129, 0.327261,
		-0.991792, 0.048070, -0.118481,
		34.020863, 37.012260, 42.938251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465405, 36.331604, 42.665955>,  <34.715118, 36.978611, 43.021191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465405, 36.331604, 42.665955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139233, 36.557590, 42.615517>,  <33.943531, 36.693180, 42.585255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139233, 36.557590, 42.615517>,  <34.465405, 36.331604, 42.665955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139233, 36.557590, 42.615517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037853, -0.269411, -0.962281,
		-0.577624, -0.779895, 0.241070,
		-0.815425, 0.564962, -0.126097,
		33.894604, 36.727077, 42.577686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974911, 35.900875, 42.336903>,  <34.465405, 36.331604, 42.665955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974911, 35.900875, 42.336903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.889729, 36.288696, 42.288536>,  <33.838619, 36.521389, 42.259518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.889729, 36.288696, 42.288536>,  <33.974911, 35.900875, 42.336903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889729, 36.288696, 42.288536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117435, -0.148258, -0.981951,
		-0.969979, -0.194912, 0.145432,
		-0.212956, 0.969551, -0.120918,
		33.825840, 36.579563, 42.252262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352802, 35.923702, 41.829838>,  <33.974911, 35.900875, 42.336903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352802, 35.923702, 41.829838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501747, 36.294678, 41.843712>,  <33.591114, 36.517262, 41.852036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501747, 36.294678, 41.843712>,  <33.352802, 35.923702, 41.829838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501747, 36.294678, 41.843712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002984, 0.036177, -0.999341,
		-0.928083, 0.372219, 0.010704,
		0.372361, 0.927439, 0.034686,
		33.613457, 36.572910, 41.854118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857895, 36.258373, 41.459034>,  <33.352802, 35.923702, 41.829838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857895, 36.258373, 41.459034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205311, 36.455257, 41.435852>,  <33.413761, 36.573387, 41.421944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205311, 36.455257, 41.435852>,  <32.857895, 36.258373, 41.459034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205311, 36.455257, 41.435852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109582, 0.076678, -0.991016,
		-0.483347, 0.867091, 0.120536,
		0.868543, 0.492213, -0.057955,
		33.465874, 36.602921, 41.418465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719471, 36.542450, 40.829739>,  <32.857895, 36.258373, 41.459034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719471, 36.542450, 40.829739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107830, 36.592693, 40.911304>,  <33.340847, 36.622841, 40.960243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107830, 36.592693, 40.911304>,  <32.719471, 36.542450, 40.829739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107830, 36.592693, 40.911304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188080, 0.127216, -0.973880,
		-0.148270, 0.983889, 0.099888,
		0.970897, 0.125611, 0.203912,
		33.399097, 36.630375, 40.972477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029099, 37.144936, 40.454544>,  <32.719471, 36.542450, 40.829739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029099, 37.144936, 40.454544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371277, 36.944996, 40.508751>,  <33.576584, 36.825031, 40.541275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.371277, 36.944996, 40.508751>,  <33.029099, 37.144936, 40.454544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371277, 36.944996, 40.508751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096210, -0.103741, -0.989940,
		0.508880, 0.859877, -0.040654,
		0.855444, -0.499849, 0.135521,
		33.627911, 36.795040, 40.549408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340591, 37.405018, 39.927513>,  <33.029099, 37.144936, 40.454544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340591, 37.405018, 39.927513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539997, 37.078888, 40.045319>,  <33.659641, 36.883209, 40.116001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.539997, 37.078888, 40.045319>,  <33.340591, 37.405018, 39.927513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539997, 37.078888, 40.045319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131626, -0.264606, -0.955332,
		0.856832, 0.515009, -0.024591,
		0.498512, -0.815322, 0.294511,
		33.689552, 36.834293, 40.133671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949318, 37.314617, 39.448750>,  <33.340591, 37.405018, 39.927513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949318, 37.314617, 39.448750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874844, 36.955181, 39.607681>,  <33.830158, 36.739521, 39.703041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.874844, 36.955181, 39.607681>,  <33.949318, 37.314617, 39.448750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874844, 36.955181, 39.607681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151162, -0.425784, -0.892109,
		0.970817, -0.106035, 0.215107,
		-0.186184, -0.898591, 0.397329,
		33.818989, 36.685604, 39.726879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431324, 36.908287, 39.110653>,  <33.949318, 37.314617, 39.448750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431324, 36.908287, 39.110653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171818, 36.641685, 39.257557>,  <34.016113, 36.481724, 39.345699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171818, 36.641685, 39.257557>,  <34.431324, 36.908287, 39.110653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171818, 36.641685, 39.257557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075985, -0.536934, -0.840195,
		0.757187, -0.517182, 0.398987,
		-0.648764, -0.666502, 0.367261,
		33.977188, 36.441734, 39.367737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135326, 36.909096, 39.369579>,  <34.431324, 36.908287, 39.110653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135326, 36.909096, 39.369579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258766, 37.260422, 39.223518>,  <35.332829, 37.471218, 39.135883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258766, 37.260422, 39.223518>,  <35.135326, 36.909096, 39.369579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258766, 37.260422, 39.223518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385328, 0.466411, 0.796230,
		0.869648, -0.105014, 0.482373,
		0.308599, 0.878312, -0.365149,
		35.351345, 37.523914, 39.113976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446587, 37.199749, 39.936787>,  <35.135326, 36.909096, 39.369579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446587, 37.199749, 39.936787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385761, 37.526775, 39.714630>,  <35.349266, 37.722992, 39.581337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385761, 37.526775, 39.714630>,  <35.446587, 37.199749, 39.936787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385761, 37.526775, 39.714630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138078, 0.538848, 0.831010,
		0.978678, 0.203054, 0.030948,
		-0.152063, 0.817565, -0.555396,
		35.340141, 37.772045, 39.548012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922489, 37.755894, 40.206921>,  <35.446587, 37.199749, 39.936787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922489, 37.755894, 40.206921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619354, 37.914249, 39.999474>,  <35.437473, 38.009262, 39.875008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.619354, 37.914249, 39.999474>,  <35.922489, 37.755894, 40.206921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619354, 37.914249, 39.999474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220689, 0.592484, 0.774764,
		0.613990, 0.701595, -0.361636,
		-0.757834, 0.395888, -0.518614,
		35.392006, 38.033016, 39.843891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077816, 38.448013, 40.322773>,  <35.922489, 37.755894, 40.206921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077816, 38.448013, 40.322773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694393, 38.388889, 40.225353>,  <35.464340, 38.353416, 40.166901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694393, 38.388889, 40.225353>,  <36.077816, 38.448013, 40.322773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694393, 38.388889, 40.225353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275432, 0.699260, 0.659677,
		0.072800, 0.699421, -0.710993,
		-0.958560, -0.147806, -0.243549,
		35.406826, 38.344547, 40.152290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754330, 39.173683, 40.247219>,  <36.077816, 38.448013, 40.322773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754330, 39.173683, 40.247219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448868, 38.916588, 40.271591>,  <35.265591, 38.762329, 40.286217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.448868, 38.916588, 40.271591>,  <35.754330, 39.173683, 40.247219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448868, 38.916588, 40.271591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257683, 0.389972, 0.884037,
		-0.591968, 0.659400, -0.463428,
		-0.763658, -0.642739, 0.060934,
		35.219769, 38.723766, 40.289871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239338, 39.625908, 40.367264>,  <35.754330, 39.173683, 40.247219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239338, 39.625908, 40.367264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117607, 39.262108, 40.480541>,  <35.044567, 39.043827, 40.548508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.117607, 39.262108, 40.480541>,  <35.239338, 39.625908, 40.367264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117607, 39.262108, 40.480541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283285, 0.370257, 0.884681,
		-0.909469, 0.189009, -0.370327,
		-0.304329, -0.909497, 0.283193,
		35.026310, 38.989258, 40.565498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715683, 39.773991, 40.705307>,  <35.239338, 39.625908, 40.367264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715683, 39.773991, 40.705307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779037, 39.400860, 40.834759>,  <34.817051, 39.176979, 40.912430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779037, 39.400860, 40.834759>,  <34.715683, 39.773991, 40.705307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779037, 39.400860, 40.834759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182099, 0.294551, 0.938126,
		-0.970439, -0.207523, -0.123213,
		0.158390, -0.932831, 0.323634,
		34.826553, 39.121010, 40.931850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320930, 39.679264, 41.374218>,  <34.715683, 39.773991, 40.705307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320930, 39.679264, 41.374218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569389, 39.365788, 41.373169>,  <34.718464, 39.177700, 41.372540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569389, 39.365788, 41.373169>,  <34.320930, 39.679264, 41.374218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569389, 39.365788, 41.373169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082065, 0.061720, 0.994714,
		-0.779389, -0.618074, 0.102651,
		0.621142, -0.783694, -0.002618,
		34.755733, 39.130680, 41.372383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077042, 39.220024, 41.919933>,  <34.320930, 39.679264, 41.374218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077042, 39.220024, 41.919933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466885, 39.168476, 41.846695>,  <34.700790, 39.137547, 41.802753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466885, 39.168476, 41.846695>,  <34.077042, 39.220024, 41.919933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466885, 39.168476, 41.846695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207421, 0.211742, 0.955061,
		-0.084315, -0.968791, 0.233098,
		0.974611, -0.128876, -0.183094,
		34.759270, 39.129814, 41.791767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266346, 38.750011, 42.495285>,  <34.077042, 39.220024, 41.919933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266346, 38.750011, 42.495285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618332, 38.896935, 42.374783>,  <34.829521, 38.985088, 42.302483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618332, 38.896935, 42.374783>,  <34.266346, 38.750011, 42.495285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618332, 38.896935, 42.374783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263680, 0.149846, 0.952900,
		0.395147, -0.917951, 0.035008,
		0.879961, 0.367305, -0.301256,
		34.882320, 39.007126, 42.284405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832569, 38.414917, 42.887531>,  <34.266346, 38.750011, 42.495285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832569, 38.414917, 42.887531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973831, 38.761253, 42.745770>,  <35.058586, 38.969055, 42.660713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973831, 38.761253, 42.745770>,  <34.832569, 38.414917, 42.887531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973831, 38.761253, 42.745770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329585, 0.239386, 0.913273,
		0.875590, -0.439330, -0.200828,
		0.353153, 0.865843, -0.354401,
		35.079777, 39.021008, 42.639450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477875, 38.492790, 43.229473>,  <34.832569, 38.414917, 42.887531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477875, 38.492790, 43.229473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394531, 38.862267, 43.100861>,  <35.344524, 39.083954, 43.023693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394531, 38.862267, 43.100861>,  <35.477875, 38.492790, 43.229473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394531, 38.862267, 43.100861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389445, 0.379913, 0.839046,
		0.897174, 0.049602, -0.438884,
		-0.208357, 0.923691, -0.321531,
		35.332024, 39.139374, 43.004402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117916, 38.931690, 43.241699>,  <35.477875, 38.492790, 43.229473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117916, 38.931690, 43.241699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786667, 39.153397, 43.275158>,  <35.587917, 39.286423, 43.295231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.786667, 39.153397, 43.275158>,  <36.117916, 38.931690, 43.241699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786667, 39.153397, 43.275158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268752, 0.261646, 0.926992,
		0.491919, 0.790143, -0.365636,
		-0.828123, 0.554270, 0.083644,
		35.538231, 39.319679, 43.300251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278667, 39.438644, 43.672558>,  <36.117916, 38.931690, 43.241699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278667, 39.438644, 43.672558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879963, 39.435268, 43.704529>,  <35.640739, 39.433243, 43.723709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.879963, 39.435268, 43.704529>,  <36.278667, 39.438644, 43.672558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879963, 39.435268, 43.704529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076687, 0.197622, 0.977274,
		-0.024045, 0.980242, -0.196335,
		-0.996765, -0.008442, 0.079923,
		35.580933, 39.432735, 43.728504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694221, 40.164082, 43.701618>,  <36.278667, 39.438644, 43.672558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694221, 40.164082, 43.701618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092373, 40.201885, 43.694920>,  <37.331264, 40.224567, 43.690899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092373, 40.201885, 43.694920>,  <36.694221, 40.164082, 43.701618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092373, 40.201885, 43.694920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014059, -0.316138, -0.948609,
		-0.094949, 0.943994, -0.316007,
		0.995383, 0.094512, -0.016745,
		37.390987, 40.230240, 43.689896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895458, 40.461952, 42.988712>,  <36.694221, 40.164082, 43.701618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895458, 40.461952, 42.988712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.255154, 40.333675, 43.107731>,  <37.470970, 40.256710, 43.179142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.255154, 40.333675, 43.107731>,  <36.895458, 40.461952, 42.988712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255154, 40.333675, 43.107731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230554, -0.230612, -0.945337,
		0.371779, 0.918681, -0.133438,
		0.899236, -0.320691, 0.297543,
		37.524925, 40.237469, 43.196995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423897, 40.714111, 42.549809>,  <36.895458, 40.461952, 42.988712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423897, 40.714111, 42.549809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590363, 40.384209, 42.702953>,  <37.690243, 40.186268, 42.794838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.590363, 40.384209, 42.702953>,  <37.423897, 40.714111, 42.549809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590363, 40.384209, 42.702953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268457, -0.290840, -0.918337,
		0.868758, 0.484959, 0.100375,
		0.416162, -0.824759, 0.382860,
		37.715210, 40.136780, 42.817810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024094, 40.627621, 42.119434>,  <37.423897, 40.714111, 42.549809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024094, 40.627621, 42.119434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.965927, 40.268520, 42.285763>,  <37.931026, 40.053062, 42.385559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.965927, 40.268520, 42.285763>,  <38.024094, 40.627621, 42.119434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965927, 40.268520, 42.285763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175222, -0.437010, -0.882224,
		0.973730, -0.055431, 0.220854,
		-0.145418, -0.897747, 0.415817,
		37.922302, 39.999195, 42.410507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566383, 40.222347, 41.895119>,  <38.024094, 40.627621, 42.119434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566383, 40.222347, 41.895119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299225, 39.951126, 42.017864>,  <38.138931, 39.788395, 42.091511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299225, 39.951126, 42.017864>,  <38.566383, 40.222347, 41.895119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299225, 39.951126, 42.017864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102988, -0.492543, -0.864173,
		0.737096, -0.545573, 0.398797,
		-0.667894, -0.678050, 0.306864,
		38.098858, 39.747711, 42.109924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872746, 39.623791, 41.855663>,  <38.566383, 40.222347, 41.895119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872746, 39.623791, 41.855663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.483627, 39.534081, 41.832432>,  <38.250156, 39.480255, 41.818493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.483627, 39.534081, 41.832432>,  <38.872746, 39.623791, 41.855663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483627, 39.534081, 41.832432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181399, -0.581435, -0.793112,
		0.144105, -0.782071, 0.606300,
		-0.972794, -0.224274, -0.058079,
		38.191788, 39.466797, 41.815006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881172, 38.967407, 41.556366>,  <38.872746, 39.623791, 41.855663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881172, 38.967407, 41.556366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514359, 39.114254, 41.494038>,  <38.294270, 39.202362, 41.456638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514359, 39.114254, 41.494038>,  <38.881172, 38.967407, 41.556366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514359, 39.114254, 41.494038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071676, -0.536061, -0.841131,
		-0.392324, -0.760174, 0.517898,
		-0.917031, 0.367116, -0.155823,
		38.239250, 39.224388, 41.447289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499355, 38.362633, 41.332314>,  <38.881172, 38.967407, 41.556366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499355, 38.362633, 41.332314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.287296, 38.679089, 41.210304>,  <38.160061, 38.868961, 41.137100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.287296, 38.679089, 41.210304>,  <38.499355, 38.362633, 41.332314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287296, 38.679089, 41.210304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060232, -0.393966, -0.917150,
		-0.845764, -0.467851, 0.256512,
		-0.530146, 0.791142, -0.305022,
		38.128254, 38.916431, 41.118797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947556, 38.178501, 40.947124>,  <38.499355, 38.362633, 41.332314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947556, 38.178501, 40.947124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057495, 38.548618, 40.842598>,  <38.123459, 38.770691, 40.779884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.057495, 38.548618, 40.842598>,  <37.947556, 38.178501, 40.947124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057495, 38.548618, 40.842598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098555, -0.297462, -0.949633,
		-0.956423, 0.235253, -0.172950,
		0.274850, 0.925296, -0.261314,
		38.139950, 38.826206, 40.764202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663620, 38.344257, 40.267113>,  <37.947556, 38.178501, 40.947124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663620, 38.344257, 40.267113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908710, 38.657074, 40.312702>,  <38.055763, 38.844765, 40.340057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908710, 38.657074, 40.312702>,  <37.663620, 38.344257, 40.267113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908710, 38.657074, 40.312702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137651, 0.036407, -0.989812,
		-0.778219, 0.622168, -0.085341,
		0.612722, 0.782037, 0.113974,
		38.092525, 38.891685, 40.346893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517532, 38.805927, 39.739674>,  <37.663620, 38.344257, 40.267113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517532, 38.805927, 39.739674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886929, 38.891811, 39.866833>,  <38.108566, 38.943340, 39.943127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886929, 38.891811, 39.866833>,  <37.517532, 38.805927, 39.739674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886929, 38.891811, 39.866833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356558, -0.174722, -0.917790,
		-0.141511, 0.960923, -0.237910,
		0.923494, 0.214706, 0.317899,
		38.163979, 38.956223, 39.962204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765369, 39.229813, 39.245434>,  <37.517532, 38.805927, 39.739674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765369, 39.229813, 39.245434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082138, 39.072765, 39.432503>,  <38.272198, 38.978535, 39.544743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.082138, 39.072765, 39.432503>,  <37.765369, 39.229813, 39.245434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082138, 39.072765, 39.432503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452286, -0.137408, -0.881225,
		0.410249, 0.909377, 0.068762,
		0.791917, -0.392622, 0.467670,
		38.319714, 38.954979, 39.572803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291763, 39.384750, 38.785107>,  <37.765369, 39.229813, 39.245434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291763, 39.384750, 38.785107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466877, 39.099689, 39.004368>,  <38.571945, 38.928654, 39.135925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.466877, 39.099689, 39.004368>,  <38.291763, 39.384750, 38.785107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466877, 39.099689, 39.004368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554334, -0.266057, -0.788624,
		0.707854, 0.649107, 0.278572,
		0.437786, -0.712653, 0.548152,
		38.598213, 38.885895, 39.168812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972084, 39.478683, 38.541191>,  <38.291763, 39.384750, 38.785107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972084, 39.478683, 38.541191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944065, 39.134068, 38.742325>,  <38.927254, 38.927299, 38.863007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944065, 39.134068, 38.742325>,  <38.972084, 39.478683, 38.541191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944065, 39.134068, 38.742325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554815, -0.452567, -0.698114,
		0.829019, 0.230079, 0.509696,
		-0.070050, -0.861538, 0.502838,
		38.923050, 38.875607, 38.893177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.538069, 27.269007, 36.547512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.836258, 27.338104, 36.290009>,  <30.015171, 27.379562, 36.135506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.836258, 27.338104, 36.290009>,  <29.538069, 27.269007, 36.547512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836258, 27.338104, 36.290009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019734, 0.959689, 0.280370,
		0.666245, -0.221712, 0.712012,
		0.745472, 0.172744, -0.643763,
		30.059900, 27.389927, 36.096878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017899, 27.567495, 36.936916>,  <29.538069, 27.269007, 36.547512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017899, 27.567495, 36.936916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051979, 27.680880, 36.554840>,  <30.072428, 27.748909, 36.325592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051979, 27.680880, 36.554840>,  <30.017899, 27.567495, 36.936916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051979, 27.680880, 36.554840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054240, 0.958576, 0.279625,
		0.994886, 0.027986, 0.097046,
		0.085200, 0.283458, -0.955192,
		30.077539, 27.765917, 36.268284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438629, 28.186056, 36.943584>,  <30.017899, 27.567495, 36.936916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438629, 28.186056, 36.943584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294973, 28.205891, 36.570797>,  <30.208780, 28.217791, 36.347126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.294973, 28.205891, 36.570797>,  <30.438629, 28.186056, 36.943584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294973, 28.205891, 36.570797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060507, 0.995250, 0.076268,
		0.931320, 0.083781, -0.354433,
		-0.359139, 0.049584, -0.931966,
		30.187231, 28.220766, 36.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763214, 28.821438, 36.602577>,  <30.438629, 28.186056, 36.943584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763214, 28.821438, 36.602577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435253, 28.723057, 36.395786>,  <30.238476, 28.664028, 36.271713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435253, 28.723057, 36.395786>,  <30.763214, 28.821438, 36.602577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435253, 28.723057, 36.395786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276499, 0.960834, -0.018605,
		0.501304, 0.127689, -0.855798,
		-0.819904, -0.245954, -0.516976,
		30.189281, 28.649271, 36.240692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601627, 29.444752, 36.272602>,  <30.763214, 28.821438, 36.602577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601627, 29.444752, 36.272602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269421, 29.223932, 36.242973>,  <30.070097, 29.091440, 36.225197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269421, 29.223932, 36.242973>,  <30.601627, 29.444752, 36.272602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269421, 29.223932, 36.242973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547977, 0.833644, -0.068983,
		0.099833, -0.016700, -0.994864,
		-0.830515, -0.552050, -0.074074,
		30.020266, 29.058317, 36.220753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267214, 29.651590, 35.597244>,  <30.601627, 29.444752, 36.272602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267214, 29.651590, 35.597244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986042, 29.482826, 35.826286>,  <29.817339, 29.381567, 35.963711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986042, 29.482826, 35.826286>,  <30.267214, 29.651590, 35.597244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986042, 29.482826, 35.826286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560792, 0.823954, -0.081315,
		-0.437494, -0.378271, -0.815788,
		-0.702931, -0.421913, 0.572606,
		29.775164, 29.356253, 35.998070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642107, 29.773088, 35.181938>,  <30.267214, 29.651590, 35.597244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642107, 29.773088, 35.181938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505194, 29.663630, 35.541485>,  <29.423046, 29.597954, 35.757214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505194, 29.663630, 35.541485>,  <29.642107, 29.773088, 35.181938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505194, 29.663630, 35.541485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586845, 0.809374, 0.022937,
		-0.733795, -0.519644, -0.437624,
		-0.342282, -0.273649, 0.898866,
		29.402510, 29.581535, 35.811146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945206, 29.841394, 35.228760>,  <29.642107, 29.773088, 35.181938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945206, 29.841394, 35.228760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009708, 29.839777, 35.623520>,  <29.048410, 29.838806, 35.860378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009708, 29.839777, 35.623520>,  <28.945206, 29.841394, 35.228760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009708, 29.839777, 35.623520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547980, 0.831312, 0.092946,
		-0.820801, -0.555792, 0.131838,
		0.161257, -0.004046, 0.986904,
		29.058086, 29.838564, 35.919590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226950, 29.900036, 35.685234>,  <28.945206, 29.841394, 35.228760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226950, 29.900036, 35.685234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559355, 30.032080, 35.864319>,  <28.758799, 30.111305, 35.971767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559355, 30.032080, 35.864319>,  <28.226950, 29.900036, 35.685234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559355, 30.032080, 35.864319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429956, 0.891854, 0.140475,
		-0.352919, -0.309232, 0.883076,
		0.831015, 0.330108, 0.447709,
		28.808659, 30.131111, 35.998631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877405, 30.301653, 36.179188>,  <28.226950, 29.900036, 35.685234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877405, 30.301653, 36.179188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258854, 30.422024, 36.181862>,  <28.487724, 30.494247, 36.183468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.258854, 30.422024, 36.181862>,  <27.877405, 30.301653, 36.179188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258854, 30.422024, 36.181862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297654, 0.939474, 0.169678,
		0.044780, -0.163799, 0.985477,
		0.953623, 0.300930, 0.006686,
		28.544941, 30.512302, 36.183868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934313, 30.733181, 36.722298>,  <27.877405, 30.301653, 36.179188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934313, 30.733181, 36.722298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248472, 30.859499, 36.509346>,  <28.436968, 30.935289, 36.381577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248472, 30.859499, 36.509346>,  <27.934313, 30.733181, 36.722298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248472, 30.859499, 36.509346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172333, 0.937621, 0.301941,
		0.594519, -0.145398, 0.790827,
		0.785398, 0.315795, -0.532376,
		28.484091, 30.954237, 36.349632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593170, 31.088869, 37.082657>,  <27.934313, 30.733181, 36.722298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593170, 31.088869, 37.082657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486517, 31.207731, 36.715919>,  <28.422525, 31.279049, 36.495876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486517, 31.207731, 36.715919>,  <28.593170, 31.088869, 37.082657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486517, 31.207731, 36.715919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243513, 0.899649, 0.362400,
		0.932528, 0.319892, -0.167514,
		-0.266632, 0.297156, -0.916845,
		28.406527, 31.296879, 36.440865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550373, 31.755587, 37.232357>,  <28.593170, 31.088869, 37.082657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550373, 31.755587, 37.232357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487862, 31.754139, 36.837273>,  <28.450356, 31.753269, 36.600224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487862, 31.754139, 36.837273>,  <28.550373, 31.755587, 37.232357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487862, 31.754139, 36.837273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161392, 0.986647, 0.021919,
		0.974439, 0.162833, -0.154773,
		-0.156276, -0.003621, -0.987707,
		28.440979, 31.753052, 36.540962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813845, 32.265194, 36.936157>,  <28.550373, 31.755587, 37.232357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813845, 32.265194, 36.936157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532063, 32.184776, 36.663887>,  <28.362993, 32.136524, 36.500523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532063, 32.184776, 36.663887>,  <28.813845, 32.265194, 36.936157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532063, 32.184776, 36.663887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296708, 0.954638, 0.025111,
		0.644753, 0.219652, -0.732151,
		-0.704455, -0.201045, -0.680679,
		28.320726, 32.124462, 36.459682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966007, 32.683067, 36.421513>,  <28.813845, 32.265194, 36.936157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966007, 32.683067, 36.421513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585402, 32.565685, 36.384624>,  <28.357038, 32.495255, 36.362492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585402, 32.565685, 36.384624>,  <28.966007, 32.683067, 36.421513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585402, 32.565685, 36.384624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292335, 0.955968, -0.025786,
		0.095730, 0.002424, -0.995404,
		-0.951513, -0.293460, -0.092223,
		28.299948, 32.477646, 36.356956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760445, 33.228306, 36.151737>,  <28.966007, 32.683067, 36.421513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760445, 33.228306, 36.151737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417429, 33.027138, 36.194992>,  <28.211620, 32.906437, 36.220943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417429, 33.027138, 36.194992>,  <28.760445, 33.228306, 36.151737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417429, 33.027138, 36.194992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512735, 0.818644, -0.258699,
		0.041580, -0.277291, -0.959886,
		-0.857540, -0.502923, 0.108138,
		28.160168, 32.876259, 36.227432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459694, 33.436600, 35.540634>,  <28.760445, 33.228306, 36.151737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459694, 33.436600, 35.540634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173676, 33.304840, 35.787277>,  <28.002066, 33.225784, 35.935265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173676, 33.304840, 35.787277>,  <28.459694, 33.436600, 35.540634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173676, 33.304840, 35.787277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544861, 0.815215, -0.196343,
		-0.437993, -0.476361, -0.762393,
		-0.715044, -0.329401, 0.616609,
		27.959162, 33.206020, 35.972260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777678, 33.378464, 35.219727>,  <28.459694, 33.436600, 35.540634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777678, 33.378464, 35.219727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703751, 33.428738, 35.609608>,  <27.659395, 33.458900, 35.843536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703751, 33.428738, 35.609608>,  <27.777678, 33.378464, 35.219727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703751, 33.428738, 35.609608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516525, 0.831336, -0.205138,
		-0.836089, -0.541372, -0.088725,
		-0.184817, 0.125685, 0.974703,
		27.648306, 33.466442, 35.902020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140917, 33.703518, 35.162212>,  <27.777678, 33.378464, 35.219727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140917, 33.703518, 35.162212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340866, 33.754795, 35.504837>,  <27.460836, 33.785561, 35.710411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340866, 33.754795, 35.504837>,  <27.140917, 33.703518, 35.162212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340866, 33.754795, 35.504837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205194, 0.978358, -0.026673,
		-0.841440, -0.162427, 0.515360,
		0.499874, 0.128192, 0.856558,
		27.490828, 33.793251, 35.761803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348030, 33.320015, 34.542480>,  <27.140917, 33.703518, 35.162212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348030, 33.320015, 34.542480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650488, 33.501022, 34.353390>,  <27.831963, 33.609627, 34.239937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.650488, 33.501022, 34.353390>,  <27.348030, 33.320015, 34.542480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650488, 33.501022, 34.353390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265705, -0.872451, -0.410160,
		-0.598036, 0.184535, -0.779936,
		0.756144, 0.452523, -0.472725,
		27.877331, 33.636780, 34.211571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328197, 33.348190, 33.739674>,  <27.348030, 33.320015, 34.542480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328197, 33.348190, 33.739674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702114, 33.351955, 33.881702>,  <27.926464, 33.354214, 33.966919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702114, 33.351955, 33.881702>,  <27.328197, 33.348190, 33.739674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702114, 33.351955, 33.881702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201514, -0.837256, -0.508326,
		0.292499, 0.546731, -0.784557,
		0.934792, 0.009414, 0.355070,
		27.982552, 33.354778, 33.988224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807919, 33.281593, 33.192917>,  <27.328197, 33.348190, 33.739674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807919, 33.281593, 33.192917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021589, 33.125050, 33.492649>,  <28.149792, 33.031124, 33.672489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.021589, 33.125050, 33.492649>,  <27.807919, 33.281593, 33.192917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021589, 33.125050, 33.492649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303243, -0.738689, -0.601982,
		0.789113, 0.548792, -0.275913,
		0.534177, -0.391363, 0.749327,
		28.181843, 33.007641, 33.717445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304712, 32.983284, 32.946861>,  <27.807919, 33.281593, 33.192917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304712, 32.983284, 32.946861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332756, 32.808952, 33.305779>,  <28.349583, 32.704353, 33.521130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332756, 32.808952, 33.305779>,  <28.304712, 32.983284, 32.946861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332756, 32.808952, 33.305779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179411, -0.879331, -0.441122,
		0.981273, 0.191910, 0.016545,
		0.070107, -0.435829, 0.897295,
		28.353788, 32.678204, 33.574966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922520, 32.579823, 32.885189>,  <28.304712, 32.983284, 32.946861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922520, 32.579823, 32.885189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718727, 32.444386, 33.201614>,  <28.596451, 32.363121, 33.391468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.718727, 32.444386, 33.201614>,  <28.922520, 32.579823, 32.885189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718727, 32.444386, 33.201614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182772, -0.940931, -0.285030,
		0.840845, -0.000634, 0.541275,
		-0.509484, -0.338597, 0.791062,
		28.565882, 32.342808, 33.438934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379765, 32.049011, 33.237339>,  <28.922520, 32.579823, 32.885189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379765, 32.049011, 33.237339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994694, 31.997097, 33.332340>,  <28.763651, 31.965948, 33.389343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.994694, 31.997097, 33.332340>,  <29.379765, 32.049011, 33.237339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994694, 31.997097, 33.332340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092487, -0.982451, -0.161976,
		0.254361, -0.133964, 0.957786,
		-0.962677, -0.129783, 0.237508,
		28.705891, 31.958162, 33.403591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440901, 31.493370, 33.767563>,  <29.379765, 32.049011, 33.237339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440901, 31.493370, 33.767563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075705, 31.493843, 33.604370>,  <28.856586, 31.494127, 33.506454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075705, 31.493843, 33.604370>,  <29.440901, 31.493370, 33.767563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075705, 31.493843, 33.604370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085385, -0.977297, -0.193907,
		-0.398944, -0.211870, 0.892163,
		-0.912991, 0.001181, -0.407977,
		28.801807, 31.494198, 33.481976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029360, 30.863302, 34.048195>,  <29.440901, 31.493370, 33.767563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029360, 30.863302, 34.048195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.811424, 30.968023, 33.729546>,  <28.680662, 31.030855, 33.538357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.811424, 30.968023, 33.729546>,  <29.029360, 30.863302, 34.048195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811424, 30.968023, 33.729546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061669, -0.959950, -0.273299,
		-0.836269, -0.099778, 0.539164,
		-0.544840, 0.261801, -0.796623,
		28.647972, 31.046564, 33.490559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566469, 30.358595, 33.996330>,  <29.029360, 30.863302, 34.048195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566469, 30.358595, 33.996330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538433, 30.505816, 33.625465>,  <28.521612, 30.594149, 33.402946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.538433, 30.505816, 33.625465>,  <28.566469, 30.358595, 33.996330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538433, 30.505816, 33.625465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005472, -0.929289, -0.369311,
		-0.997526, -0.030959, 0.063120,
		-0.070090, 0.368052, -0.927160,
		28.517406, 30.616232, 33.347317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930567, 30.050547, 33.608257>,  <28.566469, 30.358595, 33.996330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930567, 30.050547, 33.608257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214014, 30.169004, 33.352081>,  <28.384083, 30.240078, 33.198376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214014, 30.169004, 33.352081>,  <27.930567, 30.050547, 33.608257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214014, 30.169004, 33.352081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028172, -0.918809, -0.393695,
		-0.705029, 0.260938, -0.659429,
		0.708619, 0.296144, -0.640436,
		28.426600, 30.257847, 33.159950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889538, 29.552704, 32.996189>,  <27.930567, 30.050547, 33.608257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889538, 29.552704, 32.996189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242105, 29.720692, 32.909725>,  <28.453646, 29.821486, 32.857845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.242105, 29.720692, 32.909725>,  <27.889538, 29.552704, 32.996189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242105, 29.720692, 32.909725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395582, -0.906423, -0.148028,
		-0.258099, 0.044966, -0.965071,
		0.881419, 0.419971, -0.216159,
		28.506531, 29.846684, 32.844879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096842, 29.209578, 32.369987>,  <27.889538, 29.552704, 32.996189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096842, 29.209578, 32.369987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430172, 29.366510, 32.525753>,  <28.630171, 29.460670, 32.619213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430172, 29.366510, 32.525753>,  <28.096842, 29.209578, 32.369987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430172, 29.366510, 32.525753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535114, -0.749224, -0.390278,
		0.138636, 0.533608, -0.834292,
		0.833327, 0.392334, 0.389411,
		28.680170, 29.484211, 32.642578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553385, 29.264320, 31.816280>,  <28.096842, 29.209578, 32.369987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553385, 29.264320, 31.816280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755119, 29.246962, 32.161247>,  <28.876160, 29.236547, 32.368225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755119, 29.246962, 32.161247>,  <28.553385, 29.264320, 31.816280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755119, 29.246962, 32.161247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486349, -0.810984, -0.325224,
		0.713517, 0.583457, -0.387905,
		0.504339, -0.043396, 0.862415,
		28.906422, 29.233942, 32.419971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196428, 29.121483, 31.628666>,  <28.553385, 29.264320, 31.816280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196428, 29.121483, 31.628666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229383, 29.024902, 32.015430>,  <29.249157, 28.966953, 32.247490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.229383, 29.024902, 32.015430>,  <29.196428, 29.121483, 31.628666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229383, 29.024902, 32.015430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424842, -0.869127, -0.253234,
		0.901511, 0.431646, 0.030975,
		0.082386, -0.241453, 0.966909,
		29.254099, 28.952467, 32.305504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913692, 28.927114, 31.699461>,  <29.196428, 29.121483, 31.628666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913692, 28.927114, 31.699461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735422, 28.765335, 32.018909>,  <29.628460, 28.668266, 32.210579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.735422, 28.765335, 32.018909>,  <29.913692, 28.927114, 31.699461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735422, 28.765335, 32.018909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418619, -0.882726, -0.213431,
		0.791284, 0.239196, 0.562721,
		-0.445676, -0.404450, 0.798619,
		29.601719, 28.643999, 32.258495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418583, 28.617104, 32.154488>,  <29.913692, 28.927114, 31.699461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418583, 28.617104, 32.154488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085850, 28.416290, 32.249161>,  <29.886209, 28.295803, 32.305965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.085850, 28.416290, 32.249161>,  <30.418583, 28.617104, 32.154488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085850, 28.416290, 32.249161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476411, -0.864619, -0.159584,
		0.284754, -0.019991, 0.958392,
		-0.831834, -0.502031, 0.236680,
		29.836300, 28.265680, 32.320164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687721, 28.232925, 32.652592>,  <30.418583, 28.617104, 32.154488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687721, 28.232925, 32.652592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341402, 28.054447, 32.561989>,  <30.133612, 27.947361, 32.507626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.341402, 28.054447, 32.561989>,  <30.687721, 28.232925, 32.652592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341402, 28.054447, 32.561989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475671, -0.874399, -0.095726,
		-0.155349, -0.190624, 0.969293,
		-0.865797, -0.446194, -0.226511,
		30.081663, 27.920589, 32.494034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723877, 27.644827, 32.994732>,  <30.687721, 28.232925, 32.652592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723877, 27.644827, 32.994732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440727, 27.587025, 32.718174>,  <30.270838, 27.552343, 32.552238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440727, 27.587025, 32.718174>,  <30.723877, 27.644827, 32.994732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440727, 27.587025, 32.718174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333848, -0.931061, -0.147209,
		-0.622460, -0.335027, 0.707320,
		-0.707877, -0.144506, -0.691396,
		30.228365, 27.543673, 32.510754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286793, 27.101616, 33.199390>,  <30.723877, 27.644827, 32.994732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286793, 27.101616, 33.199390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308001, 27.135509, 32.801395>,  <30.320724, 27.155846, 32.562599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308001, 27.135509, 32.801395>,  <30.286793, 27.101616, 33.199390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308001, 27.135509, 32.801395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353906, -0.933314, -0.060624,
		-0.933777, -0.348919, -0.079471,
		0.053018, 0.084735, -0.994992,
		30.323906, 27.160931, 32.502899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059855, 26.386677, 32.914749>,  <30.286793, 27.101616, 33.199390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059855, 26.386677, 32.914749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230064, 26.561165, 32.597603>,  <30.332191, 26.665857, 32.407314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230064, 26.561165, 32.597603>,  <30.059855, 26.386677, 32.914749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230064, 26.561165, 32.597603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301719, -0.894406, -0.330157,
		-0.853166, -0.098733, -0.512210,
		0.425526, 0.436222, -0.792867,
		30.357721, 26.692032, 32.359741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989321, 25.943228, 32.329262>,  <30.059855, 26.386677, 32.914749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989321, 25.943228, 32.329262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.285652, 26.184036, 32.210102>,  <30.463451, 26.328522, 32.138607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.285652, 26.184036, 32.210102>,  <29.989321, 25.943228, 32.329262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285652, 26.184036, 32.210102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507925, -0.792306, -0.338027,
		-0.439528, 0.099109, -0.892744,
		0.740829, 0.602020, -0.297901,
		30.507900, 26.364643, 32.120731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179350, 25.835146, 31.530466>,  <29.989321, 25.943228, 32.329262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179350, 25.835146, 31.530466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487055, 25.979746, 31.741199>,  <30.671679, 26.066505, 31.867640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487055, 25.979746, 31.741199>,  <30.179350, 25.835146, 31.530466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487055, 25.979746, 31.741199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580184, -0.740589, -0.338991,
		0.267622, 0.566433, -0.779444,
		0.769263, 0.361499, 0.526833,
		30.717834, 26.088196, 31.899250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667397, 25.782812, 31.030216>,  <30.179350, 25.835146, 31.530466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667397, 25.782812, 31.030216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837053, 25.815292, 31.390995>,  <30.938847, 25.834782, 31.607462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.837053, 25.815292, 31.390995>,  <30.667397, 25.782812, 31.030216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837053, 25.815292, 31.390995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728850, -0.621725, -0.286767,
		0.537478, 0.779015, -0.322883,
		0.424140, 0.081202, 0.901949,
		30.964294, 25.839653, 31.661579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.923359, 37.927639, 43.825375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796665, 37.587288, 43.993034>,  <36.720650, 37.383080, 44.093632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796665, 37.587288, 43.993034>,  <36.923359, 37.927639, 43.825375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796665, 37.587288, 43.993034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100123, 0.469429, 0.877275,
		-0.943215, 0.235898, -0.233878,
		-0.316736, -0.850875, 0.419153,
		36.701645, 37.332024, 44.118782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345947, 38.126617, 44.240234>,  <36.923359, 37.927639, 43.825375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345947, 38.126617, 44.240234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500805, 37.778923, 44.363228>,  <36.593719, 37.570305, 44.437023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500805, 37.778923, 44.363228>,  <36.345947, 38.126617, 44.240234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500805, 37.778923, 44.363228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088300, 0.297002, 0.950785,
		-0.917783, -0.395239, 0.038228,
		0.387141, -0.869239, 0.307483,
		36.616947, 37.518150, 44.455471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844315, 38.069542, 44.795845>,  <36.345947, 38.126617, 44.240234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844315, 38.069542, 44.795845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185844, 37.866924, 44.843857>,  <36.390762, 37.745354, 44.872662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185844, 37.866924, 44.843857>,  <35.844315, 38.069542, 44.795845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185844, 37.866924, 44.843857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036750, 0.171342, 0.984526,
		-0.519270, -0.845019, 0.127680,
		0.853820, -0.506542, 0.120027,
		36.441990, 37.714962, 44.879864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909164, 37.804901, 45.509430>,  <35.844315, 38.069542, 44.795845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909164, 37.804901, 45.509430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289436, 37.724457, 45.414982>,  <36.517601, 37.676189, 45.358311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289436, 37.724457, 45.414982>,  <35.909164, 37.804901, 45.509430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289436, 37.724457, 45.414982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269062, 0.156038, 0.950399,
		-0.154294, -0.967060, 0.202455,
		0.950683, -0.201114, -0.236123,
		36.574642, 37.664124, 45.344147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174770, 37.329189, 46.069008>,  <35.909164, 37.804901, 45.509430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174770, 37.329189, 46.069008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455711, 37.541180, 45.878922>,  <36.624275, 37.668373, 45.764870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.455711, 37.541180, 45.878922>,  <36.174770, 37.329189, 46.069008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455711, 37.541180, 45.878922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499334, 0.108979, 0.859528,
		0.507317, -0.840981, -0.188094,
		0.702349, 0.529975, -0.475218,
		36.666416, 37.700172, 45.736355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807274, 37.052372, 46.259274>,  <36.174770, 37.329189, 46.069008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807274, 37.052372, 46.259274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886356, 37.425137, 46.137650>,  <36.933807, 37.648796, 46.064674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886356, 37.425137, 46.137650>,  <36.807274, 37.052372, 46.259274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886356, 37.425137, 46.137650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484485, 0.176750, 0.856758,
		0.852165, -0.316700, -0.416553,
		0.197710, 0.931912, -0.304056,
		36.945671, 37.704712, 46.046432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466473, 37.189461, 46.667271>,  <36.807274, 37.052372, 46.259274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466473, 37.189461, 46.667271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340824, 37.551800, 46.553593>,  <37.265434, 37.769203, 46.485386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340824, 37.551800, 46.553593>,  <37.466473, 37.189461, 46.667271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340824, 37.551800, 46.553593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332806, 0.385416, 0.860636,
		0.889140, 0.175759, -0.422539,
		-0.314118, 0.905849, -0.284195,
		37.246590, 37.823555, 46.468334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095371, 37.655704, 46.680843>,  <37.466473, 37.189461, 46.667271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095371, 37.655704, 46.680843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775475, 37.893600, 46.713577>,  <37.583538, 38.036339, 46.733219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.775475, 37.893600, 46.713577>,  <38.095371, 37.655704, 46.680843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775475, 37.893600, 46.713577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337883, 0.333225, 0.880225,
		0.496239, 0.731601, -0.467447,
		-0.799739, 0.594745, 0.081837,
		37.535553, 38.072025, 46.738129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334953, 38.278557, 46.851707>,  <38.095371, 37.655704, 46.680843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334953, 38.278557, 46.851707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953716, 38.282753, 46.972710>,  <37.724976, 38.285271, 47.045311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.953716, 38.282753, 46.972710>,  <38.334953, 38.278557, 46.851707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953716, 38.282753, 46.972710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298059, 0.206617, 0.931918,
		-0.052730, 0.978366, -0.200051,
		-0.953090, 0.010487, 0.302505,
		37.667789, 38.285900, 47.063461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225471, 38.900970, 47.223351>,  <38.334953, 38.278557, 46.851707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225471, 38.900970, 47.223351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940281, 38.644173, 47.336136>,  <37.769165, 38.490093, 47.403809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940281, 38.644173, 47.336136>,  <38.225471, 38.900970, 47.223351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940281, 38.644173, 47.336136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160957, 0.241545, 0.956948,
		-0.682459, 0.727670, -0.068884,
		-0.712981, -0.641991, 0.281968,
		37.726387, 38.451576, 47.420727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715996, 39.292595, 47.771435>,  <38.225471, 38.900970, 47.223351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715996, 39.292595, 47.771435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682426, 38.897614, 47.824955>,  <37.662285, 38.660625, 47.857067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682426, 38.897614, 47.824955>,  <37.715996, 39.292595, 47.771435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682426, 38.897614, 47.824955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117319, 0.143130, 0.982726,
		-0.989542, 0.066773, -0.127858,
		-0.083920, -0.987448, 0.133800,
		37.657249, 38.601379, 47.865093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199905, 39.004803, 48.292995>,  <37.715996, 39.292595, 47.771435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199905, 39.004803, 48.292995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067245, 39.382046, 48.283485>,  <37.987652, 39.608391, 48.277779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067245, 39.382046, 48.283485>,  <38.199905, 39.004803, 48.292995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067245, 39.382046, 48.283485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205341, -0.047569, 0.977534,
		0.920785, 0.329078, 0.209434,
		-0.331647, 0.943104, -0.023772,
		37.967751, 39.664978, 48.276356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597404, 39.548065, 48.727436>,  <38.199905, 39.004803, 48.292995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597404, 39.548065, 48.727436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.208141, 39.629913, 48.685291>,  <37.974583, 39.679020, 48.660004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.208141, 39.629913, 48.685291>,  <38.597404, 39.548065, 48.727436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208141, 39.629913, 48.685291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102454, 0.024771, 0.994429,
		0.206087, 0.978529, -0.003142,
		-0.973155, 0.204617, -0.105359,
		37.916195, 39.691299, 48.653683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452072, 40.151108, 49.183849>,  <38.597404, 39.548065, 48.727436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452072, 40.151108, 49.183849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154182, 39.891254, 49.122715>,  <37.975449, 39.735344, 49.086033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154182, 39.891254, 49.122715>,  <38.452072, 40.151108, 49.183849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154182, 39.891254, 49.122715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109157, -0.344501, 0.932418,
		-0.658380, 0.677715, 0.327472,
		-0.744728, -0.649632, -0.152835,
		37.930763, 39.696365, 49.076866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217979, 40.807308, 49.154278>,  <38.452072, 40.151108, 49.183849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217979, 40.807308, 49.154278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997234, 41.140591, 49.140320>,  <37.864788, 41.340561, 49.131947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997234, 41.140591, 49.140320>,  <38.217979, 40.807308, 49.154278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997234, 41.140591, 49.140320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286500, -0.228726, -0.930377,
		-0.783175, -0.503445, 0.364939,
		-0.551864, 0.833203, -0.034895,
		37.831676, 41.390553, 49.129852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613049, 40.744217, 48.687580>,  <38.217979, 40.807308, 49.154278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613049, 40.744217, 48.687580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593567, 41.143532, 48.700558>,  <37.581879, 41.383121, 48.708344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593567, 41.143532, 48.700558>,  <37.613049, 40.744217, 48.687580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593567, 41.143532, 48.700558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309668, 0.015790, -0.950714,
		-0.949597, -0.056346, 0.308368,
		-0.048699, 0.998286, 0.032442,
		37.578957, 41.443016, 48.710289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981400, 40.933865, 48.502853>,  <37.613049, 40.744217, 48.687580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981400, 40.933865, 48.502853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237141, 41.232410, 48.428909>,  <37.390587, 41.411537, 48.384544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.237141, 41.232410, 48.428909>,  <36.981400, 40.933865, 48.502853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237141, 41.232410, 48.428909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256011, -0.020068, -0.966466,
		-0.725042, 0.665239, 0.178246,
		0.639354, 0.746361, -0.184858,
		37.428947, 41.456318, 48.373451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660378, 41.543785, 48.069118>,  <36.981400, 40.933865, 48.502853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660378, 41.543785, 48.069118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055180, 41.583652, 48.018707>,  <37.292061, 41.607574, 47.988461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055180, 41.583652, 48.018707>,  <36.660378, 41.543785, 48.069118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055180, 41.583652, 48.018707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140846, 0.159237, -0.977142,
		-0.077321, 0.982196, 0.171206,
		0.987007, 0.099668, -0.126026,
		37.351280, 41.613552, 47.980900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728989, 41.805153, 47.344528>,  <36.660378, 41.543785, 48.069118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728989, 41.805153, 47.344528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119564, 41.778641, 47.426682>,  <37.353909, 41.762733, 47.475975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119564, 41.778641, 47.426682>,  <36.728989, 41.805153, 47.344528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119564, 41.778641, 47.426682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212003, 0.116568, -0.970292,
		0.040373, 0.990968, 0.127873,
		0.976435, -0.066283, 0.205382,
		37.412495, 41.758755, 47.488297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188728, 42.352909, 47.005825>,  <36.728989, 41.805153, 47.344528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188728, 42.352909, 47.005825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420780, 42.034817, 47.076309>,  <37.560013, 41.843960, 47.118599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.420780, 42.034817, 47.076309>,  <37.188728, 42.352909, 47.005825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420780, 42.034817, 47.076309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299595, 0.007159, -0.954040,
		0.757423, 0.606261, 0.242401,
		0.580132, -0.795234, 0.176210,
		37.594818, 41.796246, 47.129173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733364, 42.388927, 46.568466>,  <37.188728, 42.352909, 47.005825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733364, 42.388927, 46.568466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767696, 42.000771, 46.658775>,  <37.788296, 41.767876, 46.712959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.767696, 42.000771, 46.658775>,  <37.733364, 42.388927, 46.568466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767696, 42.000771, 46.658775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331779, -0.185834, -0.924872,
		0.939445, 0.154285, 0.306006,
		0.085827, -0.970393, 0.225770,
		37.793446, 41.709652, 46.726505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391663, 42.058464, 46.287811>,  <37.733364, 42.388927, 46.568466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391663, 42.058464, 46.287811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166870, 41.729362, 46.321888>,  <38.031994, 41.531902, 46.342335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166870, 41.729362, 46.321888>,  <38.391663, 42.058464, 46.287811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166870, 41.729362, 46.321888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280150, -0.286237, -0.916288,
		0.778262, -0.491071, 0.391354,
		-0.561982, -0.822750, 0.085194,
		37.998276, 41.482536, 46.347446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664680, 41.651783, 45.771252>,  <38.391663, 42.058464, 46.287811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664680, 41.651783, 45.771252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.357452, 41.411224, 45.859238>,  <38.173115, 41.266888, 45.912029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.357452, 41.411224, 45.859238>,  <38.664680, 41.651783, 45.771252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357452, 41.411224, 45.859238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107264, -0.459477, -0.881689,
		0.631315, -0.653606, 0.417420,
		-0.768073, -0.601398, 0.219966,
		38.127029, 41.230804, 45.925228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817760, 40.960655, 45.576439>,  <38.664680, 41.651783, 45.771252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817760, 40.960655, 45.576439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418671, 40.985996, 45.585682>,  <38.179218, 41.001202, 45.591228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418671, 40.985996, 45.585682>,  <38.817760, 40.960655, 45.576439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418671, 40.985996, 45.585682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050011, -0.465242, -0.883770,
		-0.045237, -0.882914, 0.467351,
		-0.997723, 0.063352, 0.023109,
		38.119354, 41.005001, 45.592613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594692, 40.351021, 45.315098>,  <38.817760, 40.960655, 45.576439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594692, 40.351021, 45.315098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254642, 40.553303, 45.256359>,  <38.050613, 40.674671, 45.221115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254642, 40.553303, 45.256359>,  <38.594692, 40.351021, 45.315098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254642, 40.553303, 45.256359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200643, -0.568889, -0.797563,
		-0.486864, -0.648562, 0.585090,
		-0.850121, 0.505699, -0.146842,
		37.999607, 40.705013, 45.212307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079037, 39.840744, 45.067764>,  <38.594692, 40.351021, 45.315098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079037, 39.840744, 45.067764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906864, 40.188099, 44.969265>,  <37.803562, 40.396511, 44.910164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.906864, 40.188099, 44.969265>,  <38.079037, 39.840744, 45.067764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906864, 40.188099, 44.969265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290141, -0.391445, -0.873264,
		-0.854721, -0.304432, 0.420444,
		-0.430430, 0.868385, -0.246247,
		37.777737, 40.448616, 44.895390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509441, 39.631245, 44.772007>,  <38.079037, 39.840744, 45.067764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509441, 39.631245, 44.772007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539852, 40.007835, 44.640648>,  <37.558098, 40.233791, 44.561832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539852, 40.007835, 44.640648>,  <37.509441, 39.631245, 44.772007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539852, 40.007835, 44.640648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267400, -0.298033, -0.916337,
		-0.960581, 0.157482, 0.229091,
		0.076031, 0.941476, -0.328395,
		37.562660, 40.290279, 44.542130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897045, 39.802269, 44.399837>,  <37.509441, 39.631245, 44.772007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897045, 39.802269, 44.399837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190777, 40.043415, 44.275055>,  <37.367016, 40.188103, 44.200184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190777, 40.043415, 44.275055>,  <36.897045, 39.802269, 44.399837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190777, 40.043415, 44.275055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136681, -0.318835, -0.937903,
		-0.664891, 0.731367, -0.151729,
		0.734328, 0.602865, -0.311955,
		37.411076, 40.224274, 44.181469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186214, 39.943127, 44.180721>,  <36.897045, 39.802269, 44.399837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186214, 39.943127, 44.180721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825962, 39.772243, 44.148804>,  <35.609810, 39.669716, 44.129654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.825962, 39.772243, 44.148804>,  <36.186214, 39.943127, 44.180721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825962, 39.772243, 44.148804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178902, 0.197122, 0.963918,
		-0.396062, 0.882405, -0.253961,
		-0.900627, -0.427205, -0.079792,
		35.555775, 39.644081, 44.124866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796047, 40.395390, 44.433697>,  <36.186214, 39.943127, 44.180721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796047, 40.395390, 44.433697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576729, 40.061058, 44.444698>,  <35.445137, 39.860458, 44.451298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576729, 40.061058, 44.444698>,  <35.796047, 40.395390, 44.433697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576729, 40.061058, 44.444698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194459, 0.159412, 0.967871,
		-0.813359, 0.525335, -0.249940,
		-0.548300, -0.835830, 0.027503,
		35.412239, 39.810310, 44.452950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061073, 40.546242, 44.752182>,  <35.796047, 40.395390, 44.433697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061073, 40.546242, 44.752182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151958, 40.159977, 44.802570>,  <35.206490, 39.928219, 44.832802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.151958, 40.159977, 44.802570>,  <35.061073, 40.546242, 44.752182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151958, 40.159977, 44.802570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124206, 0.099559, 0.987249,
		-0.965892, -0.239961, -0.097320,
		0.227212, -0.965664, 0.125968,
		35.220123, 39.870277, 44.840363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556583, 40.372967, 45.280758>,  <35.061073, 40.546242, 44.752182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556583, 40.372967, 45.280758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828278, 40.080227, 45.302769>,  <34.991295, 39.904583, 45.315975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.828278, 40.080227, 45.302769>,  <34.556583, 40.372967, 45.280758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828278, 40.080227, 45.302769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064566, 0.015097, 0.997799,
		-0.731072, -0.681297, -0.036998,
		0.679239, -0.731852, 0.055026,
		35.032051, 39.860672, 45.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285294, 39.879505, 45.742607>,  <34.556583, 40.372967, 45.280758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285294, 39.879505, 45.742607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673912, 39.785549, 45.730408>,  <34.907082, 39.729176, 45.723087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673912, 39.785549, 45.730408>,  <34.285294, 39.879505, 45.742607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673912, 39.785549, 45.730408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008875, -0.164767, 0.986293,
		-0.236703, -0.957954, -0.162163,
		0.971542, -0.234898, -0.030499,
		34.965374, 39.715080, 45.721260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416359, 39.352219, 46.195305>,  <34.285294, 39.879505, 45.742607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416359, 39.352219, 46.195305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791702, 39.486729, 46.163311>,  <35.016911, 39.567436, 46.144115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791702, 39.486729, 46.163311>,  <34.416359, 39.352219, 46.195305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791702, 39.486729, 46.163311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068873, 0.044850, 0.996617,
		0.338725, -0.940695, 0.018925,
		0.938361, 0.336275, -0.079980,
		35.073212, 39.587612, 46.139317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868671, 38.915409, 46.768005>,  <34.416359, 39.352219, 46.195305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868671, 38.915409, 46.768005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036907, 39.263641, 46.665874>,  <35.137848, 39.472580, 46.604595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.036907, 39.263641, 46.665874>,  <34.868671, 38.915409, 46.768005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036907, 39.263641, 46.665874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187369, 0.192014, 0.963340,
		0.887694, -0.453007, -0.082362,
		0.420585, 0.870583, -0.255329,
		35.163082, 39.524815, 46.589275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148392, 38.266975, 46.815449>,  <34.868671, 38.915409, 46.768005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148392, 38.266975, 46.815449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831120, 38.034584, 46.888470>,  <34.640755, 37.895149, 46.932281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.831120, 38.034584, 46.888470>,  <35.148392, 38.266975, 46.815449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831120, 38.034584, 46.888470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149362, -0.105014, -0.983190,
		0.590383, -0.807116, -0.003481,
		-0.793183, -0.580978, 0.182552,
		34.593166, 37.860291, 46.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221725, 37.477959, 46.644012>,  <35.148392, 38.266975, 46.815449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221725, 37.477959, 46.644012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833775, 37.574989, 46.635059>,  <34.601006, 37.633209, 46.629688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833775, 37.574989, 46.635059>,  <35.221725, 37.477959, 46.644012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833775, 37.574989, 46.635059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037808, -0.240660, -0.969873,
		-0.240660, -0.939807, 0.242581,
		0.969873, -0.242581, 0.022385,
		34.542812, 37.647762, 46.628345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974712, 36.967262, 46.322330>,  <35.221725, 37.477959, 46.644012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974712, 36.967262, 46.322330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672123, 37.228020, 46.301235>,  <34.490570, 37.384476, 46.288578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672123, 37.228020, 46.301235>,  <34.974712, 36.967262, 46.322330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672123, 37.228020, 46.301235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379549, -0.503247, -0.776328,
		-0.532629, -0.567251, 0.628118,
		-0.756472, 0.651896, -0.052744,
		34.445179, 37.423588, 46.285412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407558, 36.510597, 46.229179>,  <34.974712, 36.967262, 46.322330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407558, 36.510597, 46.229179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323090, 36.875374, 46.088459>,  <34.272408, 37.094242, 46.004028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.323090, 36.875374, 46.088459>,  <34.407558, 36.510597, 46.229179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323090, 36.875374, 46.088459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532078, -0.409168, -0.741266,
		-0.819939, 0.030652, 0.571630,
		-0.211171, 0.911944, -0.351802,
		34.259739, 37.148956, 45.982918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836361, 36.450932, 45.692955>,  <34.407558, 36.510597, 46.229179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836361, 36.450932, 45.692955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940544, 36.835190, 45.654335>,  <34.003052, 37.065746, 45.631165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940544, 36.835190, 45.654335>,  <33.836361, 36.450932, 45.692955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940544, 36.835190, 45.654335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440763, 0.029334, -0.897144,
		-0.859006, 0.276223, 0.431057,
		0.260456, 0.960646, -0.096551,
		34.018681, 37.123383, 45.625370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312767, 36.653336, 45.379372>,  <33.836361, 36.450932, 45.692955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312767, 36.653336, 45.379372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604977, 36.917736, 45.310768>,  <33.780300, 37.076378, 45.269608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604977, 36.917736, 45.310768>,  <33.312767, 36.653336, 45.379372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604977, 36.917736, 45.310768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176695, -0.059634, -0.982457,
		-0.659634, 0.748010, 0.073231,
		0.730521, 0.661002, -0.171506,
		33.824135, 37.116035, 45.259315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090088, 37.188480, 44.950535>,  <33.312767, 36.653336, 45.379372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090088, 37.188480, 44.950535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487961, 37.184666, 44.909519>,  <33.726685, 37.182377, 44.884911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487961, 37.184666, 44.909519>,  <33.090088, 37.188480, 44.950535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487961, 37.184666, 44.909519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101893, 0.053132, -0.993375,
		0.014918, 0.998542, 0.051878,
		0.994684, -0.009533, -0.102537,
		33.786366, 37.181805, 44.878757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.251038, 35.415138, 48.719467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.503479, 35.693264, 48.581921>,  <37.654945, 35.860142, 48.499393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.503479, 35.693264, 48.581921>,  <37.251038, 35.415138, 48.719467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503479, 35.693264, 48.581921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217032, -0.267316, -0.938850,
		-0.744719, 0.667141, -0.017798,
		0.631103, 0.695317, -0.343866,
		37.692810, 35.901859, 48.478760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951721, 35.820705, 48.243046>,  <37.251038, 35.415138, 48.719467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951721, 35.820705, 48.243046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.341068, 35.837448, 48.152882>,  <37.574677, 35.847496, 48.098782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.341068, 35.837448, 48.152882>,  <36.951721, 35.820705, 48.243046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341068, 35.837448, 48.152882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176398, -0.491278, -0.852953,
		-0.146444, 0.869996, -0.470809,
		0.973364, 0.041860, -0.225410,
		37.633076, 35.850006, 48.085258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960133, 36.051682, 47.579708>,  <36.951721, 35.820705, 48.243046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960133, 36.051682, 47.579708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312233, 35.868279, 47.628590>,  <37.523495, 35.758236, 47.657917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312233, 35.868279, 47.628590>,  <36.960133, 36.051682, 47.579708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312233, 35.868279, 47.628590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064957, -0.371541, -0.926142,
		0.470043, 0.807299, -0.356832,
		0.880250, -0.458505, 0.122200,
		37.576309, 35.730728, 47.665249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253536, 36.095486, 46.925739>,  <36.960133, 36.051682, 47.579708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253536, 36.095486, 46.925739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.494358, 35.824230, 47.094334>,  <37.638851, 35.661476, 47.195492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.494358, 35.824230, 47.094334>,  <37.253536, 36.095486, 46.925739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494358, 35.824230, 47.094334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062219, -0.566126, -0.821968,
		0.796024, 0.468648, -0.383034,
		0.602059, -0.678138, 0.421490,
		37.674976, 35.620789, 47.220779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767910, 35.932228, 46.441093>,  <37.253536, 36.095486, 46.925739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767910, 35.932228, 46.441093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733772, 35.610920, 46.676880>,  <37.713291, 35.418137, 46.818352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.733772, 35.610920, 46.676880>,  <37.767910, 35.932228, 46.441093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733772, 35.610920, 46.676880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060204, -0.586386, -0.807791,
		0.994531, -0.104429, 0.001684,
		-0.085344, -0.803272, 0.589466,
		37.708168, 35.369938, 46.853722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940815, 35.439602, 46.059219>,  <37.767910, 35.932228, 46.441093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940815, 35.439602, 46.059219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802765, 35.202721, 46.350475>,  <37.719933, 35.060593, 46.525230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.802765, 35.202721, 46.350475>,  <37.940815, 35.439602, 46.059219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802765, 35.202721, 46.350475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136624, -0.735844, -0.663225,
		0.928558, -0.328378, 0.173051,
		-0.345127, -0.592200, 0.728139,
		37.699226, 35.025063, 46.568916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279896, 34.844467, 46.011475>,  <37.940815, 35.439602, 46.059219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279896, 34.844467, 46.011475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.945030, 34.762527, 46.214333>,  <37.744110, 34.713364, 46.336048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.945030, 34.762527, 46.214333>,  <38.279896, 34.844467, 46.011475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945030, 34.762527, 46.214333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140074, -0.816002, -0.560821,
		0.528715, -0.540536, 0.654432,
		-0.837162, -0.204846, 0.507147,
		37.693882, 34.701073, 46.366478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323944, 34.124260, 46.345238>,  <38.279896, 34.844467, 46.011475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323944, 34.124260, 46.345238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.959850, 34.264503, 46.257099>,  <37.741394, 34.348648, 46.204216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.959850, 34.264503, 46.257099>,  <38.323944, 34.124260, 46.345238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959850, 34.264503, 46.257099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091320, -0.688959, -0.719024,
		-0.403902, -0.634358, 0.659131,
		-0.910233, 0.350607, -0.220343,
		37.686779, 34.369686, 46.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004307, 33.469746, 46.396069>,  <38.323944, 34.124260, 46.345238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004307, 33.469746, 46.396069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.740791, 33.693783, 46.195152>,  <37.582684, 33.828205, 46.074600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.740791, 33.693783, 46.195152>,  <38.004307, 33.469746, 46.396069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740791, 33.693783, 46.195152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237477, -0.788328, -0.567577,
		-0.713867, -0.254629, 0.652348,
		-0.658786, 0.560092, -0.502293,
		37.543156, 33.861809, 46.044464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520893, 32.982487, 46.024937>,  <38.004307, 33.469746, 46.396069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520893, 32.982487, 46.024937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.444347, 33.328857, 45.840088>,  <37.398422, 33.536678, 45.729179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.444347, 33.328857, 45.840088>,  <37.520893, 32.982487, 46.024937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444347, 33.328857, 45.840088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227855, -0.497151, -0.837211,
		-0.954706, -0.054912, 0.292440,
		-0.191360, 0.865924, -0.462121,
		37.386940, 33.588634, 45.701450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977188, 32.729084, 45.637428>,  <37.520893, 32.982487, 46.024937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977188, 32.729084, 45.637428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110317, 33.069542, 45.475052>,  <37.190193, 33.273815, 45.377625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110317, 33.069542, 45.475052>,  <36.977188, 32.729084, 45.637428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110317, 33.069542, 45.475052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072868, -0.405982, -0.910971,
		-0.940169, 0.332773, -0.073099,
		0.332824, 0.851141, -0.405940,
		37.210163, 33.324883, 45.353271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485462, 33.024414, 45.103317>,  <36.977188, 32.729084, 45.637428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485462, 33.024414, 45.103317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856789, 33.148949, 45.022026>,  <37.079582, 33.223671, 44.973251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.856789, 33.148949, 45.022026>,  <36.485462, 33.024414, 45.103317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856789, 33.148949, 45.022026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099301, -0.319136, -0.942492,
		-0.358292, 0.895109, -0.265342,
		0.928313, 0.311339, -0.203229,
		37.135284, 33.242352, 44.961056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711823, 33.303257, 44.973160>,  <36.485462, 33.024414, 45.103317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711823, 33.303257, 44.973160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.487637, 32.980717, 45.048721>,  <35.353127, 32.787193, 45.094059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.487637, 32.980717, 45.048721>,  <35.711823, 33.303257, 44.973160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487637, 32.980717, 45.048721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181911, 0.342391, 0.921779,
		-0.807953, 0.482260, -0.338581,
		-0.560464, -0.806346, 0.188907,
		35.319496, 32.738811, 45.105392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107414, 33.573673, 45.285835>,  <35.711823, 33.303257, 44.973160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107414, 33.573673, 45.285835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.134621, 33.190487, 45.397324>,  <35.150944, 32.960575, 45.464218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.134621, 33.190487, 45.397324>,  <35.107414, 33.573673, 45.285835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134621, 33.190487, 45.397324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148440, 0.266541, 0.952324,
		-0.986580, -0.106143, -0.124072,
		0.068012, -0.957961, 0.278720,
		35.155025, 32.903099, 45.480938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492691, 33.346771, 45.617008>,  <35.107414, 33.573673, 45.285835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492691, 33.346771, 45.617008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780235, 33.107918, 45.759365>,  <34.952763, 32.964603, 45.844780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.780235, 33.107918, 45.759365>,  <34.492691, 33.346771, 45.617008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780235, 33.107918, 45.759365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296006, 0.200293, 0.933951,
		-0.628979, -0.776731, -0.032772,
		0.718864, -0.597136, 0.355897,
		34.995895, 32.928776, 45.866135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193157, 33.221375, 46.284340>,  <34.492691, 33.346771, 45.617008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193157, 33.221375, 46.284340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.564743, 33.081711, 46.333508>,  <34.787693, 32.997913, 46.363007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.564743, 33.081711, 46.333508>,  <34.193157, 33.221375, 46.284340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564743, 33.081711, 46.333508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043192, 0.227556, 0.972807,
		-0.367638, -0.909013, 0.196310,
		0.928965, -0.349162, 0.122920,
		34.843433, 32.976963, 46.370384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131210, 32.799301, 46.891808>,  <34.193157, 33.221375, 46.284340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131210, 32.799301, 46.891808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523521, 32.866306, 46.851791>,  <34.758907, 32.906509, 46.827782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523521, 32.866306, 46.851791>,  <34.131210, 32.799301, 46.891808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523521, 32.866306, 46.851791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077525, 0.135949, 0.987678,
		0.179057, -0.976450, 0.120349,
		0.980780, 0.167520, -0.100042,
		34.817757, 32.916561, 46.821777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435577, 32.413300, 47.402866>,  <34.131210, 32.799301, 46.891808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435577, 32.413300, 47.402866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.689522, 32.705418, 47.301975>,  <34.841888, 32.880688, 47.241440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.689522, 32.705418, 47.301975>,  <34.435577, 32.413300, 47.402866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689522, 32.705418, 47.301975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036182, 0.354195, 0.934472,
		0.771780, -0.584132, 0.251287,
		0.634859, 0.730299, -0.252225,
		34.879978, 32.924507, 47.226307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699249, 32.577065, 48.025974>,  <34.435577, 32.413300, 47.402866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699249, 32.577065, 48.025974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836311, 32.885601, 47.811455>,  <34.918549, 33.070724, 47.682743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.836311, 32.885601, 47.811455>,  <34.699249, 32.577065, 48.025974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836311, 32.885601, 47.811455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026054, 0.578444, 0.815305,
		0.939098, -0.265399, 0.218306,
		0.342659, 0.771340, -0.536301,
		34.939110, 33.117004, 47.650566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261204, 32.834400, 48.385578>,  <34.699249, 32.577065, 48.025974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261204, 32.834400, 48.385578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100491, 33.124493, 48.161934>,  <35.004063, 33.298550, 48.027748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100491, 33.124493, 48.161934>,  <35.261204, 32.834400, 48.385578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100491, 33.124493, 48.161934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091758, 0.639373, 0.763401,
		0.911124, 0.255422, -0.323438,
		-0.401787, 0.725232, -0.559112,
		34.979954, 33.342064, 47.994202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702946, 33.450829, 48.583050>,  <35.261204, 32.834400, 48.385578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702946, 33.450829, 48.583050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.354759, 33.560677, 48.419655>,  <35.145847, 33.626587, 48.321617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.354759, 33.560677, 48.419655>,  <35.702946, 33.450829, 48.583050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354759, 33.560677, 48.419655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090253, 0.726769, 0.680927,
		0.483875, 0.629595, -0.607846,
		-0.870471, 0.274623, -0.408488,
		35.093616, 33.643063, 48.297108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734436, 34.138664, 48.610889>,  <35.702946, 33.450829, 48.583050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734436, 34.138664, 48.610889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345036, 34.082108, 48.539001>,  <35.111393, 34.048176, 48.495869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.345036, 34.082108, 48.539001>,  <35.734436, 34.138664, 48.610889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345036, 34.082108, 48.539001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219856, 0.794856, 0.565567,
		0.062889, 0.590095, -0.804880,
		-0.973503, -0.141390, -0.179724,
		35.052986, 34.039692, 48.485085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525230, 34.825218, 48.721016>,  <35.734436, 34.138664, 48.610889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525230, 34.825218, 48.721016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195511, 34.600044, 48.745136>,  <34.997681, 34.464939, 48.759609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195511, 34.600044, 48.745136>,  <35.525230, 34.825218, 48.721016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195511, 34.600044, 48.745136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372185, 0.619063, 0.691548,
		-0.426629, 0.547597, -0.719809,
		-0.824297, -0.562937, 0.060303,
		34.948223, 34.431164, 48.763226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106487, 35.281090, 48.666950>,  <35.525230, 34.825218, 48.721016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106487, 35.281090, 48.666950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942947, 34.968277, 48.855110>,  <34.844826, 34.780590, 48.968006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942947, 34.968277, 48.855110>,  <35.106487, 35.281090, 48.666950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942947, 34.968277, 48.855110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352966, 0.610837, 0.708727,
		-0.841581, 0.123727, -0.525769,
		-0.408847, -0.782030, 0.470397,
		34.820293, 34.733669, 48.996231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333481, 35.366375, 48.774372>,  <35.106487, 35.281090, 48.666950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333481, 35.366375, 48.774372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506004, 35.135731, 49.051933>,  <34.609516, 34.997345, 49.218468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506004, 35.135731, 49.051933>,  <34.333481, 35.366375, 48.774372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506004, 35.135731, 49.051933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178242, 0.699498, 0.692049,
		-0.884424, -0.422166, 0.198920,
		0.431304, -0.576609, 0.693901,
		34.635395, 34.962749, 49.260105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909756, 35.426662, 49.375771>,  <34.333481, 35.366375, 48.774372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909756, 35.426662, 49.375771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.270359, 35.312092, 49.505539>,  <34.486721, 35.243351, 49.583401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.270359, 35.312092, 49.505539>,  <33.909756, 35.426662, 49.375771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270359, 35.312092, 49.505539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069156, 0.644661, 0.761334,
		-0.427203, -0.708783, 0.561359,
		0.901507, -0.286423, 0.324418,
		34.540810, 35.226166, 49.602863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173962, 36.147289, 49.397972>,  <33.909756, 35.426662, 49.375771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173962, 36.147289, 49.397972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310959, 36.488293, 49.555927>,  <34.393158, 36.692894, 49.650700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.310959, 36.488293, 49.555927>,  <34.173962, 36.147289, 49.397972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310959, 36.488293, 49.555927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113623, 0.454803, -0.883314,
		-0.932625, 0.257659, 0.252630,
		0.342491, 0.852506, 0.394885,
		34.413708, 36.744045, 49.674393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699459, 36.747292, 49.157219>,  <34.173962, 36.147289, 49.397972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699459, 36.747292, 49.157219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039532, 36.932392, 49.257652>,  <34.243576, 37.043453, 49.317913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039532, 36.932392, 49.257652>,  <33.699459, 36.747292, 49.157219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039532, 36.932392, 49.257652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097783, 0.607394, -0.788359,
		-0.517323, 0.645700, 0.561648,
		0.850186, 0.462756, 0.251080,
		34.294586, 37.071220, 49.332977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582298, 37.464813, 49.073261>,  <33.699459, 36.747292, 49.157219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582298, 37.464813, 49.073261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.977150, 37.408478, 49.042961>,  <34.214062, 37.374676, 49.024780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.977150, 37.408478, 49.042961>,  <33.582298, 37.464813, 49.073261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977150, 37.408478, 49.042961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002039, 0.484735, -0.874659,
		0.159900, 0.863248, 0.478784,
		0.987131, -0.140834, -0.075748,
		34.273289, 37.366226, 49.020237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762604, 38.030445, 48.905163>,  <33.582298, 37.464813, 49.073261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762604, 38.030445, 48.905163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078304, 37.808826, 48.799244>,  <34.267723, 37.675854, 48.735695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078304, 37.808826, 48.799244>,  <33.762604, 38.030445, 48.905163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078304, 37.808826, 48.799244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054230, 0.492410, -0.868672,
		0.611674, 0.671239, 0.418680,
		0.789249, -0.554050, -0.264793,
		34.315079, 37.642612, 48.719807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136047, 38.460827, 48.532005>,  <33.762604, 38.030445, 48.905163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136047, 38.460827, 48.532005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.318501, 38.123528, 48.418247>,  <34.427971, 37.921150, 48.349991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.318501, 38.123528, 48.418247>,  <34.136047, 38.460827, 48.532005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318501, 38.123528, 48.418247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069463, 0.352339, -0.933291,
		0.887199, 0.405946, 0.219287,
		0.456129, -0.843247, -0.284396,
		34.455338, 37.870552, 48.332928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614952, 38.684395, 48.042103>,  <34.136047, 38.460827, 48.532005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614952, 38.684395, 48.042103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.572899, 38.292995, 47.971130>,  <34.547668, 38.058155, 47.928547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.572899, 38.292995, 47.971130>,  <34.614952, 38.684395, 48.042103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572899, 38.292995, 47.971130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020553, 0.176240, -0.984132,
		0.994246, -0.107111, 0.001582,
		-0.105133, -0.978502, -0.177428,
		34.541359, 37.999443, 47.917904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907822, 38.561787, 47.475624>,  <34.614952, 38.684395, 48.042103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907822, 38.561787, 47.475624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729618, 38.203915, 47.462547>,  <34.622696, 37.989193, 47.454700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729618, 38.203915, 47.462547>,  <34.907822, 38.561787, 47.475624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729618, 38.203915, 47.462547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023607, 0.048240, -0.998557,
		0.894965, -0.444097, -0.042612,
		-0.445511, -0.894679, -0.032689,
		34.595966, 37.935513, 47.452740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484608, 39.034214, 47.216648>,  <34.907822, 38.561787, 47.475624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484608, 39.034214, 47.216648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.392242, 39.399082, 47.081223>,  <35.336823, 39.618004, 46.999966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.392242, 39.399082, 47.081223>,  <35.484608, 39.034214, 47.216648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392242, 39.399082, 47.081223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066814, 0.362012, 0.929776,
		0.970677, 0.192077, -0.144539,
		-0.230913, 0.912170, -0.338563,
		35.322968, 39.672733, 46.979652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877747, 39.470257, 47.555271>,  <35.484608, 39.034214, 47.216648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877747, 39.470257, 47.555271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.607651, 39.728237, 47.412117>,  <35.445591, 39.883026, 47.326225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.607651, 39.728237, 47.412117>,  <35.877747, 39.470257, 47.555271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607651, 39.728237, 47.412117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157483, 0.347955, 0.924189,
		0.720588, 0.680413, -0.133385,
		-0.675243, 0.644954, -0.357886,
		35.405079, 39.921722, 47.304752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087257, 40.147194, 47.784153>,  <35.877747, 39.470257, 47.555271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087257, 40.147194, 47.784153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696194, 40.194305, 47.714504>,  <35.461555, 40.222572, 47.672714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.696194, 40.194305, 47.714504>,  <36.087257, 40.147194, 47.784153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696194, 40.194305, 47.714504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107150, 0.433399, 0.894809,
		0.180855, 0.893472, -0.411095,
		-0.977656, 0.117782, -0.174118,
		35.402897, 40.229641, 47.662270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954643, 40.727413, 48.132324>,  <36.087257, 40.147194, 47.784153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954643, 40.727413, 48.132324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.587955, 40.590824, 48.049355>,  <35.367943, 40.508869, 47.999573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.587955, 40.590824, 48.049355>,  <35.954643, 40.727413, 48.132324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587955, 40.590824, 48.049355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377065, 0.567769, 0.731752,
		-0.132104, 0.749022, -0.649241,
		-0.916717, -0.341473, -0.207425,
		35.312939, 40.488380, 47.987125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549305, 41.290699, 47.941383>,  <35.954643, 40.727413, 48.132324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549305, 41.290699, 47.941383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308956, 41.016495, 48.105835>,  <35.164745, 40.851974, 48.204506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308956, 41.016495, 48.105835>,  <35.549305, 41.290699, 47.941383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308956, 41.016495, 48.105835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261120, 0.654452, 0.709584,
		-0.755489, 0.319018, -0.572244,
		-0.600876, -0.685507, 0.411129,
		35.128693, 40.810844, 48.229176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035713, 41.687958, 48.197071>,  <35.549305, 41.290699, 47.941383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035713, 41.687958, 48.197071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.983334, 41.344994, 48.396149>,  <34.951908, 41.139214, 48.515594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.983334, 41.344994, 48.396149>,  <35.035713, 41.687958, 48.197071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983334, 41.344994, 48.396149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209185, 0.514613, 0.831514,
		-0.969069, 0.004771, -0.246743,
		-0.130944, -0.857410, 0.497697,
		34.944050, 41.087772, 48.545460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445114, 41.694580, 48.508274>,  <35.035713, 41.687958, 48.197071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445114, 41.694580, 48.508274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665249, 41.441471, 48.726162>,  <34.797329, 41.289604, 48.856895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.665249, 41.441471, 48.726162>,  <34.445114, 41.694580, 48.508274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665249, 41.441471, 48.726162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112516, 0.590251, 0.799340,
		-0.827324, -0.501199, 0.253642,
		0.550341, -0.632774, 0.544721,
		34.830353, 41.251640, 48.889580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176598, 41.767159, 49.174015>,  <34.445114, 41.694580, 48.508274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176598, 41.767159, 49.174015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523232, 41.580219, 49.244003>,  <34.731213, 41.468056, 49.285995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523232, 41.580219, 49.244003>,  <34.176598, 41.767159, 49.174015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523232, 41.580219, 49.244003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132128, 0.552997, 0.822640,
		-0.481220, -0.689768, 0.540969,
		0.866585, -0.467347, 0.174975,
		34.783207, 41.440014, 49.296497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148468, 41.557156, 49.874748>,  <34.176598, 41.767159, 49.174015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148468, 41.557156, 49.874748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.539616, 41.560543, 49.791134>,  <34.774303, 41.562576, 49.740967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.539616, 41.560543, 49.791134>,  <34.148468, 41.557156, 49.874748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539616, 41.560543, 49.791134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141201, 0.710577, 0.689306,
		0.154371, -0.703569, 0.693658,
		0.977871, 0.008464, -0.209037,
		34.832977, 41.563084, 49.728424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.941341, 35.741119, 34.491749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259914, 35.897972, 34.675888>,  <37.451057, 35.992085, 34.786373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259914, 35.897972, 34.675888>,  <36.941341, 35.741119, 34.491749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259914, 35.897972, 34.675888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545784, 0.138305, 0.826433,
		0.260400, -0.909454, 0.324169,
		0.796437, 0.392130, 0.460351,
		37.498844, 36.015610, 34.813995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040630, 35.467506, 35.228577>,  <36.941341, 35.741119, 34.491749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040630, 35.467506, 35.228577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232296, 35.817516, 35.201035>,  <37.347294, 36.027523, 35.184509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232296, 35.817516, 35.201035>,  <37.040630, 35.467506, 35.228577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232296, 35.817516, 35.201035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518693, 0.345571, 0.782009,
		0.708069, -0.338995, 0.619452,
		0.479162, 0.875022, -0.068853,
		37.376045, 36.080025, 35.180378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428410, 35.542538, 35.809906>,  <37.040630, 35.467506, 35.228577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428410, 35.542538, 35.809906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382980, 35.919205, 35.683189>,  <37.355724, 36.145206, 35.607159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382980, 35.919205, 35.683189>,  <37.428410, 35.542538, 35.809906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382980, 35.919205, 35.683189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269186, 0.277764, 0.922164,
		0.956369, 0.190006, 0.221939,
		-0.113570, 0.941671, -0.316791,
		37.348907, 36.201706, 35.588154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653576, 35.941204, 36.368965>,  <37.428410, 35.542538, 35.809906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653576, 35.941204, 36.368965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408718, 36.192825, 36.177311>,  <37.261803, 36.343800, 36.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408718, 36.192825, 36.177311>,  <37.653576, 35.941204, 36.368965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408718, 36.192825, 36.177311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303797, 0.372330, 0.876971,
		0.730057, 0.682393, -0.036816,
		-0.612147, 0.629054, -0.479131,
		37.225075, 36.381542, 36.033573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792011, 36.544701, 36.633232>,  <37.653576, 35.941204, 36.368965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792011, 36.544701, 36.633232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422249, 36.577137, 36.484154>,  <37.200394, 36.596600, 36.394707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422249, 36.577137, 36.484154>,  <37.792011, 36.544701, 36.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422249, 36.577137, 36.484154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282087, 0.512343, 0.811130,
		0.256726, 0.854944, -0.450736,
		-0.924402, 0.081091, -0.372700,
		37.144928, 36.601463, 36.372345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658115, 37.192146, 36.838367>,  <37.792011, 36.544701, 36.633232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658115, 37.192146, 36.838367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302074, 37.029648, 36.755718>,  <37.088451, 36.932148, 36.706131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302074, 37.029648, 36.755718>,  <37.658115, 37.192146, 36.838367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302074, 37.029648, 36.755718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434090, 0.617480, 0.655960,
		-0.138895, 0.673561, -0.725964,
		-0.890098, -0.406243, -0.206621,
		37.035046, 36.907776, 36.693733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232220, 37.825127, 36.814411>,  <37.658115, 37.192146, 36.838367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232220, 37.825127, 36.814411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010128, 37.499794, 36.883945>,  <36.876873, 37.304596, 36.925667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010128, 37.499794, 36.883945>,  <37.232220, 37.825127, 36.814411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010128, 37.499794, 36.883945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554471, 0.517763, 0.651523,
		-0.619908, 0.265357, -0.738444,
		-0.555226, -0.813330, 0.173833,
		36.843559, 37.255795, 36.936096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497143, 38.047478, 37.005173>,  <37.232220, 37.825127, 36.814411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497143, 38.047478, 37.005173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471577, 37.669388, 37.133209>,  <36.456238, 37.442532, 37.210030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471577, 37.669388, 37.133209>,  <36.497143, 38.047478, 37.005173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471577, 37.669388, 37.133209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528437, 0.304145, 0.792623,
		-0.846563, -0.118489, -0.518932,
		-0.063914, -0.945228, 0.320091,
		36.452404, 37.385818, 37.229237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839146, 37.980263, 37.114616>,  <36.497143, 38.047478, 37.005173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839146, 37.980263, 37.114616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994041, 37.684708, 37.335194>,  <36.086979, 37.507374, 37.467541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994041, 37.684708, 37.335194>,  <35.839146, 37.980263, 37.114616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994041, 37.684708, 37.335194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747093, 0.099018, 0.657304,
		-0.540276, -0.666515, -0.513674,
		0.387239, -0.738887, 0.551445,
		36.110214, 37.463043, 37.500626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239956, 37.623341, 37.512917>,  <35.839146, 37.980263, 37.114616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239956, 37.623341, 37.512917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563038, 37.489326, 37.706970>,  <35.756889, 37.408916, 37.823402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563038, 37.489326, 37.706970>,  <35.239956, 37.623341, 37.512917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563038, 37.489326, 37.706970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470495, 0.129592, 0.872835,
		-0.355303, -0.933250, -0.052962,
		0.807710, -0.335039, 0.485133,
		35.805351, 37.388813, 37.852509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968296, 37.271717, 37.949291>,  <35.239956, 37.623341, 37.512917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968296, 37.271717, 37.949291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312988, 37.395103, 38.110420>,  <35.519802, 37.469135, 38.207096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312988, 37.395103, 38.110420>,  <34.968296, 37.271717, 37.949291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312988, 37.395103, 38.110420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458459, 0.133319, 0.878659,
		0.217333, -0.941846, 0.256304,
		0.861732, 0.308466, 0.402824,
		35.571507, 37.487644, 38.231266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053360, 36.920353, 38.618401>,  <34.968296, 37.271717, 37.949291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053360, 36.920353, 38.618401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313641, 37.223625, 38.635170>,  <35.469810, 37.405586, 38.645233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313641, 37.223625, 38.635170>,  <35.053360, 36.920353, 38.618401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313641, 37.223625, 38.635170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397606, 0.293162, 0.869463,
		0.646914, -0.582430, 0.492216,
		0.650700, 0.758176, 0.041927,
		35.508850, 37.451077, 38.647747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713306, 36.240307, 38.806046>,  <35.053360, 36.920353, 38.618401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713306, 36.240307, 38.806046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336170, 36.167679, 38.917820>,  <34.109890, 36.124100, 38.984886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336170, 36.167679, 38.917820>,  <34.713306, 36.240307, 38.806046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336170, 36.167679, 38.917820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142125, -0.539349, -0.830002,
		0.301418, -0.822274, 0.482714,
		-0.942840, -0.181572, 0.279435,
		34.053318, 36.113209, 39.001652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605492, 35.449810, 38.918152>,  <34.713306, 36.240307, 38.806046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605492, 35.449810, 38.918152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271839, 35.644299, 38.813992>,  <34.071648, 35.760990, 38.751495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271839, 35.644299, 38.813992>,  <34.605492, 35.449810, 38.918152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271839, 35.644299, 38.813992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113261, -0.613056, -0.781879,
		-0.539805, -0.622700, 0.566441,
		-0.834136, 0.486218, -0.260403,
		34.021599, 35.790165, 38.735870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141914, 34.879837, 38.744965>,  <34.605492, 35.449810, 38.918152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141914, 34.879837, 38.744965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946457, 35.201687, 38.610027>,  <33.829182, 35.394798, 38.529064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946457, 35.201687, 38.610027>,  <34.141914, 34.879837, 38.744965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946457, 35.201687, 38.610027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130497, -0.449704, -0.883593,
		-0.862669, -0.387739, 0.324747,
		-0.488643, 0.804627, -0.337347,
		33.799866, 35.443073, 38.508823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400429, 34.729557, 38.641151>,  <34.141914, 34.879837, 38.744965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400429, 34.729557, 38.641151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510468, 35.037964, 38.411423>,  <33.576492, 35.223007, 38.273586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510468, 35.037964, 38.411423>,  <33.400429, 34.729557, 38.641151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510468, 35.037964, 38.411423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321985, -0.488988, -0.810689,
		-0.905895, 0.407943, 0.113737,
		0.275099, 0.771021, -0.574324,
		33.592999, 35.269272, 38.239124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120647, 34.610424, 37.955296>,  <33.400429, 34.729557, 38.641151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120647, 34.610424, 37.955296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318642, 34.933929, 37.828239>,  <33.437439, 35.128033, 37.752007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318642, 34.933929, 37.828239>,  <33.120647, 34.610424, 37.955296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318642, 34.933929, 37.828239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319527, -0.170527, -0.932107,
		-0.808018, 0.562873, 0.174013,
		0.494984, 0.808761, -0.317642,
		33.467136, 35.176559, 37.732948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577507, 34.997295, 37.462193>,  <33.120647, 34.610424, 37.955296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577507, 34.997295, 37.462193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949024, 35.113068, 37.369606>,  <33.171932, 35.182533, 37.314056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949024, 35.113068, 37.369606>,  <32.577507, 34.997295, 37.462193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949024, 35.113068, 37.369606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148794, -0.280781, -0.948168,
		-0.339422, 0.915090, -0.217721,
		0.928791, 0.289434, -0.231463,
		33.227661, 35.199898, 37.300167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567257, 35.496937, 36.879559>,  <32.577507, 34.997295, 37.462193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567257, 35.496937, 36.879559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941833, 35.357121, 36.891594>,  <33.166580, 35.273232, 36.898815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941833, 35.357121, 36.891594>,  <32.567257, 35.496937, 36.879559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941833, 35.357121, 36.891594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093686, -0.331799, -0.938686,
		0.338096, 0.876201, -0.343456,
		0.936437, -0.349543, 0.030092,
		33.222763, 35.252258, 36.900623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801537, 35.675667, 36.255527>,  <32.567257, 35.496937, 36.879559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801537, 35.675667, 36.255527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057289, 35.403393, 36.398556>,  <33.210739, 35.240028, 36.484371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057289, 35.403393, 36.398556>,  <32.801537, 35.675667, 36.255527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057289, 35.403393, 36.398556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100906, -0.386743, -0.916650,
		0.762240, 0.622170, -0.178591,
		0.639381, -0.680686, 0.357572,
		33.249104, 35.199188, 36.505829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478230, 35.586712, 35.827366>,  <32.801537, 35.675667, 36.255527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478230, 35.586712, 35.827366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429073, 35.232807, 36.007187>,  <33.399578, 35.020466, 36.115078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429073, 35.232807, 36.007187>,  <33.478230, 35.586712, 35.827366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429073, 35.232807, 36.007187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299680, -0.464921, -0.833091,
		0.946092, 0.032340, 0.322280,
		-0.122893, -0.884762, 0.449550,
		33.392204, 34.967381, 36.142052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108196, 35.248474, 35.556999>,  <33.478230, 35.586712, 35.827366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108196, 35.248474, 35.556999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875111, 34.962128, 35.710876>,  <33.735260, 34.790321, 35.803204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875111, 34.962128, 35.710876>,  <34.108196, 35.248474, 35.556999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875111, 34.962128, 35.710876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240045, -0.603852, -0.760093,
		0.776419, -0.350572, 0.523710,
		-0.582711, -0.715865, 0.384690,
		33.700298, 34.747368, 35.826283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450180, 34.635910, 35.453930>,  <34.108196, 35.248474, 35.556999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450180, 34.635910, 35.453930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075230, 34.497482, 35.469688>,  <33.850258, 34.414425, 35.479145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075230, 34.497482, 35.469688>,  <34.450180, 34.635910, 35.453930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075230, 34.497482, 35.469688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207793, -0.646405, -0.734154,
		0.279537, -0.679995, 0.677839,
		-0.937380, -0.346073, 0.039396,
		33.794014, 34.393661, 35.481506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473400, 33.911686, 35.322098>,  <34.450180, 34.635910, 35.453930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473400, 33.911686, 35.322098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098804, 34.005356, 35.217670>,  <33.874046, 34.061558, 35.155014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.098804, 34.005356, 35.217670>,  <34.473400, 33.911686, 35.322098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098804, 34.005356, 35.217670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072691, -0.598632, -0.797719,
		-0.343085, -0.766031, 0.543589,
		-0.936487, 0.234172, -0.261065,
		33.817860, 34.075607, 35.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165112, 33.357513, 34.890118>,  <34.473400, 33.911686, 35.322098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165112, 33.357513, 34.890118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809139, 33.253906, 34.739952>,  <33.595554, 33.191742, 34.649853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809139, 33.253906, 34.739952>,  <34.165112, 33.357513, 34.890118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809139, 33.253906, 34.739952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095175, -0.699511, 0.708256,
		-0.446056, 0.666028, 0.597864,
		-0.889930, -0.259021, -0.375410,
		33.542160, 33.176201, 34.627331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630058, 33.388027, 35.417866>,  <34.165112, 33.357513, 34.890118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630058, 33.388027, 35.417866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609734, 33.121609, 35.120193>,  <33.597538, 32.961758, 34.941589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609734, 33.121609, 35.120193>,  <33.630058, 33.388027, 35.417866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609734, 33.121609, 35.120193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067499, -0.741145, 0.667943,
		-0.996425, 0.084170, -0.007299,
		-0.050811, -0.666048, -0.744176,
		33.594490, 32.921795, 34.896942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095203, 33.018349, 35.588192>,  <33.630058, 33.388027, 35.417866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095203, 33.018349, 35.588192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357559, 32.814964, 35.365025>,  <33.514973, 32.692932, 35.231125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357559, 32.814964, 35.365025>,  <33.095203, 33.018349, 35.588192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357559, 32.814964, 35.365025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013314, -0.731200, 0.682033,
		-0.754744, -0.454763, -0.472813,
		0.655885, -0.508465, -0.557923,
		33.554325, 32.662426, 35.197647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907249, 32.351261, 35.624920>,  <33.095203, 33.018349, 35.588192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907249, 32.351261, 35.624920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286026, 32.342800, 35.496643>,  <33.513294, 32.337723, 35.419678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286026, 32.342800, 35.496643>,  <32.907249, 32.351261, 35.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286026, 32.342800, 35.496643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197622, -0.748576, 0.632914,
		-0.253454, -0.662712, -0.704680,
		0.946946, -0.021155, -0.320696,
		33.570110, 32.336452, 35.400433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099598, 31.667410, 35.567078>,  <32.907249, 32.351261, 35.624920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099598, 31.667410, 35.567078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437874, 31.873545, 35.622551>,  <33.640839, 31.997225, 35.655834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437874, 31.873545, 35.622551>,  <33.099598, 31.667410, 35.567078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437874, 31.873545, 35.622551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270688, -0.638171, 0.720740,
		0.459927, -0.571984, -0.679192,
		0.845692, 0.515337, 0.138683,
		33.691582, 32.028145, 35.664154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599449, 31.104183, 35.385059>,  <33.099598, 31.667410, 35.567078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599449, 31.104183, 35.385059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776039, 31.388342, 35.604309>,  <33.881992, 31.558836, 35.735859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776039, 31.388342, 35.604309>,  <33.599449, 31.104183, 35.385059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776039, 31.388342, 35.604309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291584, -0.691306, 0.661117,
		0.848574, -0.132043, -0.512334,
		0.441475, 0.710395, 0.548123,
		33.908482, 31.601460, 35.768745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252602, 30.849955, 35.658360>,  <33.599449, 31.104183, 35.385059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252602, 30.849955, 35.658360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163273, 31.148106, 35.909611>,  <34.109676, 31.326996, 36.060360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163273, 31.148106, 35.909611>,  <34.252602, 30.849955, 35.658360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163273, 31.148106, 35.909611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325608, -0.550336, 0.768836,
		0.918753, 0.376220, -0.119799,
		-0.223322, 0.745378, 0.628123,
		34.096275, 31.371719, 36.098049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709763, 30.798727, 36.070274>,  <34.252602, 30.849955, 35.658360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709763, 30.798727, 36.070274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447266, 31.024050, 36.271084>,  <34.289768, 31.159243, 36.391571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447266, 31.024050, 36.271084>,  <34.709763, 30.798727, 36.070274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447266, 31.024050, 36.271084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296827, -0.418966, 0.858115,
		0.693715, 0.712146, 0.107739,
		-0.656242, 0.563307, 0.502027,
		34.250393, 31.193043, 36.421692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085510, 31.117052, 36.584164>,  <34.709763, 30.798727, 36.070274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085510, 31.117052, 36.584164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700390, 31.117418, 36.692245>,  <34.469318, 31.117638, 36.757095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700390, 31.117418, 36.692245>,  <35.085510, 31.117052, 36.584164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700390, 31.117418, 36.692245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258475, -0.288337, 0.921983,
		0.078757, 0.957529, 0.277374,
		-0.962802, 0.000918, 0.270206,
		34.411549, 31.117693, 36.773308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050968, 31.199368, 37.322800>,  <35.085510, 31.117052, 36.584164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050968, 31.199368, 37.322800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656097, 31.140045, 37.299191>,  <34.419174, 31.104452, 37.285027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656097, 31.140045, 37.299191>,  <35.050968, 31.199368, 37.322800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656097, 31.140045, 37.299191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011787, -0.301025, 0.953544,
		-0.159185, 0.942013, 0.295417,
		-0.987178, -0.148308, -0.059022,
		34.359943, 31.095552, 37.281483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730888, 31.564114, 37.818836>,  <35.050968, 31.199368, 37.322800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730888, 31.564114, 37.818836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490925, 31.253477, 37.741882>,  <34.346947, 31.067095, 37.695709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490925, 31.253477, 37.741882>,  <34.730888, 31.564114, 37.818836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490925, 31.253477, 37.741882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177420, -0.105340, 0.978481,
		-0.780146, 0.621136, -0.074588,
		-0.599912, -0.776591, -0.192383,
		34.310951, 31.020500, 37.684166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071957, 31.787500, 38.246964>,  <34.730888, 31.564114, 37.818836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071957, 31.787500, 38.246964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054749, 31.396042, 38.166565>,  <34.044426, 31.161167, 38.118324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054749, 31.396042, 38.166565>,  <34.071957, 31.787500, 38.246964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054749, 31.396042, 38.166565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088952, -0.196632, 0.976434,
		-0.995107, 0.059881, -0.078594,
		-0.043016, -0.978647, -0.200996,
		34.041843, 31.102448, 38.106266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514233, 31.486164, 38.554836>,  <34.071957, 31.787500, 38.246964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514233, 31.486164, 38.554836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768082, 31.183039, 38.494213>,  <33.920391, 31.001163, 38.457840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768082, 31.183039, 38.494213>,  <33.514233, 31.486164, 38.554836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768082, 31.183039, 38.494213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015391, -0.208459, 0.977910,
		-0.772669, -0.618272, -0.143957,
		0.634623, -0.757816, -0.151554,
		33.958469, 30.955694, 38.448746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337730, 30.932125, 39.013420>,  <33.514233, 31.486164, 38.554836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337730, 30.932125, 39.013420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710495, 30.825209, 38.915359>,  <33.934155, 30.761059, 38.856525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710495, 30.825209, 38.915359>,  <33.337730, 30.932125, 39.013420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710495, 30.825209, 38.915359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158965, -0.306524, 0.938495,
		-0.326001, -0.913562, -0.243162,
		0.931908, -0.267296, -0.245151,
		33.990067, 30.745022, 38.841816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459396, 30.267193, 39.309071>,  <33.337730, 30.932125, 39.013420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459396, 30.267193, 39.309071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817024, 30.438822, 39.257629>,  <34.031601, 30.541800, 39.226765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817024, 30.438822, 39.257629>,  <33.459396, 30.267193, 39.309071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817024, 30.438822, 39.257629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126024, 0.034549, 0.991425,
		0.429835, -0.902610, -0.023184,
		0.894069, 0.429071, -0.128601,
		34.085243, 30.567543, 39.219048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887188, 30.070396, 39.918621>,  <33.459396, 30.267193, 39.309071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887188, 30.070396, 39.918621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097923, 30.369123, 39.756287>,  <34.224365, 30.548359, 39.658886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097923, 30.369123, 39.756287>,  <33.887188, 30.070396, 39.918621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097923, 30.369123, 39.756287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450517, 0.159530, 0.878399,
		0.720746, -0.645613, -0.252406,
		0.526839, 0.746816, -0.405840,
		34.255974, 30.593168, 39.634533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646439, 29.945290, 40.100548>,  <33.887188, 30.070396, 39.918621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646439, 29.945290, 40.100548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571033, 30.329304, 40.017799>,  <34.525791, 30.559713, 39.968151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571033, 30.329304, 40.017799>,  <34.646439, 29.945290, 40.100548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571033, 30.329304, 40.017799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279698, 0.254404, 0.925769,
		0.941400, 0.116656, -0.316478,
		-0.188509, 0.960037, -0.206867,
		34.514481, 30.617315, 39.955738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123840, 30.268625, 40.565910>,  <34.646439, 29.945290, 40.100548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123840, 30.268625, 40.565910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870205, 30.560505, 40.463566>,  <34.718021, 30.735634, 40.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.870205, 30.560505, 40.463566>,  <35.123840, 30.268625, 40.565910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870205, 30.560505, 40.463566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071058, 0.384472, 0.920398,
		0.769985, 0.565436, -0.295642,
		-0.634092, 0.729701, -0.255859,
		34.679977, 30.779415, 40.386806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456123, 30.955965, 40.692898>,  <35.123840, 30.268625, 40.565910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456123, 30.955965, 40.692898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059235, 31.005644, 40.689354>,  <34.821102, 31.035452, 40.687229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059235, 31.005644, 40.689354>,  <35.456123, 30.955965, 40.692898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059235, 31.005644, 40.689354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045061, 0.424499, 0.904306,
		0.116073, 0.896870, -0.426792,
		-0.992218, 0.124198, -0.008859,
		34.761570, 31.042904, 40.686695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331268, 31.567108, 40.848091>,  <35.456123, 30.955965, 40.692898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331268, 31.567108, 40.848091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973995, 31.410994, 40.937447>,  <34.759632, 31.317324, 40.991058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973995, 31.410994, 40.937447>,  <35.331268, 31.567108, 40.848091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973995, 31.410994, 40.937447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013705, 0.520144, 0.853969,
		-0.449487, 0.759688, -0.469932,
		-0.893182, -0.390288, 0.223386,
		34.706039, 31.293907, 41.004463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901424, 32.158535, 41.035641>,  <35.331268, 31.567108, 40.848091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901424, 32.158535, 41.035641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805946, 31.814003, 41.215031>,  <34.748661, 31.607283, 41.322666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805946, 31.814003, 41.215031>,  <34.901424, 32.158535, 41.035641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805946, 31.814003, 41.215031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147897, 0.424195, 0.893412,
		-0.959767, 0.279578, 0.026137,
		-0.238691, -0.861333, 0.448478,
		34.734341, 31.555603, 41.349575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779751, 32.283226, 41.853951>,  <34.901424, 32.158535, 41.035641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779751, 32.283226, 41.853951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716621, 31.888943, 41.877533>,  <34.678745, 31.652372, 41.891682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716621, 31.888943, 41.877533>,  <34.779751, 32.283226, 41.853951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716621, 31.888943, 41.877533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086865, 0.073332, 0.993517,
		-0.983640, 0.151676, -0.097197,
		-0.157821, -0.985706, 0.058957,
		34.669273, 31.593231, 41.895222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236660, 32.202530, 42.344471>,  <34.779751, 32.283226, 41.853951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236660, 32.202530, 42.344471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456192, 31.869265, 42.317291>,  <34.587914, 31.669306, 42.300983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456192, 31.869265, 42.317291>,  <34.236660, 32.202530, 42.344471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456192, 31.869265, 42.317291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099589, -0.015542, 0.994907,
		-0.829978, -0.552806, 0.074444,
		0.548834, -0.833165, -0.067953,
		34.620842, 31.619316, 42.296906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941044, 31.824263, 42.876713>,  <34.236660, 32.202530, 42.344471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941044, 31.824263, 42.876713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304516, 31.680702, 42.791393>,  <34.522598, 31.594566, 42.740200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304516, 31.680702, 42.791393>,  <33.941044, 31.824263, 42.876713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304516, 31.680702, 42.791393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242639, 0.038213, 0.969364,
		-0.339756, -0.932593, 0.121807,
		0.908676, -0.358903, -0.213300,
		34.577118, 31.573032, 42.727402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057140, 31.163313, 43.264210>,  <33.941044, 31.824263, 42.876713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057140, 31.163313, 43.264210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401318, 31.348688, 43.179489>,  <34.607822, 31.459913, 43.128658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401318, 31.348688, 43.179489>,  <34.057140, 31.163313, 43.264210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401318, 31.348688, 43.179489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199554, 0.075978, 0.976937,
		0.468844, -0.882865, -0.027106,
		0.860444, 0.463440, -0.211801,
		34.659451, 31.487720, 43.115948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590752, 30.854856, 43.711655>,  <34.057140, 31.163313, 43.264210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590752, 30.854856, 43.711655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741688, 31.202909, 43.584862>,  <34.832249, 31.411741, 43.508785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741688, 31.202909, 43.584862>,  <34.590752, 30.854856, 43.711655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741688, 31.202909, 43.584862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316215, 0.200653, 0.927225,
		0.870415, -0.450116, -0.199435,
		0.377341, 0.870135, -0.316985,
		34.854889, 31.463949, 43.489765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245022, 30.926392, 44.048771>,  <34.590752, 30.854856, 43.711655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245022, 30.926392, 44.048771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160606, 31.297182, 43.924721>,  <35.109959, 31.519657, 43.850292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160606, 31.297182, 43.924721>,  <35.245022, 30.926392, 44.048771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160606, 31.297182, 43.924721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460746, 0.374147, 0.804815,
		0.862076, 0.026961, -0.506061,
		-0.211039, 0.926977, -0.310122,
		35.097294, 31.575275, 43.831684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873650, 31.329548, 44.128387>,  <35.245022, 30.926392, 44.048771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873650, 31.329548, 44.128387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578697, 31.599201, 44.111343>,  <35.401726, 31.760994, 44.101116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578697, 31.599201, 44.111343>,  <35.873650, 31.329548, 44.128387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578697, 31.599201, 44.111343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345623, 0.430746, 0.833668,
		0.580360, 0.600001, -0.550619,
		-0.737379, 0.674134, -0.042614,
		35.357483, 31.801441, 44.098560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163406, 32.011040, 44.373241>,  <35.873650, 31.329548, 44.128387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163406, 32.011040, 44.373241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768429, 32.061523, 44.411240>,  <35.531441, 32.091812, 44.434036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768429, 32.061523, 44.411240>,  <36.163406, 32.011040, 44.373241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768429, 32.061523, 44.411240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149857, 0.558350, 0.815958,
		0.049940, 0.819950, -0.570253,
		-0.987446, 0.126206, 0.094992,
		35.472195, 32.099384, 44.439735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038242, 32.790646, 44.501579>,  <36.163406, 32.011040, 44.373241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038242, 32.790646, 44.501579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707855, 32.608009, 44.633820>,  <35.509621, 32.498428, 44.713165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707855, 32.608009, 44.633820>,  <36.038242, 32.790646, 44.501579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707855, 32.608009, 44.633820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032069, 0.547458, 0.836219,
		-0.562802, 0.701293, -0.437541,
		-0.825970, -0.456594, 0.330600,
		35.460064, 32.471031, 44.732998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378365, 33.475403, 44.409771>,  <36.038242, 32.790646, 44.501579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378365, 33.475403, 44.409771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771233, 33.412945, 44.451630>,  <37.006954, 33.375469, 44.476746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771233, 33.412945, 44.451630>,  <36.378365, 33.475403, 44.409771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771233, 33.412945, 44.451630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105588, -0.002280, -0.994407,
		0.155514, 0.987731, 0.014248,
		0.982174, -0.156148, 0.104647,
		37.065884, 33.366100, 44.483025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656311, 33.813950, 43.918743>,  <36.378365, 33.475403, 44.409771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656311, 33.813950, 43.918743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958031, 33.563946, 43.999134>,  <37.139065, 33.413944, 44.047367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958031, 33.563946, 43.999134>,  <36.656311, 33.813950, 43.918743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958031, 33.563946, 43.999134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164213, -0.116777, -0.979488,
		0.635657, 0.771834, 0.014549,
		0.754304, -0.625008, 0.200975,
		37.184322, 33.376442, 44.059425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336292, 34.150620, 43.607521>,  <36.656311, 33.813950, 43.918743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336292, 34.150620, 43.607521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365646, 33.752544, 43.633465>,  <37.383259, 33.513699, 43.649033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365646, 33.752544, 43.633465>,  <37.336292, 34.150620, 43.607521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365646, 33.752544, 43.633465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290245, -0.040910, -0.956078,
		0.954135, 0.088987, 0.285847,
		0.073384, -0.995192, 0.064861,
		37.387661, 33.453987, 43.652924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874138, 34.058796, 43.211323>,  <37.336292, 34.150620, 43.607521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874138, 34.058796, 43.211323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693810, 33.705051, 43.259769>,  <37.585613, 33.492805, 43.288837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693810, 33.705051, 43.259769>,  <37.874138, 34.058796, 43.211323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693810, 33.705051, 43.259769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228027, -0.245289, -0.942251,
		0.862999, -0.397164, 0.312239,
		-0.450817, -0.884361, 0.121120,
		37.558563, 33.439743, 43.296104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229725, 33.518444, 42.862072>,  <37.874138, 34.058796, 43.211323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229725, 33.518444, 42.862072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875477, 33.333019, 42.873344>,  <37.662930, 33.221764, 42.880108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875477, 33.333019, 42.873344>,  <38.229725, 33.518444, 42.862072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875477, 33.333019, 42.873344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053511, -0.162139, -0.985316,
		0.461321, -0.871105, 0.168399,
		-0.885618, -0.463558, 0.028185,
		37.609791, 33.193951, 42.881802>
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
