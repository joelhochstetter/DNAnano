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
	<24.194918, 34.590240, 35.161594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472216, 34.841919, 35.021008>,  <24.638594, 34.992924, 34.936657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472216, 34.841919, 35.021008>,  <24.194918, 34.590240, 35.161594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472216, 34.841919, 35.021008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265330, 0.676232, 0.687248,
		0.670071, -0.383189, 0.635745,
		0.693257, 0.629187, -0.351452,
		24.680189, 35.030678, 34.915569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.698341, 34.825127, 35.665756>,  <24.194918, 34.590240, 35.161594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.698341, 34.825127, 35.665756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712523, 35.114353, 35.389809>,  <24.721031, 35.287888, 35.224239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712523, 35.114353, 35.389809>,  <24.698341, 34.825127, 35.665756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712523, 35.114353, 35.389809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220187, 0.678990, 0.700350,
		0.974813, 0.127072, 0.183280,
		0.035450, 0.723066, -0.689868,
		24.723158, 35.331272, 35.182850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.013933, 35.294880, 35.962704>,  <24.698341, 34.825127, 35.665756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.013933, 35.294880, 35.962704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744465, 35.446758, 35.709091>,  <24.582785, 35.537888, 35.556923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.744465, 35.446758, 35.709091>,  <25.013933, 35.294880, 35.962704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.744465, 35.446758, 35.709091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181761, 0.746444, 0.640144,
		0.716333, 0.546488, -0.433842,
		-0.673669, 0.379700, -0.634033,
		24.542364, 35.560669, 35.518883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.250275, 35.996098, 35.891666>,  <25.013933, 35.294880, 35.962704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.250275, 35.996098, 35.891666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856562, 35.928532, 35.871059>,  <24.620335, 35.887993, 35.858696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856562, 35.928532, 35.871059>,  <25.250275, 35.996098, 35.891666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856562, 35.928532, 35.871059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155872, 0.693839, 0.703058,
		-0.083011, 0.700039, -0.709263,
		-0.984283, -0.168916, -0.051520,
		24.561277, 35.877857, 35.855602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939678, 35.737606, 35.827873>,  <25.250275, 35.996098, 35.891666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939678, 35.737606, 35.827873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048319, 35.689625, 35.445911>,  <26.113504, 35.660835, 35.216736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048319, 35.689625, 35.445911>,  <25.939678, 35.737606, 35.827873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048319, 35.689625, 35.445911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014044, 0.992591, -0.120689,
		0.962307, 0.019368, 0.271275,
		0.271603, -0.119949, -0.954905,
		26.129799, 35.653641, 35.159439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551153, 36.063076, 35.659111>,  <25.939678, 35.737606, 35.827873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551153, 36.063076, 35.659111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265635, 36.047237, 35.379417>,  <26.094322, 36.037735, 35.211601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265635, 36.047237, 35.379417>,  <26.551153, 36.063076, 35.659111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265635, 36.047237, 35.379417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103683, 0.993373, 0.049591,
		0.692634, 0.107897, -0.713174,
		-0.713798, -0.039596, -0.699231,
		26.051495, 36.035358, 35.169647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719017, 36.563698, 35.079426>,  <26.551153, 36.063076, 35.659111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719017, 36.563698, 35.079426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340702, 36.488831, 35.185596>,  <26.113712, 36.443909, 35.249298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340702, 36.488831, 35.185596>,  <26.719017, 36.563698, 35.079426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340702, 36.488831, 35.185596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091764, 0.937942, 0.334430,
		-0.311555, 0.291942, -0.904270,
		-0.945787, -0.187173, 0.265430,
		26.056967, 36.432678, 35.265224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169237, 37.153992, 34.835190>,  <26.719017, 36.563698, 35.079426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169237, 37.153992, 34.835190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112837, 36.943554, 35.170650>,  <26.078997, 36.817291, 35.371929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112837, 36.943554, 35.170650>,  <26.169237, 37.153992, 34.835190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112837, 36.943554, 35.170650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033144, 0.849151, 0.527110,
		-0.989455, 0.046525, -0.137166,
		-0.140998, -0.526097, 0.838654,
		26.070538, 36.785725, 35.422245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550179, 37.447536, 35.106236>,  <26.169237, 37.153992, 34.835190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550179, 37.447536, 35.106236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752424, 37.271240, 35.402912>,  <25.873772, 37.165462, 35.580917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752424, 37.271240, 35.402912>,  <25.550179, 37.447536, 35.106236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752424, 37.271240, 35.402912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172390, 0.790726, 0.587396,
		-0.845361, -0.424856, 0.323824,
		0.505615, -0.440738, 0.741690,
		25.904108, 37.139019, 35.625420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146883, 37.563404, 35.691525>,  <25.550179, 37.447536, 35.106236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146883, 37.563404, 35.691525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514603, 37.478344, 35.823986>,  <25.735235, 37.427307, 35.903465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514603, 37.478344, 35.823986>,  <25.146883, 37.563404, 35.691525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514603, 37.478344, 35.823986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027142, 0.873703, 0.485701,
		-0.392618, -0.437517, 0.808968,
		0.919301, -0.212652, 0.331157,
		25.790394, 37.414547, 35.923332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163500, 37.684612, 36.416046>,  <25.146883, 37.563404, 35.691525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163500, 37.684612, 36.416046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556110, 37.705151, 36.342327>,  <25.791677, 37.717476, 36.298096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556110, 37.705151, 36.342327>,  <25.163500, 37.684612, 36.416046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556110, 37.705151, 36.342327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047275, 0.868342, 0.493708,
		0.185385, -0.493301, 0.849874,
		0.981528, 0.051348, -0.184299,
		25.850569, 37.720554, 36.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484344, 37.928967, 37.073509>,  <25.163500, 37.684612, 36.416046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484344, 37.928967, 37.073509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733395, 37.985527, 36.765656>,  <25.882824, 38.019463, 36.580944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.733395, 37.985527, 36.765656>,  <25.484344, 37.928967, 37.073509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733395, 37.985527, 36.765656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258270, 0.891292, 0.372686,
		0.738670, -0.430818, 0.518422,
		0.622626, 0.141400, -0.769639,
		25.920183, 38.027946, 36.534763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789721, 38.738937, 37.069412>,  <25.484344, 37.928967, 37.073509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789721, 38.738937, 37.069412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073946, 38.956150, 36.890430>,  <26.244480, 39.086479, 36.783039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073946, 38.956150, 36.890430>,  <25.789721, 38.738937, 37.069412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073946, 38.956150, 36.890430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217038, -0.774062, -0.594746,
		-0.669326, 0.325488, -0.667878,
		0.710562, 0.543033, -0.447456,
		26.287115, 39.119061, 36.756195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806923, 38.599609, 36.268883>,  <25.789721, 38.738937, 37.069412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806923, 38.599609, 36.268883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175550, 38.682400, 36.400261>,  <26.396727, 38.732075, 36.479088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175550, 38.682400, 36.400261>,  <25.806923, 38.599609, 36.268883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175550, 38.682400, 36.400261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309060, -0.903133, -0.298047,
		0.234937, 0.376179, -0.896267,
		0.921568, 0.206978, 0.328441,
		26.452021, 38.744492, 36.498795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265850, 38.717491, 35.696423>,  <25.806923, 38.599609, 36.268883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265850, 38.717491, 35.696423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349781, 38.546291, 36.048058>,  <26.400139, 38.443569, 36.259037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349781, 38.546291, 36.048058>,  <26.265850, 38.717491, 35.696423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349781, 38.546291, 36.048058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016266, -0.897446, -0.440825,
		0.977603, 0.106796, -0.181346,
		0.209826, -0.428002, 0.879083,
		26.412729, 38.417892, 36.311783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789207, 38.148006, 35.516724>,  <26.265850, 38.717491, 35.696423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789207, 38.148006, 35.516724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576834, 38.099255, 35.852165>,  <26.449409, 38.070004, 36.053429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576834, 38.099255, 35.852165>,  <26.789207, 38.148006, 35.516724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576834, 38.099255, 35.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208820, -0.940271, -0.268858,
		0.821282, -0.317864, 0.473771,
		-0.530934, -0.121875, 0.838604,
		26.417553, 38.062691, 36.103745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077852, 37.683487, 35.919006>,  <26.789207, 38.148006, 35.516724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077852, 37.683487, 35.919006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700140, 37.678707, 36.050575>,  <26.473513, 37.675838, 36.129517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700140, 37.678707, 36.050575>,  <27.077852, 37.683487, 35.919006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700140, 37.678707, 36.050575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053816, -0.980287, -0.190107,
		0.324706, -0.197216, 0.925025,
		-0.944283, -0.011948, 0.328918,
		26.416855, 37.675121, 36.149250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916166, 37.173485, 36.561741>,  <27.077852, 37.683487, 35.919006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916166, 37.173485, 36.561741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592810, 37.245758, 36.337650>,  <26.398796, 37.289124, 36.203194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592810, 37.245758, 36.337650>,  <26.916166, 37.173485, 36.561741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592810, 37.245758, 36.337650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119538, -0.982285, -0.144311,
		-0.576381, -0.049691, 0.815669,
		-0.808391, 0.180682, -0.560231,
		26.350292, 37.299961, 36.169582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422579, 36.692799, 36.665852>,  <26.916166, 37.173485, 36.561741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422579, 36.692799, 36.665852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315046, 36.829048, 36.305473>,  <26.250526, 36.910797, 36.089245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315046, 36.829048, 36.305473>,  <26.422579, 36.692799, 36.665852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315046, 36.829048, 36.305473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132622, -0.939560, -0.315654,
		-0.954014, 0.034629, 0.297755,
		-0.268827, 0.340628, -0.900946,
		26.234398, 36.931236, 36.035191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866783, 36.248337, 36.552032>,  <26.422579, 36.692799, 36.665852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866783, 36.248337, 36.552032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957487, 36.402020, 36.194046>,  <26.011909, 36.494228, 35.979256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957487, 36.402020, 36.194046>,  <25.866783, 36.248337, 36.552032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957487, 36.402020, 36.194046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267619, -0.858952, -0.436557,
		-0.936462, 0.338503, -0.091954,
		0.226760, 0.384210, -0.894965,
		26.025515, 36.517284, 35.925556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153887, 36.499058, 36.876396>,  <25.866783, 36.248337, 36.552032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153887, 36.499058, 36.876396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255907, 36.733131, 37.184296>,  <25.317120, 36.873573, 37.369034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255907, 36.733131, 37.184296>,  <25.153887, 36.499058, 36.876396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255907, 36.733131, 37.184296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723284, -0.412874, 0.553530,
		0.641724, -0.697925, 0.317947,
		0.255051, 0.585180, 0.769749,
		25.332422, 36.908684, 37.415222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760115, 36.236652, 37.283207>,  <25.153887, 36.499058, 36.876396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760115, 36.236652, 37.283207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113117, 36.325367, 37.449093>,  <26.324919, 36.378597, 37.548626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113117, 36.325367, 37.449093>,  <25.760115, 36.236652, 37.283207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113117, 36.325367, 37.449093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334783, -0.323070, 0.885182,
		0.330304, -0.920020, -0.210861,
		0.882508, 0.221787, 0.414718,
		26.377869, 36.391903, 37.573509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986994, 35.675014, 37.635647>,  <25.760115, 36.236652, 37.283207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986994, 35.675014, 37.635647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145641, 36.007820, 37.790798>,  <26.240829, 36.207504, 37.883888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145641, 36.007820, 37.790798>,  <25.986994, 35.675014, 37.635647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145641, 36.007820, 37.790798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341859, -0.258270, 0.903565,
		0.851954, -0.490971, 0.181995,
		0.396620, 0.832012, 0.387877,
		26.264627, 36.257423, 37.907162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345177, 35.474648, 38.212177>,  <25.986994, 35.675014, 37.635647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345177, 35.474648, 38.212177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271620, 35.864506, 38.263157>,  <26.227486, 36.098423, 38.293747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271620, 35.864506, 38.263157>,  <26.345177, 35.474648, 38.212177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271620, 35.864506, 38.263157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395163, -0.192029, 0.898316,
		0.900017, 0.114829, 0.420457,
		-0.183892, 0.974648, 0.127453,
		26.216452, 36.156898, 38.301392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608912, 35.687504, 38.795185>,  <26.345177, 35.474648, 38.212177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608912, 35.687504, 38.795185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315681, 35.953320, 38.737228>,  <26.139744, 36.112808, 38.702454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315681, 35.953320, 38.737228>,  <26.608912, 35.687504, 38.795185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315681, 35.953320, 38.737228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236565, -0.049389, 0.970360,
		0.637683, 0.745622, 0.193412,
		-0.733074, 0.664536, -0.144894,
		26.095758, 36.152679, 38.693760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639471, 36.174294, 39.347801>,  <26.608912, 35.687504, 38.795185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639471, 36.174294, 39.347801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277950, 36.244598, 39.191727>,  <26.061037, 36.286781, 39.098083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277950, 36.244598, 39.191727>,  <26.639471, 36.174294, 39.347801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277950, 36.244598, 39.191727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375185, 0.113143, 0.920019,
		0.205850, 0.977909, -0.036316,
		-0.903804, 0.175761, -0.390187,
		26.006809, 36.297325, 39.074669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008724, 35.444702, 39.582687>,  <26.639471, 36.174294, 39.347801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008724, 35.444702, 39.582687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393297, 35.532871, 39.516891>,  <27.624041, 35.585773, 39.477413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393297, 35.532871, 39.516891>,  <27.008724, 35.444702, 39.582687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393297, 35.532871, 39.516891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047736, 0.722728, 0.689482,
		0.270862, -0.655039, 0.705378,
		0.961434, 0.220426, -0.164491,
		27.681726, 35.598999, 39.467545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378271, 35.477875, 40.237339>,  <27.008724, 35.444702, 39.582687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378271, 35.477875, 40.237339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588156, 35.688446, 39.969742>,  <27.714087, 35.814789, 39.809185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588156, 35.688446, 39.969742>,  <27.378271, 35.477875, 40.237339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588156, 35.688446, 39.969742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213880, 0.679132, 0.702164,
		0.823973, -0.511518, 0.243757,
		0.524713, 0.526430, -0.668990,
		27.745569, 35.846375, 39.769043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056665, 35.699848, 40.658913>,  <27.378271, 35.477875, 40.237339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056665, 35.699848, 40.658913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994196, 35.952888, 40.355488>,  <27.956715, 36.104713, 40.173431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994196, 35.952888, 40.355488>,  <28.056665, 35.699848, 40.658913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994196, 35.952888, 40.355488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290370, 0.763459, 0.576902,
		0.944085, -0.130169, -0.302919,
		-0.156172, 0.632603, -0.758567,
		27.947344, 36.142670, 40.127918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651569, 36.131084, 40.598358>,  <28.056665, 35.699848, 40.658913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651569, 36.131084, 40.598358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338568, 36.315361, 40.430809>,  <28.150766, 36.425926, 40.330280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338568, 36.315361, 40.430809>,  <28.651569, 36.131084, 40.598358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338568, 36.315361, 40.430809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200658, 0.823420, 0.530770,
		0.589430, 0.331278, -0.736768,
		-0.782502, 0.460690, -0.418874,
		28.103817, 36.453568, 40.305145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857821, 36.761013, 40.231365>,  <28.651569, 36.131084, 40.598358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857821, 36.761013, 40.231365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484358, 36.770889, 40.374290>,  <28.260281, 36.776814, 40.460045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484358, 36.770889, 40.374290>,  <28.857821, 36.761013, 40.231365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484358, 36.770889, 40.374290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264319, 0.720715, 0.640863,
		-0.241700, 0.692792, -0.679426,
		-0.933658, 0.024689, 0.357315,
		28.204260, 36.778297, 40.481483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802038, 37.420864, 40.370552>,  <28.857821, 36.761013, 40.231365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802038, 37.420864, 40.370552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549183, 37.214035, 40.601387>,  <28.397469, 37.089935, 40.739887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549183, 37.214035, 40.601387>,  <28.802038, 37.420864, 40.370552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549183, 37.214035, 40.601387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241930, 0.575827, 0.780956,
		-0.736117, 0.633289, -0.238907,
		-0.632140, -0.517076, 0.577088,
		28.359541, 37.058910, 40.774513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366789, 37.903793, 40.759052>,  <28.802038, 37.420864, 40.370552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366789, 37.903793, 40.759052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376175, 37.557362, 40.958794>,  <28.381807, 37.349503, 41.078640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.376175, 37.557362, 40.958794>,  <28.366789, 37.903793, 40.759052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376175, 37.557362, 40.958794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263315, 0.487208, 0.832643,
		-0.964424, 0.111948, 0.239486,
		0.023467, -0.866081, 0.499352,
		28.383215, 37.297539, 41.108601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982304, 37.830635, 41.421722>,  <28.366789, 37.903793, 40.759052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982304, 37.830635, 41.421722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297697, 37.586880, 41.455051>,  <28.486933, 37.440628, 41.475048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297697, 37.586880, 41.455051>,  <27.982304, 37.830635, 41.421722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297697, 37.586880, 41.455051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360474, 0.567620, 0.740179,
		-0.498347, -0.553587, 0.667227,
		0.788485, -0.609384, 0.083318,
		28.534243, 37.404064, 41.480045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365969, 38.495171, 41.262562>,  <27.982304, 37.830635, 41.421722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365969, 38.495171, 41.262562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205761, 38.734562, 41.540096>,  <28.109636, 38.878197, 41.706615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205761, 38.734562, 41.540096>,  <28.365969, 38.495171, 41.262562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205761, 38.734562, 41.540096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864774, -0.497214, -0.070317,
		0.302902, -0.628175, 0.716692,
		-0.400520, 0.598477, 0.693836,
		28.085606, 38.914104, 41.748245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919127, 38.679920, 41.643890>,  <28.365969, 38.495171, 41.262562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919127, 38.679920, 41.643890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052288, 38.527969, 41.989113>,  <29.132185, 38.436798, 42.196247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052288, 38.527969, 41.989113>,  <28.919127, 38.679920, 41.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052288, 38.527969, 41.989113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224700, -0.920855, -0.318648,
		0.915798, -0.087849, -0.391915,
		0.332904, -0.379880, 0.863056,
		29.152159, 38.414005, 42.248032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478148, 38.147999, 41.525787>,  <28.919127, 38.679920, 41.643890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478148, 38.147999, 41.525787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251776, 38.087387, 41.849953>,  <29.115953, 38.051022, 42.044453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251776, 38.087387, 41.849953>,  <29.478148, 38.147999, 41.525787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251776, 38.087387, 41.849953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161327, -0.943609, -0.289095,
		0.808516, -0.294348, 0.509570,
		-0.565929, -0.151530, 0.810409,
		29.081997, 38.041927, 42.093075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686747, 37.505810, 41.847652>,  <29.478148, 38.147999, 41.525787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686747, 37.505810, 41.847652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299688, 37.588249, 41.905869>,  <29.067453, 37.637714, 41.940800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299688, 37.588249, 41.905869>,  <29.686747, 37.505810, 41.847652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299688, 37.588249, 41.905869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228730, -0.960050, -0.161201,
		0.106506, -0.189276, 0.976131,
		-0.967646, 0.206102, 0.145544,
		29.009394, 37.650078, 41.949532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450750, 36.900333, 41.965019>,  <29.686747, 37.505810, 41.847652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450750, 36.900333, 41.965019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107521, 37.100262, 41.917889>,  <28.901583, 37.220219, 41.889610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107521, 37.100262, 41.917889>,  <29.450750, 36.900333, 41.965019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107521, 37.100262, 41.917889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425484, -0.820465, -0.381839,
		-0.287527, -0.277512, 0.916687,
		-0.858074, 0.499825, -0.117829,
		28.850100, 37.250210, 41.882542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022163, 36.403431, 41.910637>,  <29.450750, 36.900333, 41.965019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022163, 36.403431, 41.910637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799253, 36.719200, 41.807671>,  <28.665508, 36.908661, 41.745892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799253, 36.719200, 41.807671>,  <29.022163, 36.403431, 41.910637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799253, 36.719200, 41.807671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532791, -0.577739, -0.618346,
		-0.636852, -0.207440, 0.742555,
		-0.557273, 0.789421, -0.257412,
		28.632071, 36.956028, 41.730446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397837, 36.180058, 41.808315>,  <29.022163, 36.403431, 41.910637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397837, 36.180058, 41.808315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361818, 36.527588, 41.613575>,  <28.340208, 36.736107, 41.496731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361818, 36.527588, 41.613575>,  <28.397837, 36.180058, 41.808315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361818, 36.527588, 41.613575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595723, -0.438733, -0.672776,
		-0.798126, 0.229450, 0.557088,
		-0.090044, 0.868830, -0.486853,
		28.334805, 36.788239, 41.467518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741592, 36.195541, 41.527401>,  <28.397837, 36.180058, 41.808315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741592, 36.195541, 41.527401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902447, 36.486336, 41.304771>,  <27.998959, 36.660812, 41.171192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902447, 36.486336, 41.304771>,  <27.741592, 36.195541, 41.527401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902447, 36.486336, 41.304771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534996, -0.306740, -0.787204,
		-0.743011, 0.614328, 0.265584,
		0.402136, 0.726988, -0.556574,
		28.023088, 36.704433, 41.137798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245190, 36.655048, 41.183487>,  <27.741592, 36.195541, 41.527401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245190, 36.655048, 41.183487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588228, 36.580189, 40.991863>,  <27.794052, 36.535271, 40.876888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.588228, 36.580189, 40.991863>,  <27.245190, 36.655048, 41.183487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588228, 36.580189, 40.991863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505721, -0.476469, -0.719182,
		-0.093663, 0.859041, -0.503265,
		0.857598, -0.187151, -0.479062,
		27.845507, 36.524044, 40.848145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107655, 36.924641, 40.546345>,  <27.245190, 36.655048, 41.183487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107655, 36.924641, 40.546345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487663, 36.999397, 40.446320>,  <27.715668, 37.044250, 40.386303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487663, 36.999397, 40.446320>,  <27.107655, 36.924641, 40.546345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487663, 36.999397, 40.446320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051029, -0.697271, -0.714989,
		-0.307991, 0.692015, -0.652884,
		0.950020, 0.186894, -0.250066,
		27.772669, 37.055466, 40.371300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172970, 36.973801, 39.787437>,  <27.107655, 36.924641, 40.546345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172970, 36.973801, 39.787437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541832, 36.882263, 39.912186>,  <27.763149, 36.827339, 39.987034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541832, 36.882263, 39.912186>,  <27.172970, 36.973801, 39.787437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541832, 36.882263, 39.912186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029688, -0.761979, -0.646921,
		0.385683, 0.605819, -0.695868,
		0.922153, -0.228847, 0.311868,
		27.818478, 36.813610, 40.005745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722267, 37.098824, 39.216648>,  <27.172970, 36.973801, 39.787437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722267, 37.098824, 39.216648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791601, 36.803791, 39.477703>,  <27.833202, 36.626770, 39.634335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.791601, 36.803791, 39.477703>,  <27.722267, 37.098824, 39.216648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791601, 36.803791, 39.477703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009165, -0.663844, -0.747815,
		0.984820, 0.123642, -0.121828,
		0.173336, -0.737580, 0.652633,
		27.843601, 36.582516, 39.673492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381100, 36.638481, 38.995377>,  <27.722267, 37.098824, 39.216648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381100, 36.638481, 38.995377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149458, 36.406437, 39.224503>,  <28.010473, 36.267212, 39.361977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149458, 36.406437, 39.224503>,  <28.381100, 36.638481, 38.995377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149458, 36.406437, 39.224503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117539, -0.754690, -0.645467,
		0.806738, -0.306463, 0.505227,
		-0.579102, -0.580106, 0.572816,
		27.975727, 36.232407, 39.396347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613840, 35.971336, 38.945694>,  <28.381100, 36.638481, 38.995377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613840, 35.971336, 38.945694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241056, 35.901619, 39.072861>,  <28.017385, 35.859787, 39.149162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.241056, 35.901619, 39.072861>,  <28.613840, 35.971336, 38.945694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.241056, 35.901619, 39.072861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097580, -0.723926, -0.682942,
		0.349181, -0.667497, 0.657663,
		-0.931961, -0.174295, 0.317916,
		27.961468, 35.849331, 39.168236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535730, 35.282627, 39.064724>,  <28.613840, 35.971336, 38.945694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535730, 35.282627, 39.064724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161200, 35.392414, 38.977127>,  <27.936481, 35.458286, 38.924568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161200, 35.392414, 38.977127>,  <28.535730, 35.282627, 39.064724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161200, 35.392414, 38.977127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123902, -0.841834, -0.525323,
		-0.328537, -0.464741, 0.822240,
		-0.936329, 0.274466, -0.218991,
		27.880301, 35.474754, 38.911430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002878, 34.772118, 39.157829>,  <28.535730, 35.282627, 39.064724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002878, 34.772118, 39.157829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820164, 35.009083, 38.892380>,  <27.710535, 35.151260, 38.733109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820164, 35.009083, 38.892380>,  <28.002878, 34.772118, 39.157829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820164, 35.009083, 38.892380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362395, -0.805214, -0.469361,
		-0.812409, 0.026090, 0.582505,
		-0.456795, 0.592410, -0.663618,
		27.683128, 35.186806, 38.693291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329311, 34.095901, 39.009171>,  <28.002878, 34.772118, 39.157829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329311, 34.095901, 39.009171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107168, 34.278065, 38.730839>,  <27.973883, 34.387363, 38.563839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107168, 34.278065, 38.730839>,  <28.329311, 34.095901, 39.009171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107168, 34.278065, 38.730839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723309, -0.148366, -0.674397,
		-0.410364, -0.877832, -0.247006,
		-0.555360, 0.455410, -0.695828,
		27.940559, 34.414688, 38.522091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003984, 33.806202, 39.098511>,  <28.329311, 34.095901, 39.009171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003984, 33.806202, 39.098511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923248, 33.842186, 39.488621>,  <28.874807, 33.863777, 39.722687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923248, 33.842186, 39.488621>,  <29.003984, 33.806202, 39.098511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923248, 33.842186, 39.488621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372328, -0.928062, 0.008552,
		0.905888, -0.361397, 0.220815,
		-0.201839, 0.089963, 0.975278,
		28.862696, 33.869175, 39.781204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248934, 34.431614, 39.396912>,  <29.003984, 33.806202, 39.098511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248934, 34.431614, 39.396912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570345, 34.271992, 39.220230>,  <29.763191, 34.176220, 39.114223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570345, 34.271992, 39.220230>,  <29.248934, 34.431614, 39.396912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570345, 34.271992, 39.220230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569310, -0.731909, -0.374427,
		-0.173869, 0.552328, -0.815294,
		0.803527, -0.399053, -0.441702,
		29.811403, 34.152275, 39.087719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174942, 34.440212, 38.624104>,  <29.248934, 34.431614, 39.396912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174942, 34.440212, 38.624104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397219, 34.131802, 38.748505>,  <29.530584, 33.946754, 38.823143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397219, 34.131802, 38.748505>,  <29.174942, 34.440212, 38.624104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397219, 34.131802, 38.748505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608474, -0.632080, -0.479827,
		0.566537, 0.077401, -0.820393,
		0.555693, -0.771028, 0.311001,
		29.563927, 33.900494, 38.841805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335842, 33.865185, 38.039490>,  <29.174942, 34.440212, 38.624104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335842, 33.865185, 38.039490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321360, 33.701488, 38.404171>,  <29.312670, 33.603271, 38.622982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321360, 33.701488, 38.404171>,  <29.335842, 33.865185, 38.039490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321360, 33.701488, 38.404171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432648, -0.815958, -0.383442,
		0.900835, -0.408331, -0.147516,
		-0.036205, -0.409241, 0.911708,
		29.310497, 33.578716, 38.677685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494421, 33.230049, 37.990612>,  <29.335842, 33.865185, 38.039490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494421, 33.230049, 37.990612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295612, 33.233925, 38.337685>,  <29.176327, 33.236248, 38.545929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295612, 33.233925, 38.337685>,  <29.494421, 33.230049, 37.990612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295612, 33.233925, 38.337685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540525, -0.785700, -0.300847,
		0.678826, -0.618532, 0.395744,
		-0.497019, 0.009686, 0.867686,
		29.146507, 33.236832, 38.597992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387363, 32.496044, 38.090210>,  <29.494421, 33.230049, 37.990612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387363, 32.496044, 38.090210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116547, 32.672874, 38.325558>,  <28.954058, 32.778973, 38.466766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116547, 32.672874, 38.325558>,  <29.387363, 32.496044, 38.090210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116547, 32.672874, 38.325558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678607, -0.684392, -0.266648,
		0.284797, -0.579805, 0.763359,
		-0.677040, 0.442080, 0.588372,
		28.913435, 32.805500, 38.502068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011536, 32.781525, 38.187771>,  <29.387363, 32.496044, 38.090210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011536, 32.781525, 38.187771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237484, 32.997299, 38.437546>,  <30.373053, 33.126762, 38.587410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237484, 32.997299, 38.437546>,  <30.011536, 32.781525, 38.187771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237484, 32.997299, 38.437546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820975, -0.443666, -0.359388,
		0.083177, 0.715660, -0.693478,
		0.564873, 0.539436, 0.624442,
		30.406946, 33.159130, 38.624878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464817, 33.198166, 37.825623>,  <30.011536, 32.781525, 38.187771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464817, 33.198166, 37.825623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625664, 33.040573, 38.156219>,  <30.722172, 32.946018, 38.354576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625664, 33.040573, 38.156219>,  <30.464817, 33.198166, 37.825623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625664, 33.040573, 38.156219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728739, -0.408765, -0.549409,
		0.554295, 0.823221, 0.122736,
		0.402115, -0.393978, 0.826490,
		30.746298, 32.922379, 38.404167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208702, 33.444427, 37.901600>,  <30.464817, 33.198166, 37.825623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208702, 33.444427, 37.901600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135263, 33.108761, 38.106380>,  <31.091200, 32.907360, 38.229248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135263, 33.108761, 38.106380>,  <31.208702, 33.444427, 37.901600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135263, 33.108761, 38.106380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780080, -0.441278, -0.443565,
		0.598138, 0.317930, 0.735630,
		-0.183595, -0.839163, 0.511956,
		31.080185, 32.857014, 38.259968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857004, 33.175140, 37.983959>,  <31.208702, 33.444427, 37.901600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857004, 33.175140, 37.983959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622446, 32.868828, 38.089573>,  <31.481710, 32.685040, 38.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622446, 32.868828, 38.089573>,  <31.857004, 33.175140, 37.983959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622446, 32.868828, 38.089573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720020, -0.642102, -0.263206,
		0.371094, 0.035765, 0.927906,
		-0.586397, -0.765785, 0.264031,
		31.446527, 32.639091, 38.168781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140480, 32.553082, 38.397728>,  <31.857004, 33.175140, 37.983959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140480, 32.553082, 38.397728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872347, 32.449627, 38.119518>,  <31.711466, 32.387554, 37.952591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872347, 32.449627, 38.119518>,  <32.140480, 32.553082, 38.397728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872347, 32.449627, 38.119518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633346, -0.687827, -0.354637,
		-0.386682, -0.678235, 0.624879,
		-0.670336, -0.258633, -0.695528,
		31.671246, 32.372036, 37.910858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213158, 31.738354, 38.425701>,  <32.140480, 32.553082, 38.397728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213158, 31.738354, 38.425701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480835, 31.590952, 38.683811>,  <32.641441, 31.502510, 38.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480835, 31.590952, 38.683811>,  <32.213158, 31.738354, 38.425701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480835, 31.590952, 38.683811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591249, -0.261960, -0.762759,
		0.450117, 0.891954, 0.042576,
		0.669193, -0.368504, 0.645279,
		32.681591, 31.480400, 38.877396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864384, 31.961445, 38.301773>,  <32.213158, 31.738354, 38.425701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864384, 31.961445, 38.301773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883659, 31.596115, 38.463524>,  <32.895226, 31.376917, 38.560574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883659, 31.596115, 38.463524>,  <32.864384, 31.961445, 38.301773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883659, 31.596115, 38.463524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621934, -0.289354, -0.727648,
		0.781585, 0.286558, 0.554084,
		0.048187, -0.913323, 0.404375,
		32.898117, 31.322119, 38.584835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584957, 31.739765, 38.453945>,  <32.864384, 31.961445, 38.301773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584957, 31.739765, 38.453945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324997, 31.459078, 38.337177>,  <33.169022, 31.290665, 38.267117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324997, 31.459078, 38.337177>,  <33.584957, 31.739765, 38.453945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324997, 31.459078, 38.337177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523160, -0.134425, -0.841566,
		0.551301, -0.699657, 0.454474,
		-0.649901, -0.701719, -0.291924,
		33.130028, 31.248562, 38.249599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819389, 31.077459, 38.292465>,  <33.584957, 31.739765, 38.453945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819389, 31.077459, 38.292465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487339, 31.113016, 38.072289>,  <33.288109, 31.134350, 37.940182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487339, 31.113016, 38.072289>,  <33.819389, 31.077459, 38.292465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487339, 31.113016, 38.072289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536648, -0.140567, -0.832015,
		-0.151348, -0.986071, 0.068975,
		-0.830122, 0.088908, -0.550448,
		33.238300, 31.139683, 37.907154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922588, 30.501696, 37.742523>,  <33.819389, 31.077459, 38.292465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922588, 30.501696, 37.742523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655769, 30.781750, 37.640659>,  <33.495678, 30.949783, 37.579540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655769, 30.781750, 37.640659>,  <33.922588, 30.501696, 37.742523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655769, 30.781750, 37.640659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399617, 0.047763, -0.915437,
		-0.628767, -0.712410, -0.311647,
		-0.667052, 0.700136, -0.254660,
		33.455654, 30.991791, 37.564262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666786, 30.170912, 37.135628>,  <33.922588, 30.501696, 37.742523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666786, 30.170912, 37.135628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631012, 30.567589, 37.172607>,  <33.609547, 30.805595, 37.194798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631012, 30.567589, 37.172607>,  <33.666786, 30.170912, 37.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631012, 30.567589, 37.172607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452461, 0.123145, -0.883241,
		-0.887288, -0.037161, -0.459716,
		-0.089434, 0.991693, 0.092452,
		33.604183, 30.865097, 37.200344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142021, 30.481001, 36.570770>,  <33.666786, 30.170912, 37.135628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142021, 30.481001, 36.570770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406456, 30.758827, 36.684296>,  <33.565117, 30.925524, 36.752411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406456, 30.758827, 36.684296>,  <33.142021, 30.481001, 36.570770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406456, 30.758827, 36.684296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295755, 0.106409, -0.949319,
		-0.689564, 0.711516, -0.135077,
		0.661082, 0.694566, 0.283810,
		33.604782, 30.967197, 36.769440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191208, 31.042658, 36.037376>,  <33.142021, 30.481001, 36.570770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191208, 31.042658, 36.037376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512665, 31.145023, 36.252289>,  <33.705540, 31.206442, 36.381237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512665, 31.145023, 36.252289>,  <33.191208, 31.042658, 36.037376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512665, 31.145023, 36.252289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492125, 0.221870, -0.841776,
		-0.334627, 0.940895, 0.052363,
		0.803640, 0.255912, 0.537281,
		33.753757, 31.221796, 36.413475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369926, 31.607246, 35.796211>,  <33.191208, 31.042658, 36.037376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369926, 31.607246, 35.796211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703079, 31.472267, 35.971684>,  <33.902969, 31.391279, 36.076965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703079, 31.472267, 35.971684>,  <33.369926, 31.607246, 35.796211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703079, 31.472267, 35.971684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524719, 0.229364, -0.819794,
		0.176022, 0.912973, 0.368099,
		0.832878, -0.337450, 0.438681,
		33.952942, 31.371033, 36.103287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881161, 32.042416, 35.555965>,  <33.369926, 31.607246, 35.796211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881161, 32.042416, 35.555965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091030, 31.732452, 35.696953>,  <34.216953, 31.546474, 35.781544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091030, 31.732452, 35.696953>,  <33.881161, 32.042416, 35.555965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091030, 31.732452, 35.696953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594886, 0.037571, -0.802931,
		0.608957, 0.630954, 0.480696,
		0.524673, -0.774910, 0.352467,
		34.248432, 31.499979, 35.802692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471989, 32.220284, 35.228687>,  <33.881161, 32.042416, 35.555965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471989, 32.220284, 35.228687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552155, 31.842245, 35.331936>,  <34.600254, 31.615421, 35.393887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552155, 31.842245, 35.331936>,  <34.471989, 32.220284, 35.228687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552155, 31.842245, 35.331936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537534, -0.114198, -0.835474,
		0.819080, 0.306192, 0.485134,
		0.200414, -0.945096, 0.258126,
		34.612278, 31.558716, 35.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251942, 32.187019, 35.199024>,  <34.471989, 32.220284, 35.228687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251942, 32.187019, 35.199024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072113, 31.831099, 35.167713>,  <34.964214, 31.617546, 35.148926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072113, 31.831099, 35.167713>,  <35.251942, 32.187019, 35.199024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072113, 31.831099, 35.167713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578815, -0.223457, -0.784245,
		0.680335, -0.397885, 0.615494,
		-0.449576, -0.889806, -0.078276,
		34.937241, 31.564157, 35.144230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711609, 31.777355, 35.096573>,  <35.251942, 32.187019, 35.199024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711609, 31.777355, 35.096573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413044, 31.565273, 34.935703>,  <35.233906, 31.438025, 34.839180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413044, 31.565273, 34.935703>,  <35.711609, 31.777355, 35.096573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413044, 31.565273, 34.935703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613392, -0.313759, -0.724780,
		0.258097, -0.787678, 0.559419,
		-0.746415, -0.530207, -0.402175,
		35.189117, 31.406212, 34.815052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981186, 31.171066, 35.019859>,  <35.711609, 31.777355, 35.096573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981186, 31.171066, 35.019859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691528, 31.205929, 34.746212>,  <35.517735, 31.226847, 34.582024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691528, 31.205929, 34.746212>,  <35.981186, 31.171066, 35.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691528, 31.205929, 34.746212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597053, -0.417256, -0.685146,
		-0.345167, -0.904600, 0.250117,
		-0.724146, 0.087156, -0.684117,
		35.474285, 31.232077, 34.540977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846096, 30.525236, 34.678452>,  <35.981186, 31.171066, 35.019859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846096, 30.525236, 34.678452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712467, 30.802059, 34.422497>,  <35.632290, 30.968153, 34.268925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712467, 30.802059, 34.422497>,  <35.846096, 30.525236, 34.678452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712467, 30.802059, 34.422497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636486, -0.335079, -0.694699,
		-0.695183, -0.639360, -0.328542,
		-0.334075, 0.692055, -0.639885,
		35.612244, 31.009676, 34.230530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048538, 30.314505, 33.936924>,  <35.846096, 30.525236, 34.678452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048538, 30.314505, 33.936924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891808, 30.671795, 33.848724>,  <35.797768, 30.886169, 33.795807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891808, 30.671795, 33.848724>,  <36.048538, 30.314505, 33.936924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891808, 30.671795, 33.848724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326329, -0.089151, -0.941043,
		-0.860222, -0.440679, -0.256554,
		-0.391825, 0.893227, -0.220496,
		35.774261, 30.939762, 33.782574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542282, 30.193985, 33.464844>,  <36.048538, 30.314505, 33.936924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542282, 30.193985, 33.464844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698597, 30.559910, 33.424053>,  <35.792385, 30.779465, 33.399578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698597, 30.559910, 33.424053>,  <35.542282, 30.193985, 33.464844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698597, 30.559910, 33.424053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359420, -0.253640, -0.898045,
		-0.847408, 0.314296, -0.427922,
		0.390790, 0.914814, -0.101972,
		35.815834, 30.834354, 33.393463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639957, 30.107878, 32.758308>,  <35.542282, 30.193985, 33.464844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639957, 30.107878, 32.758308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800034, 30.462345, 32.851734>,  <35.896080, 30.675026, 32.907791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800034, 30.462345, 32.851734>,  <35.639957, 30.107878, 32.758308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800034, 30.462345, 32.851734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401160, 0.059754, -0.914057,
		-0.823964, 0.459497, -0.331581,
		0.400193, 0.886167, 0.233567,
		35.920090, 30.728195, 32.921803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384048, 30.715658, 32.262741>,  <35.639957, 30.107878, 32.758308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384048, 30.715658, 32.262741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733349, 30.817369, 32.429008>,  <35.942928, 30.878397, 32.528767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733349, 30.817369, 32.429008>,  <35.384048, 30.715658, 32.262741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733349, 30.817369, 32.429008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351063, 0.263264, -0.898580,
		-0.337920, 0.930610, 0.140627,
		0.873250, 0.254279, 0.415665,
		35.995323, 30.893654, 32.553707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627640, 31.512817, 32.278172>,  <35.384048, 30.715658, 32.262741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627640, 31.512817, 32.278172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943184, 31.267344, 32.291370>,  <36.132511, 31.120060, 32.299290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943184, 31.267344, 32.291370>,  <35.627640, 31.512817, 32.278172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943184, 31.267344, 32.291370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273984, 0.303122, -0.912715,
		0.550119, 0.729046, 0.407261,
		0.788861, -0.613685, 0.032994,
		36.179844, 31.083239, 32.301270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134769, 31.923388, 32.036709>,  <35.627640, 31.512817, 32.278172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134769, 31.923388, 32.036709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271355, 31.549883, 31.993826>,  <36.353306, 31.325781, 31.968096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271355, 31.549883, 31.993826>,  <36.134769, 31.923388, 32.036709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271355, 31.549883, 31.993826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267326, 0.205836, -0.941365,
		0.901076, 0.292784, 0.319904,
		0.341465, -0.933761, -0.107206,
		36.373795, 31.269754, 31.961664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834263, 31.958256, 31.673954>,  <36.134769, 31.923388, 32.036709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834263, 31.958256, 31.673954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707188, 31.585426, 31.604317>,  <36.630943, 31.361729, 31.562534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707188, 31.585426, 31.604317>,  <36.834263, 31.958256, 31.673954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707188, 31.585426, 31.604317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153433, 0.130654, -0.979483,
		0.935699, -0.337883, 0.101504,
		-0.317689, -0.932075, -0.174095,
		36.611881, 31.305803, 31.552088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283264, 31.604357, 31.166166>,  <36.834263, 31.958256, 31.673954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283264, 31.604357, 31.166166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917538, 31.443953, 31.143459>,  <36.698101, 31.347710, 31.129835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917538, 31.443953, 31.143459>,  <37.283264, 31.604357, 31.166166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917538, 31.443953, 31.143459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082302, -0.046721, -0.995512,
		0.396560, -0.914881, 0.075721,
		-0.914312, -0.401012, -0.056769,
		36.643246, 31.323648, 31.126429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379230, 31.149168, 30.616282>,  <37.283264, 31.604357, 31.166166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379230, 31.149168, 30.616282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983448, 31.187670, 30.659575>,  <36.745979, 31.210772, 30.685551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983448, 31.187670, 30.659575>,  <37.379230, 31.149168, 30.616282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983448, 31.187670, 30.659575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099799, 0.088506, -0.991063,
		-0.104977, -0.991414, -0.077967,
		-0.989455, 0.096258, 0.108233,
		36.686611, 31.216547, 30.692045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156170, 30.678522, 30.174423>,  <37.379230, 31.149168, 30.616282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156170, 30.678522, 30.174423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847813, 30.925539, 30.236870>,  <36.662800, 31.073750, 30.274338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847813, 30.925539, 30.236870>,  <37.156170, 30.678522, 30.174423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847813, 30.925539, 30.236870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204326, -0.007602, -0.978873,
		-0.603307, -0.786502, 0.132040,
		-0.770890, 0.617540, 0.156116,
		36.616547, 31.110802, 30.283705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522118, 30.444269, 29.857412>,  <37.156170, 30.678522, 30.174423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522118, 30.444269, 29.857412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408760, 30.826456, 29.890316>,  <36.340744, 31.055769, 29.910057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408760, 30.826456, 29.890316>,  <36.522118, 30.444269, 29.857412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408760, 30.826456, 29.890316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318815, -0.012970, -0.947728,
		-0.904459, -0.294805, 0.308294,
		-0.283393, 0.955470, 0.082257,
		36.323742, 31.113096, 29.914993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902309, 30.480747, 29.477600>,  <36.522118, 30.444269, 29.857412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902309, 30.480747, 29.477600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010998, 30.863735, 29.516409>,  <36.076210, 31.093529, 29.539694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010998, 30.863735, 29.516409>,  <35.902309, 30.480747, 29.477600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010998, 30.863735, 29.516409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394314, 0.202730, -0.896335,
		-0.877885, 0.205299, 0.432631,
		0.271724, 0.957472, 0.097021,
		36.092514, 31.150976, 29.545515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368816, 30.802961, 29.046415>,  <35.902309, 30.480747, 29.477600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368816, 30.802961, 29.046415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619762, 31.100935, 29.137178>,  <35.770329, 31.279720, 29.191637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619762, 31.100935, 29.137178>,  <35.368816, 30.802961, 29.046415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619762, 31.100935, 29.137178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347137, 0.528357, -0.774813,
		-0.697073, 0.407321, 0.590066,
		0.627363, 0.744935, 0.226907,
		35.807972, 31.324415, 29.205250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979031, 31.419022, 28.899357>,  <35.368816, 30.802961, 29.046415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979031, 31.419022, 28.899357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355797, 31.546650, 28.857426>,  <35.581856, 31.623226, 28.832268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355797, 31.546650, 28.857426>,  <34.979031, 31.419022, 28.899357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355797, 31.546650, 28.857426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191749, 0.254659, -0.947830,
		-0.275729, 0.912876, 0.301049,
		0.941916, 0.319070, -0.104826,
		35.638371, 31.642370, 28.825977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992283, 32.149673, 28.574816>,  <34.979031, 31.419022, 28.899357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992283, 32.149673, 28.574816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349354, 31.976425, 28.524969>,  <35.563595, 31.872475, 28.495060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349354, 31.976425, 28.524969>,  <34.992283, 32.149673, 28.574816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349354, 31.976425, 28.524969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016186, 0.307132, -0.951529,
		0.450405, 0.847392, 0.281180,
		0.892678, -0.433124, -0.124618,
		35.617157, 31.846487, 28.487583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336754, 32.674088, 28.295420>,  <34.992283, 32.149673, 28.574816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336754, 32.674088, 28.295420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559231, 32.353127, 28.208885>,  <35.692715, 32.160549, 28.156965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559231, 32.353127, 28.208885>,  <35.336754, 32.674088, 28.295420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559231, 32.353127, 28.208885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082814, 0.205505, -0.975146,
		0.826918, 0.560282, 0.047850,
		0.556191, -0.802403, -0.216335,
		35.726089, 32.112404, 28.143984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008568, 32.947918, 27.851446>,  <35.336754, 32.674088, 28.295420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008568, 32.947918, 27.851446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950211, 32.560249, 27.772028>,  <35.915195, 32.327648, 27.724377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950211, 32.560249, 27.772028>,  <36.008568, 32.947918, 27.851446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950211, 32.560249, 27.772028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054400, 0.208249, -0.976562,
		0.987803, -0.131675, -0.083106,
		-0.145895, -0.969172, -0.198546,
		35.906441, 32.269497, 27.712463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489117, 32.696484, 27.300360>,  <36.008568, 32.947918, 27.851446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489117, 32.696484, 27.300360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180202, 32.444283, 27.269253>,  <35.994854, 32.292961, 27.250589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180202, 32.444283, 27.269253>,  <36.489117, 32.696484, 27.300360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180202, 32.444283, 27.269253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015263, 0.140793, -0.989921,
		0.635093, -0.763314, -0.118356,
		-0.772284, -0.630499, -0.077766,
		35.948517, 32.255135, 27.245922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742935, 32.122643, 26.901289>,  <36.489117, 32.696484, 27.300360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742935, 32.122643, 26.901289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345852, 32.124027, 26.853090>,  <36.107601, 32.124859, 26.824171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345852, 32.124027, 26.853090>,  <36.742935, 32.122643, 26.901289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345852, 32.124027, 26.853090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119967, -0.069679, -0.990330,
		-0.011820, -0.997563, 0.068756,
		-0.992707, 0.003458, -0.120499,
		36.048038, 32.125065, 26.816940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678551, 31.774355, 26.273989>,  <36.742935, 32.122643, 26.901289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678551, 31.774355, 26.273989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327000, 31.962952, 26.303032>,  <36.116070, 32.076111, 26.320457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327000, 31.962952, 26.303032>,  <36.678551, 31.774355, 26.273989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327000, 31.962952, 26.303032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020718, 0.189782, -0.981608,
		-0.476600, -0.861207, -0.176563,
		-0.878876, 0.471492, 0.072608,
		36.063335, 32.104401, 26.324814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425011, 31.570778, 25.654444>,  <36.678551, 31.774355, 26.273989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425011, 31.570778, 25.654444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191597, 31.867176, 25.787361>,  <36.051548, 32.045013, 25.867111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191597, 31.867176, 25.787361>,  <36.425011, 31.570778, 25.654444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191597, 31.867176, 25.787361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081082, 0.353976, -0.931733,
		-0.808033, -0.570639, -0.146475,
		-0.583531, 0.740994, 0.332293,
		36.016537, 32.089474, 25.887049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856838, 31.620865, 25.219027>,  <36.425011, 31.570778, 25.654444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856838, 31.620865, 25.219027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891193, 31.979683, 25.392431>,  <35.911808, 32.194973, 25.496473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891193, 31.979683, 25.392431>,  <35.856838, 31.620865, 25.219027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891193, 31.979683, 25.392431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140573, 0.419853, -0.896640,
		-0.986338, 0.137953, -0.090039,
		0.085891, 0.897047, 0.433509,
		35.916962, 32.248798, 25.522484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424763, 32.092541, 24.781086>,  <35.856838, 31.620865, 25.219027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424763, 32.092541, 24.781086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698906, 32.304405, 24.980980>,  <35.863392, 32.431526, 25.100916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698906, 32.304405, 24.980980>,  <35.424763, 32.092541, 24.781086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698906, 32.304405, 24.980980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313623, 0.404657, -0.859007,
		-0.657206, 0.745459, 0.111222,
		0.685361, 0.529663, 0.499737,
		35.904514, 32.463303, 25.130901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450500, 32.648167, 24.375399>,  <35.424763, 32.092541, 24.781086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450500, 32.648167, 24.375399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785660, 32.675644, 24.591991>,  <35.986755, 32.692131, 24.721947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785660, 32.675644, 24.591991>,  <35.450500, 32.648167, 24.375399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785660, 32.675644, 24.591991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489318, 0.345037, -0.800948,
		-0.241850, 0.936072, 0.255494,
		0.837900, 0.068692, 0.541484,
		36.037029, 32.696251, 24.754436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747673, 33.293106, 24.233547>,  <35.450500, 32.648167, 24.375399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747673, 33.293106, 24.233547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057175, 33.078487, 24.368254>,  <36.242878, 32.949715, 24.449078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057175, 33.078487, 24.368254>,  <35.747673, 33.293106, 24.233547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057175, 33.078487, 24.368254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560484, 0.332100, -0.758661,
		0.295221, 0.775772, 0.557694,
		0.773758, -0.536551, 0.336765,
		36.289303, 32.917522, 24.469284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283173, 33.765858, 24.360392>,  <35.747673, 33.293106, 24.233547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283173, 33.765858, 24.360392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452301, 33.406380, 24.313797>,  <36.553780, 33.190693, 24.285839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452301, 33.406380, 24.313797>,  <36.283173, 33.765858, 24.360392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452301, 33.406380, 24.313797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626795, 0.382864, -0.678633,
		0.654482, 0.213929, 0.725181,
		0.422825, -0.898693, -0.116488,
		36.579147, 33.136772, 24.278851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924454, 33.938671, 24.397879>,  <36.283173, 33.765858, 24.360392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924454, 33.938671, 24.397879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967361, 33.581432, 24.223122>,  <36.993107, 33.367088, 24.118267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967361, 33.581432, 24.223122>,  <36.924454, 33.938671, 24.397879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967361, 33.581432, 24.223122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674770, 0.388128, -0.627728,
		0.730191, -0.227465, 0.644268,
		0.107273, -0.893094, -0.436894,
		36.999542, 33.313503, 24.092054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602280, 33.895054, 24.275681>,  <36.924454, 33.938671, 24.397879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602280, 33.895054, 24.275681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415264, 33.634087, 24.037098>,  <37.303055, 33.477505, 23.893950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415264, 33.634087, 24.037098>,  <37.602280, 33.895054, 24.275681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415264, 33.634087, 24.037098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547849, 0.315676, -0.774732,
		0.693735, -0.688985, 0.209835,
		-0.467539, -0.652417, -0.596455,
		37.275002, 33.438362, 23.858162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047066, 33.487915, 23.910801>,  <37.602280, 33.895054, 24.275681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047066, 33.487915, 23.910801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719452, 33.493649, 23.681377>,  <37.522884, 33.497089, 23.543724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719452, 33.493649, 23.681377>,  <38.047066, 33.487915, 23.910801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719452, 33.493649, 23.681377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536388, 0.373934, -0.756612,
		0.203625, -0.927344, -0.313958,
		-0.819039, 0.014338, -0.573558,
		37.473740, 33.497952, 23.509310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289257, 33.404644, 23.298723>,  <38.047066, 33.487915, 23.910801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289257, 33.404644, 23.298723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933731, 33.545513, 23.181431>,  <37.720417, 33.630035, 23.111055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933731, 33.545513, 23.181431>,  <38.289257, 33.404644, 23.298723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933731, 33.545513, 23.181431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433659, 0.439497, -0.786627,
		-0.148158, -0.826326, -0.543355,
		-0.888813, 0.352176, -0.293229,
		37.667088, 33.651165, 23.093462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409000, 33.400043, 22.574780>,  <38.289257, 33.404644, 23.298723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409000, 33.400043, 22.574780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068409, 33.607220, 22.607576>,  <37.864056, 33.731525, 22.627254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068409, 33.607220, 22.607576>,  <38.409000, 33.400043, 22.574780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068409, 33.607220, 22.607576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271385, 0.569032, -0.776242,
		-0.448704, -0.638702, -0.625080,
		-0.851478, 0.517940, 0.081992,
		37.812965, 33.762600, 22.632174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111843, 33.412018, 21.917454>,  <38.409000, 33.400043, 22.574780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111843, 33.412018, 21.917454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940273, 33.721798, 22.103468>,  <37.837334, 33.907665, 22.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940273, 33.721798, 22.103468>,  <38.111843, 33.412018, 21.917454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940273, 33.721798, 22.103468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302256, 0.608159, -0.734019,
		-0.851275, -0.174276, -0.494934,
		-0.428921, 0.774448, 0.465035,
		37.811596, 33.954132, 22.242979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625435, 33.780422, 21.376263>,  <38.111843, 33.412018, 21.917454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625435, 33.780422, 21.376263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709381, 34.017422, 21.687365>,  <37.759750, 34.159622, 21.874025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709381, 34.017422, 21.687365>,  <37.625435, 33.780422, 21.376263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709381, 34.017422, 21.687365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286928, 0.723122, -0.628305,
		-0.934681, 0.355019, -0.018247,
		0.209865, 0.592501, 0.777753,
		37.772339, 34.195171, 21.920691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315399, 34.533016, 21.178511>,  <37.625435, 33.780422, 21.376263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315399, 34.533016, 21.178511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607784, 34.536633, 21.451454>,  <37.783215, 34.538803, 21.615219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607784, 34.536633, 21.451454>,  <37.315399, 34.533016, 21.178511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607784, 34.536633, 21.451454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362433, 0.842093, -0.399401,
		-0.578218, 0.539256, 0.612264,
		0.730963, 0.009036, 0.682357,
		37.827072, 34.539345, 21.656162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465145, 35.121372, 21.290693>,  <37.315399, 34.533016, 21.178511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465145, 35.121372, 21.290693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797760, 35.016590, 21.486624>,  <37.997330, 34.953720, 21.604181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797760, 35.016590, 21.486624>,  <37.465145, 35.121372, 21.290693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797760, 35.016590, 21.486624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367322, 0.920803, -0.131135,
		-0.416683, 0.288967, 0.861901,
		0.831535, -0.261954, 0.489827,
		38.047222, 34.938004, 21.633572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187630, 35.675644, 21.716013>,  <37.465145, 35.121372, 21.290693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187630, 35.675644, 21.716013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140503, 36.065685, 21.791149>,  <37.112228, 36.299713, 21.836231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140503, 36.065685, 21.791149>,  <37.187630, 35.675644, 21.716013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140503, 36.065685, 21.791149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157214, 0.205088, -0.966035,
		-0.980512, -0.084281, -0.177462,
		-0.117813, 0.975108, 0.187841,
		37.105160, 36.358219, 21.847502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700066, 35.978985, 21.132238>,  <37.187630, 35.675644, 21.716013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700066, 35.978985, 21.132238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908325, 36.277348, 21.298393>,  <37.033283, 36.456364, 21.398087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908325, 36.277348, 21.298393>,  <36.700066, 35.978985, 21.132238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908325, 36.277348, 21.298393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170397, 0.385962, -0.906641,
		-0.836591, 0.542827, 0.073853,
		0.520654, 0.745904, 0.415388,
		37.064522, 36.501118, 21.423010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512470, 36.649719, 20.948498>,  <36.700066, 35.978985, 21.132238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512470, 36.649719, 20.948498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901253, 36.644188, 21.042400>,  <37.134521, 36.640869, 21.098742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901253, 36.644188, 21.042400>,  <36.512470, 36.649719, 20.948498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901253, 36.644188, 21.042400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225478, 0.338359, -0.913604,
		-0.066798, 0.940915, 0.331988,
		0.971956, -0.013829, 0.234757,
		37.192841, 36.640038, 21.112827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945694, 37.276577, 20.837299>,  <36.512470, 36.649719, 20.948498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945694, 37.276577, 20.837299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238365, 37.003918, 20.838110>,  <37.413967, 36.840321, 20.838596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238365, 37.003918, 20.838110>,  <36.945694, 37.276577, 20.837299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238365, 37.003918, 20.838110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376329, 0.401464, -0.834987,
		0.568353, 0.611704, 0.550266,
		0.731677, -0.681648, 0.002028,
		37.457867, 36.799423, 20.838718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681870, 37.395847, 20.750309>,  <36.945694, 37.276577, 20.837299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681870, 37.395847, 20.750309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692028, 37.010048, 20.645157>,  <37.698124, 36.778568, 20.582066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692028, 37.010048, 20.645157>,  <37.681870, 37.395847, 20.750309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692028, 37.010048, 20.645157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453703, 0.245442, -0.856687,
		0.890791, -0.097511, 0.443827,
		0.025398, -0.964494, -0.262879,
		37.699646, 36.720699, 20.566294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090370, 37.294083, 21.336494>,  <37.681870, 37.395847, 20.750309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090370, 37.294083, 21.336494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724663, 37.136402, 21.299152>,  <37.505238, 37.041794, 21.276747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724663, 37.136402, 21.299152>,  <38.090370, 37.294083, 21.336494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724663, 37.136402, 21.299152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080878, -0.048191, 0.995558,
		-0.396954, 0.917758, 0.012177,
		-0.914268, -0.394206, -0.093355,
		37.450382, 37.018139, 21.271145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668304, 37.535294, 21.957577>,  <38.090370, 37.294083, 21.336494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668304, 37.535294, 21.957577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480797, 37.228775, 21.781828>,  <37.368290, 37.044865, 21.676378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480797, 37.228775, 21.781828>,  <37.668304, 37.535294, 21.957577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480797, 37.228775, 21.781828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347584, -0.297261, 0.889281,
		-0.812059, 0.569588, -0.127004,
		-0.468771, -0.766293, -0.439373,
		37.340164, 36.998886, 21.650017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062500, 37.601292, 22.275110>,  <37.668304, 37.535294, 21.957577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062500, 37.601292, 22.275110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066048, 37.226730, 22.134789>,  <37.068176, 37.001991, 22.050594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066048, 37.226730, 22.134789>,  <37.062500, 37.601292, 22.275110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066048, 37.226730, 22.134789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412929, -0.322941, 0.851586,
		-0.910720, 0.137304, -0.389534,
		0.008870, -0.936406, -0.350806,
		37.068710, 36.945808, 22.029547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329975, 37.286728, 22.439611>,  <37.062500, 37.601292, 22.275110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329975, 37.286728, 22.439611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549198, 36.957672, 22.379084>,  <36.680733, 36.760239, 22.342768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549198, 36.957672, 22.379084>,  <36.329975, 37.286728, 22.439611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549198, 36.957672, 22.379084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399142, -0.416192, 0.816988,
		-0.735066, -0.387357, -0.556447,
		0.548055, -0.822642, -0.151318,
		36.713615, 36.710880, 22.333689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851589, 36.648911, 22.403181>,  <36.329975, 37.286728, 22.439611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851589, 36.648911, 22.403181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213470, 36.521072, 22.515871>,  <36.430599, 36.444370, 22.583485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213470, 36.521072, 22.515871>,  <35.851589, 36.648911, 22.403181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213470, 36.521072, 22.515871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404403, -0.436149, 0.803886,
		-0.134042, -0.841210, -0.523831,
		0.904705, -0.319593, 0.281725,
		36.484882, 36.425194, 22.600388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761196, 35.972710, 22.678709>,  <35.851589, 36.648911, 22.403181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761196, 35.972710, 22.678709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101273, 36.121307, 22.827930>,  <36.305317, 36.210464, 22.917463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101273, 36.121307, 22.827930>,  <35.761196, 35.972710, 22.678709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101273, 36.121307, 22.827930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173858, -0.470728, 0.864979,
		0.496944, -0.800254, -0.335620,
		0.850189, 0.371495, 0.373056,
		36.356331, 36.232758, 22.939848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042866, 35.454346, 23.024879>,  <35.761196, 35.972710, 22.678709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042866, 35.454346, 23.024879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217373, 35.776699, 23.184990>,  <36.322079, 35.970112, 23.281055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217373, 35.776699, 23.184990>,  <36.042866, 35.454346, 23.024879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217373, 35.776699, 23.184990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015492, -0.451502, 0.892135,
		0.899681, -0.383013, -0.209463,
		0.436272, 0.805883, 0.400275,
		36.348255, 36.018463, 23.305073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343559, 35.130493, 23.618433>,  <36.042866, 35.454346, 23.024879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343559, 35.130493, 23.618433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362862, 35.525730, 23.676876>,  <36.374443, 35.762871, 23.711943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362862, 35.525730, 23.676876>,  <36.343559, 35.130493, 23.618433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362862, 35.525730, 23.676876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088383, -0.149930, 0.984738,
		0.994917, -0.034607, -0.094565,
		0.048257, 0.988091, 0.146109,
		36.377338, 35.822159, 23.720709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824089, 35.224228, 24.079247>,  <36.343559, 35.130493, 23.618433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824089, 35.224228, 24.079247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598446, 35.552319, 24.117220>,  <36.463062, 35.749172, 24.140003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598446, 35.552319, 24.117220>,  <36.824089, 35.224228, 24.079247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598446, 35.552319, 24.117220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153090, -0.216873, 0.964121,
		0.811387, 0.529332, 0.247908,
		-0.564104, 0.820228, 0.094933,
		36.429214, 35.798386, 24.145700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077713, 35.663982, 24.637188>,  <36.824089, 35.224228, 24.079247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077713, 35.663982, 24.637188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713581, 35.822006, 24.587814>,  <36.495102, 35.916821, 24.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713581, 35.822006, 24.587814>,  <37.077713, 35.663982, 24.637188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713581, 35.822006, 24.587814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135533, -0.002746, 0.990769,
		0.391073, 0.918652, 0.056043,
		-0.910326, 0.395058, -0.123433,
		36.440483, 35.940525, 24.550785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050816, 36.131847, 25.117174>,  <37.077713, 35.663982, 24.637188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050816, 36.131847, 25.117174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659458, 36.093212, 25.044044>,  <36.424644, 36.070030, 25.000168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659458, 36.093212, 25.044044>,  <37.050816, 36.131847, 25.117174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659458, 36.093212, 25.044044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184214, 0.005613, 0.982870,
		-0.093908, 0.995308, -0.023285,
		-0.978390, -0.096589, -0.182823,
		36.365940, 36.064236, 24.989197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750946, 36.526527, 25.620184>,  <37.050816, 36.131847, 25.117174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750946, 36.526527, 25.620184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453350, 36.293850, 25.488659>,  <36.274792, 36.154243, 25.409744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453350, 36.293850, 25.488659>,  <36.750946, 36.526527, 25.620184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453350, 36.293850, 25.488659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392211, -0.018234, 0.919695,
		-0.540976, 0.813204, -0.214580,
		-0.743987, -0.581693, -0.328811,
		36.230156, 36.119343, 25.390015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090706, 36.745888, 25.975534>,  <36.750946, 36.526527, 25.620184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090706, 36.745888, 25.975534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998386, 36.378254, 25.847773>,  <35.942993, 36.157673, 25.771114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998386, 36.378254, 25.847773>,  <36.090706, 36.745888, 25.975534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998386, 36.378254, 25.847773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579177, -0.134008, 0.804112,
		-0.781848, 0.370580, -0.501382,
		-0.230798, -0.919082, -0.319406,
		35.929146, 36.102528, 25.751951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350994, 36.651421, 26.276779>,  <36.090706, 36.745888, 25.975534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350994, 36.651421, 26.276779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494862, 36.289314, 26.186327>,  <35.581181, 36.072052, 26.132055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494862, 36.289314, 26.186327>,  <35.350994, 36.651421, 26.276779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494862, 36.289314, 26.186327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437918, -0.377769, 0.815794,
		-0.823935, -0.194386, -0.532302,
		0.359666, -0.905265, -0.226132,
		35.602760, 36.017735, 26.118488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800835, 36.245327, 26.383802>,  <35.350994, 36.651421, 26.276779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800835, 36.245327, 26.383802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136555, 36.029182, 26.407742>,  <35.337986, 35.899494, 26.422106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136555, 36.029182, 26.407742>,  <34.800835, 36.245327, 26.383802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136555, 36.029182, 26.407742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348585, -0.450388, 0.821972,
		-0.417209, -0.710744, -0.566374,
		0.839300, -0.540364, 0.059849,
		35.388344, 35.867073, 26.425695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535286, 35.717056, 26.640299>,  <34.800835, 36.245327, 26.383802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535286, 35.717056, 26.640299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926933, 35.686020, 26.715460>,  <35.161922, 35.667400, 26.760557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926933, 35.686020, 26.715460>,  <34.535286, 35.717056, 26.640299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926933, 35.686020, 26.715460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203276, -0.384634, 0.900409,
		0.002413, -0.919803, -0.392374,
		0.979118, -0.077588, 0.187902,
		35.220669, 35.662743, 26.771830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584255, 35.042656, 26.933899>,  <34.535286, 35.717056, 26.640299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584255, 35.042656, 26.933899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902134, 35.265549, 27.030190>,  <35.092861, 35.399284, 27.087965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902134, 35.265549, 27.030190>,  <34.584255, 35.042656, 26.933899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902134, 35.265549, 27.030190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017424, -0.375477, 0.926668,
		0.606760, -0.740612, -0.288680,
		0.794694, 0.557236, 0.240729,
		35.140541, 35.432720, 27.102407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080700, 34.599167, 27.280581>,  <34.584255, 35.042656, 26.933899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080700, 34.599167, 27.280581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143276, 34.974148, 27.404974>,  <35.180824, 35.199135, 27.479610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143276, 34.974148, 27.404974>,  <35.080700, 34.599167, 27.280581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143276, 34.974148, 27.404974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121059, -0.294287, 0.948019,
		0.980240, -0.185959, 0.067448,
		0.156444, 0.937451, 0.310984,
		35.190208, 35.255383, 27.498270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539562, 34.589684, 27.888407>,  <35.080700, 34.599167, 27.280581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539562, 34.589684, 27.888407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332241, 34.931526, 27.901098>,  <35.207848, 35.136631, 27.908712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332241, 34.931526, 27.901098>,  <35.539562, 34.589684, 27.888407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332241, 34.931526, 27.901098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103700, -0.099630, 0.989606,
		0.848888, 0.509624, 0.140262,
		-0.518301, 0.854609, 0.031727,
		35.176750, 35.187908, 27.910616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828484, 34.848881, 28.472153>,  <35.539562, 34.589684, 27.888407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828484, 34.848881, 28.472153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505867, 35.075672, 28.405188>,  <35.312298, 35.211746, 28.365007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505867, 35.075672, 28.405188>,  <35.828484, 34.848881, 28.472153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505867, 35.075672, 28.405188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263972, -0.092004, 0.960133,
		0.528972, 0.818579, 0.223871,
		-0.806541, 0.566978, -0.167414,
		35.263905, 35.245766, 28.354963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894562, 35.398212, 28.867847>,  <35.828484, 34.848881, 28.472153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894562, 35.398212, 28.867847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504627, 35.356712, 28.788921>,  <35.270668, 35.331814, 28.741566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504627, 35.356712, 28.788921>,  <35.894562, 35.398212, 28.867847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504627, 35.356712, 28.788921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189021, -0.084556, 0.978326,
		-0.118181, 0.991003, 0.062818,
		-0.974835, -0.103746, -0.197314,
		35.212177, 35.325588, 28.729727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573689, 35.831047, 29.317789>,  <35.894562, 35.398212, 28.867847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573689, 35.831047, 29.317789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276211, 35.573280, 29.246634>,  <35.097725, 35.418621, 29.203939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276211, 35.573280, 29.246634>,  <35.573689, 35.831047, 29.317789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276211, 35.573280, 29.246634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171694, -0.073055, 0.982438,
		-0.646099, 0.761174, -0.056312,
		-0.743692, -0.644420, -0.177890,
		35.053104, 35.379955, 29.193266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084316, 36.110447, 29.684408>,  <35.573689, 35.831047, 29.317789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084316, 36.110447, 29.684408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970615, 35.732964, 29.616745>,  <34.902397, 35.506474, 29.576147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970615, 35.732964, 29.616745>,  <35.084316, 36.110447, 29.684408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970615, 35.732964, 29.616745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318473, -0.073476, 0.945080,
		-0.904310, 0.322511, -0.279661,
		-0.284250, -0.943710, -0.169156,
		34.885342, 35.449852, 29.565998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333302, 36.035900, 29.795565>,  <35.084316, 36.110447, 29.684408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333302, 36.035900, 29.795565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471287, 35.661980, 29.829403>,  <34.554077, 35.437630, 29.849705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471287, 35.661980, 29.829403>,  <34.333302, 36.035900, 29.795565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471287, 35.661980, 29.829403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451540, -0.086262, 0.888071,
		-0.822869, -0.344547, -0.451856,
		0.344960, -0.934797, 0.084594,
		34.574776, 35.381542, 29.854782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736073, 35.650391, 30.112144>,  <34.333302, 36.035900, 29.795565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736073, 35.650391, 30.112144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055367, 35.415070, 30.163862>,  <34.246944, 35.273876, 30.194893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055367, 35.415070, 30.163862>,  <33.736073, 35.650391, 30.112144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055367, 35.415070, 30.163862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317542, -0.228603, 0.920276,
		-0.511847, -0.775652, -0.369291,
		0.798235, -0.588306, 0.129293,
		34.294838, 35.238579, 30.202650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453678, 35.087639, 30.585796>,  <33.736073, 35.650391, 30.112144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453678, 35.087639, 30.585796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850517, 35.038490, 30.596001>,  <34.088619, 35.009003, 30.602123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850517, 35.038490, 30.596001>,  <33.453678, 35.087639, 30.585796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850517, 35.038490, 30.596001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088403, -0.540008, 0.837004,
		-0.089070, -0.832642, -0.546601,
		0.992095, -0.122873, 0.025510,
		34.148144, 35.001629, 30.603653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624138, 34.381760, 30.806499>,  <33.453678, 35.087639, 30.585796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624138, 34.381760, 30.806499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958462, 34.587658, 30.882868>,  <34.159058, 34.711197, 30.928688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958462, 34.587658, 30.882868>,  <33.624138, 34.381760, 30.806499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958462, 34.587658, 30.882868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036386, -0.398922, 0.916263,
		0.547805, -0.758878, -0.352154,
		0.835814, 0.514747, 0.190919,
		34.209206, 34.742081, 30.940144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182869, 33.905682, 31.027813>,  <33.624138, 34.381760, 30.806499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182869, 33.905682, 31.027813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269672, 34.262760, 31.185799>,  <34.321754, 34.477009, 31.280590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269672, 34.262760, 31.185799>,  <34.182869, 33.905682, 31.027813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269672, 34.262760, 31.185799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079491, -0.419423, 0.904304,
		0.972928, -0.164845, -0.161980,
		0.217008, 0.892698, 0.394964,
		34.334774, 34.530571, 31.304289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499489, 33.684822, 31.539707>,  <34.182869, 33.905682, 31.027813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499489, 33.684822, 31.539707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418434, 34.061325, 31.647762>,  <34.369801, 34.287228, 31.712595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418434, 34.061325, 31.647762>,  <34.499489, 33.684822, 31.539707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418434, 34.061325, 31.647762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020705, -0.279915, 0.959802,
		0.979035, 0.188900, 0.076210,
		-0.202639, 0.941257, 0.270136,
		34.357643, 34.343700, 31.728804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839462, 33.824764, 32.196110>,  <34.499489, 33.684822, 31.539707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839462, 33.824764, 32.196110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547573, 34.098141, 32.188068>,  <34.372440, 34.262169, 32.183243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547573, 34.098141, 32.188068>,  <34.839462, 33.824764, 32.196110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547573, 34.098141, 32.188068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176103, -0.159450, 0.971372,
		0.660671, 0.712377, 0.236712,
		-0.729726, 0.683443, -0.020108,
		34.328655, 34.303173, 32.182037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006924, 34.235367, 32.766037>,  <34.839462, 33.824764, 32.196110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006924, 34.235367, 32.766037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624981, 34.335636, 32.702263>,  <34.395817, 34.395798, 32.663998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624981, 34.335636, 32.702263>,  <35.006924, 34.235367, 32.766037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624981, 34.335636, 32.702263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183173, -0.074233, 0.980274,
		0.233890, 0.965222, 0.116797,
		-0.954852, 0.250671, -0.159440,
		34.338524, 34.410839, 32.654430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814594, 34.585075, 33.375435>,  <35.006924, 34.235367, 32.766037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814594, 34.585075, 33.375435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472610, 34.474743, 33.199722>,  <34.267422, 34.408543, 33.094296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472610, 34.474743, 33.199722>,  <34.814594, 34.585075, 33.375435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472610, 34.474743, 33.199722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491306, 0.159039, 0.856344,
		-0.166339, 0.947959, -0.271487,
		-0.854956, -0.275827, -0.439284,
		34.216125, 34.391994, 33.067936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326420, 34.984703, 33.686821>,  <34.814594, 34.585075, 33.375435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326420, 34.984703, 33.686821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096291, 34.690681, 33.543324>,  <33.958214, 34.514267, 33.457226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096291, 34.690681, 33.543324>,  <34.326420, 34.984703, 33.686821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096291, 34.690681, 33.543324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530011, 0.000975, 0.847990,
		-0.622969, 0.678008, -0.390147,
		-0.575325, -0.735053, -0.358745,
		33.923695, 34.470165, 33.435699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683044, 35.104527, 33.926624>,  <34.326420, 34.984703, 33.686821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683044, 35.104527, 33.926624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641426, 34.714378, 33.848827>,  <33.616455, 34.480289, 33.802151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641426, 34.714378, 33.848827>,  <33.683044, 35.104527, 33.926624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641426, 34.714378, 33.848827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429049, -0.132400, 0.893525,
		-0.897269, 0.176417, -0.404705,
		-0.104050, -0.975370, -0.194489,
		33.610210, 34.421768, 33.790482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954292, 34.862968, 34.024689>,  <33.683044, 35.104527, 33.926624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954292, 34.862968, 34.024689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190788, 34.540699, 34.039234>,  <33.332687, 34.347336, 34.047962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190788, 34.540699, 34.039234>,  <32.954292, 34.862968, 34.024689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190788, 34.540699, 34.039234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382993, -0.240806, 0.891812,
		-0.709754, -0.541203, -0.450942,
		0.591241, -0.805675, 0.036364,
		33.368160, 34.298996, 34.050144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531853, 34.374413, 34.244602>,  <32.954292, 34.862968, 34.024689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531853, 34.374413, 34.244602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902073, 34.261562, 34.345612>,  <33.124203, 34.193851, 34.406219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902073, 34.261562, 34.345612>,  <32.531853, 34.374413, 34.244602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902073, 34.261562, 34.345612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326223, -0.255621, 0.910075,
		-0.192196, -0.924699, -0.328623,
		0.925548, -0.282117, 0.252528,
		33.179737, 34.176926, 34.421368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397278, 33.716434, 34.471600>,  <32.531853, 34.374413, 34.244602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397278, 33.716434, 34.471600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766556, 33.788288, 34.607506>,  <32.988125, 33.831402, 34.689049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766556, 33.788288, 34.607506>,  <32.397278, 33.716434, 34.471600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766556, 33.788288, 34.607506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237765, -0.427612, 0.872133,
		0.301949, -0.885935, -0.352060,
		0.923198, 0.179633, 0.339761,
		33.043514, 33.842178, 34.709435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442196, 33.214104, 34.892452>,  <32.397278, 33.716434, 34.471600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442196, 33.214104, 34.892452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736744, 33.442768, 35.037212>,  <32.913471, 33.579967, 35.124069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736744, 33.442768, 35.037212>,  <32.442196, 33.214104, 34.892452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736744, 33.442768, 35.037212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066549, -0.471100, 0.879566,
		0.673301, -0.671768, -0.308860,
		0.736368, 0.571658, 0.361898,
		32.957653, 33.614265, 35.145782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832386, 32.712402, 35.296387>,  <32.442196, 33.214104, 34.892452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832386, 32.712402, 35.296387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907352, 33.083225, 35.426273>,  <32.952332, 33.305717, 35.504204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907352, 33.083225, 35.426273>,  <32.832386, 32.712402, 35.296387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907352, 33.083225, 35.426273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075368, -0.316029, 0.945751,
		0.979385, -0.201724, 0.010641,
		0.187418, 0.927057, 0.324717,
		32.963577, 33.361343, 35.523689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331940, 32.676994, 35.824699>,  <32.832386, 32.712402, 35.296387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331940, 32.676994, 35.824699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154640, 33.030453, 35.884964>,  <33.048260, 33.242527, 35.921124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154640, 33.030453, 35.884964>,  <33.331940, 32.676994, 35.824699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154640, 33.030453, 35.884964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035975, -0.185479, 0.981990,
		0.895675, 0.429848, 0.114003,
		-0.443251, 0.883645, 0.150665,
		33.021664, 33.295547, 35.930164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724270, 32.938412, 36.352917>,  <33.331940, 32.676994, 35.824699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724270, 32.938412, 36.352917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383553, 33.147926, 36.349022>,  <33.179123, 33.273636, 36.346684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383553, 33.147926, 36.349022>,  <33.724270, 32.938412, 36.352917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383553, 33.147926, 36.349022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032506, -0.034294, 0.998883,
		0.522865, 0.851161, 0.046237,
		-0.851796, 0.523784, -0.009737,
		33.128014, 33.305061, 36.346100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918491, 33.457970, 36.865189>,  <33.724270, 32.938412, 36.352917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918491, 33.457970, 36.865189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520874, 33.434387, 36.828522>,  <33.282303, 33.420238, 36.806522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520874, 33.434387, 36.828522>,  <33.918491, 33.457970, 36.865189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520874, 33.434387, 36.828522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079890, -0.177994, 0.980783,
		-0.074141, 0.982264, 0.172224,
		-0.994043, -0.058957, -0.091670,
		33.222660, 33.416698, 36.801022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990814, 34.231785, 36.858006>,  <33.918491, 33.457970, 36.865189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990814, 34.231785, 36.858006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302700, 34.232574, 37.108459>,  <34.489830, 34.233047, 37.258732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302700, 34.232574, 37.108459>,  <33.990814, 34.231785, 36.858006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302700, 34.232574, 37.108459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543822, 0.493496, -0.678763,
		-0.310336, 0.869746, 0.383711,
		0.779711, 0.001974, 0.626136,
		34.536613, 34.233166, 37.296299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357506, 34.883636, 36.770599>,  <33.990814, 34.231785, 36.858006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357506, 34.883636, 36.770599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634731, 34.621567, 36.890865>,  <34.801067, 34.464325, 36.963024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634731, 34.621567, 36.890865>,  <34.357506, 34.883636, 36.770599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634731, 34.621567, 36.890865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659604, 0.408107, -0.631166,
		0.290824, 0.635759, 0.715004,
		0.693068, -0.655179, 0.300662,
		34.842651, 34.425014, 36.981064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886105, 35.162632, 36.634666>,  <34.357506, 34.883636, 36.770599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886105, 35.162632, 36.634666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042473, 34.796482, 36.673172>,  <35.136295, 34.576794, 36.696278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042473, 34.796482, 36.673172>,  <34.886105, 35.162632, 36.634666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042473, 34.796482, 36.673172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629781, 0.189740, -0.753242,
		0.671233, 0.355088, 0.650660,
		0.390924, -0.915375, 0.096268,
		35.159748, 34.521870, 36.702053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538734, 35.295952, 36.496861>,  <34.886105, 35.162632, 36.634666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538734, 35.295952, 36.496861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520847, 34.897820, 36.462643>,  <35.510113, 34.658939, 36.442112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520847, 34.897820, 36.462643>,  <35.538734, 35.295952, 36.496861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520847, 34.897820, 36.462643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651126, 0.035900, -0.758120,
		0.757651, -0.089603, 0.646480,
		-0.044721, -0.995330, -0.085542,
		35.507431, 34.599220, 36.436981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236961, 34.971588, 36.485672>,  <35.538734, 35.295952, 36.496861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236961, 34.971588, 36.485672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986118, 34.741196, 36.275917>,  <35.835613, 34.602959, 36.150063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986118, 34.741196, 36.275917>,  <36.236961, 34.971588, 36.485672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986118, 34.741196, 36.275917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653905, -0.023469, -0.756213,
		0.423261, -0.817123, 0.391357,
		-0.627103, -0.575986, -0.524387,
		35.797989, 34.568401, 36.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712608, 34.503418, 36.196304>,  <36.236961, 34.971588, 36.485672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712608, 34.503418, 36.196304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377903, 34.449455, 35.984032>,  <36.177078, 34.417080, 35.856667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377903, 34.449455, 35.984032>,  <36.712608, 34.503418, 36.196304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377903, 34.449455, 35.984032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546993, -0.161919, -0.821329,
		0.024872, -0.977539, 0.209280,
		-0.836768, -0.134903, -0.530680,
		36.126873, 34.408985, 35.824829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912487, 33.995373, 35.688259>,  <36.712608, 34.503418, 36.196304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912487, 33.995373, 35.688259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582005, 34.172684, 35.549183>,  <36.383717, 34.279068, 35.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582005, 34.172684, 35.549183>,  <36.912487, 33.995373, 35.688259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582005, 34.172684, 35.549183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417728, 0.067926, -0.906029,
		-0.378003, -0.893808, -0.241290,
		-0.826206, 0.443275, -0.347693,
		36.334141, 34.305668, 35.444874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787182, 33.710949, 35.090656>,  <36.912487, 33.995373, 35.688259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787182, 33.710949, 35.090656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593906, 34.059608, 35.057755>,  <36.477943, 34.268803, 35.038013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593906, 34.059608, 35.057755>,  <36.787182, 33.710949, 35.090656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593906, 34.059608, 35.057755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261161, 0.053826, -0.963793,
		-0.835659, -0.487171, -0.253648,
		-0.483185, 0.871646, -0.082250,
		36.448952, 34.321102, 35.033081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620411, 33.636589, 34.487160>,  <36.787182, 33.710949, 35.090656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620411, 33.636589, 34.487160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551910, 34.023930, 34.559780>,  <36.510811, 34.256336, 34.603352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551910, 34.023930, 34.559780>,  <36.620411, 33.636589, 34.487160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551910, 34.023930, 34.559780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291091, 0.225778, -0.929672,
		-0.941244, -0.106355, -0.320544,
		-0.171247, 0.968356, 0.181553,
		36.500538, 34.314438, 34.614246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472065, 33.990524, 33.836929>,  <36.620411, 33.636589, 34.487160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472065, 33.990524, 33.836929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521076, 34.312855, 34.068665>,  <36.550484, 34.506252, 34.207706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521076, 34.312855, 34.068665>,  <36.472065, 33.990524, 33.836929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521076, 34.312855, 34.068665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190920, 0.553696, -0.810537,
		-0.973928, 0.209922, -0.086004,
		0.122530, 0.805825, 0.579338,
		36.557835, 34.554604, 34.242466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054409, 34.499973, 33.581528>,  <36.472065, 33.990524, 33.836929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054409, 34.499973, 33.581528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374359, 34.648083, 33.770462>,  <36.566330, 34.736950, 33.883823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374359, 34.648083, 33.770462>,  <36.054409, 34.499973, 33.581528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374359, 34.648083, 33.770462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327358, 0.390457, -0.860454,
		-0.503030, 0.842876, 0.191104,
		0.799874, 0.370274, 0.472334,
		36.614323, 34.759167, 33.912163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042461, 35.192715, 33.563568>,  <36.054409, 34.499973, 33.581528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042461, 35.192715, 33.563568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426132, 35.090809, 33.612690>,  <36.656334, 35.029667, 33.642162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426132, 35.090809, 33.612690>,  <36.042461, 35.192715, 33.563568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426132, 35.090809, 33.612690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225342, 0.426038, -0.876192,
		0.170901, 0.868094, 0.466053,
		0.959174, -0.254763, 0.122807,
		36.713882, 35.014381, 33.649532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468491, 35.826786, 33.526070>,  <36.042461, 35.192715, 33.563568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468491, 35.826786, 33.526070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666126, 35.500214, 33.406525>,  <36.784710, 35.304272, 33.334797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666126, 35.500214, 33.406525>,  <36.468491, 35.826786, 33.526070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666126, 35.500214, 33.406525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291101, 0.479265, -0.827988,
		0.819227, 0.322103, 0.474464,
		0.494092, -0.816428, -0.298862,
		36.814354, 35.255287, 33.316864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148888, 36.083553, 33.284679>,  <36.468491, 35.826786, 33.526070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148888, 36.083553, 33.284679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088089, 35.723198, 33.122051>,  <37.051609, 35.506985, 33.024475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088089, 35.723198, 33.122051>,  <37.148888, 36.083553, 33.284679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088089, 35.723198, 33.122051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296695, 0.350795, -0.888209,
		0.942798, -0.255635, 0.213968,
		-0.151998, -0.900885, -0.406575,
		37.042488, 35.452934, 33.000080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823627, 35.893650, 32.876858>,  <37.148888, 36.083553, 33.284679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823627, 35.893650, 32.876858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514019, 35.674160, 32.750500>,  <37.328255, 35.542465, 32.674686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514019, 35.674160, 32.750500>,  <37.823627, 35.893650, 32.876858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514019, 35.674160, 32.750500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258205, 0.181992, -0.948793,
		0.578114, -0.815956, 0.000816,
		-0.774025, -0.548721, -0.315896,
		37.281811, 35.509544, 32.655731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019085, 35.354889, 32.432125>,  <37.823627, 35.893650, 32.876858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019085, 35.354889, 32.432125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640488, 35.422852, 32.322372>,  <37.413330, 35.463627, 32.256519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640488, 35.422852, 32.322372>,  <38.019085, 35.354889, 32.432125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640488, 35.422852, 32.322372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294814, 0.109307, -0.949282,
		-0.131293, -0.979380, -0.153548,
		-0.946492, 0.169902, -0.274383,
		37.356541, 35.473824, 32.240059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993710, 35.047352, 31.790699>,  <38.019085, 35.354889, 32.432125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993710, 35.047352, 31.790699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643379, 35.239265, 31.769775>,  <37.433182, 35.354412, 31.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643379, 35.239265, 31.769775>,  <37.993710, 35.047352, 31.790699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643379, 35.239265, 31.769775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037615, -0.040197, -0.998484,
		-0.481159, -0.876466, 0.017159,
		-0.875826, 0.479784, -0.052310,
		37.380630, 35.383202, 31.754082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517567, 34.781197, 31.334000>,  <37.993710, 35.047352, 31.790699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517567, 34.781197, 31.334000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365589, 35.150791, 31.351379>,  <37.274403, 35.372547, 31.361807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365589, 35.150791, 31.351379>,  <37.517567, 34.781197, 31.334000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365589, 35.150791, 31.351379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115461, -0.000769, -0.993312,
		-0.917774, -0.382422, 0.106977,
		-0.379947, 0.923987, 0.043449,
		37.251606, 35.427986, 31.364414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147522, 34.698170, 30.820412>,  <37.517567, 34.781197, 31.334000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147522, 34.698170, 30.820412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138474, 35.094166, 30.876125>,  <37.133045, 35.331764, 30.909554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138474, 35.094166, 30.876125>,  <37.147522, 34.698170, 30.820412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138474, 35.094166, 30.876125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118065, 0.135699, -0.983690,
		-0.992748, -0.038701, 0.113813,
		-0.022626, 0.989994, 0.139285,
		37.131687, 35.391163, 30.917912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555733, 34.982933, 30.429058>,  <37.147522, 34.698170, 30.820412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555733, 34.982933, 30.429058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786263, 35.306908, 30.472614>,  <36.924580, 35.501293, 30.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786263, 35.306908, 30.472614>,  <36.555733, 34.982933, 30.429058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786263, 35.306908, 30.472614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070676, 0.182143, -0.980729,
		-0.814160, 0.557521, 0.162216,
		0.576323, 0.809935, 0.108890,
		36.959160, 35.549889, 30.505281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301296, 35.396065, 30.037603>,  <36.555733, 34.982933, 30.429058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301296, 35.396065, 30.037603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652786, 35.582916, 30.076857>,  <36.863682, 35.695026, 30.100409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652786, 35.582916, 30.076857>,  <36.301296, 35.396065, 30.037603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652786, 35.582916, 30.076857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059058, 0.097613, -0.993471,
		-0.473654, 0.878786, 0.058187,
		0.878728, 0.467125, 0.098134,
		36.916405, 35.723053, 30.106297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401169, 36.077721, 29.595703>,  <36.301296, 35.396065, 30.037603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401169, 36.077721, 29.595703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766945, 35.927349, 29.655672>,  <36.986412, 35.837124, 29.691652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766945, 35.927349, 29.655672>,  <36.401169, 36.077721, 29.595703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766945, 35.927349, 29.655672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232068, 0.183556, -0.955223,
		0.331581, 0.908285, 0.255093,
		0.914439, -0.375933, 0.149920,
		37.041275, 35.814568, 29.700647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844997, 36.643623, 29.428976>,  <36.401169, 36.077721, 29.595703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844997, 36.643623, 29.428976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100357, 36.336353, 29.409569>,  <37.253574, 36.151993, 29.397924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100357, 36.336353, 29.409569>,  <36.844997, 36.643623, 29.428976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100357, 36.336353, 29.409569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309097, 0.313589, -0.897842,
		0.704914, 0.558185, 0.437636,
		0.638400, -0.768174, -0.048520,
		37.291878, 36.105900, 29.395012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399803, 36.899540, 29.008640>,  <36.844997, 36.643623, 29.428976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399803, 36.899540, 29.008640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460190, 36.504929, 28.983440>,  <37.496422, 36.268162, 28.968321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460190, 36.504929, 28.983440>,  <37.399803, 36.899540, 29.008640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460190, 36.504929, 28.983440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282507, 0.104129, -0.953597,
		0.947312, 0.126160, 0.294421,
		0.150963, -0.986530, -0.063001,
		37.505478, 36.208969, 28.964540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148342, 36.755978, 28.812809>,  <37.399803, 36.899540, 29.008640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148342, 36.755978, 28.812809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920097, 36.446781, 28.701891>,  <37.783150, 36.261265, 28.635340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920097, 36.446781, 28.701891>,  <38.148342, 36.755978, 28.812809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920097, 36.446781, 28.701891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370057, 0.059410, -0.927108,
		0.733116, -0.631635, 0.252149,
		-0.570613, -0.772987, -0.277295,
		37.748913, 36.214886, 28.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529228, 36.333637, 28.397511>,  <38.148342, 36.755978, 28.812809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529228, 36.333637, 28.397511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175770, 36.184917, 28.283712>,  <37.963696, 36.095684, 28.215433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175770, 36.184917, 28.283712>,  <38.529228, 36.333637, 28.397511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175770, 36.184917, 28.283712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379016, -0.211435, -0.900912,
		0.274806, -0.903914, 0.327751,
		-0.883645, -0.371799, -0.284494,
		37.910675, 36.073380, 28.198364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730190, 35.783928, 27.998020>,  <38.529228, 36.333637, 28.397511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730190, 35.783928, 27.998020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353920, 35.878239, 27.900410>,  <38.128159, 35.934826, 27.841845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353920, 35.878239, 27.900410>,  <38.730190, 35.783928, 27.998020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353920, 35.878239, 27.900410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217220, -0.134063, -0.966873,
		-0.260678, -0.962516, 0.074895,
		-0.940671, 0.235774, -0.244025,
		38.071720, 35.948971, 27.827202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503269, 35.328217, 27.576998>,  <38.730190, 35.783928, 27.998020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503269, 35.328217, 27.576998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280735, 35.649868, 27.493216>,  <38.147213, 35.842857, 27.442947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280735, 35.649868, 27.493216>,  <38.503269, 35.328217, 27.576998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280735, 35.649868, 27.493216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390440, 0.030461, -0.920124,
		-0.733514, -0.593680, -0.330909,
		-0.556339, 0.804124, -0.209454,
		38.113834, 35.891106, 27.430380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155697, 35.189003, 26.955954>,  <38.503269, 35.328217, 27.576998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155697, 35.189003, 26.955954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172291, 35.587898, 26.980583>,  <38.182247, 35.827236, 26.995361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172291, 35.587898, 26.980583>,  <38.155697, 35.189003, 26.955954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172291, 35.587898, 26.980583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103164, 0.057022, -0.993028,
		-0.993799, 0.047547, -0.100513,
		0.041484, 0.997240, 0.061573,
		38.184734, 35.887070, 26.999056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131294, 35.264374, 26.293966>,  <38.155697, 35.189003, 26.955954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131294, 35.264374, 26.293966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184494, 35.631737, 26.443007>,  <38.216412, 35.852154, 26.532431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184494, 35.631737, 26.443007>,  <38.131294, 35.264374, 26.293966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184494, 35.631737, 26.443007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445982, 0.280275, -0.850027,
		-0.885106, 0.279224, -0.372319,
		0.132996, 0.918412, 0.372602,
		38.224392, 35.907261, 26.554787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015812, 35.654308, 25.743858>,  <38.131294, 35.264374, 26.293966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015812, 35.654308, 25.743858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220337, 35.890919, 25.993229>,  <38.343052, 36.032887, 26.142851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220337, 35.890919, 25.993229>,  <38.015812, 35.654308, 25.743858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220337, 35.890919, 25.993229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611360, 0.259470, -0.747606,
		-0.603989, 0.763394, -0.228968,
		0.511308, 0.591527, 0.623426,
		38.373730, 36.068378, 26.180256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091370, 36.300205, 25.348534>,  <38.015812, 35.654308, 25.743858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091370, 36.300205, 25.348534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362370, 36.329945, 25.641237>,  <38.524971, 36.347786, 25.816858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362370, 36.329945, 25.641237>,  <38.091370, 36.300205, 25.348534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362370, 36.329945, 25.641237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647301, 0.412174, -0.641182,
		-0.349280, 0.908067, 0.231124,
		0.677499, 0.074345, 0.731757,
		38.565620, 36.352249, 25.860764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284855, 37.048550, 25.428720>,  <38.091370, 36.300205, 25.348534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284855, 37.048550, 25.428720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583958, 36.826721, 25.574768>,  <38.763420, 36.693626, 25.662395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583958, 36.826721, 25.574768>,  <38.284855, 37.048550, 25.428720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583958, 36.826721, 25.574768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612253, 0.363137, -0.702337,
		0.256905, 0.748724, 0.611074,
		0.747760, -0.554567, 0.365117,
		38.808285, 36.660351, 25.684303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911152, 37.540325, 25.388556>,  <38.284855, 37.048550, 25.428720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911152, 37.540325, 25.388556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054489, 37.167301, 25.406124>,  <39.140491, 36.943489, 25.416666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.054489, 37.167301, 25.406124>,  <38.911152, 37.540325, 25.388556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054489, 37.167301, 25.406124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670322, 0.224257, -0.707373,
		0.649817, 0.282922, 0.705474,
		0.358340, -0.932557, 0.043923,
		39.161991, 36.887535, 25.419300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706963, 37.605495, 25.380762>,  <38.911152, 37.540325, 25.388556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706963, 37.605495, 25.380762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617371, 37.236832, 25.254038>,  <39.563614, 37.015633, 25.178003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617371, 37.236832, 25.254038>,  <39.706963, 37.605495, 25.380762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617371, 37.236832, 25.254038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673362, 0.088656, -0.733978,
		0.704567, -0.377729, 0.600755,
		-0.223984, -0.921662, -0.316812,
		39.550175, 36.960335, 25.158995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346088, 37.213509, 25.118629>,  <39.706963, 37.605495, 25.380762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346088, 37.213509, 25.118629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039680, 37.022739, 24.946230>,  <39.855835, 36.908279, 24.842791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039680, 37.022739, 24.946230>,  <40.346088, 37.213509, 25.118629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039680, 37.022739, 24.946230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482690, 0.016040, -0.875644,
		0.424528, -0.878798, 0.217919,
		-0.766019, -0.476923, -0.430997,
		39.809875, 36.879662, 24.816931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639198, 36.638084, 24.852341>,  <40.346088, 37.213509, 25.118629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639198, 36.638084, 24.852341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308193, 36.709736, 24.639496>,  <40.109592, 36.752728, 24.511789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308193, 36.709736, 24.639496>,  <40.639198, 36.638084, 24.852341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308193, 36.709736, 24.639496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549844, 0.066821, -0.832590,
		-0.113586, -0.981554, -0.153789,
		-0.827508, 0.179131, -0.532111,
		40.059940, 36.763474, 24.479862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882164, 36.400288, 24.162075>,  <40.639198, 36.638084, 24.852341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882164, 36.400288, 24.162075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516708, 36.560333, 24.133327>,  <40.297436, 36.656361, 24.116079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516708, 36.560333, 24.133327>,  <40.882164, 36.400288, 24.162075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516708, 36.560333, 24.133327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189395, 0.262525, -0.946155,
		-0.359706, -0.878058, -0.315634,
		-0.913642, 0.400117, -0.071868,
		40.242615, 36.680367, 24.111767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491371, 35.819874, 24.072586>,  <40.882164, 36.400288, 24.162075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491371, 35.819874, 24.072586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864635, 35.698521, 23.995462>,  <41.088593, 35.625710, 23.949188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864635, 35.698521, 23.995462>,  <40.491371, 35.819874, 24.072586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864635, 35.698521, 23.995462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102059, -0.290696, 0.951357,
		-0.344680, -0.907442, -0.240301,
		0.933156, -0.303389, -0.192809,
		41.144581, 35.607506, 23.937620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464005, 35.102661, 24.415718>,  <40.491371, 35.819874, 24.072586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464005, 35.102661, 24.415718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837284, 35.226162, 24.342159>,  <41.061253, 35.300262, 24.298023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837284, 35.226162, 24.342159>,  <40.464005, 35.102661, 24.415718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837284, 35.226162, 24.342159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309980, -0.432661, 0.846591,
		0.181824, -0.847039, -0.499465,
		0.933195, 0.308755, -0.183897,
		41.117241, 35.318787, 24.286989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947826, 34.577721, 24.571913>,  <40.464005, 35.102661, 24.415718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947826, 34.577721, 24.571913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179760, 34.903385, 24.584145>,  <41.318920, 35.098782, 24.591484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179760, 34.903385, 24.584145>,  <40.947826, 34.577721, 24.571913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179760, 34.903385, 24.584145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441570, -0.345583, 0.828002,
		0.684694, -0.466602, -0.559890,
		0.579836, 0.814159, 0.030581,
		41.353710, 35.147633, 24.593319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573463, 34.354050, 24.879894>,  <40.947826, 34.577721, 24.571913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573463, 34.354050, 24.879894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573513, 34.751575, 24.924311>,  <41.573544, 34.990089, 24.950960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573513, 34.751575, 24.924311>,  <41.573463, 34.354050, 24.879894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573513, 34.751575, 24.924311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242426, -0.107757, 0.964167,
		0.970170, 0.026804, -0.240940,
		0.000119, 0.993816, 0.111041,
		41.573547, 35.049721, 24.957623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028076, 34.395035, 25.416536>,  <41.573463, 34.354050, 24.879894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028076, 34.395035, 25.416536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835823, 34.745617, 25.405077>,  <41.720470, 34.955967, 25.398201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835823, 34.745617, 25.405077>,  <42.028076, 34.395035, 25.416536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835823, 34.745617, 25.405077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058969, 0.064900, 0.996148,
		0.874939, 0.477087, -0.082877,
		-0.480628, 0.876456, -0.028650,
		41.691635, 35.008553, 25.396482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300388, 34.750278, 25.994036>,  <42.028076, 34.395035, 25.416536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300388, 34.750278, 25.994036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961948, 34.948532, 25.915590>,  <41.758884, 35.067486, 25.868523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961948, 34.948532, 25.915590>,  <42.300388, 34.750278, 25.994036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961948, 34.948532, 25.915590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189720, 0.063802, 0.979763,
		0.498117, 0.866185, 0.040049,
		-0.846100, 0.495635, -0.196113,
		41.708118, 35.097221, 25.856756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371155, 35.163422, 26.577524>,  <42.300388, 34.750278, 25.994036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371155, 35.163422, 26.577524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002060, 35.152000, 26.423773>,  <41.780605, 35.145149, 26.331522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002060, 35.152000, 26.423773>,  <42.371155, 35.163422, 26.577524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002060, 35.152000, 26.423773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378131, -0.126176, 0.917113,
		-0.074686, 0.991597, 0.105630,
		-0.922734, -0.028554, -0.384378,
		41.725239, 35.143433, 26.308460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937992, 35.530025, 27.043432>,  <42.371155, 35.163422, 26.577524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937992, 35.530025, 27.043432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696857, 35.281250, 26.843521>,  <41.552177, 35.131985, 26.723574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696857, 35.281250, 26.843521>,  <41.937992, 35.530025, 27.043432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696857, 35.281250, 26.843521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455694, -0.245786, 0.855530,
		-0.654924, 0.743495, -0.135243,
		-0.602841, -0.621937, -0.499778,
		41.516006, 35.094669, 26.693588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369118, 35.684372, 27.391100>,  <41.937992, 35.530025, 27.043432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369118, 35.684372, 27.391100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288982, 35.336475, 27.210695>,  <41.240902, 35.127735, 27.102453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288982, 35.336475, 27.210695>,  <41.369118, 35.684372, 27.391100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288982, 35.336475, 27.210695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699100, -0.195606, 0.687748,
		-0.686386, 0.453081, -0.568852,
		-0.200334, -0.869745, -0.451010,
		41.228882, 35.075550, 27.075392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658051, 35.595959, 27.415188>,  <41.369118, 35.684372, 27.391100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658051, 35.595959, 27.415188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791702, 35.221684, 27.369844>,  <40.871895, 34.997120, 27.342638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791702, 35.221684, 27.369844>,  <40.658051, 35.595959, 27.415188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791702, 35.221684, 27.369844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554648, -0.292438, 0.779003,
		-0.762053, -0.197413, -0.616688,
		0.334128, -0.935686, -0.113359,
		40.891941, 34.940979, 27.335836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999092, 35.093117, 27.372175>,  <40.658051, 35.595959, 27.415188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999092, 35.093117, 27.372175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321968, 34.880272, 27.474400>,  <40.515694, 34.752567, 27.535734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321968, 34.880272, 27.474400>,  <39.999092, 35.093117, 27.372175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321968, 34.880272, 27.474400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510164, -0.411046, 0.755496,
		-0.296955, -0.740206, -0.603252,
		0.807187, -0.532105, 0.255565,
		40.564125, 34.720638, 27.551069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638893, 34.479233, 27.548912>,  <39.999092, 35.093117, 27.372175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638893, 34.479233, 27.548912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010967, 34.493523, 27.695049>,  <40.234211, 34.502098, 27.782732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010967, 34.493523, 27.695049>,  <39.638893, 34.479233, 27.548912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010967, 34.493523, 27.695049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337901, -0.305576, 0.890195,
		0.143444, -0.951497, -0.272170,
		0.930187, 0.035727, 0.365345,
		40.290024, 34.504242, 27.804653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776226, 33.715042, 27.906811>,  <39.638893, 34.479233, 27.548912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776226, 33.715042, 27.906811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021339, 33.988903, 28.064672>,  <40.168407, 34.153217, 28.159389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021339, 33.988903, 28.064672>,  <39.776226, 33.715042, 27.906811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021339, 33.988903, 28.064672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163254, -0.378954, 0.910902,
		0.773203, -0.622615, -0.120446,
		0.612785, 0.684649, 0.394653,
		40.205173, 34.194298, 28.183069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162575, 33.414795, 28.390173>,  <39.776226, 33.715042, 27.906811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162575, 33.414795, 28.390173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185219, 33.803097, 28.483494>,  <40.198807, 34.036079, 28.539486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185219, 33.803097, 28.483494>,  <40.162575, 33.414795, 28.390173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185219, 33.803097, 28.483494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255879, -0.211764, 0.943229,
		0.965050, -0.113096, 0.236407,
		0.056613, 0.970755, 0.233302,
		40.202202, 34.094322, 28.553484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564434, 33.454079, 29.073179>,  <40.162575, 33.414795, 28.390173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564434, 33.454079, 29.073179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352394, 33.791912, 29.043045>,  <40.225170, 33.994614, 29.024965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352394, 33.791912, 29.043045>,  <40.564434, 33.454079, 29.073179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352394, 33.791912, 29.043045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223444, -0.053433, 0.973251,
		0.817967, 0.532751, 0.217042,
		-0.530098, 0.844584, -0.075334,
		40.193363, 34.045288, 29.020445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527847, 33.755974, 29.816725>,  <40.564434, 33.454079, 29.073179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527847, 33.755974, 29.816725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277809, 33.993382, 29.613949>,  <40.127785, 34.135826, 29.492283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277809, 33.993382, 29.613949>,  <40.527847, 33.755974, 29.816725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277809, 33.993382, 29.613949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506877, 0.185227, 0.841883,
		0.593576, 0.783212, 0.185060,
		-0.625095, 0.593524, -0.506938,
		40.090282, 34.171440, 29.461866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444317, 34.376556, 30.160076>,  <40.527847, 33.755974, 29.816725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444317, 34.376556, 30.160076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099228, 34.363850, 29.958206>,  <39.892174, 34.356224, 29.837084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099228, 34.363850, 29.958206>,  <40.444317, 34.376556, 30.160076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099228, 34.363850, 29.958206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505658, 0.046818, 0.861463,
		-0.003741, 0.998398, -0.056456,
		-0.862726, -0.031770, -0.504673,
		39.840408, 34.354321, 29.806805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068214, 34.948898, 30.391768>,  <40.444317, 34.376556, 30.160076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068214, 34.948898, 30.391768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826992, 34.665226, 30.245674>,  <39.682259, 34.495022, 30.158018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826992, 34.665226, 30.245674>,  <40.068214, 34.948898, 30.391768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826992, 34.665226, 30.245674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392157, -0.135147, 0.909916,
		-0.694652, 0.691956, -0.196607,
		-0.603052, -0.709177, -0.365236,
		39.646076, 34.452473, 30.136103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474163, 35.078129, 30.599321>,  <40.068214, 34.948898, 30.391768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474163, 35.078129, 30.599321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436531, 34.688538, 30.516846>,  <39.413952, 34.454784, 30.467361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436531, 34.688538, 30.516846>,  <39.474163, 35.078129, 30.599321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436531, 34.688538, 30.516846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345642, -0.162269, 0.924229,
		-0.933638, 0.158220, -0.321382,
		-0.094081, -0.973979, -0.206188,
		39.408306, 34.396343, 30.454988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940514, 34.946129, 30.895657>,  <39.474163, 35.078129, 30.599321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940514, 34.946129, 30.895657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087852, 34.578274, 30.841112>,  <39.176254, 34.357563, 30.808386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087852, 34.578274, 30.841112>,  <38.940514, 34.946129, 30.895657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087852, 34.578274, 30.841112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395868, -0.287859, 0.872024,
		-0.841197, -0.267224, -0.470085,
		0.368344, -0.919635, -0.136361,
		39.198357, 34.302383, 30.800203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425888, 34.514454, 31.001722>,  <38.940514, 34.946129, 30.895657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425888, 34.514454, 31.001722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743752, 34.273869, 31.034626>,  <38.934467, 34.129517, 31.054369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743752, 34.273869, 31.034626>,  <38.425888, 34.514454, 31.001722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743752, 34.273869, 31.034626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374613, -0.379227, 0.846080,
		-0.477691, -0.703156, -0.526671,
		0.794654, -0.601463, 0.082258,
		38.982147, 34.093430, 31.059303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184315, 33.843136, 31.229437>,  <38.425888, 34.514454, 31.001722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184315, 33.843136, 31.229437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566368, 33.877937, 31.342680>,  <38.795601, 33.898819, 31.410625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566368, 33.877937, 31.342680>,  <38.184315, 33.843136, 31.229437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566368, 33.877937, 31.342680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280326, -0.042940, 0.958944,
		0.095592, -0.995282, -0.016623,
		0.955133, 0.087007, 0.283108,
		38.852909, 33.904037, 31.427612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245346, 33.375332, 31.813320>,  <38.184315, 33.843136, 31.229437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245346, 33.375332, 31.813320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579773, 33.594299, 31.827923>,  <38.780430, 33.725677, 31.836683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579773, 33.594299, 31.827923>,  <38.245346, 33.375332, 31.813320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579773, 33.594299, 31.827923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026992, -0.025416, 0.999313,
		0.547966, -0.836475, -0.006474,
		0.836065, 0.547415, 0.036505,
		38.830593, 33.758522, 31.838875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650227, 32.979870, 32.321442>,  <38.245346, 33.375332, 31.813320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650227, 32.979870, 32.321442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808552, 33.346828, 32.304863>,  <38.903545, 33.567005, 32.294914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808552, 33.346828, 32.304863>,  <38.650227, 32.979870, 32.321442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808552, 33.346828, 32.304863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008001, 0.048576, 0.998787,
		0.918298, -0.394997, 0.026567,
		0.395809, 0.917397, -0.041447,
		38.927296, 33.622047, 32.292427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177471, 32.975449, 32.841656>,  <38.650227, 32.979870, 32.321442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177471, 32.975449, 32.841656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111217, 33.366238, 32.787857>,  <39.071465, 33.600712, 32.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111217, 33.366238, 32.787857>,  <39.177471, 32.975449, 32.841656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111217, 33.366238, 32.787857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162197, 0.161513, 0.973450,
		0.972758, 0.139418, -0.185214,
		-0.165631, 0.976973, -0.134500,
		39.061527, 33.659328, 32.747509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746464, 33.361744, 33.047287>,  <39.177471, 32.975449, 32.841656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746464, 33.361744, 33.047287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410549, 33.574493, 33.090870>,  <39.209000, 33.702145, 33.117020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410549, 33.574493, 33.090870>,  <39.746464, 33.361744, 33.047287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410549, 33.574493, 33.090870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205891, 0.126288, 0.970392,
		0.502368, 0.837352, -0.215563,
		-0.839783, 0.531876, 0.108960,
		39.158615, 33.734055, 33.123558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890232, 33.899895, 33.580929>,  <39.746464, 33.361744, 33.047287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890232, 33.899895, 33.580929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491741, 33.909149, 33.547459>,  <39.252647, 33.914700, 33.527374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491741, 33.909149, 33.547459>,  <39.890232, 33.899895, 33.580929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491741, 33.909149, 33.547459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084637, -0.044171, 0.995432,
		0.019330, 0.998756, 0.045962,
		-0.996224, 0.023131, -0.083678,
		39.192875, 33.916088, 33.522354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700577, 34.436295, 33.949936>,  <39.890232, 33.899895, 33.580929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700577, 34.436295, 33.949936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372105, 34.209534, 33.923737>,  <39.175022, 34.073479, 33.908016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372105, 34.209534, 33.923737>,  <39.700577, 34.436295, 33.949936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372105, 34.209534, 33.923737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120056, 0.059404, 0.990988,
		-0.557901, 0.821642, -0.116842,
		-0.821178, -0.566900, -0.065502,
		39.125751, 34.039463, 33.904087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227154, 34.800560, 34.388302>,  <39.700577, 34.436295, 33.949936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227154, 34.800560, 34.388302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102169, 34.422047, 34.355057>,  <39.027176, 34.194939, 34.335110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102169, 34.422047, 34.355057>,  <39.227154, 34.800560, 34.388302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102169, 34.422047, 34.355057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187736, -0.147279, 0.971115,
		-0.931193, 0.287838, 0.223672,
		-0.312466, -0.946287, -0.083108,
		39.008430, 34.138161, 34.330124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667557, 34.786713, 34.855911>,  <39.227154, 34.800560, 34.388302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667557, 34.786713, 34.855911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798355, 34.419941, 34.764423>,  <38.876835, 34.199879, 34.709530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798355, 34.419941, 34.764423>,  <38.667557, 34.786713, 34.855911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798355, 34.419941, 34.764423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119892, -0.280318, 0.952391,
		-0.937390, -0.284005, -0.201595,
		0.326994, -0.916931, -0.228717,
		38.896454, 34.144863, 34.695808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187336, 34.312988, 35.239655>,  <38.667557, 34.786713, 34.855911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187336, 34.312988, 35.239655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518970, 34.106537, 35.153660>,  <38.717953, 33.982666, 35.102062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518970, 34.106537, 35.153660>,  <38.187336, 34.312988, 35.239655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518970, 34.106537, 35.153660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096777, -0.246237, 0.964366,
		-0.550680, -0.820350, -0.154202,
		0.829088, -0.516133, -0.214989,
		38.767696, 33.951698, 35.089165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031773, 33.719410, 35.585514>,  <38.187336, 34.312988, 35.239655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031773, 33.719410, 35.585514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421963, 33.707619, 35.498257>,  <38.656075, 33.700542, 35.445904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421963, 33.707619, 35.498257>,  <38.031773, 33.719410, 35.585514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421963, 33.707619, 35.498257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193107, -0.361113, 0.912309,
		-0.105667, -0.932056, -0.346563,
		0.975471, -0.029477, -0.218144,
		38.714603, 33.698776, 35.432812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273163, 33.027870, 35.782860>,  <38.031773, 33.719410, 35.585514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273163, 33.027870, 35.782860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589630, 33.270973, 35.810219>,  <38.779510, 33.416836, 35.826633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589630, 33.270973, 35.810219>,  <38.273163, 33.027870, 35.782860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589630, 33.270973, 35.810219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241359, -0.413027, 0.878154,
		0.561957, -0.678261, -0.473463,
		0.791170, 0.607759, 0.068400,
		38.826981, 33.453300, 35.830738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780788, 32.648140, 36.056835>,  <38.273163, 33.027870, 35.782860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780788, 32.648140, 36.056835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969292, 32.992683, 36.132694>,  <39.082394, 33.199409, 36.178207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969292, 32.992683, 36.132694>,  <38.780788, 32.648140, 36.056835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969292, 32.992683, 36.132694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208640, -0.317787, 0.924922,
		0.856960, -0.396314, -0.329476,
		0.471263, 0.861363, 0.189644,
		39.110672, 33.251091, 36.189587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380844, 32.491650, 36.530308>,  <38.780788, 32.648140, 36.056835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380844, 32.491650, 36.530308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304832, 32.881271, 36.579460>,  <39.259228, 33.115044, 36.608952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304832, 32.881271, 36.579460>,  <39.380844, 32.491650, 36.530308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304832, 32.881271, 36.579460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155046, -0.093820, 0.983442,
		0.969459, 0.205933, -0.133195,
		-0.190027, 0.974058, 0.122884,
		39.247826, 33.173489, 36.616325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881866, 32.802940, 36.902454>,  <39.380844, 32.491650, 36.530308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881866, 32.802940, 36.902454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557655, 33.029915, 36.960506>,  <39.363129, 33.166100, 36.995338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557655, 33.029915, 36.960506>,  <39.881866, 32.802940, 36.902454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557655, 33.029915, 36.960506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179910, 0.005399, 0.983668,
		0.557387, 0.823399, -0.106464,
		-0.810526, 0.567438, 0.145128,
		39.314499, 33.200146, 37.004044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079678, 33.166828, 37.444771>,  <39.881866, 32.802940, 36.902454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079678, 33.166828, 37.444771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687645, 33.246124, 37.449505>,  <39.452427, 33.293701, 37.452343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687645, 33.246124, 37.449505>,  <40.079678, 33.166828, 37.444771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687645, 33.246124, 37.449505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004874, -0.083572, 0.996490,
		0.198530, 0.976585, 0.082874,
		-0.980083, 0.198237, 0.011831,
		39.393620, 33.305595, 37.453053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983959, 33.737629, 37.886528>,  <40.079678, 33.166828, 37.444771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983959, 33.737629, 37.886528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648426, 33.519905, 37.882843>,  <39.447105, 33.389271, 37.880634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648426, 33.519905, 37.882843>,  <39.983959, 33.737629, 37.886528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648426, 33.519905, 37.882843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076312, -0.134320, 0.987995,
		-0.539012, 0.828061, 0.154210,
		-0.838834, -0.544309, -0.009209,
		39.396774, 33.356613, 37.880081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686596, 33.943005, 38.497196>,  <39.983959, 33.737629, 37.886528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686596, 33.943005, 38.497196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471645, 33.619259, 38.402405>,  <39.342674, 33.425011, 38.345531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471645, 33.619259, 38.402405>,  <39.686596, 33.943005, 38.497196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471645, 33.619259, 38.402405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010305, -0.287279, 0.957791,
		-0.843277, 0.512256, 0.162718,
		-0.537380, -0.809361, -0.236977,
		39.310432, 33.376450, 38.331310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158283, 33.823513, 39.021145>,  <39.686596, 33.943005, 38.497196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158283, 33.823513, 39.021145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174084, 33.461067, 38.852669>,  <39.183563, 33.243599, 38.751583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174084, 33.461067, 38.852669>,  <39.158283, 33.823513, 39.021145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174084, 33.461067, 38.852669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124940, -0.422687, 0.897622,
		-0.991378, 0.017168, -0.129906,
		0.039499, -0.906113, -0.421188,
		39.185932, 33.189232, 38.726311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619892, 33.448414, 39.428082>,  <39.158283, 33.823513, 39.021145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619892, 33.448414, 39.428082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868713, 33.182816, 39.262112>,  <39.018005, 33.023457, 39.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868713, 33.182816, 39.262112>,  <38.619892, 33.448414, 39.428082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868713, 33.182816, 39.262112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141937, -0.616784, 0.774229,
		-0.770002, -0.422719, -0.477918,
		0.622054, -0.663993, -0.414925,
		39.055328, 32.983620, 39.137634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349033, 32.786655, 39.504017>,  <38.619892, 33.448414, 39.428082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349033, 32.786655, 39.504017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736401, 32.701458, 39.452171>,  <38.968822, 32.650341, 39.421066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736401, 32.701458, 39.452171>,  <38.349033, 32.786655, 39.504017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736401, 32.701458, 39.452171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042506, -0.653270, 0.755931,
		-0.245678, -0.726548, -0.641692,
		0.968419, -0.212991, -0.129612,
		39.026928, 32.637562, 39.413288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440327, 32.012615, 39.366024>,  <38.349033, 32.786655, 39.504017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440327, 32.012615, 39.366024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779324, 32.171204, 39.507198>,  <38.982723, 32.266357, 39.591904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779324, 32.171204, 39.507198>,  <38.440327, 32.012615, 39.366024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779324, 32.171204, 39.507198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080505, -0.753220, 0.652824,
		0.524667, -0.524850, -0.670266,
		0.847493, 0.396475, 0.352937,
		39.033573, 32.290146, 39.613079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729446, 31.375168, 39.466808>,  <38.440327, 32.012615, 39.366024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729446, 31.375168, 39.466808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961140, 31.652363, 39.638508>,  <39.100155, 31.818680, 39.741528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961140, 31.652363, 39.638508>,  <38.729446, 31.375168, 39.466808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961140, 31.652363, 39.638508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440225, -0.709119, 0.550775,
		0.686069, -0.130062, -0.715817,
		0.579234, 0.692990, 0.429248,
		39.134911, 31.860260, 39.767281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388374, 31.154839, 39.599667>,  <38.729446, 31.375168, 39.466808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388374, 31.154839, 39.599667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416603, 31.451658, 39.866314>,  <39.433540, 31.629751, 40.026302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416603, 31.451658, 39.866314>,  <39.388374, 31.154839, 39.599667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416603, 31.451658, 39.866314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377412, -0.638469, 0.670759,
		0.923352, 0.204251, -0.325119,
		0.070575, 0.742051, 0.666618,
		39.437775, 31.674273, 40.066299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934269, 31.029884, 40.038155>,  <39.388374, 31.154839, 39.599667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934269, 31.029884, 40.038155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769398, 31.325581, 40.251183>,  <39.670475, 31.502998, 40.378998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769398, 31.325581, 40.251183>,  <39.934269, 31.029884, 40.038155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769398, 31.325581, 40.251183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306671, -0.437859, 0.845123,
		0.857938, 0.511669, -0.046226,
		-0.412182, 0.739239, 0.532570,
		39.645744, 31.547352, 40.410954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443588, 31.186846, 40.619587>,  <39.934269, 31.029884, 40.038155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443588, 31.186846, 40.619587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081886, 31.303820, 40.744038>,  <39.864864, 31.374004, 40.818707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081886, 31.303820, 40.744038>,  <40.443588, 31.186846, 40.619587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081886, 31.303820, 40.744038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073450, -0.611256, 0.788018,
		0.420621, 0.735423, 0.531253,
		-0.904258, 0.292436, 0.311124,
		39.810608, 31.391550, 40.837376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456280, 31.339531, 41.362953>,  <40.443588, 31.186846, 40.619587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456280, 31.339531, 41.362953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076900, 31.239511, 41.285065>,  <39.849274, 31.179501, 41.238331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076900, 31.239511, 41.285065>,  <40.456280, 31.339531, 41.362953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076900, 31.239511, 41.285065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023809, -0.668886, 0.742983,
		-0.316027, 0.700047, 0.640359,
		-0.948451, -0.250049, -0.194719,
		39.792366, 31.164497, 41.226650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168457, 31.252678, 42.004818>,  <40.456280, 31.339531, 41.362953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168457, 31.252678, 42.004818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910202, 31.068567, 41.761082>,  <39.755249, 30.958101, 41.614838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910202, 31.068567, 41.761082>,  <40.168457, 31.252678, 42.004818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910202, 31.068567, 41.761082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357910, -0.522482, 0.773894,
		-0.674576, 0.717745, 0.172596,
		-0.645637, -0.460277, -0.609342,
		39.716511, 30.930485, 41.578278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523293, 31.235441, 42.310631>,  <40.168457, 31.252678, 42.004818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523293, 31.235441, 42.310631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491478, 30.944298, 42.038189>,  <39.472389, 30.769611, 41.874725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491478, 30.944298, 42.038189>,  <39.523293, 31.235441, 42.310631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491478, 30.944298, 42.038189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311815, -0.630811, 0.710528,
		-0.946808, 0.268893, -0.176782,
		-0.079540, -0.727856, -0.681101,
		39.467617, 30.725941, 41.833858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805771, 30.973789, 42.349239>,  <39.523293, 31.235441, 42.310631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805771, 30.973789, 42.349239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043667, 30.689589, 42.198792>,  <39.186405, 30.519068, 42.108524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043667, 30.689589, 42.198792>,  <38.805771, 30.973789, 42.349239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043667, 30.689589, 42.198792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331788, -0.643091, 0.690181,
		-0.732255, -0.285688, -0.618211,
		0.594743, -0.710504, -0.376119,
		39.222092, 30.476437, 42.085957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341644, 30.350147, 42.329231>,  <38.805771, 30.973789, 42.349239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341644, 30.350147, 42.329231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731529, 30.262346, 42.345947>,  <38.965462, 30.209665, 42.355976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731529, 30.262346, 42.345947>,  <38.341644, 30.350147, 42.329231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731529, 30.262346, 42.345947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173888, -0.627709, 0.758778,
		-0.140322, -0.746860, -0.650007,
		0.974717, -0.219501, 0.041788,
		39.023945, 30.196495, 42.358482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349602, 29.576033, 42.420120>,  <38.341644, 30.350147, 42.329231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349602, 29.576033, 42.420120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728161, 29.677677, 42.499874>,  <38.955296, 29.738665, 42.547726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728161, 29.677677, 42.499874>,  <38.349602, 29.576033, 42.420120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728161, 29.677677, 42.499874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015107, -0.651449, 0.758542,
		0.322644, -0.714872, -0.620370,
		0.946400, 0.254112, 0.199387,
		39.012081, 29.753910, 42.559689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749512, 29.027351, 42.397865>,  <38.349602, 29.576033, 42.420120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749512, 29.027351, 42.397865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916405, 29.291365, 42.647751>,  <39.016541, 29.449772, 42.797684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.916405, 29.291365, 42.647751>,  <38.749512, 29.027351, 42.397865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916405, 29.291365, 42.647751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113646, -0.644122, 0.756433,
		0.901665, -0.386606, -0.193740,
		0.417234, 0.660032, 0.624719,
		39.041576, 29.489374, 42.835167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419647, 28.839214, 42.684967>,  <38.749512, 29.027351, 42.397865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419647, 28.839214, 42.684967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226429, 29.072121, 42.946541>,  <39.110497, 29.211864, 43.103485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226429, 29.072121, 42.946541>,  <39.419647, 28.839214, 42.684967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226429, 29.072121, 42.946541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138762, -0.686503, 0.713764,
		0.864530, 0.435522, 0.250815,
		-0.483045, 0.582267, 0.653936,
		39.081516, 29.246801, 43.142723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798466, 28.715050, 43.385769>,  <39.419647, 28.839214, 42.684967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798466, 28.715050, 43.385769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443668, 28.874567, 43.478897>,  <39.230789, 28.970278, 43.534775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.443668, 28.874567, 43.478897>,  <39.798466, 28.715050, 43.385769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443668, 28.874567, 43.478897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055504, -0.592595, 0.803586,
		0.458435, 0.699853, 0.547763,
		-0.886993, 0.398795, 0.232821,
		39.177570, 28.994205, 43.548744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890694, 29.017750, 44.032871>,  <39.798466, 28.715050, 43.385769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890694, 29.017750, 44.032871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500385, 28.939735, 43.993225>,  <39.266201, 28.892927, 43.969437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500385, 28.939735, 43.993225>,  <39.890694, 29.017750, 44.032871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500385, 28.939735, 43.993225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018669, -0.377153, 0.925963,
		-0.217978, 0.905382, 0.364376,
		-0.975775, -0.195037, -0.099113,
		39.207653, 28.881224, 43.963490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706200, 29.154512, 44.696800>,  <39.890694, 29.017750, 44.032871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706200, 29.154512, 44.696800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392109, 28.966345, 44.535740>,  <39.203655, 28.853445, 44.439106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392109, 28.966345, 44.535740>,  <39.706200, 29.154512, 44.696800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392109, 28.966345, 44.535740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208493, -0.411429, 0.887275,
		-0.583052, 0.780661, 0.224986,
		-0.785227, -0.470419, -0.402647,
		39.156540, 28.825218, 44.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098679, 29.162453, 45.220364>,  <39.706200, 29.154512, 44.696800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098679, 29.162453, 45.220364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025322, 28.860416, 44.968582>,  <38.981308, 28.679195, 44.817513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025322, 28.860416, 44.968582>,  <39.098679, 29.162453, 45.220364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025322, 28.860416, 44.968582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115354, -0.619357, 0.776589,
		-0.976248, 0.215030, 0.026482,
		-0.183392, -0.755089, -0.629451,
		38.970303, 28.633890, 44.779747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507793, 28.910873, 45.480446>,  <39.098679, 29.162453, 45.220364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507793, 28.910873, 45.480446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768448, 28.649578, 45.326221>,  <38.924839, 28.492802, 45.233688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768448, 28.649578, 45.326221>,  <38.507793, 28.910873, 45.480446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768448, 28.649578, 45.326221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092002, -0.436478, 0.894998,
		-0.752935, -0.618682, -0.224324,
		0.651632, -0.653237, -0.385559,
		38.963936, 28.453608, 45.210552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252743, 28.237560, 45.607998>,  <38.507793, 28.910873, 45.480446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252743, 28.237560, 45.607998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652451, 28.252232, 45.612141>,  <38.892277, 28.261034, 45.614628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652451, 28.252232, 45.612141>,  <38.252743, 28.237560, 45.607998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652451, 28.252232, 45.612141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009957, -0.513619, 0.857961,
		0.036791, -0.857234, -0.513611,
		0.999273, 0.036679, 0.010361,
		38.952232, 28.263235, 45.615250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468777, 27.603876, 45.822842>,  <38.252743, 28.237560, 45.607998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468777, 27.603876, 45.822842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726650, 27.878746, 45.956814>,  <38.881374, 28.043669, 46.037197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726650, 27.878746, 45.956814>,  <38.468777, 27.603876, 45.822842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726650, 27.878746, 45.956814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031145, -0.414158, 0.909672,
		0.763818, -0.596878, -0.245597,
		0.644679, 0.687175, 0.334931,
		38.920055, 28.084898, 46.057293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153835, 27.606136, 46.202412>,  <38.468777, 27.603876, 45.822842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153835, 27.606136, 46.202412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946693, 27.916637, 46.346222>,  <38.822407, 28.102938, 46.432507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946693, 27.916637, 46.346222>,  <39.153835, 27.606136, 46.202412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946693, 27.916637, 46.346222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101598, -0.361482, 0.926827,
		0.849415, 0.516488, 0.108329,
		-0.517854, 0.776255, 0.359523,
		38.791336, 28.149513, 46.454079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235504, 27.618034, 45.472782>,  <39.153835, 27.606136, 46.202412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235504, 27.618034, 45.472782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035912, 27.428627, 45.182457>,  <38.916157, 27.314981, 45.008263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035912, 27.428627, 45.182457>,  <39.235504, 27.618034, 45.472782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035912, 27.428627, 45.182457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082014, 0.807962, -0.583499,
		0.862725, -0.350679, -0.364319,
		-0.498977, -0.473520, -0.725810,
		38.886219, 27.286572, 44.964714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668144, 27.615335, 44.910870>,  <39.235504, 27.618034, 45.472782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668144, 27.615335, 44.910870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269905, 27.611685, 44.873569>,  <39.030960, 27.609495, 44.851189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269905, 27.611685, 44.873569>,  <39.668144, 27.615335, 44.910870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269905, 27.611685, 44.873569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025364, 0.931836, -0.361993,
		0.090201, -0.362766, -0.927504,
		-0.995601, -0.009127, -0.093254,
		38.971226, 27.608946, 44.845592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461254, 27.670053, 44.252705>,  <39.668144, 27.615335, 44.910870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461254, 27.670053, 44.252705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191639, 27.806337, 44.514877>,  <39.029869, 27.888107, 44.672180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191639, 27.806337, 44.514877>,  <39.461254, 27.670053, 44.252705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191639, 27.806337, 44.514877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218914, 0.755289, -0.617751,
		-0.705511, -0.559871, -0.434509,
		-0.674040, 0.340710, 0.655428,
		38.989426, 27.908550, 44.711506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829678, 27.661476, 43.928574>,  <39.461254, 27.670053, 44.252705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829678, 27.661476, 43.928574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834515, 27.952168, 44.203300>,  <38.837418, 28.126583, 44.368137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834515, 27.952168, 44.203300>,  <38.829678, 27.661476, 43.928574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834515, 27.952168, 44.203300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234513, 0.669772, -0.704563,
		-0.972038, -0.152550, 0.178524,
		0.012089, 0.726728, 0.686819,
		38.838142, 28.170185, 44.409348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193886, 28.140558, 43.937050>,  <38.829678, 27.661476, 43.928574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193886, 28.140558, 43.937050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495010, 28.366070, 44.072945>,  <38.675686, 28.501377, 44.154484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495010, 28.366070, 44.072945>,  <38.193886, 28.140558, 43.937050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495010, 28.366070, 44.072945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244607, 0.718789, -0.650776,
		-0.611097, 0.406810, 0.679018,
		0.752813, 0.563780, 0.339741,
		38.720856, 28.535204, 44.174866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881615, 28.785881, 43.969345>,  <38.193886, 28.140558, 43.937050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881615, 28.785881, 43.969345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280575, 28.812490, 43.980469>,  <38.519951, 28.828455, 43.987144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280575, 28.812490, 43.980469>,  <37.881615, 28.785881, 43.969345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280575, 28.812490, 43.980469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023985, 0.669891, -0.742072,
		-0.067996, 0.739474, 0.669743,
		0.997397, 0.066521, 0.027813,
		38.579796, 28.832447, 43.988811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049744, 29.398960, 43.933994>,  <37.881615, 28.785881, 43.969345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049744, 29.398960, 43.933994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381550, 29.238770, 43.778294>,  <38.580635, 29.142656, 43.684872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381550, 29.238770, 43.778294>,  <38.049744, 29.398960, 43.933994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381550, 29.238770, 43.778294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020928, 0.718786, -0.694916,
		0.558085, 0.568301, 0.604629,
		0.829520, -0.400475, -0.389250,
		38.630405, 29.118628, 43.661518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344879, 30.015503, 43.847649>,  <38.049744, 29.398960, 43.933994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344879, 30.015503, 43.847649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538567, 29.750912, 43.618572>,  <38.654778, 29.592157, 43.481125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538567, 29.750912, 43.618572>,  <38.344879, 30.015503, 43.847649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538567, 29.750912, 43.618572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087055, 0.687723, -0.720735,
		0.870607, 0.299135, 0.390591,
		0.484215, -0.661480, -0.572695,
		38.683830, 29.552467, 43.446762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847595, 30.404531, 43.611919>,  <38.344879, 30.015503, 43.847649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847595, 30.404531, 43.611919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789471, 30.092443, 43.368561>,  <38.754597, 29.905191, 43.222546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789471, 30.092443, 43.368561>,  <38.847595, 30.404531, 43.611919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789471, 30.092443, 43.368561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159082, 0.588495, -0.792696,
		0.976513, -0.211973, 0.038603,
		-0.145313, -0.780219, -0.608394,
		38.745876, 29.858377, 43.186043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643078, 30.248466, 43.362862>,  <38.847595, 30.404531, 43.611919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643078, 30.248466, 43.362862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614193, 29.908909, 43.153419>,  <39.596863, 29.705175, 43.027752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614193, 29.908909, 43.153419>,  <39.643078, 30.248466, 43.362862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614193, 29.908909, 43.153419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113537, 0.528563, -0.841267,
		0.990906, -0.001297, -0.134547,
		-0.072208, -0.848893, -0.523609,
		39.592529, 29.654242, 42.996338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194107, 30.164125, 42.840698>,  <39.643078, 30.248466, 43.362862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194107, 30.164125, 42.840698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856079, 29.978115, 42.735161>,  <39.653263, 29.866508, 42.671841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856079, 29.978115, 42.735161>,  <40.194107, 30.164125, 42.840698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856079, 29.978115, 42.735161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078908, 0.379591, -0.921783,
		0.528805, -0.799788, -0.284085,
		-0.845067, -0.465027, -0.263840,
		39.602558, 29.838608, 42.656010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315472, 29.796989, 42.230007>,  <40.194107, 30.164125, 42.840698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315472, 29.796989, 42.230007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919788, 29.853504, 42.214535>,  <39.682377, 29.887413, 42.205250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919788, 29.853504, 42.214535>,  <40.315472, 29.796989, 42.230007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919788, 29.853504, 42.214535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081013, 0.307640, -0.948048,
		-0.122045, -0.940955, -0.315767,
		-0.989213, 0.141286, -0.038684,
		39.623024, 29.895889, 42.202930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016647, 29.592104, 41.574200>,  <40.315472, 29.796989, 42.230007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016647, 29.592104, 41.574200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763493, 29.857565, 41.733707>,  <39.611599, 30.016842, 41.829411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763493, 29.857565, 41.733707>,  <40.016647, 29.592104, 41.574200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763493, 29.857565, 41.733707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043889, 0.544964, -0.837310,
		-0.772996, -0.512424, -0.374029,
		-0.632891, 0.663653, 0.398766,
		39.573624, 30.056662, 41.853336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581959, 29.731640, 41.019005>,  <40.016647, 29.592104, 41.574200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581959, 29.731640, 41.019005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575077, 30.019974, 41.296162>,  <39.570946, 30.192974, 41.462456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575077, 30.019974, 41.296162>,  <39.581959, 29.731640, 41.019005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575077, 30.019974, 41.296162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145363, 0.683832, -0.715013,
		-0.989229, -0.113026, 0.093015,
		-0.017208, 0.720833, 0.692896,
		39.569916, 30.236223, 41.504032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073215, 30.196516, 40.736130>,  <39.581959, 29.731640, 41.019005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073215, 30.196516, 40.736130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240456, 30.400129, 41.037083>,  <39.340801, 30.522297, 41.217655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240456, 30.400129, 41.037083>,  <39.073215, 30.196516, 40.736130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240456, 30.400129, 41.037083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155195, 0.856097, -0.492962,
		-0.895046, 0.089342, 0.436933,
		0.418100, 0.509034, 0.752381,
		39.365887, 30.552839, 41.262798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649555, 30.826153, 40.812691>,  <39.073215, 30.196516, 40.736130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649555, 30.826153, 40.812691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001175, 30.950710, 40.957081>,  <39.212147, 31.025444, 41.043716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001175, 30.950710, 40.957081>,  <38.649555, 30.826153, 40.812691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001175, 30.950710, 40.957081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056601, 0.820011, -0.569542,
		-0.473355, 0.480225, 0.738457,
		0.879051, 0.311394, 0.360975,
		39.264889, 31.044128, 41.065372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617077, 31.504343, 41.181343>,  <38.649555, 30.826153, 40.812691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617077, 31.504343, 41.181343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985622, 31.466856, 41.030453>,  <39.206749, 31.444365, 40.939919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985622, 31.466856, 41.030453>,  <38.617077, 31.504343, 41.181343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985622, 31.466856, 41.030453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101048, 0.879380, -0.465275,
		0.375330, 0.466807, 0.800761,
		0.921367, -0.093717, -0.377228,
		39.262032, 31.438742, 40.917286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987930, 32.110928, 41.331715>,  <38.617077, 31.504343, 41.181343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987930, 32.110928, 41.331715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182922, 31.939543, 41.027401>,  <39.299919, 31.836714, 40.844814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182922, 31.939543, 41.027401>,  <38.987930, 32.110928, 41.331715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182922, 31.939543, 41.027401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192152, 0.797316, -0.572157,
		0.851728, 0.425101, 0.306346,
		0.487479, -0.428457, -0.760781,
		39.329166, 31.811005, 40.799168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310017, 32.588043, 41.001137>,  <38.987930, 32.110928, 41.331715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310017, 32.588043, 41.001137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330891, 32.311527, 40.712860>,  <39.343414, 32.145618, 40.539894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330891, 32.311527, 40.712860>,  <39.310017, 32.588043, 41.001137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330891, 32.311527, 40.712860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039280, 0.719694, -0.693179,
		0.997865, 0.064479, 0.010400,
		0.052181, -0.691290, -0.720690,
		39.346546, 32.104141, 40.496655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761345, 32.931511, 40.463287>,  <39.310017, 32.588043, 41.001137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761345, 32.931511, 40.463287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643002, 32.602566, 40.268890>,  <39.571995, 32.405201, 40.152252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643002, 32.602566, 40.268890>,  <39.761345, 32.931511, 40.463287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643002, 32.602566, 40.268890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101104, 0.478955, -0.871998,
		0.949865, -0.307128, -0.058561,
		-0.295863, -0.822359, -0.485994,
		39.554241, 32.355858, 40.123093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148170, 32.768955, 39.925014>,  <39.761345, 32.931511, 40.463287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148170, 32.768955, 39.925014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818584, 32.584900, 39.792740>,  <39.620834, 32.474464, 39.713375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818584, 32.584900, 39.792740>,  <40.148170, 32.768955, 39.925014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818584, 32.584900, 39.792740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116691, 0.433285, -0.893671,
		0.554493, -0.774942, -0.303318,
		-0.823966, -0.460140, -0.330683,
		39.571396, 32.446857, 39.693535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266991, 32.501450, 39.245083>,  <40.148170, 32.768955, 39.925014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266991, 32.501450, 39.245083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868256, 32.519501, 39.271255>,  <39.629013, 32.530331, 39.286957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868256, 32.519501, 39.271255>,  <40.266991, 32.501450, 39.245083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868256, 32.519501, 39.271255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037839, 0.454439, -0.889974,
		-0.069898, -0.889634, -0.451293,
		-0.996836, 0.045131, 0.065427,
		39.569206, 32.533039, 39.290882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984570, 32.256905, 38.594070>,  <40.266991, 32.501450, 39.245083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984570, 32.256905, 38.594070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684452, 32.461914, 38.761105>,  <39.504383, 32.584919, 38.861324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684452, 32.461914, 38.761105>,  <39.984570, 32.256905, 38.594070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684452, 32.461914, 38.761105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128501, 0.506533, -0.852591,
		-0.648495, -0.693354, -0.314189,
		-0.750295, 0.512528, 0.417581,
		39.459362, 32.615673, 38.886379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773987, 32.308170, 38.542042>,  <39.984570, 32.256905, 38.594070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773987, 32.308170, 38.542042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876667, 32.690037, 38.481747>,  <40.938274, 32.919155, 38.445572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.876667, 32.690037, 38.481747>,  <40.773987, 32.308170, 38.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876667, 32.690037, 38.481747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849027, -0.297259, -0.436795,
		-0.461801, -0.015853, -0.886842,
		0.256697, 0.954665, -0.150734,
		40.953674, 32.976437, 38.436527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108604, 32.063572, 37.969536>,  <40.773987, 32.308170, 38.542042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108604, 32.063572, 37.969536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251091, 32.411030, 38.107269>,  <41.336582, 32.619507, 38.189911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251091, 32.411030, 38.107269>,  <41.108604, 32.063572, 37.969536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251091, 32.411030, 38.107269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866603, -0.169304, -0.469398,
		-0.349444, 0.465605, -0.813081,
		0.356212, 0.868647, 0.344333,
		41.357956, 32.671623, 38.210567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252666, 32.633350, 37.404713>,  <41.108604, 32.063572, 37.969536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252666, 32.633350, 37.404713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511921, 32.680592, 37.705635>,  <41.667473, 32.708935, 37.886189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511921, 32.680592, 37.705635>,  <41.252666, 32.633350, 37.404713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511921, 32.680592, 37.705635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761503, -0.093406, -0.641395,
		-0.005480, 0.988599, -0.150475,
		0.648138, 0.118102, 0.752309,
		41.706364, 32.716022, 37.931328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652172, 33.206009, 37.270927>,  <41.252666, 32.633350, 37.404713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652172, 33.206009, 37.270927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864487, 32.974335, 37.518414>,  <41.991875, 32.835331, 37.666904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864487, 32.974335, 37.518414>,  <41.652172, 33.206009, 37.270927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864487, 32.974335, 37.518414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789404, 0.072212, -0.609612,
		0.308402, 0.811989, 0.495543,
		0.530782, -0.579189, 0.618717,
		42.023720, 32.800579, 37.704029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249691, 33.464783, 37.705818>,  <41.652172, 33.206009, 37.270927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249691, 33.464783, 37.705818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295544, 33.098366, 37.552074>,  <42.323055, 32.878517, 37.459827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295544, 33.098366, 37.552074>,  <42.249691, 33.464783, 37.705818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295544, 33.098366, 37.552074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860401, 0.284951, -0.422509,
		0.496558, -0.282270, 0.820825,
		0.114633, -0.916039, -0.384360,
		42.329933, 32.823555, 37.436768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807644, 32.935547, 38.042671>,  <42.249691, 33.464783, 37.705818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807644, 32.935547, 38.042671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725712, 32.945618, 37.651283>,  <42.676552, 32.951660, 37.416451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725712, 32.945618, 37.651283>,  <42.807644, 32.935547, 38.042671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725712, 32.945618, 37.651283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965714, 0.168098, -0.197836,
		0.159497, -0.985449, -0.058750,
		-0.204833, 0.025182, -0.978473,
		42.664261, 32.953171, 37.357742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121452, 32.414665, 37.719330>,  <42.807644, 32.935547, 38.042671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121452, 32.414665, 37.719330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064373, 32.747982, 37.505692>,  <43.030125, 32.947971, 37.377506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064373, 32.747982, 37.505692>,  <43.121452, 32.414665, 37.719330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064373, 32.747982, 37.505692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988306, 0.090670, -0.122596,
		-0.053732, -0.545349, -0.836485,
		-0.142702, 0.833291, -0.534100,
		43.021561, 32.997971, 37.345463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816669, 32.613503, 37.409107>,  <43.121452, 32.414665, 37.719330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816669, 32.613503, 37.409107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561470, 32.893040, 37.279755>,  <43.408348, 33.060760, 37.202145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561470, 32.893040, 37.279755>,  <43.816669, 32.613503, 37.409107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561470, 32.893040, 37.279755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767096, 0.540160, -0.346107,
		-0.067199, -0.468879, -0.880703,
		-0.638003, 0.698842, -0.323377,
		43.370068, 33.102692, 37.182743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638496, 32.721203, 36.664116>,  <43.816669, 32.613503, 37.409107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638496, 32.721203, 36.664116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630054, 33.045815, 36.897690>,  <43.624989, 33.240582, 37.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630054, 33.045815, 36.897690>,  <43.638496, 32.721203, 36.664116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630054, 33.045815, 36.897690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821191, 0.347216, -0.452865,
		-0.570263, 0.469961, -0.673748,
		-0.021107, 0.811528, 0.583933,
		43.623722, 33.289272, 37.072868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754032, 33.262981, 36.224972>,  <43.638496, 32.721203, 36.664116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754032, 33.262981, 36.224972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910576, 33.366066, 36.578339>,  <44.004501, 33.427917, 36.790359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910576, 33.366066, 36.578339>,  <43.754032, 33.262981, 36.224972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910576, 33.366066, 36.578339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697802, 0.542731, -0.467456,
		-0.599928, 0.799391, 0.032569,
		0.391357, 0.257714, 0.883416,
		44.027985, 33.443378, 36.843365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827076, 33.980995, 36.128975>,  <43.754032, 33.262981, 36.224972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827076, 33.980995, 36.128975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100960, 33.804050, 36.360661>,  <44.265289, 33.697884, 36.499672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100960, 33.804050, 36.360661>,  <43.827076, 33.980995, 36.128975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100960, 33.804050, 36.360661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722255, 0.305480, -0.620508,
		0.097551, 0.843207, 0.528664,
		0.684713, -0.442361, 0.579211,
		44.306374, 33.671341, 36.534424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216068, 34.470486, 36.261074>,  <43.827076, 33.980995, 36.128975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216068, 34.470486, 36.261074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395561, 34.113033, 36.264309>,  <44.503258, 33.898563, 36.266251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395561, 34.113033, 36.264309>,  <44.216068, 34.470486, 36.261074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395561, 34.113033, 36.264309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800253, 0.397786, -0.448734,
		0.397786, 0.207831, 0.893629,
		0.448734, -0.893629, 0.008083,
		44.530182, 33.844944, 36.266735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801182, 34.710041, 36.074341>,  <44.216068, 34.470486, 36.261074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801182, 34.710041, 36.074341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825333, 34.316563, 36.006577>,  <44.839821, 34.080475, 35.965919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825333, 34.316563, 36.006577>,  <44.801182, 34.710041, 36.074341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825333, 34.316563, 36.006577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871086, 0.134795, -0.472270,
		0.487405, -0.119056, 0.865021,
		0.060374, -0.983695, -0.169408,
		44.843445, 34.021454, 35.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488911, 34.474403, 36.189358>,  <44.801182, 34.710041, 36.074341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488911, 34.474403, 36.189358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324497, 34.249928, 35.901993>,  <45.225849, 34.115242, 35.729572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324497, 34.249928, 35.901993>,  <45.488911, 34.474403, 36.189358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324497, 34.249928, 35.901993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801757, 0.152524, -0.577860,
		0.433867, -0.813510, 0.387249,
		-0.411030, -0.561194, -0.718412,
		45.201187, 34.081570, 35.686470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994396, 33.969181, 35.892780>,  <45.488911, 34.474403, 36.189358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994396, 33.969181, 35.892780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735046, 34.111473, 35.623543>,  <45.579437, 34.196850, 35.461998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.735046, 34.111473, 35.623543>,  <45.994396, 33.969181, 35.892780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735046, 34.111473, 35.623543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750713, 0.151681, -0.642979,
		-0.126632, -0.922197, -0.365400,
		-0.648378, 0.355732, -0.673098,
		45.540531, 34.218193, 35.421612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926147, 33.599285, 35.201805>,  <45.994396, 33.969181, 35.892780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926147, 33.599285, 35.201805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860458, 33.990826, 35.153008>,  <45.821045, 34.225750, 35.123730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860458, 33.990826, 35.153008>,  <45.926147, 33.599285, 35.201805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860458, 33.990826, 35.153008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733905, 0.038614, -0.678154,
		-0.659100, -0.200902, -0.724724,
		-0.164227, 0.978850, -0.121992,
		45.811192, 34.284481, 35.116409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679089, 33.697697, 35.267483>,  <45.926147, 33.599285, 35.201805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679089, 33.697697, 35.267483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046623, 33.540340, 35.254902>,  <47.267143, 33.445927, 35.247353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.046623, 33.540340, 35.254902>,  <46.679089, 33.697697, 35.267483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046623, 33.540340, 35.254902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394599, 0.914592, 0.088393,
		-0.006006, -0.093630, 0.995589,
		0.918834, -0.393389, -0.031453,
		47.322273, 33.422325, 35.245464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.027107, 33.853073, 35.869350>,  <46.679089, 33.697697, 35.267483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.027107, 33.853073, 35.869350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313457, 33.811993, 35.593094>,  <47.485268, 33.787346, 35.427341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.313457, 33.811993, 35.593094>,  <47.027107, 33.853073, 35.869350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.313457, 33.811993, 35.593094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258400, 0.957864, 0.125403,
		0.648658, -0.268234, 0.712245,
		0.715871, -0.102701, -0.690638,
		47.528217, 33.781181, 35.385902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.764565, 34.099072, 36.010452>,  <47.027107, 33.853073, 35.869350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.764565, 34.099072, 36.010452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718346, 34.123703, 35.613895>,  <47.690613, 34.138481, 35.375961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.718346, 34.123703, 35.613895>,  <47.764565, 34.099072, 36.010452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.718346, 34.123703, 35.613895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058075, 0.996788, 0.055141,
		0.991603, -0.051203, -0.118750,
		-0.115545, 0.061574, -0.991392,
		47.683681, 34.142174, 35.316479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.250011, 34.607498, 35.571125>,  <47.764565, 34.099072, 36.010452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.250011, 34.607498, 35.571125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927124, 34.574512, 35.337337>,  <47.733391, 34.554722, 35.197067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.927124, 34.574512, 35.337337>,  <48.250011, 34.607498, 35.571125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.927124, 34.574512, 35.337337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064169, 0.996584, -0.051983,
		0.586755, -0.004458, -0.809752,
		-0.807218, -0.082462, -0.584464,
		47.684959, 34.549774, 35.161999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.335217, 35.026699, 34.849369>,  <48.250011, 34.607498, 35.571125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.335217, 35.026699, 34.849369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.970722, 34.990376, 35.010071>,  <47.752026, 34.968582, 35.106491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.970722, 34.990376, 35.010071>,  <48.335217, 35.026699, 34.849369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.970722, 34.990376, 35.010071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087835, 0.995799, 0.025865,
		-0.402415, -0.011719, -0.915382,
		-0.911234, -0.090811, 0.401754,
		47.697353, 34.963131, 35.130596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.518227, 29.986908, 29.260424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131641, 30.087326, 29.282068>,  <38.899689, 30.147577, 29.295055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.131641, 30.087326, 29.282068>,  <39.518227, 29.986908, 29.260424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131641, 30.087326, 29.282068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029367, -0.317370, 0.947847,
		0.255125, 0.914469, 0.314098,
		-0.966462, 0.251043, 0.054114,
		38.841702, 30.162640, 29.298302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442097, 30.181873, 29.907602>,  <39.518227, 29.986908, 29.260424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442097, 30.181873, 29.907602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053516, 30.195988, 29.813759>,  <38.820370, 30.204456, 29.757452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053516, 30.195988, 29.813759>,  <39.442097, 30.181873, 29.907602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053516, 30.195988, 29.813759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237246, -0.149075, 0.959943,
		-0.001102, 0.988196, 0.153190,
		-0.971449, 0.035286, -0.234610,
		38.762081, 30.206573, 29.743376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099346, 30.596022, 30.364500>,  <39.442097, 30.181873, 29.907602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099346, 30.596022, 30.364500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822010, 30.342094, 30.228100>,  <38.655609, 30.189737, 30.146259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822010, 30.342094, 30.228100>,  <39.099346, 30.596022, 30.364500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822010, 30.342094, 30.228100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314943, -0.158671, 0.935754,
		-0.648142, 0.756192, -0.089919,
		-0.693342, -0.634820, -0.340999,
		38.614006, 30.151648, 30.125801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338047, 30.834818, 30.611250>,  <39.099346, 30.596022, 30.364500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338047, 30.834818, 30.611250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380199, 30.441502, 30.551876>,  <38.405491, 30.205511, 30.516253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.380199, 30.441502, 30.551876>,  <38.338047, 30.834818, 30.611250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380199, 30.441502, 30.551876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182454, -0.165847, 0.969126,
		-0.977551, -0.075041, -0.196882,
		0.105377, -0.983292, -0.148432,
		38.411812, 30.146515, 30.507347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784447, 30.545238, 30.868231>,  <38.338047, 30.834818, 30.611250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784447, 30.545238, 30.868231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033703, 30.232397, 30.869688>,  <38.183254, 30.044691, 30.870562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033703, 30.232397, 30.869688>,  <37.784447, 30.545238, 30.868231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033703, 30.232397, 30.869688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296202, -0.231680, 0.926601,
		-0.723855, -0.578477, -0.376029,
		0.623136, -0.782106, 0.003644,
		38.220642, 29.997765, 30.870781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379025, 30.050686, 31.142656>,  <37.784447, 30.545238, 30.868231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379025, 30.050686, 31.142656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746479, 29.909620, 31.213907>,  <37.966953, 29.824982, 31.256659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.746479, 29.909620, 31.213907>,  <37.379025, 30.050686, 31.142656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746479, 29.909620, 31.213907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214243, -0.065833, 0.974559,
		-0.331964, -0.933432, -0.136032,
		0.918640, -0.352663, 0.178127,
		38.022072, 29.803822, 31.267345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328094, 29.491970, 31.718290>,  <37.379025, 30.050686, 31.142656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328094, 29.491970, 31.718290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719559, 29.574038, 31.713791>,  <37.954437, 29.623278, 31.711092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.719559, 29.574038, 31.713791>,  <37.328094, 29.491970, 31.718290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719559, 29.574038, 31.713791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014386, 0.123020, 0.992300,
		0.204975, -0.970964, 0.123347,
		0.978661, 0.205171, -0.011248,
		38.013157, 29.635588, 31.710417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645935, 28.979967, 32.072620>,  <37.328094, 29.491970, 31.718290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645935, 28.979967, 32.072620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899693, 29.288742, 32.088886>,  <38.051949, 29.474007, 32.098644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.899693, 29.288742, 32.088886>,  <37.645935, 28.979967, 32.072620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899693, 29.288742, 32.088886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054838, -0.007526, 0.998467,
		0.771059, -0.635655, 0.037557,
		0.634397, 0.771937, 0.040660,
		38.090012, 29.520323, 32.101086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991680, 28.924868, 32.621742>,  <37.645935, 28.979967, 32.072620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991680, 28.924868, 32.621742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050449, 29.316507, 32.565491>,  <38.085712, 29.551491, 32.531738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.050449, 29.316507, 32.565491>,  <37.991680, 28.924868, 32.621742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050449, 29.316507, 32.565491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030586, 0.137609, 0.990014,
		0.988675, -0.149758, -0.009729,
		0.146924, 0.979100, -0.140631,
		38.094528, 29.610237, 32.523300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549183, 29.026598, 32.997410>,  <37.991680, 28.924868, 32.621742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549183, 29.026598, 32.997410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356949, 29.375160, 32.958023>,  <38.241608, 29.584297, 32.934391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356949, 29.375160, 32.958023>,  <38.549183, 29.026598, 32.997410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356949, 29.375160, 32.958023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069057, 0.074332, 0.994840,
		0.874227, 0.484902, 0.024454,
		-0.480582, 0.871404, -0.098469,
		38.212772, 29.636581, 32.928482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872131, 29.429737, 33.461159>,  <38.549183, 29.026598, 32.997410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872131, 29.429737, 33.461159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522991, 29.618069, 33.409847>,  <38.313507, 29.731068, 33.379063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.522991, 29.618069, 33.409847>,  <38.872131, 29.429737, 33.461159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522991, 29.618069, 33.409847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059929, 0.157455, 0.985706,
		0.484297, 0.868060, -0.109218,
		-0.872849, 0.470829, -0.128277,
		38.261135, 29.759317, 33.371365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909870, 30.030653, 33.890007>,  <38.872131, 29.429737, 33.461159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909870, 30.030653, 33.890007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519936, 30.004950, 33.804626>,  <38.285973, 29.989529, 33.753399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519936, 30.004950, 33.804626>,  <38.909870, 30.030653, 33.890007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519936, 30.004950, 33.804626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221166, 0.398442, 0.890129,
		0.027850, 0.914940, -0.402628,
		-0.974838, -0.064257, -0.213450,
		38.227486, 29.985672, 33.740593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602207, 30.656876, 34.068939>,  <38.909870, 30.030653, 33.890007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602207, 30.656876, 34.068939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282825, 30.416212, 34.077671>,  <38.091198, 30.271814, 34.082909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282825, 30.416212, 34.077671>,  <38.602207, 30.656876, 34.068939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282825, 30.416212, 34.077671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146558, 0.229403, 0.962234,
		-0.583945, 0.765101, -0.271346,
		-0.798455, -0.601659, 0.021827,
		38.043289, 30.235714, 34.084221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053268, 31.110708, 34.368916>,  <38.602207, 30.656876, 34.068939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053268, 31.110708, 34.368916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967167, 30.721739, 34.404812>,  <37.915504, 30.488358, 34.426350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967167, 30.721739, 34.404812>,  <38.053268, 31.110708, 34.368916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967167, 30.721739, 34.404812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327440, 0.158447, 0.931492,
		-0.920026, 0.171123, -0.352518,
		-0.215255, -0.972426, 0.089743,
		37.902592, 30.430012, 34.431736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396206, 31.002077, 34.542854>,  <38.053268, 31.110708, 34.368916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396206, 31.002077, 34.542854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533237, 30.653332, 34.682850>,  <37.615456, 30.444084, 34.766846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.533237, 30.653332, 34.682850>,  <37.396206, 31.002077, 34.542854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533237, 30.653332, 34.682850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360649, 0.221946, 0.905910,
		-0.867508, -0.436571, -0.238402,
		0.342582, -0.871863, 0.349988,
		37.636013, 30.391773, 34.787846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842278, 30.698246, 34.881329>,  <37.396206, 31.002077, 34.542854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842278, 30.698246, 34.881329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172016, 30.514944, 35.014267>,  <37.369858, 30.404963, 35.094032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172016, 30.514944, 35.014267>,  <36.842278, 30.698246, 34.881329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172016, 30.514944, 35.014267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316573, 0.113525, 0.941750,
		-0.469293, -0.881540, -0.051488,
		0.824345, -0.458256, 0.332349,
		37.419319, 30.377468, 35.113972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585506, 30.514236, 35.486595>,  <36.842278, 30.698246, 34.881329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585506, 30.514236, 35.486595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979156, 30.463310, 35.536060>,  <37.215347, 30.432755, 35.565739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.979156, 30.463310, 35.536060>,  <36.585506, 30.514236, 35.486595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979156, 30.463310, 35.536060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091992, 0.229993, 0.968835,
		-0.151791, -0.964828, 0.214629,
		0.984122, -0.127316, 0.123667,
		37.274395, 30.425116, 35.573162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634995, 30.252390, 36.162483>,  <36.585506, 30.514236, 35.486595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634995, 30.252390, 36.162483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994217, 30.396519, 36.061554>,  <37.209751, 30.482996, 36.000996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.994217, 30.396519, 36.061554>,  <36.634995, 30.252390, 36.162483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994217, 30.396519, 36.061554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078672, 0.432791, 0.898055,
		0.432791, -0.826354, 0.360322,
		-0.898055, -0.360322, 0.252319,
		37.263634, 30.504616, 35.985859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122047, 30.239155, 36.836739>,  <36.634995, 30.252390, 36.162483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122047, 30.239155, 36.836739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324722, 30.458506, 36.570641>,  <37.446327, 30.590117, 36.410984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.324722, 30.458506, 36.570641>,  <37.122047, 30.239155, 36.836739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324722, 30.458506, 36.570641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338070, 0.583445, 0.738444,
		0.793080, -0.599060, 0.110235,
		0.506689, 0.548378, -0.665243,
		37.476730, 30.623018, 36.371067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885242, 30.233925, 37.026226>,  <37.122047, 30.239155, 36.836739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885242, 30.233925, 37.026226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758450, 30.554001, 36.822571>,  <37.682373, 30.746046, 36.700378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.758450, 30.554001, 36.822571>,  <37.885242, 30.233925, 37.026226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758450, 30.554001, 36.822571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267520, 0.590457, 0.761442,
		0.909919, 0.105163, -0.401233,
		-0.316986, 0.800189, -0.509134,
		37.663353, 30.794058, 36.669830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241512, 30.733282, 37.395786>,  <37.885242, 30.233925, 37.026226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241512, 30.733282, 37.395786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969406, 30.933340, 37.181465>,  <37.806141, 31.053375, 37.052872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969406, 30.933340, 37.181465>,  <38.241512, 30.733282, 37.395786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969406, 30.933340, 37.181465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059593, 0.766335, 0.639671,
		0.730537, 0.403217, -0.551118,
		-0.680268, 0.500146, -0.535807,
		37.765327, 31.083384, 37.020721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646664, 31.379324, 37.064999>,  <38.241512, 30.733282, 37.395786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646664, 31.379324, 37.064999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251877, 31.436636, 37.094284>,  <38.015003, 31.471024, 37.111855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251877, 31.436636, 37.094284>,  <38.646664, 31.379324, 37.064999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251877, 31.436636, 37.094284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160853, 0.867229, 0.471212,
		0.004022, 0.476849, -0.878976,
		-0.986970, 0.143281, 0.073214,
		37.955788, 31.479620, 37.116249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063572, 30.681017, 36.860096>,  <38.646664, 31.379324, 37.064999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063572, 30.681017, 36.860096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453896, 30.678574, 36.947521>,  <39.688087, 30.677109, 36.999977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453896, 30.678574, 36.947521>,  <39.063572, 30.681017, 36.860096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453896, 30.678574, 36.947521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209199, 0.316695, -0.925170,
		-0.063567, 0.948508, 0.310310,
		0.975805, -0.006106, 0.218558,
		39.746635, 30.676743, 37.013088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359249, 31.245274, 36.519787>,  <39.063572, 30.681017, 36.860096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359249, 31.245274, 36.519787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.696098, 31.047834, 36.606682>,  <39.898209, 30.929371, 36.658817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.696098, 31.047834, 36.606682>,  <39.359249, 31.245274, 36.519787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696098, 31.047834, 36.606682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414229, 0.334093, -0.846638,
		0.345323, 0.802958, 0.485810,
		0.842120, -0.493600, 0.217239,
		39.948734, 30.899754, 36.671852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001564, 31.788673, 36.432247>,  <39.359249, 31.245274, 36.519787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001564, 31.788673, 36.432247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141010, 31.414566, 36.407780>,  <40.224678, 31.190102, 36.393101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.141010, 31.414566, 36.407780>,  <40.001564, 31.788673, 36.432247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141010, 31.414566, 36.407780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453131, 0.225311, -0.862501,
		0.820451, 0.272963, 0.502346,
		0.348615, -0.935268, -0.061169,
		40.245594, 31.133986, 36.389427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706299, 31.859207, 36.194744>,  <40.001564, 31.788673, 36.432247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706299, 31.859207, 36.194744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610435, 31.481319, 36.105240>,  <40.552917, 31.254587, 36.051537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.610435, 31.481319, 36.105240>,  <40.706299, 31.859207, 36.194744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610435, 31.481319, 36.105240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519863, 0.069775, -0.851395,
		0.819942, -0.320372, 0.474402,
		-0.239662, -0.944719, -0.223761,
		40.538536, 31.197905, 36.038113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307030, 31.651024, 35.924229>,  <40.706299, 31.859207, 36.194744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307030, 31.651024, 35.924229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.026878, 31.382872, 35.826202>,  <40.858788, 31.221981, 35.767387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.026878, 31.382872, 35.826202>,  <41.307030, 31.651024, 35.924229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026878, 31.382872, 35.826202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443390, -0.139564, -0.885397,
		0.559349, -0.728776, 0.394987,
		-0.700382, -0.670379, -0.245066,
		40.816765, 31.181759, 35.752682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630131, 31.038050, 35.569042>,  <41.307030, 31.651024, 35.924229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630131, 31.038050, 35.569042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248314, 31.050915, 35.450504>,  <41.019226, 31.058634, 35.379379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248314, 31.050915, 35.450504>,  <41.630131, 31.038050, 35.569042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248314, 31.050915, 35.450504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274589, -0.292025, -0.916145,
		-0.116006, -0.955870, 0.269918,
		-0.954539, 0.032162, -0.296348,
		40.961952, 31.060564, 35.361599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555183, 30.374937, 35.131718>,  <41.630131, 31.038050, 35.569042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555183, 30.374937, 35.131718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.220928, 30.582640, 35.060066>,  <41.020374, 30.707262, 35.017075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.220928, 30.582640, 35.060066>,  <41.555183, 30.374937, 35.131718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220928, 30.582640, 35.060066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007170, -0.336400, -0.941692,
		-0.549241, -0.785625, 0.284830,
		-0.835634, 0.519257, -0.179132,
		40.970238, 30.738417, 35.006325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171822, 29.951633, 34.694454>,  <41.555183, 30.374937, 35.131718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171822, 29.951633, 34.694454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035980, 30.320124, 34.618549>,  <40.954475, 30.541218, 34.573006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035980, 30.320124, 34.618549>,  <41.171822, 29.951633, 34.694454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035980, 30.320124, 34.618549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090797, -0.232921, -0.968248,
		-0.936175, -0.311592, 0.162745,
		-0.339605, 0.921227, -0.189763,
		40.934097, 30.596491, 34.561619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602966, 29.878723, 34.219433>,  <41.171822, 29.951633, 34.694454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602966, 29.878723, 34.219433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703056, 30.263666, 34.176991>,  <40.763111, 30.494631, 34.151527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.703056, 30.263666, 34.176991>,  <40.602966, 29.878723, 34.219433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703056, 30.263666, 34.176991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100705, -0.083124, -0.991438,
		-0.962936, 0.258767, 0.076114,
		0.250225, 0.962357, -0.106102,
		40.778122, 30.552374, 34.145161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103012, 30.206514, 33.841820>,  <40.602966, 29.878723, 34.219433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103012, 30.206514, 33.841820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419582, 30.448334, 33.805672>,  <40.609524, 30.593426, 33.783981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419582, 30.448334, 33.805672>,  <40.103012, 30.206514, 33.841820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419582, 30.448334, 33.805672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009739, -0.135355, -0.990749,
		-0.611188, 0.784984, -0.101236,
		0.791425, 0.604549, -0.090373,
		40.657009, 30.629698, 33.778561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099194, 30.339790, 33.113365>,  <40.103012, 30.206514, 33.841820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099194, 30.339790, 33.113365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.441563, 30.526636, 33.202091>,  <40.646984, 30.638744, 33.255329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.441563, 30.526636, 33.202091>,  <40.099194, 30.339790, 33.113365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441563, 30.526636, 33.202091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224129, 0.051461, -0.973200,
		-0.466013, 0.882697, -0.060648,
		0.855920, 0.467116, 0.221820,
		40.698338, 30.666771, 33.268639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089066, 30.946262, 32.775524>,  <40.099194, 30.339790, 33.113365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089066, 30.946262, 32.775524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460205, 30.820475, 32.855736>,  <40.682888, 30.745001, 32.903862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460205, 30.820475, 32.855736>,  <40.089066, 30.946262, 32.775524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460205, 30.820475, 32.855736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263621, 0.172643, -0.949051,
		0.263830, 0.933436, 0.243087,
		0.927846, -0.314471, 0.200525,
		40.738560, 30.726133, 32.915894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528187, 31.480551, 32.580025>,  <40.089066, 30.946262, 32.775524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528187, 31.480551, 32.580025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740295, 31.141497, 32.587212>,  <40.867561, 30.938065, 32.591522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.740295, 31.141497, 32.587212>,  <40.528187, 31.480551, 32.580025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740295, 31.141497, 32.587212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317052, 0.178606, -0.931439,
		0.786313, 0.499613, 0.363454,
		0.530274, -0.847636, 0.017963,
		40.899376, 30.887205, 32.592602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134632, 31.607777, 32.228043>,  <40.528187, 31.480551, 32.580025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134632, 31.607777, 32.228043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.124756, 31.207912, 32.231358>,  <41.118832, 30.967995, 32.233345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.124756, 31.207912, 32.231358>,  <41.134632, 31.607777, 32.228043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124756, 31.207912, 32.231358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255719, -0.014330, -0.966645,
		0.966436, -0.021748, 0.255986,
		-0.024691, -0.999661, 0.008287,
		41.117348, 30.908014, 32.233845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700207, 31.452822, 31.838194>,  <41.134632, 31.607777, 32.228043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700207, 31.452822, 31.838194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.482201, 31.117491, 31.843369>,  <41.351398, 30.916292, 31.846474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.482201, 31.117491, 31.843369>,  <41.700207, 31.452822, 31.838194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482201, 31.117491, 31.843369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314802, -0.218909, -0.923568,
		0.777085, -0.499283, 0.383216,
		-0.545012, -0.838329, 0.012936,
		41.318699, 30.865992, 31.847250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.073807, 30.888172, 31.785492>,  <41.700207, 31.452822, 31.838194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.073807, 30.888172, 31.785492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725990, 30.754339, 31.640188>,  <41.517300, 30.674040, 31.553007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.725990, 30.754339, 31.640188>,  <42.073807, 30.888172, 31.785492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725990, 30.754339, 31.640188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434988, -0.170576, -0.884132,
		0.233851, -0.926801, 0.293861,
		-0.869540, -0.334581, -0.363258,
		41.465130, 30.653965, 31.531210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174339, 30.336391, 31.437111>,  <42.073807, 30.888172, 31.785492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174339, 30.336391, 31.437111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.825539, 30.444435, 31.273819>,  <41.616257, 30.509262, 31.175844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.825539, 30.444435, 31.273819>,  <42.174339, 30.336391, 31.437111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825539, 30.444435, 31.273819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355810, -0.222976, -0.907569,
		-0.336169, -0.936655, 0.098327,
		-0.872003, 0.270111, -0.408229,
		41.563938, 30.525469, 31.151350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175758, 30.048605, 30.813175>,  <42.174339, 30.336391, 31.437111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175758, 30.048605, 30.813175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.871704, 30.300270, 30.748247>,  <41.689270, 30.451269, 30.709291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.871704, 30.300270, 30.748247>,  <42.175758, 30.048605, 30.813175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871704, 30.300270, 30.748247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143294, -0.081342, -0.986332,
		-0.633768, -0.773005, -0.028325,
		-0.760135, 0.629164, -0.162319,
		41.643665, 30.489019, 30.699551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.417194, 29.610260, 29.969381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341091, 29.992144, 30.060884>,  <41.295429, 30.221273, 30.115788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.341091, 29.992144, 30.060884>,  <41.417194, 29.610260, 29.969381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341091, 29.992144, 30.060884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116185, 0.209481, -0.970886,
		-0.974835, -0.211296, 0.071068,
		-0.190257, 0.954710, 0.228759,
		41.284016, 30.278557, 30.129513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764515, 29.782351, 29.645990>,  <41.417194, 29.610260, 29.969381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764515, 29.782351, 29.645990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.922134, 30.145927, 29.700470>,  <41.016708, 30.364073, 29.733158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.922134, 30.145927, 29.700470>,  <40.764515, 29.782351, 29.645990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922134, 30.145927, 29.700470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383063, 0.297129, -0.874630,
		-0.835456, 0.292476, 0.465265,
		0.394052, 0.908940, 0.136201,
		41.040348, 30.418610, 29.741331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236996, 30.314026, 29.479160>,  <40.764515, 29.782351, 29.645990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236996, 30.314026, 29.479160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.594330, 30.490137, 29.443136>,  <40.808731, 30.595804, 29.421522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.594330, 30.490137, 29.443136>,  <40.236996, 30.314026, 29.479160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594330, 30.490137, 29.443136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305889, 0.448914, -0.839588,
		-0.329222, 0.777581, 0.535706,
		0.893333, 0.440278, -0.090061,
		40.862331, 30.622221, 29.416119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038651, 31.011669, 29.181574>,  <40.236996, 30.314026, 29.479160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038651, 31.011669, 29.181574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428654, 30.972864, 29.101618>,  <40.662655, 30.949581, 29.053644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428654, 30.972864, 29.101618>,  <40.038651, 31.011669, 29.181574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428654, 30.972864, 29.101618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163231, 0.297618, -0.940627,
		0.150743, 0.949743, 0.274343,
		0.975004, -0.097012, -0.199891,
		40.721153, 30.943760, 29.041651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196796, 31.625868, 28.877203>,  <40.038651, 31.011669, 29.181574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196796, 31.625868, 28.877203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500515, 31.393135, 28.760622>,  <40.682747, 31.253496, 28.690674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500515, 31.393135, 28.760622>,  <40.196796, 31.625868, 28.877203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500515, 31.393135, 28.760622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020854, 0.425885, -0.904537,
		0.650414, 0.692887, 0.311238,
		0.759294, -0.581833, -0.291451,
		40.728302, 31.218586, 28.673187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652706, 32.067112, 28.596649>,  <40.196796, 31.625868, 28.877203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652706, 32.067112, 28.596649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.752831, 31.714413, 28.436712>,  <40.812904, 31.502794, 28.340750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.752831, 31.714413, 28.436712>,  <40.652706, 32.067112, 28.596649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752831, 31.714413, 28.436712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051716, 0.424576, -0.903914,
		0.966784, 0.205581, 0.151876,
		0.250310, -0.881744, -0.399842,
		40.827923, 31.449890, 28.316759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195797, 32.216404, 28.135984>,  <40.652706, 32.067112, 28.596649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195797, 32.216404, 28.135984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.028278, 31.869759, 28.027475>,  <40.927769, 31.661772, 27.962370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.028278, 31.869759, 28.027475>,  <41.195797, 32.216404, 28.135984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028278, 31.869759, 28.027475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023590, 0.288250, -0.957265,
		0.907774, -0.407299, -0.100274,
		-0.418797, -0.866614, -0.271274,
		40.902637, 31.609774, 27.946093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548130, 31.997049, 27.618893>,  <41.195797, 32.216404, 28.135984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548130, 31.997049, 27.618893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.194874, 31.818489, 27.561211>,  <40.982922, 31.711353, 27.526602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.194874, 31.818489, 27.561211>,  <41.548130, 31.997049, 27.618893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194874, 31.818489, 27.561211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023372, 0.265142, -0.963926,
		0.468535, -0.854648, -0.223723,
		-0.883136, -0.446404, -0.144203,
		40.929932, 31.684568, 27.517950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614967, 31.818186, 27.005514>,  <41.548130, 31.997049, 27.618893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614967, 31.818186, 27.005514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221615, 31.762743, 27.052422>,  <40.985603, 31.729477, 27.080566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.221615, 31.762743, 27.052422>,  <41.614967, 31.818186, 27.005514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221615, 31.762743, 27.052422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135143, 0.127490, -0.982590,
		0.121203, -0.982113, -0.144098,
		-0.983385, -0.138567, 0.117273,
		40.926601, 31.721161, 27.087601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375950, 31.215433, 26.611326>,  <41.614967, 31.818186, 27.005514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375950, 31.215433, 26.611326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061104, 31.455961, 26.666262>,  <40.872196, 31.600279, 26.699223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061104, 31.455961, 26.666262>,  <41.375950, 31.215433, 26.611326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061104, 31.455961, 26.666262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143471, 0.038061, -0.988922,
		-0.599888, -0.798100, 0.056314,
		-0.787115, 0.601322, 0.137337,
		40.824970, 31.636358, 26.707462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818707, 30.876047, 26.215343>,  <41.375950, 31.215433, 26.611326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818707, 30.876047, 26.215343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758537, 31.269201, 26.257883>,  <40.722435, 31.505093, 26.283407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.758537, 31.269201, 26.257883>,  <40.818707, 30.876047, 26.215343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758537, 31.269201, 26.257883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188594, 0.077069, -0.979026,
		-0.970466, -0.167330, 0.173773,
		-0.150427, 0.982884, 0.106350,
		40.713409, 31.564066, 26.289787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283947, 31.096209, 25.803211>,  <40.818707, 30.876047, 26.215343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283947, 31.096209, 25.803211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.411888, 31.469105, 25.870880>,  <40.488651, 31.692842, 25.911482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.411888, 31.469105, 25.870880>,  <40.283947, 31.096209, 25.803211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411888, 31.469105, 25.870880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262692, 0.258810, -0.929522,
		-0.910323, 0.252867, 0.327673,
		0.319851, 0.932242, 0.169174,
		40.507843, 31.748777, 25.921633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843533, 31.575891, 25.570190>,  <40.283947, 31.096209, 25.803211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843533, 31.575891, 25.570190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178722, 31.794075, 25.576864>,  <40.379837, 31.924986, 25.580868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.178722, 31.794075, 25.576864>,  <39.843533, 31.575891, 25.570190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178722, 31.794075, 25.576864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189967, 0.320226, -0.928099,
		-0.511584, 0.774551, 0.371959,
		0.837971, 0.545460, 0.016683,
		40.430115, 31.957712, 25.581869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713509, 32.165771, 25.135103>,  <39.843533, 31.575891, 25.570190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713509, 32.165771, 25.135103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108437, 32.222439, 25.163771>,  <40.345394, 32.256439, 25.180971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108437, 32.222439, 25.163771>,  <39.713509, 32.165771, 25.135103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108437, 32.222439, 25.163771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007785, 0.494055, -0.869396,
		-0.158576, 0.857811, 0.488891,
		0.987316, 0.141671, 0.071667,
		40.404633, 32.264938, 25.185270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913452, 32.872551, 24.978579>,  <39.713509, 32.165771, 25.135103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913452, 32.872551, 24.978579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239014, 32.651127, 24.908003>,  <40.434353, 32.518272, 24.865658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239014, 32.651127, 24.908003>,  <39.913452, 32.872551, 24.978579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239014, 32.651127, 24.908003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086131, 0.415294, -0.905601,
		0.574575, 0.721878, 0.385689,
		0.813907, -0.553555, -0.176441,
		40.483185, 32.485062, 24.855070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412228, 33.410145, 25.051382>,  <39.913452, 32.872551, 24.978579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412228, 33.410145, 25.051382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.557156, 33.117214, 24.820759>,  <40.644112, 32.941456, 24.682384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.557156, 33.117214, 24.820759>,  <40.412228, 33.410145, 25.051382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557156, 33.117214, 24.820759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222481, 0.668659, -0.709505,
		0.905111, 0.128796, 0.405198,
		0.362321, -0.732330, -0.576556,
		40.665852, 32.897514, 24.647793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122421, 33.558220, 24.780760>,  <40.412228, 33.410145, 25.051382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122421, 33.558220, 24.780760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971352, 33.288364, 24.527075>,  <40.880711, 33.126450, 24.374865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971352, 33.288364, 24.527075>,  <41.122421, 33.558220, 24.780760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971352, 33.288364, 24.527075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210988, 0.604218, -0.768378,
		0.901579, -0.424009, -0.085858,
		-0.377677, -0.674638, -0.634211,
		40.858047, 33.085972, 24.336811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439407, 33.743454, 24.234795>,  <41.122421, 33.558220, 24.780760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439407, 33.743454, 24.234795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225803, 33.472382, 24.032576>,  <41.097641, 33.309738, 23.911243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.225803, 33.472382, 24.032576>,  <41.439407, 33.743454, 24.234795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225803, 33.472382, 24.032576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043782, 0.574978, -0.816996,
		0.844342, -0.458420, -0.277375,
		-0.534012, -0.677681, -0.505549,
		41.065601, 33.269077, 23.880911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794964, 33.673008, 23.551762>,  <41.439407, 33.743454, 24.234795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794964, 33.673008, 23.551762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422100, 33.534264, 23.510263>,  <41.198383, 33.451015, 23.485365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.422100, 33.534264, 23.510263>,  <41.794964, 33.673008, 23.551762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422100, 33.534264, 23.510263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027328, 0.353140, -0.935171,
		0.360998, -0.868900, -0.338664,
		-0.932166, -0.346850, -0.103738,
		41.142452, 33.430206, 23.479141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853683, 33.323235, 22.938515>,  <41.794964, 33.673008, 23.551762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853683, 33.323235, 22.938515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.467815, 33.399937, 23.010792>,  <41.236294, 33.445957, 23.054157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.467815, 33.399937, 23.010792>,  <41.853683, 33.323235, 22.938515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467815, 33.399937, 23.010792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148565, 0.170504, -0.974093,
		-0.217599, -0.966518, -0.135991,
		-0.964666, 0.191758, 0.180692,
		41.178417, 33.457462, 23.064999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489452, 32.869484, 22.472139>,  <41.853683, 33.323235, 22.938515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489452, 32.869484, 22.472139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.212341, 33.141552, 22.567997>,  <41.046074, 33.304794, 22.625511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.212341, 33.141552, 22.567997>,  <41.489452, 32.869484, 22.472139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212341, 33.141552, 22.567997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106908, 0.231770, -0.966878,
		-0.713186, -0.695449, -0.087849,
		-0.692775, 0.680172, 0.239644,
		41.004509, 33.345604, 22.639891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908287, 32.647377, 22.048796>,  <41.489452, 32.869484, 22.472139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908287, 32.647377, 22.048796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837734, 33.027996, 22.149553>,  <40.795403, 33.256367, 22.210009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837734, 33.027996, 22.149553>,  <40.908287, 32.647377, 22.048796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837734, 33.027996, 22.149553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261966, 0.201298, -0.943850,
		-0.948821, -0.232469, 0.213766,
		-0.176386, 0.951545, 0.251895,
		40.784817, 33.313461, 22.225122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208172, 32.806938, 21.872784>,  <40.908287, 32.647377, 22.048796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208172, 32.806938, 21.872784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461712, 33.114227, 21.836853>,  <40.613834, 33.298603, 21.815294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461712, 33.114227, 21.836853>,  <40.208172, 32.806938, 21.872784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461712, 33.114227, 21.836853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199388, 0.050081, -0.978640,
		-0.747317, 0.638218, 0.184918,
		0.633847, 0.768225, -0.089827,
		40.651867, 33.344696, 21.809906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944798, 32.386158, 21.223635>,  <40.208172, 32.806938, 21.872784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944798, 32.386158, 21.223635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757832, 32.702957, 21.380739>,  <39.645653, 32.893036, 21.475002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.757832, 32.702957, 21.380739>,  <39.944798, 32.386158, 21.223635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757832, 32.702957, 21.380739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069917, 0.476009, -0.876657,
		-0.881267, -0.382305, -0.277870,
		-0.467419, 0.791996, 0.392762,
		39.617607, 32.940556, 21.498568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841103, 31.833628, 21.595037>,  <39.944798, 32.386158, 21.223635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841103, 31.833628, 21.595037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491688, 31.657663, 21.511696>,  <39.282040, 31.552086, 21.461691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491688, 31.657663, 21.511696>,  <39.841103, 31.833628, 21.595037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491688, 31.657663, 21.511696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231983, -0.000049, 0.972720,
		-0.427919, 0.898042, -0.102009,
		-0.873538, -0.439910, -0.208352,
		39.229626, 31.525690, 21.449190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510983, 32.163204, 22.047585>,  <39.841103, 31.833628, 21.595037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510983, 32.163204, 22.047585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281155, 31.852135, 21.945526>,  <39.143257, 31.665495, 21.884291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281155, 31.852135, 21.945526>,  <39.510983, 32.163204, 22.047585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281155, 31.852135, 21.945526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427639, 0.019450, 0.903740,
		-0.697848, 0.628373, -0.343737,
		-0.574571, -0.777669, -0.255144,
		39.108784, 31.618834, 21.868982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774242, 32.239017, 22.273338>,  <39.510983, 32.163204, 22.047585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774242, 32.239017, 22.273338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845116, 31.845919, 22.252119>,  <38.887638, 31.610060, 22.239388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845116, 31.845919, 22.252119>,  <38.774242, 32.239017, 22.273338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845116, 31.845919, 22.252119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282419, -0.102402, 0.953810,
		-0.942787, -0.154015, -0.295690,
		0.177180, -0.982748, -0.053047,
		38.898270, 31.551094, 22.236204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210735, 32.083134, 22.648916>,  <38.774242, 32.239017, 22.273338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210735, 32.083134, 22.648916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425323, 31.746887, 22.619091>,  <38.554077, 31.545137, 22.601196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.425323, 31.746887, 22.619091>,  <38.210735, 32.083134, 22.648916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425323, 31.746887, 22.619091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353264, -0.303925, 0.884779,
		-0.766425, -0.448315, -0.460006,
		0.536467, -0.840621, -0.074562,
		38.586266, 31.494701, 22.596722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701164, 31.495989, 22.681044>,  <38.210735, 32.083134, 22.648916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701164, 31.495989, 22.681044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055832, 31.352814, 22.798145>,  <38.268631, 31.266909, 22.868406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055832, 31.352814, 22.798145>,  <37.701164, 31.495989, 22.681044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055832, 31.352814, 22.798145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394597, -0.255616, 0.882584,
		-0.241045, -0.898089, -0.367876,
		0.886674, -0.357905, 0.292768,
		38.321831, 31.245432, 22.885971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483295, 30.835150, 22.987741>,  <37.701164, 31.495989, 22.681044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483295, 30.835150, 22.987741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839523, 30.957458, 23.122433>,  <38.053261, 31.030844, 23.203247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839523, 30.957458, 23.122433>,  <37.483295, 30.835150, 22.987741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839523, 30.957458, 23.122433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257194, -0.272063, 0.927272,
		0.375144, -0.912407, -0.163650,
		0.890572, 0.305771, 0.336729,
		38.106693, 31.049189, 23.223452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666927, 30.317205, 23.504263>,  <37.483295, 30.835150, 22.987741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666927, 30.317205, 23.504263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912224, 30.620049, 23.594349>,  <38.059402, 30.801754, 23.648399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912224, 30.620049, 23.594349>,  <37.666927, 30.317205, 23.504263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912224, 30.620049, 23.594349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275791, -0.061949, 0.959219,
		0.740185, -0.650345, 0.170814,
		0.613242, 0.757108, 0.225213,
		38.096195, 30.847181, 23.661913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994843, 30.038345, 24.055304>,  <37.666927, 30.317205, 23.504263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994843, 30.038345, 24.055304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083282, 30.426308, 24.096090>,  <38.136345, 30.659086, 24.120564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.083282, 30.426308, 24.096090>,  <37.994843, 30.038345, 24.055304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083282, 30.426308, 24.096090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365527, -0.014521, 0.930688,
		0.904161, -0.243042, 0.351316,
		0.221095, 0.969907, 0.101968,
		38.149612, 30.717279, 24.126680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466644, 30.075991, 24.679417>,  <37.994843, 30.038345, 24.055304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466644, 30.075991, 24.679417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350842, 30.454945, 24.624802>,  <38.281361, 30.682318, 24.592031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.350842, 30.454945, 24.624802>,  <38.466644, 30.075991, 24.679417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350842, 30.454945, 24.624802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035848, 0.131816, 0.990626,
		0.956504, 0.291690, -0.004200,
		-0.289510, 0.947387, -0.136539,
		38.263988, 30.739161, 24.583839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902153, 30.478796, 25.079096>,  <38.466644, 30.075991, 24.679417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902153, 30.478796, 25.079096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564606, 30.680428, 25.005566>,  <38.362076, 30.801407, 24.961447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.564606, 30.680428, 25.005566>,  <38.902153, 30.478796, 25.079096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564606, 30.680428, 25.005566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011471, 0.359477, 0.933083,
		0.536429, 0.785290, -0.309133,
		-0.843868, 0.504079, -0.183826,
		38.311447, 30.831652, 24.950418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055229, 31.104794, 25.300426>,  <38.902153, 30.478796, 25.079096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055229, 31.104794, 25.300426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656902, 31.071484, 25.315496>,  <38.417908, 31.051498, 25.324539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656902, 31.071484, 25.315496>,  <39.055229, 31.104794, 25.300426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656902, 31.071484, 25.315496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019157, 0.212891, 0.976888,
		-0.089371, 0.973521, -0.210405,
		-0.995814, -0.083275, 0.037676,
		38.358158, 31.046501, 25.326799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828350, 31.617996, 25.684399>,  <39.055229, 31.104794, 25.300426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828350, 31.617996, 25.684399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507874, 31.380285, 25.712473>,  <38.315586, 31.237658, 25.729317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.507874, 31.380285, 25.712473>,  <38.828350, 31.617996, 25.684399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507874, 31.380285, 25.712473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073980, 0.214752, 0.973863,
		-0.593818, 0.775058, -0.216022,
		-0.801191, -0.594278, 0.070185,
		38.267517, 31.202002, 25.733528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311054, 32.019001, 26.153082>,  <38.828350, 31.617996, 25.684399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311054, 32.019001, 26.153082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223633, 31.628725, 26.146517>,  <38.171181, 31.394560, 26.142578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223633, 31.628725, 26.146517>,  <38.311054, 32.019001, 26.153082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223633, 31.628725, 26.146517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097610, 0.005123, 0.995212,
		-0.970930, 0.219114, -0.096357,
		-0.218558, -0.975686, -0.016414,
		38.158066, 31.336020, 26.141592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771530, 31.980446, 26.629766>,  <38.311054, 32.019001, 26.153082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771530, 31.980446, 26.629766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891117, 31.600172, 26.596729>,  <37.962868, 31.372007, 26.576906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891117, 31.600172, 26.596729>,  <37.771530, 31.980446, 26.629766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891117, 31.600172, 26.596729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223377, -0.153867, 0.962511,
		-0.927751, -0.269308, -0.258362,
		0.298965, -0.950683, -0.082593,
		37.980808, 31.314966, 26.571951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294971, 31.627554, 27.054195>,  <37.771530, 31.980446, 26.629766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294971, 31.627554, 27.054195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607540, 31.380070, 27.021742>,  <37.795082, 31.231579, 27.002270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607540, 31.380070, 27.021742>,  <37.294971, 31.627554, 27.054195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607540, 31.380070, 27.021742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042360, -0.077128, 0.996121,
		-0.622567, -0.781825, -0.034060,
		0.781419, -0.618709, -0.081136,
		37.841965, 31.194458, 26.997400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207851, 31.135075, 27.611485>,  <37.294971, 31.627554, 27.054195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207851, 31.135075, 27.611485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594780, 31.077726, 27.527826>,  <37.826935, 31.043318, 27.477631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.594780, 31.077726, 27.527826>,  <37.207851, 31.135075, 27.611485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594780, 31.077726, 27.527826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161667, -0.286725, 0.944274,
		-0.195347, -0.947224, -0.254176,
		0.967318, -0.143369, -0.209146,
		37.884975, 31.034716, 27.465082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513908, 30.480917, 27.857203>,  <37.207851, 31.135075, 27.611485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513908, 30.480917, 27.857203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850559, 30.696188, 27.839170>,  <38.052551, 30.825350, 27.828352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850559, 30.696188, 27.839170>,  <37.513908, 30.480917, 27.857203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850559, 30.696188, 27.839170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196270, -0.227032, 0.953905,
		0.503134, -0.811679, -0.296704,
		0.841626, 0.538176, -0.045080,
		38.103046, 30.857641, 27.825645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956047, 29.917089, 27.989679>,  <37.513908, 30.480917, 27.857203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956047, 29.917089, 27.989679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152023, 30.262114, 28.040192>,  <38.269608, 30.469128, 28.070499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152023, 30.262114, 28.040192>,  <37.956047, 29.917089, 27.989679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152023, 30.262114, 28.040192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287882, -0.296819, 0.910507,
		0.822851, -0.409739, -0.393739,
		0.489939, 0.862562, 0.126282,
		38.299004, 30.520882, 28.078075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635624, 29.711294, 28.161360>,  <37.956047, 29.917089, 27.989679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635624, 29.711294, 28.161360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586823, 30.081699, 28.304255>,  <38.557541, 30.303942, 28.389992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.586823, 30.081699, 28.304255>,  <38.635624, 29.711294, 28.161360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586823, 30.081699, 28.304255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247838, -0.320099, 0.914392,
		0.961088, 0.200100, -0.190447,
		-0.122008, 0.926011, 0.357236,
		38.550220, 30.359503, 28.411425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233097, 29.860737, 28.548092>,  <38.635624, 29.711294, 28.161360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233097, 29.860737, 28.548092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.964001, 30.098421, 28.724426>,  <38.802544, 30.241032, 28.830227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.964001, 30.098421, 28.724426>,  <39.233097, 29.860737, 28.548092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964001, 30.098421, 28.724426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168325, -0.457279, 0.873248,
		0.720477, 0.661673, 0.207609,
		-0.672740, 0.594210, 0.440835,
		38.762180, 30.276684, 28.856676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.935898, 30.300205, 33.124935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554775, 30.403204, 33.060616>,  <41.326103, 30.465002, 33.022022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554775, 30.403204, 33.060616>,  <41.935898, 30.300205, 33.124935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554775, 30.403204, 33.060616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117848, 0.174424, 0.977593,
		0.279773, 0.950406, -0.135847,
		-0.952806, 0.257495, -0.160803,
		41.268932, 30.480452, 33.012375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966793, 30.897081, 33.587219>,  <41.935898, 30.300205, 33.124935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966793, 30.897081, 33.587219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.585102, 30.843252, 33.480381>,  <41.356087, 30.810955, 33.416279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.585102, 30.843252, 33.480381>,  <41.966793, 30.897081, 33.587219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585102, 30.843252, 33.480381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296007, 0.297137, 0.907794,
		-0.042800, 0.945304, -0.323370,
		-0.954226, -0.134573, -0.267100,
		41.298836, 30.802879, 33.400249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662926, 31.452301, 33.700226>,  <41.966793, 30.897081, 33.587219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662926, 31.452301, 33.700226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363464, 31.187330, 33.710800>,  <41.183788, 31.028347, 33.717144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363464, 31.187330, 33.710800>,  <41.662926, 31.452301, 33.700226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363464, 31.187330, 33.710800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332437, 0.409619, 0.849528,
		-0.573582, 0.627216, -0.526881,
		-0.748658, -0.662429, 0.026440,
		41.138866, 30.988602, 33.718731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069309, 31.797352, 33.967861>,  <41.662926, 31.452301, 33.700226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069309, 31.797352, 33.967861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003197, 31.408388, 34.033718>,  <40.963531, 31.175011, 34.073235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003197, 31.408388, 34.033718>,  <41.069309, 31.797352, 33.967861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003197, 31.408388, 34.033718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316581, 0.210415, 0.924934,
		-0.934055, 0.100749, -0.342623,
		-0.165279, -0.972407, 0.164644,
		40.953613, 31.116667, 34.083111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525002, 31.861040, 34.383556>,  <41.069309, 31.797352, 33.967861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525002, 31.861040, 34.383556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636158, 31.480772, 34.438694>,  <40.702850, 31.252611, 34.471775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636158, 31.480772, 34.438694>,  <40.525002, 31.861040, 34.383556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636158, 31.480772, 34.438694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395027, 0.017710, 0.918499,
		-0.875632, -0.309694, -0.370620,
		0.277890, -0.950671, 0.137845,
		40.719524, 31.195570, 34.480049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039436, 31.578857, 34.657063>,  <40.525002, 31.861040, 34.383556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039436, 31.578857, 34.657063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.328587, 31.321899, 34.758869>,  <40.502075, 31.167725, 34.819954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.328587, 31.321899, 34.758869>,  <40.039436, 31.578857, 34.657063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328587, 31.321899, 34.758869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306151, 0.032445, 0.951430,
		-0.619453, -0.765685, -0.173217,
		0.722876, -0.642397, 0.254513,
		40.545448, 31.129181, 34.835224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682899, 31.108419, 35.108166>,  <40.039436, 31.578857, 34.657063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682899, 31.108419, 35.108166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077087, 31.086103, 35.172344>,  <40.313599, 31.072714, 35.210854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077087, 31.086103, 35.172344>,  <39.682899, 31.108419, 35.108166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077087, 31.086103, 35.172344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168197, -0.188132, 0.967634,
		-0.023797, -0.980558, -0.194781,
		0.985467, -0.055789, 0.160450,
		40.372726, 31.069366, 35.220478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885349, 30.382504, 35.399658>,  <39.682899, 31.108419, 35.108166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885349, 30.382504, 35.399658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.211994, 30.592546, 35.495499>,  <40.407982, 30.718573, 35.553001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.211994, 30.592546, 35.495499>,  <39.885349, 30.382504, 35.399658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211994, 30.592546, 35.495499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079362, -0.309022, 0.947738,
		0.571706, -0.792949, -0.210677,
		0.816611, 0.525107, 0.239600,
		40.456978, 30.750078, 35.567379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334591, 29.929459, 35.773716>,  <39.885349, 30.382504, 35.399658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334591, 29.929459, 35.773716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.380264, 30.316517, 35.863712>,  <40.407669, 30.548752, 35.917709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.380264, 30.316517, 35.863712>,  <40.334591, 29.929459, 35.773716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380264, 30.316517, 35.863712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223161, -0.195699, 0.954935,
		0.968071, -0.159249, 0.193595,
		0.114186, 0.967647, 0.224989,
		40.414520, 30.606812, 35.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617992, 29.889126, 36.406433>,  <40.334591, 29.929459, 35.773716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617992, 29.889126, 36.406433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510815, 30.274439, 36.399605>,  <40.446507, 30.505627, 36.395508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510815, 30.274439, 36.399605>,  <40.617992, 29.889126, 36.406433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510815, 30.274439, 36.399605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130900, -0.018845, 0.991216,
		0.954500, 0.267826, 0.131143,
		-0.267945, 0.963283, -0.017071,
		40.430431, 30.563423, 36.394482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962864, 30.082001, 36.918365>,  <40.617992, 29.889126, 36.406433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962864, 30.082001, 36.918365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.673355, 30.348827, 36.847733>,  <40.499649, 30.508924, 36.805351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.673355, 30.348827, 36.847733>,  <40.962864, 30.082001, 36.918365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673355, 30.348827, 36.847733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173160, 0.072136, 0.982248,
		0.667964, 0.741496, 0.063299,
		-0.723767, 0.667068, -0.176582,
		40.456226, 30.548948, 36.794758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036713, 30.743841, 37.306675>,  <40.962864, 30.082001, 36.918365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036713, 30.743841, 37.306675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645126, 30.723009, 37.227768>,  <40.410175, 30.710510, 37.180424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645126, 30.723009, 37.227768>,  <41.036713, 30.743841, 37.306675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645126, 30.723009, 37.227768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201429, 0.092845, 0.975093,
		-0.032468, 0.994318, -0.101382,
		-0.978965, -0.052081, -0.197270,
		40.351437, 30.707384, 37.168587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533772, 31.391603, 37.528412>,  <41.036713, 30.743841, 37.306675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533772, 31.391603, 37.528412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333271, 31.045540, 37.522148>,  <40.212971, 30.837902, 37.518391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.333271, 31.045540, 37.522148>,  <40.533772, 31.391603, 37.528412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333271, 31.045540, 37.522148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114347, 0.048291, 0.992266,
		-0.857711, 0.499168, -0.123135,
		-0.501254, -0.865158, -0.015659,
		40.182896, 30.785992, 37.517452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022228, 31.761131, 37.934486>,  <40.533772, 31.391603, 37.528412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022228, 31.761131, 37.934486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.770954, 32.028473, 37.775143>,  <39.620190, 32.188877, 37.679535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.770954, 32.028473, 37.775143>,  <40.022228, 31.761131, 37.934486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770954, 32.028473, 37.775143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721618, -0.691912, -0.022929,
		-0.290957, 0.273062, 0.916941,
		-0.628181, 0.668352, -0.398363,
		39.582500, 32.228977, 37.655632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393826, 32.064281, 38.140709>,  <40.022228, 31.761131, 37.934486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393826, 32.064281, 38.140709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.314663, 32.403755, 38.336899>,  <39.267166, 32.607441, 38.454613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.314663, 32.403755, 38.336899>,  <39.393826, 32.064281, 38.140709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314663, 32.403755, 38.336899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109805, 0.478025, -0.871456,
		-0.974051, -0.226323, -0.001414,
		-0.197906, 0.848688, 0.490472,
		39.255291, 32.658363, 38.484039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719147, 32.228558, 38.076813>,  <39.393826, 32.064281, 38.140709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719147, 32.228558, 38.076813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.909691, 32.574760, 38.138763>,  <39.024017, 32.782482, 38.175934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.909691, 32.574760, 38.138763>,  <38.719147, 32.228558, 38.076813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909691, 32.574760, 38.138763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296230, 0.323828, -0.898545,
		-0.827846, 0.382152, 0.410646,
		0.476360, 0.865503, 0.154874,
		39.052597, 32.834412, 38.185226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251244, 32.763943, 37.768242>,  <38.719147, 32.228558, 38.076813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251244, 32.763943, 37.768242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611866, 32.934662, 37.796654>,  <38.828239, 33.037094, 37.813702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.611866, 32.934662, 37.796654>,  <38.251244, 32.763943, 37.768242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611866, 32.934662, 37.796654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130038, 0.423868, -0.896340,
		-0.412668, 0.798860, 0.437639,
		0.901552, 0.426800, 0.071034,
		38.882332, 33.062702, 37.817963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113472, 33.350193, 37.448631>,  <38.251244, 32.763943, 37.768242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113472, 33.350193, 37.448631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512966, 33.340122, 37.431229>,  <38.752663, 33.334080, 37.420788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.512966, 33.340122, 37.431229>,  <38.113472, 33.350193, 37.448631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512966, 33.340122, 37.431229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032088, 0.346948, -0.937335,
		0.038692, 0.937546, 0.345702,
		0.998736, -0.025174, -0.043508,
		38.812588, 33.332569, 37.418175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302513, 34.038509, 37.134594>,  <38.113472, 33.350193, 37.448631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302513, 34.038509, 37.134594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598190, 33.772053, 37.094894>,  <38.775597, 33.612179, 37.071075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598190, 33.772053, 37.094894>,  <38.302513, 34.038509, 37.134594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598190, 33.772053, 37.094894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131417, 0.287185, -0.948817,
		0.660551, 0.688314, 0.299827,
		0.739190, -0.666145, -0.099244,
		38.819946, 33.572208, 37.065121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913898, 34.444664, 36.828724>,  <38.302513, 34.038509, 37.134594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913898, 34.444664, 36.828724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999218, 34.061417, 36.752285>,  <39.050407, 33.831470, 36.706421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999218, 34.061417, 36.752285>,  <38.913898, 34.444664, 36.828724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999218, 34.061417, 36.752285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110439, 0.217991, -0.969682,
		0.970726, 0.185724, 0.152310,
		0.213295, -0.958116, -0.191098,
		39.063206, 33.773983, 36.694954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538982, 34.433353, 36.411247>,  <38.913898, 34.444664, 36.828724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538982, 34.433353, 36.411247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418175, 34.058056, 36.343742>,  <39.345692, 33.832878, 36.303238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.418175, 34.058056, 36.343742>,  <39.538982, 34.433353, 36.411247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418175, 34.058056, 36.343742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046563, 0.162302, -0.985642,
		0.952165, -0.305539, -0.005331,
		-0.302017, -0.938245, -0.168765,
		39.327568, 33.776581, 36.293114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917816, 34.166534, 35.843113>,  <39.538982, 34.433353, 36.411247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917816, 34.166534, 35.843113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578888, 33.954121, 35.840305>,  <39.375530, 33.826672, 35.838619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578888, 33.954121, 35.840305>,  <39.917816, 34.166534, 35.843113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578888, 33.954121, 35.840305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068999, 0.123184, -0.989982,
		0.526581, -0.838347, -0.141018,
		-0.847320, -0.531036, -0.007021,
		39.324692, 33.794811, 35.838200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025623, 33.675762, 35.236160>,  <39.917816, 34.166534, 35.843113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025623, 33.675762, 35.236160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630569, 33.686298, 35.297985>,  <39.393539, 33.692619, 35.335079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.630569, 33.686298, 35.297985>,  <40.025623, 33.675762, 35.236160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630569, 33.686298, 35.297985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155336, -0.030237, -0.987399,
		-0.021293, -0.999197, 0.033948,
		-0.987632, 0.026298, 0.154567,
		39.334282, 33.694199, 35.344357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843147, 33.148998, 34.823467>,  <40.025623, 33.675762, 35.236160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843147, 33.148998, 34.823467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532444, 33.386066, 34.908688>,  <39.346024, 33.528309, 34.959820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532444, 33.386066, 34.908688>,  <39.843147, 33.148998, 34.823467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532444, 33.386066, 34.908688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262077, 0.003431, -0.965041,
		-0.572685, -0.805436, 0.152661,
		-0.776754, 0.592673, 0.213051,
		39.299416, 33.563869, 34.972603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230484, 32.898834, 34.567448>,  <39.843147, 33.148998, 34.823467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230484, 32.898834, 34.567448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128696, 33.284679, 34.595081>,  <39.067623, 33.516186, 34.611660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.128696, 33.284679, 34.595081>,  <39.230484, 32.898834, 34.567448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128696, 33.284679, 34.595081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317699, -0.015914, -0.948058,
		-0.913407, -0.263201, 0.310505,
		-0.254471, 0.964610, 0.069083,
		39.052357, 33.574062, 34.615807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606209, 32.912418, 34.116436>,  <39.230484, 32.898834, 34.567448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606209, 32.912418, 34.116436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724541, 33.288071, 34.186325>,  <38.795540, 33.513462, 34.228256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724541, 33.288071, 34.186325>,  <38.606209, 32.912418, 34.116436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724541, 33.288071, 34.186325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331039, 0.272361, -0.903456,
		-0.896047, 0.209426, 0.391459,
		0.295825, 0.939128, 0.174720,
		38.813290, 33.569809, 34.238743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078800, 33.354527, 33.890041>,  <38.606209, 32.912418, 34.116436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078800, 33.354527, 33.890041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410778, 33.577602, 33.884762>,  <38.609962, 33.711449, 33.881596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410778, 33.577602, 33.884762>,  <38.078800, 33.354527, 33.890041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410778, 33.577602, 33.884762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106932, 0.135830, -0.984944,
		-0.547505, 0.818858, 0.172366,
		0.829942, 0.557694, -0.013194,
		38.659760, 33.744911, 33.880802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906509, 34.025539, 33.687672>,  <38.078800, 33.354527, 33.890041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906509, 34.025539, 33.687672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295422, 33.974037, 33.609604>,  <38.528770, 33.943138, 33.562763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.295422, 33.974037, 33.609604>,  <37.906509, 34.025539, 33.687672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295422, 33.974037, 33.609604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141468, 0.340668, -0.929480,
		0.186160, 0.931326, 0.313011,
		0.972281, -0.128751, -0.195172,
		38.587105, 33.935413, 33.551052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979187, 34.759769, 33.882946>,  <37.906509, 34.025539, 33.687672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979187, 34.759769, 33.882946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594101, 34.849098, 33.821888>,  <37.363049, 34.902695, 33.785252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594101, 34.849098, 33.821888>,  <37.979187, 34.759769, 33.882946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594101, 34.849098, 33.821888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167935, -0.051026, 0.984477,
		0.212062, 0.973409, 0.086627,
		-0.962719, 0.223318, -0.152648,
		37.305286, 34.916092, 33.776093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706131, 35.255577, 34.421761>,  <37.979187, 34.759769, 33.882946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706131, 35.255577, 34.421761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380440, 35.077930, 34.272205>,  <37.185024, 34.971340, 34.182472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380440, 35.077930, 34.272205>,  <37.706131, 35.255577, 34.421761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380440, 35.077930, 34.272205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401011, -0.035430, 0.915388,
		-0.419787, 0.895267, -0.149248,
		-0.814229, -0.444118, -0.373885,
		37.136169, 34.944695, 34.160038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060436, 35.595085, 34.781631>,  <37.706131, 35.255577, 34.421761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060436, 35.595085, 34.781631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.899151, 35.265697, 34.621979>,  <36.802380, 35.068066, 34.526188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.899151, 35.265697, 34.621979>,  <37.060436, 35.595085, 34.781631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899151, 35.265697, 34.621979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446026, -0.203998, 0.871462,
		-0.799048, 0.529413, -0.285035,
		-0.403217, -0.823472, -0.399136,
		36.778187, 35.018654, 34.502239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389385, 35.601063, 34.893604>,  <37.060436, 35.595085, 34.781631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389385, 35.601063, 34.893604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.430721, 35.212582, 34.807735>,  <36.455521, 34.979492, 34.756214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.430721, 35.212582, 34.807735>,  <36.389385, 35.601063, 34.893604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430721, 35.212582, 34.807735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549663, -0.235634, 0.801466,
		-0.828971, 0.035174, -0.558185,
		0.103336, -0.971205, -0.214668,
		36.461723, 34.921219, 34.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731922, 35.403927, 34.897831>,  <36.389385, 35.601063, 34.893604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731922, 35.403927, 34.897831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939030, 35.063084, 34.928368>,  <36.063293, 34.858578, 34.946690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939030, 35.063084, 34.928368>,  <35.731922, 35.403927, 34.897831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939030, 35.063084, 34.928368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702995, -0.372903, 0.605592,
		-0.487563, -0.367222, -0.792105,
		0.517764, -0.852110, 0.076342,
		36.094360, 34.807449, 34.951271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243576, 34.799072, 34.919724>,  <35.731922, 35.403927, 34.897831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243576, 34.799072, 34.919724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582245, 34.651367, 35.072975>,  <35.785446, 34.562744, 35.164925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582245, 34.651367, 35.072975>,  <35.243576, 34.799072, 34.919724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582245, 34.651367, 35.072975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531005, -0.539970, 0.653044,
		-0.034268, -0.756359, -0.653259,
		0.846675, -0.369263, 0.383127,
		35.836246, 34.540588, 35.187912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062580, 34.074871, 35.091103>,  <35.243576, 34.799072, 34.919724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062580, 34.074871, 35.091103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.369232, 34.186775, 35.322277>,  <35.553223, 34.253918, 35.460983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.369232, 34.186775, 35.322277>,  <35.062580, 34.074871, 35.091103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369232, 34.186775, 35.322277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482808, -0.342212, 0.806094,
		0.423288, -0.897010, -0.127282,
		0.766632, 0.279757, 0.577937,
		35.599220, 34.270702, 35.495659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901897, 33.675411, 35.653362>,  <35.062580, 34.074871, 35.091103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901897, 33.675411, 35.653362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.174137, 33.945465, 35.767193>,  <35.337482, 34.107498, 35.835491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.174137, 33.945465, 35.767193>,  <34.901897, 33.675411, 35.653362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174137, 33.945465, 35.767193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203934, -0.198497, 0.958650,
		0.703702, -0.710491, 0.002585,
		0.680599, 0.675131, 0.284575,
		35.378315, 34.148003, 35.852566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392090, 33.332748, 36.138775>,  <34.901897, 33.675411, 35.653362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392090, 33.332748, 36.138775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392834, 33.726738, 36.207859>,  <35.393280, 33.963131, 36.249310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392834, 33.726738, 36.207859>,  <35.392090, 33.332748, 36.138775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392834, 33.726738, 36.207859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364739, -0.160145, 0.917234,
		0.931108, -0.064702, 0.358959,
		0.001862, 0.984971, 0.172711,
		35.393391, 34.022228, 36.259674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510956, 33.285622, 36.778919>,  <35.392090, 33.332748, 36.138775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510956, 33.285622, 36.778919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409927, 33.669617, 36.730534>,  <35.349312, 33.900013, 36.701504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409927, 33.669617, 36.730534>,  <35.510956, 33.285622, 36.778919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409927, 33.669617, 36.730534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218099, 0.065314, 0.973739,
		0.942677, 0.272320, 0.192876,
		-0.252571, 0.959987, -0.120963,
		35.334156, 33.957611, 36.694244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755764, 33.535446, 37.401199>,  <35.510956, 33.285622, 36.778919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755764, 33.535446, 37.401199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487759, 33.791771, 37.251301>,  <35.326954, 33.945564, 37.161362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.487759, 33.791771, 37.251301>,  <35.755764, 33.535446, 37.401199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487759, 33.791771, 37.251301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357783, 0.163562, 0.919369,
		0.650437, 0.750072, 0.119682,
		-0.670017, 0.640812, -0.374750,
		35.286755, 33.984013, 37.138874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822201, 34.165245, 37.674530>,  <35.755764, 33.535446, 37.401199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822201, 34.165245, 37.674530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436207, 34.104256, 37.589161>,  <35.204609, 34.067661, 37.537941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436207, 34.104256, 37.589161>,  <35.822201, 34.165245, 37.674530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436207, 34.104256, 37.589161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242177, 0.205456, 0.948229,
		-0.100735, 0.966716, -0.235189,
		-0.964989, -0.152477, -0.213420,
		35.146709, 34.058514, 37.525135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.127094, 36.126450, 30.158470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745968, 36.005112, 30.153856>,  <37.517292, 35.932308, 30.151087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745968, 36.005112, 30.153856>,  <38.127094, 36.126450, 30.158470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745968, 36.005112, 30.153856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042952, 0.097100, 0.994347,
		-0.300509, 0.947921, -0.105548,
		-0.952811, -0.303344, -0.011536,
		37.460125, 35.914108, 30.150396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772137, 36.578518, 30.570450>,  <38.127094, 36.126450, 30.158470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772137, 36.578518, 30.570450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530476, 36.260002, 30.558355>,  <37.385479, 36.068893, 30.551100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530476, 36.260002, 30.558355>,  <37.772137, 36.578518, 30.570450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530476, 36.260002, 30.558355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181349, 0.100447, 0.978276,
		-0.775956, 0.596514, -0.205092,
		-0.604156, -0.796292, -0.030235,
		37.349228, 36.021114, 30.549284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300438, 36.756851, 31.136051>,  <37.772137, 36.578518, 30.570450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300438, 36.756851, 31.136051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247059, 36.362446, 31.096111>,  <37.215031, 36.125801, 31.072147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247059, 36.362446, 31.096111>,  <37.300438, 36.756851, 31.136051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247059, 36.362446, 31.096111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276358, -0.059732, 0.959197,
		-0.951745, 0.155597, -0.264522,
		-0.133447, -0.986013, -0.099850,
		37.207024, 36.066643, 31.066156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745258, 36.577839, 31.561419>,  <37.300438, 36.756851, 31.136051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745258, 36.577839, 31.561419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891098, 36.215794, 31.473925>,  <36.978600, 35.998566, 31.421429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891098, 36.215794, 31.473925>,  <36.745258, 36.577839, 31.561419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891098, 36.215794, 31.473925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212112, -0.309455, 0.926955,
		-0.906686, -0.291568, -0.304811,
		0.364596, -0.905111, -0.218734,
		37.000477, 35.944260, 31.408304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268902, 36.043415, 31.702036>,  <36.745258, 36.577839, 31.561419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268902, 36.043415, 31.702036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606567, 35.828999, 31.704971>,  <36.809166, 35.700348, 31.706732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606567, 35.828999, 31.704971>,  <36.268902, 36.043415, 31.702036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606567, 35.828999, 31.704971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239217, -0.364401, 0.899993,
		-0.479763, -0.761491, -0.435843,
		0.844158, -0.536044, 0.007336,
		36.859814, 35.668186, 31.707172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068382, 35.386112, 31.895121>,  <36.268902, 36.043415, 31.702036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068382, 35.386112, 31.895121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453442, 35.416821, 31.998978>,  <36.684479, 35.435246, 32.061291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453442, 35.416821, 31.998978>,  <36.068382, 35.386112, 31.895121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453442, 35.416821, 31.998978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189809, -0.492493, 0.849366,
		0.193082, -0.866924, -0.459525,
		0.962648, 0.076775, 0.259641,
		36.742237, 35.439854, 32.076870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269505, 34.724194, 32.215973>,  <36.068382, 35.386112, 31.895121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269505, 34.724194, 32.215973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579220, 34.949860, 32.330662>,  <36.765049, 35.085258, 32.399475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579220, 34.949860, 32.330662>,  <36.269505, 34.724194, 32.215973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579220, 34.949860, 32.330662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023870, -0.478781, 0.877610,
		0.632389, -0.672675, -0.384179,
		0.774284, 0.564161, 0.286719,
		36.811504, 35.119106, 32.416676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876766, 34.246883, 32.432407>,  <36.269505, 34.724194, 32.215973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876766, 34.246883, 32.432407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916656, 34.603500, 32.609135>,  <36.940590, 34.817471, 32.715172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916656, 34.603500, 32.609135>,  <36.876766, 34.246883, 32.432407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916656, 34.603500, 32.609135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045063, -0.439532, 0.897096,
		0.993994, -0.109371, -0.003656,
		0.099723, 0.891544, 0.441821,
		36.946575, 34.870964, 32.741680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324207, 34.116440, 32.958744>,  <36.876766, 34.246883, 32.432407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324207, 34.116440, 32.958744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121639, 34.454269, 33.028286>,  <37.000099, 34.656967, 33.070011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121639, 34.454269, 33.028286>,  <37.324207, 34.116440, 32.958744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121639, 34.454269, 33.028286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310727, -0.366822, 0.876864,
		0.804354, 0.390041, 0.448200,
		-0.506422, 0.844577, 0.173858,
		36.969711, 34.707642, 33.080444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043308, 34.453541, 33.049698>,  <37.324207, 34.116440, 32.958744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043308, 34.453541, 33.049698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379135, 34.241501, 33.097233>,  <38.580631, 34.114277, 33.125751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379135, 34.241501, 33.097233>,  <38.043308, 34.453541, 33.049698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379135, 34.241501, 33.097233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316509, 0.299516, -0.900062,
		0.441528, 0.793276, 0.419245,
		0.839568, -0.530098, 0.118835,
		38.631004, 34.082470, 33.132885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698906, 34.936207, 32.681271>,  <38.043308, 34.453541, 33.049698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698906, 34.936207, 32.681271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817371, 34.554176, 32.685669>,  <38.888451, 34.324959, 32.688309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817371, 34.554176, 32.685669>,  <38.698906, 34.936207, 32.681271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817371, 34.554176, 32.685669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380088, 0.107291, -0.918706,
		0.876253, 0.276267, 0.394788,
		0.296166, -0.955073, 0.010992,
		38.906219, 34.267654, 32.688965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359127, 34.859753, 32.263760>,  <38.698906, 34.936207, 32.681271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359127, 34.859753, 32.263760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225880, 34.482773, 32.275173>,  <39.145931, 34.256584, 32.282021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225880, 34.482773, 32.275173>,  <39.359127, 34.859753, 32.263760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225880, 34.482773, 32.275173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270458, -0.124498, -0.954648,
		0.903262, -0.310297, 0.296367,
		-0.333122, -0.942452, 0.028532,
		39.125942, 34.200039, 32.283733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933231, 34.441128, 31.912167>,  <39.359127, 34.859753, 32.263760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933231, 34.441128, 31.912167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601894, 34.218288, 31.888546>,  <39.403091, 34.084587, 31.874374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601894, 34.218288, 31.888546>,  <39.933231, 34.441128, 31.912167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601894, 34.218288, 31.888546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179447, -0.164003, -0.970001,
		0.530700, -0.814092, 0.235820,
		-0.828345, -0.557097, -0.059050,
		39.353390, 34.051159, 31.870831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165989, 33.839920, 31.661919>,  <39.933231, 34.441128, 31.912167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165989, 33.839920, 31.661919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772346, 33.875397, 31.600376>,  <39.536160, 33.896683, 31.563450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772346, 33.875397, 31.600376>,  <40.165989, 33.839920, 31.661919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772346, 33.875397, 31.600376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109876, -0.376546, -0.919859,
		-0.139518, -0.922142, 0.360816,
		-0.984105, 0.088692, -0.153856,
		39.477116, 33.902004, 31.554220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043243, 33.329552, 31.261707>,  <40.165989, 33.839920, 31.661919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043243, 33.329552, 31.261707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717293, 33.553677, 31.202339>,  <39.521721, 33.688152, 31.166719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717293, 33.553677, 31.202339>,  <40.043243, 33.329552, 31.261707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717293, 33.553677, 31.202339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118870, -0.089071, -0.988907,
		-0.567313, -0.823480, 0.005978,
		-0.814878, 0.560309, -0.148418,
		39.472828, 33.721767, 31.157814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667572, 33.076916, 30.600033>,  <40.043243, 33.329552, 31.261707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667572, 33.076916, 30.600033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525566, 33.445827, 30.661180>,  <39.440361, 33.667175, 30.697868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525566, 33.445827, 30.661180>,  <39.667572, 33.076916, 30.600033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525566, 33.445827, 30.661180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010152, 0.167315, -0.985851,
		-0.934805, -0.348442, -0.068763,
		-0.355017, 0.922277, 0.152869,
		39.419060, 33.722511, 30.707041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265553, 33.167187, 30.016026>,  <39.667572, 33.076916, 30.600033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265553, 33.167187, 30.016026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334217, 33.535690, 30.155632>,  <39.375416, 33.756794, 30.239395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334217, 33.535690, 30.155632>,  <39.265553, 33.167187, 30.016026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334217, 33.535690, 30.155632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085208, 0.339061, -0.936898,
		-0.981464, 0.190567, -0.020295,
		0.171661, 0.921261, 0.349014,
		39.385715, 33.812069, 30.260336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821217, 33.587093, 29.646706>,  <39.265553, 33.167187, 30.016026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821217, 33.587093, 29.646706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078671, 33.855190, 29.794491>,  <39.233143, 34.016048, 29.883162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078671, 33.855190, 29.794491>,  <38.821217, 33.587093, 29.646706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078671, 33.855190, 29.794491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148165, 0.364493, -0.919343,
		-0.750853, 0.646464, 0.135294,
		0.643636, 0.670246, 0.369464,
		39.271763, 34.056263, 29.905331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829857, 34.104832, 29.084330>,  <38.821217, 33.587093, 29.646706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829857, 34.104832, 29.084330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150921, 34.190815, 29.306870>,  <39.343559, 34.242405, 29.440393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150921, 34.190815, 29.306870>,  <38.829857, 34.104832, 29.084330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150921, 34.190815, 29.306870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459843, 0.371013, -0.806780,
		-0.379840, 0.903405, 0.198949,
		0.802662, 0.214962, 0.556350,
		39.391720, 34.255302, 29.473774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119308, 34.735474, 28.838997>,  <38.829857, 34.104832, 29.084330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119308, 34.735474, 28.838997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430470, 34.590363, 29.044230>,  <39.617168, 34.503296, 29.167370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430470, 34.590363, 29.044230>,  <39.119308, 34.735474, 28.838997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430470, 34.590363, 29.044230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600062, 0.186513, -0.777906,
		0.186513, 0.913019, 0.362780,
		0.777906, -0.362780, 0.513081,
		39.663841, 34.481529, 29.198154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656826, 35.236420, 28.753248>,  <39.119308, 34.735474, 28.838997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656826, 35.236420, 28.753248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813240, 34.878082, 28.837687>,  <39.907089, 34.663082, 28.888350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813240, 34.878082, 28.837687>,  <39.656826, 35.236420, 28.753248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813240, 34.878082, 28.837687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624325, 0.089661, -0.776002,
		0.676248, 0.435234, 0.594357,
		0.391033, -0.895842, 0.211095,
		39.930550, 34.609329, 28.901014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374310, 35.338806, 28.776169>,  <39.656826, 35.236420, 28.753248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374310, 35.338806, 28.776169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316078, 34.950008, 28.702385>,  <40.281139, 34.716728, 28.658115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316078, 34.950008, 28.702385>,  <40.374310, 35.338806, 28.776169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316078, 34.950008, 28.702385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500291, 0.088525, -0.861321,
		0.853531, -0.217675, 0.473394,
		-0.145581, -0.971998, -0.184460,
		40.272404, 34.658409, 28.647047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991596, 35.174042, 28.566267>,  <40.374310, 35.338806, 28.776169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991596, 35.174042, 28.566267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767872, 34.861317, 28.456038>,  <40.633636, 34.673683, 28.389900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767872, 34.861317, 28.456038>,  <40.991596, 35.174042, 28.566267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767872, 34.861317, 28.456038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517717, -0.069821, -0.852698,
		0.647407, -0.619595, 0.443808,
		-0.559315, -0.781810, -0.275572,
		40.600079, 34.626774, 28.373365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.040192, 31.333889, 27.050982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288548, 31.635963, 27.135067>,  <35.437561, 31.817207, 27.185518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.288548, 31.635963, 27.135067>,  <35.040192, 31.333889, 27.050982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288548, 31.635963, 27.135067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029675, -0.245329, 0.968985,
		0.783334, -0.607873, -0.129913,
		0.620892, 0.755185, 0.210213,
		35.474815, 31.862518, 27.198132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544178, 31.027843, 27.433226>,  <35.040192, 31.333889, 27.050982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544178, 31.027843, 27.433226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662819, 31.401480, 27.512724>,  <35.734001, 31.625662, 27.560423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662819, 31.401480, 27.512724>,  <35.544178, 31.027843, 27.433226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662819, 31.401480, 27.512724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210688, -0.266986, 0.940388,
		0.931472, -0.237044, -0.275990,
		0.296599, 0.934092, 0.198748,
		35.751801, 31.681707, 27.572348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183655, 30.904663, 27.806961>,  <35.544178, 31.027843, 27.433226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183655, 30.904663, 27.806961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045368, 31.267561, 27.902782>,  <35.962395, 31.485300, 27.960276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045368, 31.267561, 27.902782>,  <36.183655, 30.904663, 27.806961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045368, 31.267561, 27.902782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246480, -0.158528, 0.956094,
		0.905387, 0.389586, -0.168811,
		-0.345720, 0.907244, 0.239555,
		35.941650, 31.539734, 27.974649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732880, 31.259363, 28.212677>,  <36.183655, 30.904663, 27.806961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732880, 31.259363, 28.212677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390465, 31.444775, 28.304186>,  <36.185017, 31.556021, 28.359091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390465, 31.444775, 28.304186>,  <36.732880, 31.259363, 28.212677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390465, 31.444775, 28.304186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198658, -0.113567, 0.973467,
		0.477211, 0.878774, 0.005134,
		-0.856040, 0.463529, 0.228771,
		36.133652, 31.583834, 28.372818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933655, 31.661299, 28.676775>,  <36.732880, 31.259363, 28.212677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933655, 31.661299, 28.676775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537502, 31.661140, 28.732132>,  <36.299812, 31.661045, 28.765347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.537502, 31.661140, 28.732132>,  <36.933655, 31.661299, 28.676775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537502, 31.661140, 28.732132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138312, -0.036906, 0.989701,
		0.004716, 0.999319, 0.036606,
		-0.990377, -0.000395, 0.138392,
		36.240391, 31.661022, 28.773649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765610, 32.237663, 29.182148>,  <36.933655, 31.661299, 28.676775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765610, 32.237663, 29.182148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463757, 31.977760, 29.218706>,  <36.282646, 31.821819, 29.240641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.463757, 31.977760, 29.218706>,  <36.765610, 32.237663, 29.182148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463757, 31.977760, 29.218706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099132, 0.024792, 0.994765,
		-0.648618, 0.759740, 0.045703,
		-0.754630, -0.649754, 0.091395,
		36.237366, 31.782835, 29.246124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310493, 32.413742, 29.684467>,  <36.765610, 32.237663, 29.182148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310493, 32.413742, 29.684467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255535, 32.019146, 29.648764>,  <36.222561, 31.782389, 29.627340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255535, 32.019146, 29.648764>,  <36.310493, 32.413742, 29.684467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255535, 32.019146, 29.648764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008691, -0.091312, 0.995784,
		-0.990478, 0.136045, 0.021119,
		-0.137400, -0.986486, -0.089260,
		36.214314, 31.723200, 29.621986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865902, 32.274132, 30.228352>,  <36.310493, 32.413742, 29.684467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865902, 32.274132, 30.228352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999027, 31.912588, 30.120815>,  <36.078903, 31.695662, 30.056293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.999027, 31.912588, 30.120815>,  <35.865902, 32.274132, 30.228352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999027, 31.912588, 30.120815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105440, -0.318972, 0.941881,
		-0.937080, -0.285122, -0.201460,
		0.332811, -0.903860, -0.268839,
		36.098869, 31.641430, 30.040163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448368, 31.750591, 30.529003>,  <35.865902, 32.274132, 30.228352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448368, 31.750591, 30.529003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.791721, 31.558401, 30.457100>,  <35.997734, 31.443087, 30.413958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.791721, 31.558401, 30.457100>,  <35.448368, 31.750591, 30.529003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791721, 31.558401, 30.457100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035498, -0.293929, 0.955168,
		-0.511771, -0.826286, -0.235250,
		0.858388, -0.480476, -0.179756,
		36.049236, 31.414259, 30.403173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419331, 31.239454, 30.973763>,  <35.448368, 31.750591, 30.529003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419331, 31.239454, 30.973763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800232, 31.201548, 30.857672>,  <36.028774, 31.178802, 30.788017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.800232, 31.201548, 30.857672>,  <35.419331, 31.239454, 30.973763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800232, 31.201548, 30.857672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219623, -0.447712, 0.866787,
		-0.212082, -0.889142, -0.405522,
		0.952254, -0.094768, -0.290228,
		36.085907, 31.173117, 30.770603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611618, 30.517225, 31.050941>,  <35.419331, 31.239454, 30.973763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611618, 30.517225, 31.050941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.931507, 30.756704, 31.068844>,  <36.123440, 30.900393, 31.079586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.931507, 30.756704, 31.068844>,  <35.611618, 30.517225, 31.050941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931507, 30.756704, 31.068844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208985, -0.347489, 0.914099,
		0.562822, -0.721673, -0.403014,
		0.799723, 0.598699, 0.044756,
		36.171425, 30.936314, 31.082270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065357, 30.165878, 31.419353>,  <35.611618, 30.517225, 31.050941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065357, 30.165878, 31.419353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.247234, 30.521442, 31.441618>,  <36.356361, 30.734781, 31.454977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.247234, 30.521442, 31.441618>,  <36.065357, 30.165878, 31.419353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247234, 30.521442, 31.441618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174484, -0.150185, 0.973139,
		0.873391, -0.432765, -0.223388,
		0.454690, 0.888909, 0.055660,
		36.383640, 30.788115, 31.458317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739532, 30.024843, 31.749201>,  <36.065357, 30.165878, 31.419353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739532, 30.024843, 31.749201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640713, 30.406660, 31.815914>,  <36.581421, 30.635750, 31.855942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.640713, 30.406660, 31.815914>,  <36.739532, 30.024843, 31.749201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640713, 30.406660, 31.815914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180869, -0.123670, 0.975701,
		0.951973, 0.271215, -0.142094,
		-0.247052, 0.954541, 0.166785,
		36.566597, 30.693022, 31.865950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208435, 30.369520, 32.213688>,  <36.739532, 30.024843, 31.749201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208435, 30.369520, 32.213688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872055, 30.581732, 32.256287>,  <36.670227, 30.709059, 32.281845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872055, 30.581732, 32.256287>,  <37.208435, 30.369520, 32.213688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872055, 30.581732, 32.256287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088369, -0.059518, 0.994308,
		0.533846, 0.845575, 0.003169,
		-0.840951, 0.530528, 0.106496,
		36.619770, 30.740891, 32.288235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717934, 30.807961, 32.716354>,  <37.208435, 30.369520, 32.213688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717934, 30.807961, 32.716354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873112, 30.446630, 32.789570>,  <37.966217, 30.229832, 32.833500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.873112, 30.446630, 32.789570>,  <37.717934, 30.807961, 32.716354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873112, 30.446630, 32.789570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333985, -0.047314, -0.941390,
		0.859041, 0.426340, 0.283342,
		0.387946, -0.903325, 0.183036,
		37.989494, 30.175632, 32.844479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386723, 30.844898, 32.345745>,  <37.717934, 30.807961, 32.716354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386723, 30.844898, 32.345745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305611, 30.457848, 32.405853>,  <38.256943, 30.225618, 32.441917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.305611, 30.457848, 32.405853>,  <38.386723, 30.844898, 32.345745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305611, 30.457848, 32.405853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093104, -0.171815, -0.980720,
		0.974788, -0.184882, 0.124931,
		-0.202782, -0.967625, 0.150270,
		38.244778, 30.167561, 32.450935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934036, 30.521908, 32.106941>,  <38.386723, 30.844898, 32.345745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934036, 30.521908, 32.106941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.661049, 30.229774, 32.118576>,  <38.497257, 30.054495, 32.125557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.661049, 30.229774, 32.118576>,  <38.934036, 30.521908, 32.106941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661049, 30.229774, 32.118576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202404, -0.227078, -0.952611,
		0.702330, -0.644241, 0.302797,
		-0.682470, -0.730335, 0.029087,
		38.456306, 30.010674, 32.127300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268784, 29.854023, 31.804905>,  <38.934036, 30.521908, 32.106941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268784, 29.854023, 31.804905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872086, 29.821562, 31.765194>,  <38.634068, 29.802086, 31.741367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872086, 29.821562, 31.765194>,  <39.268784, 29.854023, 31.804905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872086, 29.821562, 31.765194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125401, -0.452280, -0.883016,
		0.026758, -0.888176, 0.458723,
		-0.991745, -0.081152, -0.099276,
		38.574562, 29.797216, 31.735411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226772, 29.270914, 31.330070>,  <39.268784, 29.854023, 31.804905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226772, 29.270914, 31.330070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874142, 29.459410, 31.319019>,  <38.662563, 29.572506, 31.312387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.874142, 29.459410, 31.319019>,  <39.226772, 29.270914, 31.330070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874142, 29.459410, 31.319019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007550, -0.044450, -0.998983,
		-0.471987, -0.880885, 0.035628,
		-0.881574, 0.471238, -0.027630,
		38.609669, 29.600780, 31.310730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982651, 29.034107, 30.669613>,  <39.226772, 29.270914, 31.330070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982651, 29.034107, 30.669613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733788, 29.335960, 30.752995>,  <38.584469, 29.517073, 30.803024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.733788, 29.335960, 30.752995>,  <38.982651, 29.034107, 30.669613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733788, 29.335960, 30.752995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167094, 0.132131, -0.977047,
		-0.764856, -0.642705, 0.043889,
		-0.622154, 0.754634, 0.208454,
		38.547142, 29.562351, 30.815531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450367, 28.929596, 30.168388>,  <38.982651, 29.034107, 30.669613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450367, 28.929596, 30.168388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404560, 29.311476, 30.278252>,  <38.377075, 29.540604, 30.344170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404560, 29.311476, 30.278252>,  <38.450367, 28.929596, 30.168388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404560, 29.311476, 30.278252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033268, 0.272636, -0.961542,
		-0.992864, -0.119250, 0.000539,
		-0.114517, 0.954698, 0.274658,
		38.370205, 29.597885, 30.360649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844200, 29.229029, 29.729914>,  <38.450367, 28.929596, 30.168388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844200, 29.229029, 29.729914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092190, 29.516464, 29.855938>,  <38.240986, 29.688925, 29.931553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092190, 29.516464, 29.855938>,  <37.844200, 29.229029, 29.729914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092190, 29.516464, 29.855938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017403, 0.414039, -0.910093,
		-0.784427, 0.558753, 0.269200,
		0.619976, 0.718587, 0.315059,
		38.278183, 29.732040, 29.950457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594593, 29.847340, 29.395542>,  <37.844200, 29.229029, 29.729914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594593, 29.847340, 29.395542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960461, 29.961550, 29.509981>,  <38.179981, 30.030075, 29.578644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960461, 29.961550, 29.509981>,  <37.594593, 29.847340, 29.395542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960461, 29.961550, 29.509981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107465, 0.510556, -0.853103,
		-0.389650, 0.811054, 0.436308,
		0.914672, 0.285524, 0.286098,
		38.234863, 30.047207, 29.595810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652313, 30.542938, 29.263931>,  <37.594593, 29.847340, 29.395542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652313, 30.542938, 29.263931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032898, 30.423656, 29.294361>,  <38.261250, 30.352087, 29.312620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032898, 30.423656, 29.294361>,  <37.652313, 30.542938, 29.263931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032898, 30.423656, 29.294361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244518, 0.582392, -0.775262,
		0.186881, 0.756236, 0.627042,
		0.951465, -0.298204, 0.076076,
		38.318336, 30.334194, 29.317184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901890, 31.221041, 29.230825>,  <37.652313, 30.542938, 29.263931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901890, 31.221041, 29.230825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159481, 30.928913, 29.139673>,  <38.314037, 30.753637, 29.084982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.159481, 30.928913, 29.139673>,  <37.901890, 31.221041, 29.230825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159481, 30.928913, 29.139673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312346, 0.522893, -0.793109,
		0.698379, 0.439566, 0.564843,
		0.643977, -0.730318, -0.227881,
		38.352673, 30.709818, 29.071308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370056, 31.552696, 28.863760>,  <37.901890, 31.221041, 29.230825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370056, 31.552696, 28.863760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439438, 31.179186, 28.738558>,  <38.481068, 30.955080, 28.663437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.439438, 31.179186, 28.738558>,  <38.370056, 31.552696, 28.863760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439438, 31.179186, 28.738558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344299, 0.355266, -0.869048,
		0.922697, 0.042977, 0.383122,
		0.173459, -0.933777, -0.313006,
		38.491474, 30.899054, 28.644655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989529, 31.537943, 28.466269>,  <38.370056, 31.552696, 28.863760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989529, 31.537943, 28.466269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.762672, 31.231333, 28.345745>,  <38.626556, 31.047367, 28.273432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.762672, 31.231333, 28.345745>,  <38.989529, 31.537943, 28.466269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762672, 31.231333, 28.345745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104023, 0.296239, -0.949432,
		0.817024, -0.569807, -0.088274,
		-0.567143, -0.766526, -0.301307,
		38.592529, 31.001375, 28.255354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302475, 31.318243, 27.803070>,  <38.989529, 31.537943, 28.466269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302475, 31.318243, 27.803070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927029, 31.180260, 27.803951>,  <38.701759, 31.097469, 27.804480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927029, 31.180260, 27.803951>,  <39.302475, 31.318243, 27.803070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927029, 31.180260, 27.803951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103400, 0.275239, -0.955799,
		0.329110, -0.897354, -0.294012,
		-0.938613, -0.344963, 0.002203,
		38.645443, 31.076773, 27.804613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856548, 30.931654, 27.492722>,  <39.302475, 31.318243, 27.803070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856548, 30.931654, 27.492722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.175045, 31.173546, 27.485792>,  <40.366142, 31.318682, 27.481634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.175045, 31.173546, 27.485792>,  <39.856548, 30.931654, 27.492722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175045, 31.173546, 27.485792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381239, -0.479324, 0.790509,
		0.469742, -0.636041, -0.612205,
		0.796241, 0.604731, -0.017325,
		40.413918, 31.354965, 27.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600227, 30.487146, 27.374882>,  <39.856548, 30.931654, 27.492722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600227, 30.487146, 27.374882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706215, 30.823076, 27.564402>,  <40.769806, 31.024633, 27.678114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706215, 30.823076, 27.564402>,  <40.600227, 30.487146, 27.374882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706215, 30.823076, 27.564402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325606, -0.540429, 0.775833,
		0.907620, -0.051296, -0.416647,
		0.264965, 0.839825, 0.473802,
		40.785706, 31.075024, 27.706543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150993, 30.276497, 27.767044>,  <40.600227, 30.487146, 27.374882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150993, 30.276497, 27.767044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054611, 30.621204, 27.945616>,  <40.996784, 30.828028, 28.052759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054611, 30.621204, 27.945616>,  <41.150993, 30.276497, 27.767044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054611, 30.621204, 27.945616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225945, -0.397537, 0.889333,
		0.943870, 0.315156, -0.098925,
		-0.240953, 0.861766, 0.446431,
		40.982327, 30.879734, 28.079546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646698, 30.452690, 28.126448>,  <41.150993, 30.276497, 27.767044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646698, 30.452690, 28.126448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372471, 30.686995, 28.299366>,  <41.207935, 30.827578, 28.403116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372471, 30.686995, 28.299366>,  <41.646698, 30.452690, 28.126448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372471, 30.686995, 28.299366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432216, -0.150333, 0.889151,
		0.585817, 0.796420, -0.150111,
		-0.685571, 0.585760, 0.432294,
		41.166801, 30.862722, 28.429054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967594, 30.763954, 28.628206>,  <41.646698, 30.452690, 28.126448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967594, 30.763954, 28.628206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.592590, 30.827501, 28.752039>,  <41.367588, 30.865629, 28.826340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.592590, 30.827501, 28.752039>,  <41.967594, 30.763954, 28.628206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592590, 30.827501, 28.752039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298109, -0.092196, 0.950069,
		0.179476, 0.982986, 0.039075,
		-0.937507, 0.158866, 0.309583,
		41.311337, 30.875160, 28.844913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066780, 31.105461, 29.280003>,  <41.967594, 30.763954, 28.628206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066780, 31.105461, 29.280003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.690063, 30.978374, 29.323959>,  <41.464031, 30.902122, 29.350332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.690063, 30.978374, 29.323959>,  <42.066780, 31.105461, 29.280003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690063, 30.978374, 29.323959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168448, -0.163093, 0.972124,
		-0.290938, 0.934054, 0.207120,
		-0.941796, -0.317717, 0.109890,
		41.407524, 30.883059, 29.356926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820415, 31.468969, 29.844654>,  <42.066780, 31.105461, 29.280003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820415, 31.468969, 29.844654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567154, 31.160597, 29.816988>,  <41.415195, 30.975574, 29.800388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.567154, 31.160597, 29.816988>,  <41.820415, 31.468969, 29.844654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567154, 31.160597, 29.816988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052285, -0.046558, 0.997546,
		-0.772258, 0.635217, -0.010830,
		-0.633155, -0.770929, -0.069167,
		41.377209, 30.929317, 29.796238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221302, 31.594059, 30.221453>,  <41.820415, 31.468969, 29.844654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221302, 31.594059, 30.221453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.250973, 31.195223, 30.214479>,  <41.268776, 30.955921, 30.210295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.250973, 31.195223, 30.214479>,  <41.221302, 31.594059, 30.221453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250973, 31.195223, 30.214479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106850, -0.025329, 0.993952,
		-0.991504, -0.071868, -0.108419,
		0.074180, -0.997093, -0.017435,
		41.273228, 30.896095, 30.209249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600975, 31.324577, 30.497492>,  <41.221302, 31.594059, 30.221453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600975, 31.324577, 30.497492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897480, 31.062035, 30.553680>,  <41.075382, 30.904509, 30.587395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897480, 31.062035, 30.553680>,  <40.600975, 31.324577, 30.497492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897480, 31.062035, 30.553680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314245, -0.154421, 0.936698,
		-0.593116, -0.738478, -0.320723,
		0.741258, -0.656356, 0.140473,
		41.119858, 30.865128, 30.595823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374786, 30.630735, 30.659891>,  <40.600975, 31.324577, 30.497492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374786, 30.630735, 30.659891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.742428, 30.621349, 30.817221>,  <40.963013, 30.615719, 30.911619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.742428, 30.621349, 30.817221>,  <40.374786, 30.630735, 30.659891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742428, 30.621349, 30.817221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384463, -0.271980, 0.882165,
		0.086279, -0.962017, -0.258997,
		0.919100, -0.023462, 0.393326,
		41.018158, 30.614311, 30.935219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342911, 30.064182, 31.159147>,  <40.374786, 30.630735, 30.659891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342911, 30.064182, 31.159147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660892, 30.282368, 31.265366>,  <40.851681, 30.413279, 31.329096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.660892, 30.282368, 31.265366>,  <40.342911, 30.064182, 31.159147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660892, 30.282368, 31.265366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134507, -0.268347, 0.953886,
		0.591568, -0.794015, -0.139956,
		0.794956, 0.545463, 0.265546,
		40.899380, 30.446007, 31.345030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705688, 29.709246, 31.678843>,  <40.342911, 30.064182, 31.159147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705688, 29.709246, 31.678843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853535, 30.077005, 31.732643>,  <40.942242, 30.297661, 31.764923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.853535, 30.077005, 31.732643>,  <40.705688, 29.709246, 31.678843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853535, 30.077005, 31.732643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070114, -0.171937, 0.982610,
		0.926537, -0.353755, -0.128013,
		0.369613, 0.919399, 0.134503,
		40.964420, 30.352825, 31.772993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083668, 29.644844, 32.295696>,  <40.705688, 29.709246, 31.678843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083668, 29.644844, 32.295696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096352, 30.042862, 32.258003>,  <41.103962, 30.281673, 32.235386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096352, 30.042862, 32.258003>,  <41.083668, 29.644844, 32.295696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096352, 30.042862, 32.258003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002598, 0.094202, 0.995550,
		0.999494, -0.031809, 0.000402,
		0.031706, 0.995045, -0.094237,
		41.105862, 30.341375, 32.229733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666374, 29.793087, 32.708378>,  <41.083668, 29.644844, 32.295696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666374, 29.793087, 32.708378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422020, 30.108017, 32.675060>,  <41.275406, 30.296976, 32.655071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422020, 30.108017, 32.675060>,  <41.666374, 29.793087, 32.708378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422020, 30.108017, 32.675060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115642, 0.015346, 0.993172,
		0.783229, 0.616346, 0.081674,
		-0.610884, 0.787326, -0.083295,
		41.238754, 30.344215, 32.650070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.500652, 34.575539, 28.310930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.135078, 34.500462, 28.166990>,  <40.915733, 34.455414, 28.080626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.135078, 34.500462, 28.166990>,  <41.500652, 34.575539, 28.310930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135078, 34.500462, 28.166990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338285, 0.137589, -0.930931,
		0.224245, -0.972542, -0.062252,
		-0.913935, -0.187698, -0.359850,
		40.860897, 34.444153, 28.059036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505489, 33.947906, 27.880541>,  <41.500652, 34.575539, 28.310930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505489, 33.947906, 27.880541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.224339, 34.211132, 27.772528>,  <41.055649, 34.369064, 27.707720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.224339, 34.211132, 27.772528>,  <41.505489, 33.947906, 27.880541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224339, 34.211132, 27.772528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432382, 0.093834, -0.896795,
		-0.564806, -0.747097, -0.350487,
		-0.702880, 0.658059, -0.270033,
		41.013474, 34.408550, 27.691517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413002, 33.768047, 27.139980>,  <41.505489, 33.947906, 27.880541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413002, 33.768047, 27.139980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260929, 34.132858, 27.201525>,  <41.169685, 34.351746, 27.238451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260929, 34.132858, 27.201525>,  <41.413002, 33.768047, 27.139980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260929, 34.132858, 27.201525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306529, 0.281191, -0.909380,
		-0.872641, -0.298568, -0.386465,
		-0.380182, 0.912025, 0.153860,
		41.146873, 34.406467, 27.247683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018044, 33.941437, 26.475353>,  <41.413002, 33.768047, 27.139980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018044, 33.941437, 26.475353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.068645, 34.297512, 26.650421>,  <41.099007, 34.511158, 26.755463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.068645, 34.297512, 26.650421>,  <41.018044, 33.941437, 26.475353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068645, 34.297512, 26.650421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146696, 0.419576, -0.895788,
		-0.981059, 0.177529, -0.077507,
		0.126508, 0.890191, 0.437671,
		41.106598, 34.564568, 26.781723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615456, 34.438202, 26.041996>,  <41.018044, 33.941437, 26.475353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615456, 34.438202, 26.041996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898529, 34.631149, 26.248493>,  <41.068371, 34.746918, 26.372393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898529, 34.631149, 26.248493>,  <40.615456, 34.438202, 26.041996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898529, 34.631149, 26.248493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262761, 0.498578, -0.826061,
		-0.655854, 0.720237, 0.226086,
		0.707681, 0.482369, 0.516244,
		41.110832, 34.775860, 26.403366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530342, 35.090538, 25.860260>,  <40.615456, 34.438202, 26.041996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530342, 35.090538, 25.860260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910675, 35.083237, 25.983927>,  <41.138874, 35.078854, 26.058126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910675, 35.083237, 25.983927>,  <40.530342, 35.090538, 25.860260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910675, 35.083237, 25.983927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255112, 0.612171, -0.748441,
		-0.175599, 0.790514, 0.586730,
		0.950833, -0.018257, 0.309167,
		41.195927, 35.077759, 26.076677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607079, 35.774487, 25.702694>,  <40.530342, 35.090538, 25.860260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607079, 35.774487, 25.702694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.964508, 35.597412, 25.732521>,  <41.178967, 35.491169, 25.750418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.964508, 35.597412, 25.732521>,  <40.607079, 35.774487, 25.702694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964508, 35.597412, 25.732521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300621, 0.466701, -0.831755,
		0.333406, 0.765649, 0.550111,
		0.893570, -0.442687, 0.074569,
		41.232578, 35.464607, 25.754892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095657, 36.160393, 25.405582>,  <40.607079, 35.774487, 25.702694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095657, 36.160393, 25.405582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326233, 35.834686, 25.432980>,  <41.464581, 35.639263, 25.449419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.326233, 35.834686, 25.432980>,  <41.095657, 36.160393, 25.405582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326233, 35.834686, 25.432980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253759, 0.098703, -0.962218,
		0.776738, 0.572044, 0.263523,
		0.576441, -0.814263, 0.068494,
		41.499165, 35.590408, 25.453527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693203, 36.319489, 25.165602>,  <41.095657, 36.160393, 25.405582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693203, 36.319489, 25.165602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.656609, 35.927811, 25.093149>,  <41.634651, 35.692802, 25.049679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.656609, 35.927811, 25.093149>,  <41.693203, 36.319489, 25.165602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656609, 35.927811, 25.093149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030628, 0.179040, -0.983365,
		0.995335, -0.095510, 0.013611,
		-0.091484, -0.979195, -0.181130,
		41.629162, 35.634052, 25.038811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204350, 36.052818, 24.608908>,  <41.693203, 36.319489, 25.165602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204350, 36.052818, 24.608908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.909367, 35.782692, 24.613131>,  <41.732376, 35.620617, 24.615664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.909367, 35.782692, 24.613131>,  <42.204350, 36.052818, 24.608908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909367, 35.782692, 24.613131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075094, -0.097518, -0.992397,
		0.671209, -0.731055, 0.122627,
		-0.737455, -0.675314, 0.010557,
		41.688129, 35.580097, 24.616297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395073, 35.553566, 24.097807>,  <42.204350, 36.052818, 24.608908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395073, 35.553566, 24.097807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003147, 35.487907, 24.143457>,  <41.767994, 35.448513, 24.170847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.003147, 35.487907, 24.143457>,  <42.395073, 35.553566, 24.097807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003147, 35.487907, 24.143457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114457, -0.007476, -0.993400,
		0.163918, -0.986407, -0.011463,
		-0.979811, -0.164148, 0.114126,
		41.709202, 35.438663, 24.177696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257339, 35.155186, 23.495642>,  <42.395073, 35.553566, 24.097807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257339, 35.155186, 23.495642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916683, 35.295593, 23.651331>,  <41.712288, 35.379837, 23.744745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916683, 35.295593, 23.651331>,  <42.257339, 35.155186, 23.495642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916683, 35.295593, 23.651331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371484, 0.119615, -0.920702,
		-0.369741, -0.928697, 0.028529,
		-0.851641, 0.351019, 0.389222,
		41.661190, 35.400898, 23.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651314, 34.670403, 23.254730>,  <42.257339, 35.155186, 23.495642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651314, 34.670403, 23.254730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.607941, 35.065533, 23.299366>,  <41.581917, 35.302608, 23.326147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.607941, 35.065533, 23.299366>,  <41.651314, 34.670403, 23.254730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607941, 35.065533, 23.299366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370063, 0.064071, -0.926795,
		-0.922657, -0.141792, 0.358608,
		-0.108435, 0.987821, 0.111587,
		41.575409, 35.361877, 23.332842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974739, 34.943390, 23.023371>,  <41.651314, 34.670403, 23.254730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974739, 34.943390, 23.023371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262859, 35.212746, 22.956791>,  <41.435734, 35.374359, 22.916843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262859, 35.212746, 22.956791>,  <40.974739, 34.943390, 23.023371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262859, 35.212746, 22.956791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224385, -0.000859, -0.974500,
		-0.656365, 0.739283, 0.150481,
		0.720303, 0.673394, -0.166448,
		41.478951, 35.414764, 22.906857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700466, 34.578526, 22.457155>,  <40.974739, 34.943390, 23.023371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700466, 34.578526, 22.457155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.697964, 34.187065, 22.374979>,  <40.696461, 33.952190, 22.325674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.697964, 34.187065, 22.374979>,  <40.700466, 34.578526, 22.457155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697964, 34.187065, 22.374979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035066, -0.205531, 0.978022,
		-0.999365, -0.001083, 0.035604,
		-0.006258, -0.978650, -0.205438,
		40.696087, 33.893471, 22.313347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146935, 34.238106, 22.943523>,  <40.700466, 34.578526, 22.457155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146935, 34.238106, 22.943523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422504, 33.964413, 22.847849>,  <40.587845, 33.800198, 22.790443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.422504, 33.964413, 22.847849>,  <40.146935, 34.238106, 22.943523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422504, 33.964413, 22.847849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075090, -0.260843, 0.962457,
		-0.720934, -0.681020, -0.128321,
		0.688923, -0.684232, -0.239188,
		40.629181, 33.759144, 22.776093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880547, 33.643845, 23.230801>,  <40.146935, 34.238106, 22.943523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880547, 33.643845, 23.230801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.271542, 33.594280, 23.162489>,  <40.506138, 33.564541, 23.121502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.271542, 33.594280, 23.162489>,  <39.880547, 33.643845, 23.230801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271542, 33.594280, 23.162489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097475, -0.452663, 0.886338,
		-0.187132, -0.883030, -0.430395,
		0.977487, -0.123909, -0.170781,
		40.564789, 33.557106, 23.111254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933964, 32.975662, 23.207167>,  <39.880547, 33.643845, 23.230801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933964, 32.975662, 23.207167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294453, 33.115486, 23.309624>,  <40.510746, 33.199379, 23.371098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294453, 33.115486, 23.309624>,  <39.933964, 32.975662, 23.207167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294453, 33.115486, 23.309624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006452, -0.601817, 0.798608,
		0.433312, -0.718070, -0.544625,
		0.901221, 0.349560, 0.256141,
		40.564819, 33.220356, 23.386467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311470, 32.424839, 23.167276>,  <39.933964, 32.975662, 23.207167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311470, 32.424839, 23.167276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538422, 32.676823, 23.379400>,  <40.674595, 32.828014, 23.506674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538422, 32.676823, 23.379400>,  <40.311470, 32.424839, 23.167276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538422, 32.676823, 23.379400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045189, -0.666854, 0.743817,
		0.822214, -0.398064, -0.406828,
		0.567381, 0.629961, 0.530309,
		40.708637, 32.865810, 23.538492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936230, 32.118500, 23.412859>,  <40.311470, 32.424839, 23.167276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936230, 32.118500, 23.412859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.883980, 32.405128, 23.686930>,  <40.852631, 32.577106, 23.851372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.883980, 32.405128, 23.686930>,  <40.936230, 32.118500, 23.412859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883980, 32.405128, 23.686930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257926, -0.642740, 0.721360,
		0.957294, 0.270953, -0.100863,
		-0.130626, 0.716568, 0.685177,
		40.844791, 32.620098, 23.892483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210922, 31.845833, 24.031918>,  <40.936230, 32.118500, 23.412859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210922, 31.845833, 24.031918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.033569, 32.162971, 24.199160>,  <40.927158, 32.353256, 24.299505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.033569, 32.162971, 24.199160>,  <41.210922, 31.845833, 24.031918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033569, 32.162971, 24.199160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046013, -0.445712, 0.893993,
		0.895152, 0.415616, 0.161139,
		-0.443380, 0.792845, 0.418103,
		40.900555, 32.400826, 24.324591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648239, 32.001953, 24.625437>,  <41.210922, 31.845833, 24.031918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648239, 32.001953, 24.625437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.290073, 32.166531, 24.693502>,  <41.075176, 32.265278, 24.734343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.290073, 32.166531, 24.693502>,  <41.648239, 32.001953, 24.625437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290073, 32.166531, 24.693502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094959, -0.196922, 0.975810,
		0.434996, 0.889910, 0.137256,
		-0.895411, 0.411440, 0.170165,
		41.021450, 32.289963, 24.744553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680557, 32.342991, 25.329460>,  <41.648239, 32.001953, 24.625437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680557, 32.342991, 25.329460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.284512, 32.303883, 25.289232>,  <41.046883, 32.280418, 25.265097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.284512, 32.303883, 25.289232>,  <41.680557, 32.342991, 25.329460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284512, 32.303883, 25.289232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094875, -0.061233, 0.993604,
		-0.103306, 0.993323, 0.051352,
		-0.990114, -0.097773, -0.100568,
		40.987476, 32.274551, 25.259062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401253, 32.750362, 25.785591>,  <41.680557, 32.342991, 25.329460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401253, 32.750362, 25.785591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093338, 32.501530, 25.728409>,  <40.908588, 32.352230, 25.694099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.093338, 32.501530, 25.728409>,  <41.401253, 32.750362, 25.785591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093338, 32.501530, 25.728409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091805, -0.113731, 0.989261,
		-0.631663, 0.774645, 0.030438,
		-0.769788, -0.622085, -0.142956,
		40.862400, 32.314903, 25.685522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880203, 32.887627, 26.316376>,  <41.401253, 32.750362, 25.785591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880203, 32.887627, 26.316376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.747971, 32.529072, 26.198259>,  <40.668633, 32.313938, 26.127390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.747971, 32.529072, 26.198259>,  <40.880203, 32.887627, 26.316376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747971, 32.529072, 26.198259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160885, -0.254779, 0.953522,
		-0.929963, 0.362726, -0.059991,
		-0.330583, -0.896392, -0.295292,
		40.648796, 32.260155, 26.109673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198219, 32.721382, 26.632509>,  <40.880203, 32.887627, 26.316376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198219, 32.721382, 26.632509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.354248, 32.374767, 26.507957>,  <40.447865, 32.166798, 26.433226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.354248, 32.374767, 26.507957>,  <40.198219, 32.721382, 26.632509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354248, 32.374767, 26.507957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105571, -0.378027, 0.919755,
		-0.914713, -0.325897, -0.238939,
		0.390071, -0.866537, -0.311381,
		40.471268, 32.114807, 26.414543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714008, 32.261063, 27.008467>,  <40.198219, 32.721382, 26.632509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714008, 32.261063, 27.008467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058758, 32.083500, 26.910381>,  <40.265606, 31.976963, 26.851530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058758, 32.083500, 26.910381>,  <39.714008, 32.261063, 27.008467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058758, 32.083500, 26.910381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051244, -0.404822, 0.912959,
		-0.504536, -0.799416, -0.326156,
		0.861869, -0.443907, -0.245212,
		40.317318, 31.950329, 26.836819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634003, 31.575092, 27.221092>,  <39.714008, 32.261063, 27.008467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634003, 31.575092, 27.221092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.030319, 31.614992, 27.184488>,  <40.268108, 31.638933, 27.162525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.030319, 31.614992, 27.184488>,  <39.634003, 31.575092, 27.221092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030319, 31.614992, 27.184488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119680, -0.329602, 0.936504,
		0.063256, -0.938836, -0.338506,
		0.990795, 0.099752, -0.091511,
		40.327557, 31.644918, 27.157036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147022, 30.932468, 27.175371>,  <39.634003, 31.575092, 27.221092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147022, 30.932468, 27.175371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.758797, 30.949600, 27.270174>,  <38.525860, 30.959879, 27.327055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.758797, 30.949600, 27.270174>,  <39.147022, 30.932468, 27.175371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758797, 30.949600, 27.270174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230597, 0.118743, -0.965777,
		-0.069508, -0.992001, -0.105371,
		-0.970563, 0.042831, 0.237006,
		38.467628, 30.962450, 27.341276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840038, 30.367640, 26.874144>,  <39.147022, 30.932468, 27.175371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840038, 30.367640, 26.874144> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547443, 30.636580, 26.919535>,  <38.371887, 30.797943, 26.946770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.547443, 30.636580, 26.919535>,  <38.840038, 30.367640, 26.874144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547443, 30.636580, 26.919535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258793, -0.119782, -0.958477,
		-0.630838, -0.730479, 0.261618,
		-0.731484, 0.672349, 0.113480,
		38.327999, 30.838284, 26.953579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229141, 30.067537, 26.591263>,  <38.840038, 30.367640, 26.874144>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229141, 30.067537, 26.591263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.179581, 30.464228, 26.577827>,  <38.149845, 30.702242, 26.569765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.179581, 30.464228, 26.577827>,  <38.229141, 30.067537, 26.591263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179581, 30.464228, 26.577827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089773, -0.044915, -0.994949,
		-0.988226, -0.120257, 0.094595,
		-0.123898, 0.991726, -0.033591,
		38.142410, 30.761745, 26.567751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652237, 30.141666, 26.256130>,  <38.229141, 30.067537, 26.591263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652237, 30.141666, 26.256130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817112, 30.505434, 26.233997>,  <37.916039, 30.723694, 26.220716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817112, 30.505434, 26.233997>,  <37.652237, 30.141666, 26.256130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817112, 30.505434, 26.233997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034739, -0.076377, -0.996474,
		-0.910437, 0.408811, -0.063074,
		0.412187, 0.909418, -0.055335,
		37.940769, 30.778259, 26.217398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322166, 30.384577, 25.560881>,  <37.652237, 30.141666, 26.256130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322166, 30.384577, 25.560881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593456, 30.666721, 25.643328>,  <37.756229, 30.836008, 25.692797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593456, 30.666721, 25.643328>,  <37.322166, 30.384577, 25.560881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593456, 30.666721, 25.643328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045245, 0.239875, -0.969749,
		-0.733465, 0.667029, 0.130774,
		0.678220, 0.705360, 0.206119,
		37.796921, 30.878328, 25.705164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049778, 31.073685, 25.331381>,  <37.322166, 30.384577, 25.560881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049778, 31.073685, 25.331381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449337, 31.088816, 25.320200>,  <37.689072, 31.097895, 25.313492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449337, 31.088816, 25.320200>,  <37.049778, 31.073685, 25.331381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449337, 31.088816, 25.320200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029864, 0.050906, -0.998257,
		-0.036339, 0.997987, 0.051979,
		0.998893, 0.037828, -0.027954,
		37.749004, 31.100164, 25.311813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218636, 31.459290, 24.778461>,  <37.049778, 31.073685, 25.331381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218636, 31.459290, 24.778461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548939, 31.241070, 24.835728>,  <37.747120, 31.110138, 24.870087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548939, 31.241070, 24.835728>,  <37.218636, 31.459290, 24.778461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548939, 31.241070, 24.835728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087726, -0.126512, -0.988078,
		0.557156, 0.828476, -0.056610,
		0.825761, -0.545547, 0.143166,
		37.796669, 31.077406, 24.878677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231945, 32.244221, 24.933088>,  <37.218636, 31.459290, 24.778461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231945, 32.244221, 24.933088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916122, 32.434036, 24.777443>,  <36.726627, 32.547924, 24.684055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916122, 32.434036, 24.777443>,  <37.231945, 32.244221, 24.933088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916122, 32.434036, 24.777443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472588, -0.065684, 0.878832,
		0.391478, 0.877783, 0.276121,
		-0.789560, 0.474535, -0.389116,
		36.679253, 32.576397, 24.660707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103905, 32.716602, 25.535772>,  <37.231945, 32.244221, 24.933088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103905, 32.716602, 25.535772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.798080, 32.758984, 25.281458>,  <36.614586, 32.784412, 25.128870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.798080, 32.758984, 25.281458>,  <37.103905, 32.716602, 25.535772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798080, 32.758984, 25.281458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624448, 0.122675, 0.771372,
		0.159727, 0.986775, -0.027628,
		-0.764560, 0.105956, -0.635784,
		36.568714, 32.790771, 25.090723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661903, 33.248322, 25.817709>,  <37.103905, 32.716602, 25.535772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661903, 33.248322, 25.817709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425705, 33.003605, 25.607178>,  <36.283985, 32.856773, 25.480860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425705, 33.003605, 25.607178>,  <36.661903, 33.248322, 25.817709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425705, 33.003605, 25.607178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608738, -0.090532, 0.788189,
		-0.529859, 0.785819, -0.318964,
		-0.590498, -0.611795, -0.526327,
		36.248554, 32.820068, 25.449280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066833, 33.392658, 26.106129>,  <36.661903, 33.248322, 25.817709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066833, 33.392658, 26.106129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010296, 33.041252, 25.923597>,  <35.976376, 32.830410, 25.814077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.010296, 33.041252, 25.923597>,  <36.066833, 33.392658, 26.106129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010296, 33.041252, 25.923597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579755, -0.300185, 0.757478,
		-0.802438, 0.371621, -0.466894,
		-0.141340, -0.878514, -0.456329,
		35.967896, 32.777699, 25.786699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421593, 33.160252, 26.369755>,  <36.066833, 33.392658, 26.106129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421593, 33.160252, 26.369755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609703, 32.838684, 26.224121>,  <35.722569, 32.645744, 26.136742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609703, 32.838684, 26.224121>,  <35.421593, 33.160252, 26.369755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609703, 32.838684, 26.224121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351061, -0.548912, 0.758585,
		-0.809691, -0.228928, -0.540363,
		0.470273, -0.803920, -0.364082,
		35.750786, 32.597507, 26.114897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880463, 32.641891, 26.464184>,  <35.421593, 33.160252, 26.369755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880463, 32.641891, 26.464184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235950, 32.465176, 26.415182>,  <35.449242, 32.359146, 26.385780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235950, 32.465176, 26.415182>,  <34.880463, 32.641891, 26.464184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235950, 32.465176, 26.415182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126432, -0.493026, 0.860779,
		-0.440680, -0.749499, -0.494016,
		0.888716, -0.441787, -0.122505,
		35.502563, 32.332638, 26.378431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825317, 31.847189, 26.580101>,  <34.880463, 32.641891, 26.464184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825317, 31.847189, 26.580101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205070, 31.924862, 26.678865>,  <35.432922, 31.971466, 26.738125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.205070, 31.924862, 26.678865>,  <34.825317, 31.847189, 26.580101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205070, 31.924862, 26.678865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218386, -0.156979, 0.963154,
		0.225789, -0.968323, -0.106626,
		0.949382, 0.194184, 0.246913,
		35.489883, 31.983116, 26.752939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.242516, 37.411572, 23.723246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547283, 37.184143, 23.847321>,  <39.730145, 37.047688, 23.921766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.547283, 37.184143, 23.847321>,  <39.242516, 37.411572, 23.723246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547283, 37.184143, 23.847321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560347, -0.338504, 0.755927,
		-0.324797, -0.749764, -0.576507,
		0.761917, -0.568567, 0.310183,
		39.775860, 37.013573, 23.940376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982784, 36.717403, 23.832211>,  <39.242516, 37.411572, 23.723246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982784, 36.717403, 23.832211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319263, 36.752129, 24.045696>,  <39.521149, 36.772964, 24.173788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319263, 36.752129, 24.045696>,  <38.982784, 36.717403, 23.832211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319263, 36.752129, 24.045696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478628, -0.339720, 0.809633,
		0.251604, -0.936511, -0.244218,
		0.841196, 0.086817, 0.533715,
		39.571621, 36.778175, 24.205811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807568, 36.279224, 24.330484>,  <38.982784, 36.717403, 23.832211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807568, 36.279224, 24.330484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125759, 36.464012, 24.487354>,  <39.316673, 36.574883, 24.581476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125759, 36.464012, 24.487354>,  <38.807568, 36.279224, 24.330484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125759, 36.464012, 24.487354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330273, -0.212085, 0.919750,
		0.508067, -0.861166, -0.016135,
		0.795480, 0.461965, 0.392173,
		39.364403, 36.602600, 24.605007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130131, 35.754314, 24.744694>,  <38.807568, 36.279224, 24.330484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130131, 35.754314, 24.744694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.233017, 36.118092, 24.875389>,  <39.294746, 36.336357, 24.953806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.233017, 36.118092, 24.875389>,  <39.130131, 35.754314, 24.744694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233017, 36.118092, 24.875389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207181, -0.278353, 0.937868,
		0.943884, -0.308925, 0.116824,
		0.257212, 0.909442, 0.326736,
		39.310181, 36.390923, 24.973410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489517, 35.637856, 25.372444>,  <39.130131, 35.754314, 24.744694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489517, 35.637856, 25.372444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401791, 36.027569, 25.393080>,  <39.349155, 36.261398, 25.405462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.401791, 36.027569, 25.393080>,  <39.489517, 35.637856, 25.372444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401791, 36.027569, 25.393080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332149, -0.124281, 0.935003,
		0.917374, 0.187929, 0.350866,
		-0.219321, 0.974288, 0.051591,
		39.335995, 36.319855, 25.408558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713692, 35.799259, 25.973881>,  <39.489517, 35.637856, 25.372444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713692, 35.799259, 25.973881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433056, 36.071754, 25.890278>,  <39.264675, 36.235252, 25.840117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.433056, 36.071754, 25.890278>,  <39.713692, 35.799259, 25.973881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433056, 36.071754, 25.890278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466735, -0.217691, 0.857187,
		0.538447, 0.698949, 0.470687,
		-0.701594, 0.681235, -0.209009,
		39.222576, 36.276127, 25.827576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551640, 36.093647, 26.645031>,  <39.713692, 35.799259, 25.973881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551640, 36.093647, 26.645031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249832, 36.186367, 26.399439>,  <39.068748, 36.242001, 26.252083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249832, 36.186367, 26.399439>,  <39.551640, 36.093647, 26.645031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249832, 36.186367, 26.399439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645688, -0.094772, 0.757698,
		0.117447, 0.968135, 0.221178,
		-0.754516, 0.231801, -0.613982,
		39.023476, 36.255909, 26.215244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144463, 36.634998, 27.013691>,  <39.551640, 36.093647, 26.645031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144463, 36.634998, 27.013691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893448, 36.465176, 26.752632>,  <38.742840, 36.363281, 26.595997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893448, 36.465176, 26.752632>,  <39.144463, 36.634998, 27.013691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893448, 36.465176, 26.752632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675791, -0.119270, 0.727380,
		-0.386657, 0.897510, -0.212066,
		-0.627537, -0.424559, -0.652646,
		38.705185, 36.337807, 26.556839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502968, 37.042892, 27.056341>,  <39.144463, 36.634998, 27.013691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502968, 37.042892, 27.056341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.422680, 36.682270, 26.903028>,  <38.374508, 36.465897, 26.811041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.422680, 36.682270, 26.903028>,  <38.502968, 37.042892, 27.056341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422680, 36.682270, 26.903028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743534, -0.114546, 0.658815,
		-0.637863, 0.417222, -0.647346,
		-0.200722, -0.901557, -0.383283,
		38.362465, 36.411804, 26.788044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802094, 37.080391, 26.979416>,  <38.502968, 37.042892, 27.056341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802094, 37.080391, 26.979416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.941662, 36.707138, 27.014120>,  <38.025402, 36.483189, 27.034943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.941662, 36.707138, 27.014120>,  <37.802094, 37.080391, 26.979416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941662, 36.707138, 27.014120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652406, -0.175400, 0.737293,
		-0.672771, -0.313859, -0.669979,
		0.348920, -0.933128, 0.086759,
		38.046337, 36.427200, 27.040148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220245, 36.736588, 27.116934>,  <37.802094, 37.080391, 26.979416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220245, 36.736588, 27.116934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.511539, 36.485523, 27.227003>,  <37.686317, 36.334885, 27.293045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.511539, 36.485523, 27.227003>,  <37.220245, 36.736588, 27.116934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511539, 36.485523, 27.227003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527908, -0.257712, 0.809258,
		-0.437021, -0.734596, -0.519020,
		0.728235, -0.627657, 0.275173,
		37.730011, 36.297226, 27.309555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849140, 36.230740, 27.387146>,  <37.220245, 36.736588, 27.116934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849140, 36.230740, 27.387146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.214874, 36.154015, 27.529800>,  <37.434315, 36.107979, 27.615393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.214874, 36.154015, 27.529800>,  <36.849140, 36.230740, 27.387146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214874, 36.154015, 27.529800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392680, -0.204843, 0.896572,
		-0.098917, -0.959817, -0.262616,
		0.914340, -0.191811, 0.356638,
		37.489178, 36.096470, 27.636791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524410, 35.613476, 26.956642>,  <36.849140, 36.230740, 27.387146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524410, 35.613476, 26.956642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128551, 35.618176, 26.899433>,  <35.891037, 35.620995, 26.865107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128551, 35.618176, 26.899433>,  <36.524410, 35.613476, 26.956642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128551, 35.618176, 26.899433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142863, -0.013571, -0.989649,
		-0.013571, -0.999839, 0.011752,
		0.989649, -0.011752, 0.143025,
		35.831657, 35.621700, 26.856525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417675, 35.080727, 26.579601>,  <36.524410, 35.613476, 26.956642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417675, 35.080727, 26.579601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.110180, 35.330448, 26.524038>,  <35.925682, 35.480282, 26.490700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.110180, 35.330448, 26.524038>,  <36.417675, 35.080727, 26.579601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110180, 35.330448, 26.524038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194656, 0.021494, -0.980636,
		-0.609227, -0.780888, -0.138047,
		-0.768734, 0.624301, -0.138909,
		35.879559, 35.517738, 26.482365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091564, 34.788929, 25.992321>,  <36.417675, 35.080727, 26.579601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091564, 34.788929, 25.992321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974915, 35.170403, 26.021851>,  <35.904922, 35.399284, 26.039568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.974915, 35.170403, 26.021851>,  <36.091564, 34.788929, 25.992321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974915, 35.170403, 26.021851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140091, 0.118928, -0.982970,
		-0.946218, -0.276319, -0.168285,
		-0.291627, 0.953679, 0.073822,
		35.887428, 35.456505, 26.043997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644161, 34.887993, 25.529598>,  <36.091564, 34.788929, 25.992321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644161, 34.887993, 25.529598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.745270, 35.271851, 25.578884>,  <35.805935, 35.502167, 25.608456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.745270, 35.271851, 25.578884>,  <35.644161, 34.887993, 25.529598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745270, 35.271851, 25.578884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201513, 0.072340, -0.976811,
		-0.946309, 0.271738, -0.175096,
		0.252770, 0.959649, 0.123215,
		35.821102, 35.559746, 25.615849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406601, 35.221516, 24.920357>,  <35.644161, 34.887993, 25.529598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406601, 35.221516, 24.920357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.635178, 35.503460, 25.088463>,  <35.772324, 35.672626, 25.189327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.635178, 35.503460, 25.088463>,  <35.406601, 35.221516, 24.920357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635178, 35.503460, 25.088463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115853, 0.437698, -0.891627,
		-0.812421, 0.558205, 0.168460,
		0.571446, 0.704860, 0.420265,
		35.806610, 35.714916, 25.214542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077744, 35.907093, 24.794472>,  <35.406601, 35.221516, 24.920357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077744, 35.907093, 24.794472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.475471, 35.925327, 24.832933>,  <35.714108, 35.936268, 24.856010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.475471, 35.925327, 24.832933>,  <35.077744, 35.907093, 24.794472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475471, 35.925327, 24.832933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078203, 0.299762, -0.950804,
		-0.072168, 0.952924, 0.294494,
		0.994322, 0.045587, 0.096154,
		35.773769, 35.939003, 24.861780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172745, 36.343937, 24.293312>,  <35.077744, 35.907093, 24.794472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172745, 36.343937, 24.293312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.546257, 36.235840, 24.387138>,  <35.770363, 36.170982, 24.443434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.546257, 36.235840, 24.387138>,  <35.172745, 36.343937, 24.293312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546257, 36.235840, 24.387138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321535, 0.345942, -0.881442,
		0.157059, 0.898494, 0.409927,
		0.933781, -0.270244, 0.234564,
		35.826393, 36.154766, 24.457508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733536, 36.874580, 24.227888>,  <35.172745, 36.343937, 24.293312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733536, 36.874580, 24.227888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.931492, 36.527939, 24.202301>,  <36.050266, 36.319954, 24.186949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.931492, 36.527939, 24.202301>,  <35.733536, 36.874580, 24.227888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931492, 36.527939, 24.202301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468768, 0.328232, -0.820074,
		0.731673, 0.375856, 0.568672,
		0.494886, -0.866600, -0.063969,
		36.079956, 36.267960, 24.183111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405724, 37.096630, 24.009865>,  <35.733536, 36.874580, 24.227888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405724, 37.096630, 24.009865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.409256, 36.704956, 23.928749>,  <36.411377, 36.469952, 23.880079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.409256, 36.704956, 23.928749>,  <36.405724, 37.096630, 24.009865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409256, 36.704956, 23.928749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435176, 0.186352, -0.880849,
		0.900302, -0.080468, 0.427763,
		0.008834, -0.979182, -0.202791,
		36.411907, 36.411201, 23.867912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059631, 36.946003, 23.771875>,  <36.405724, 37.096630, 24.009865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059631, 36.946003, 23.771875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.820065, 36.659199, 23.629215>,  <36.676323, 36.487118, 23.543619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.820065, 36.659199, 23.629215>,  <37.059631, 36.946003, 23.771875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820065, 36.659199, 23.629215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399089, 0.118876, -0.909174,
		0.694281, -0.686855, 0.214953,
		-0.598917, -0.717007, -0.356649,
		36.640388, 36.444096, 23.522221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452469, 36.757725, 23.361599>,  <37.059631, 36.946003, 23.771875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452469, 36.757725, 23.361599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.123131, 36.573429, 23.229036>,  <36.925529, 36.462852, 23.149498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.123131, 36.573429, 23.229036>,  <37.452469, 36.757725, 23.361599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123131, 36.573429, 23.229036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334788, 0.077239, -0.939122,
		0.458287, -0.884169, 0.090655,
		-0.823341, -0.460738, -0.331407,
		36.876129, 36.435207, 23.129614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659096, 36.121323, 22.995008>,  <37.452469, 36.757725, 23.361599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659096, 36.121323, 22.995008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.303951, 36.220917, 22.840239>,  <37.090866, 36.280674, 22.747377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.303951, 36.220917, 22.840239>,  <37.659096, 36.121323, 22.995008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303951, 36.220917, 22.840239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372666, -0.104075, -0.922111,
		-0.269862, -0.962899, -0.000385,
		-0.887859, 0.248986, -0.386925,
		37.037594, 36.295612, 22.724161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422630, 35.671589, 22.376095>,  <37.659096, 36.121323, 22.995008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422630, 35.671589, 22.376095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199615, 36.001015, 22.334339>,  <37.065807, 36.198669, 22.309286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.199615, 36.001015, 22.334339>,  <37.422630, 35.671589, 22.376095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199615, 36.001015, 22.334339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208873, 0.017466, -0.977787,
		-0.803446, -0.566956, -0.181758,
		-0.557537, 0.823563, -0.104389,
		37.032356, 36.248085, 22.303022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994728, 35.198879, 22.724829>,  <37.422630, 35.671589, 22.376095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994728, 35.198879, 22.724829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888573, 34.902149, 22.478493>,  <37.824879, 34.724110, 22.330690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888573, 34.902149, 22.478493>,  <37.994728, 35.198879, 22.724829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888573, 34.902149, 22.478493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484266, -0.449763, 0.750466,
		-0.833698, 0.497399, -0.239878,
		-0.265393, -0.741827, -0.615840,
		37.808956, 34.679600, 22.293741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349056, 35.030018, 22.835354>,  <37.994728, 35.198879, 22.724829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349056, 35.030018, 22.835354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.485409, 34.691807, 22.670971>,  <37.567219, 34.488880, 22.572342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.485409, 34.691807, 22.670971>,  <37.349056, 35.030018, 22.835354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485409, 34.691807, 22.670971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485899, -0.532681, 0.692931,
		-0.804801, -0.036522, -0.592420,
		0.340879, -0.845527, -0.410956,
		37.587673, 34.438148, 22.547684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815479, 34.559910, 22.833517>,  <37.349056, 35.030018, 22.835354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815479, 34.559910, 22.833517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117287, 34.302795, 22.780561>,  <37.298370, 34.148525, 22.748789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.117287, 34.302795, 22.780561>,  <36.815479, 34.559910, 22.833517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117287, 34.302795, 22.780561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536193, -0.720103, 0.440396,
		-0.378414, -0.261301, -0.887989,
		0.754520, -0.642786, -0.132389,
		37.343643, 34.109959, 22.740845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445961, 33.956043, 22.731890>,  <36.815479, 34.559910, 22.833517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445961, 33.956043, 22.731890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.822815, 33.866413, 22.831627>,  <37.048927, 33.812634, 22.891470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.822815, 33.866413, 22.831627>,  <36.445961, 33.956043, 22.731890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822815, 33.866413, 22.831627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328480, -0.765587, 0.553152,
		0.066946, -0.603048, -0.794891,
		0.942135, -0.224075, 0.249343,
		37.105457, 33.799191, 22.906429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438904, 33.305489, 22.747618>,  <36.445961, 33.956043, 22.731890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438904, 33.305489, 22.747618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.744350, 33.382561, 22.994120>,  <36.927616, 33.428806, 23.142021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.744350, 33.382561, 22.994120>,  <36.438904, 33.305489, 22.747618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744350, 33.382561, 22.994120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306436, -0.731944, 0.608568,
		0.568324, -0.653553, -0.499877,
		0.763613, 0.192684, 0.616253,
		36.973434, 33.440365, 23.178995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618969, 32.692101, 23.018478>,  <36.438904, 33.305489, 22.747618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618969, 32.692101, 23.018478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840408, 32.915379, 23.265686>,  <36.973270, 33.049347, 23.414011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840408, 32.915379, 23.265686>,  <36.618969, 32.692101, 23.018478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840408, 32.915379, 23.265686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275093, -0.577880, 0.768360,
		0.786039, -0.595373, -0.166355,
		0.553594, 0.558198, 0.618019,
		37.006485, 33.082836, 23.451092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059330, 32.165096, 23.461512>,  <36.618969, 32.692101, 23.018478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059330, 32.165096, 23.461512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030975, 32.501343, 23.676300>,  <37.013962, 32.703091, 23.805174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.030975, 32.501343, 23.676300>,  <37.059330, 32.165096, 23.461512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030975, 32.501343, 23.676300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237976, -0.537034, 0.809297,
		0.968681, -0.070419, 0.238115,
		-0.070886, 0.840616, 0.536973,
		37.009708, 32.753529, 23.837391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191853, 32.037704, 24.129168>,  <37.059330, 32.165096, 23.461512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191853, 32.037704, 24.129168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.000618, 32.385712, 24.177341>,  <36.885876, 32.594517, 24.206245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.000618, 32.385712, 24.177341>,  <37.191853, 32.037704, 24.129168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000618, 32.385712, 24.177341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431303, -0.352002, 0.830706,
		0.765119, 0.345209, 0.543529,
		-0.478090, 0.870015, 0.120434,
		36.857189, 32.646717, 24.213472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861450, 31.946266, 24.552603>,  <37.191853, 32.037704, 24.129168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861450, 31.946266, 24.552603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000362, 31.571192, 24.547808>,  <38.083710, 31.346148, 24.544930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.000362, 31.571192, 24.547808>,  <37.861450, 31.946266, 24.552603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000362, 31.571192, 24.547808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238287, 0.100603, -0.965970,
		0.906981, 0.332608, 0.258376,
		0.347283, -0.937684, -0.011989,
		38.104546, 31.289886, 24.544210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409199, 31.986519, 24.240074>,  <37.861450, 31.946266, 24.552603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409199, 31.986519, 24.240074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.348061, 31.592665, 24.206301>,  <38.311378, 31.356352, 24.186037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.348061, 31.592665, 24.206301>,  <38.409199, 31.986519, 24.240074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348061, 31.592665, 24.206301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443784, 0.007953, -0.896098,
		0.883003, -0.174434, 0.435750,
		-0.152845, -0.984637, -0.084434,
		38.302208, 31.297274, 24.180971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971310, 31.737507, 24.070089>,  <38.409199, 31.986519, 24.240074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971310, 31.737507, 24.070089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699074, 31.478313, 23.933319>,  <38.535732, 31.322798, 23.851257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699074, 31.478313, 23.933319>,  <38.971310, 31.737507, 24.070089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699074, 31.478313, 23.933319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463018, -0.018715, -0.886151,
		0.567812, -0.761425, 0.312765,
		-0.680591, -0.647983, -0.341927,
		38.494896, 31.283918, 23.830742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363556, 31.330656, 23.641472>,  <38.971310, 31.737507, 24.070089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363556, 31.330656, 23.641472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.992973, 31.229742, 23.529739>,  <38.770622, 31.169193, 23.462700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.992973, 31.229742, 23.529739>,  <39.363556, 31.330656, 23.641472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992973, 31.229742, 23.529739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307380, -0.078800, -0.948318,
		0.217235, -0.964439, 0.150552,
		-0.926459, -0.252285, -0.279332,
		38.715034, 31.154057, 23.445940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472698, 30.697758, 23.286777>,  <39.363556, 31.330656, 23.641472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472698, 30.697758, 23.286777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123985, 30.852743, 23.166862>,  <38.914757, 30.945734, 23.094913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123985, 30.852743, 23.166862>,  <39.472698, 30.697758, 23.286777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123985, 30.852743, 23.166862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306258, -0.046590, -0.950808,
		-0.382369, -0.920707, -0.078047,
		-0.871780, 0.387462, -0.299788,
		38.862450, 30.968983, 23.076925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284634, 30.359217, 22.676968>,  <39.472698, 30.697758, 23.286777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284634, 30.359217, 22.676968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096783, 30.711674, 22.654922>,  <38.984074, 30.923149, 22.641695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096783, 30.711674, 22.654922>,  <39.284634, 30.359217, 22.676968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096783, 30.711674, 22.654922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059343, -0.030776, -0.997763,
		-0.880868, -0.471846, -0.037837,
		-0.469626, 0.881143, -0.055111,
		38.955894, 30.976017, 22.638390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950794, 30.273260, 22.085224>,  <39.284634, 30.359217, 22.676968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950794, 30.273260, 22.085224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930729, 30.671219, 22.120245>,  <38.918690, 30.909994, 22.141258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930729, 30.671219, 22.120245>,  <38.950794, 30.273260, 22.085224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930729, 30.671219, 22.120245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191093, 0.095605, -0.976905,
		-0.980290, -0.032270, -0.194913,
		-0.050160, 0.994896, 0.087554,
		38.915680, 30.969688, 22.146511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477074, 30.483051, 21.603180>,  <38.950794, 30.273260, 22.085224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477074, 30.483051, 21.603180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.682507, 30.814053, 21.693928>,  <38.805767, 31.012653, 21.748377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.682507, 30.814053, 21.693928>,  <38.477074, 30.483051, 21.603180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682507, 30.814053, 21.693928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122025, 0.191280, -0.973921,
		-0.849318, 0.527874, -0.002738,
		0.513584, 0.827503, 0.226871,
		38.836582, 31.062304, 21.761990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060982, 31.026628, 21.316277>,  <38.477074, 30.483051, 21.603180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060982, 31.026628, 21.316277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441071, 31.147301, 21.347425>,  <38.669125, 31.219704, 21.366116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441071, 31.147301, 21.347425>,  <38.060982, 31.026628, 21.316277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441071, 31.147301, 21.347425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060799, 0.065587, -0.995993,
		-0.305580, 0.951150, 0.043981,
		0.950223, 0.301682, 0.077871,
		38.726139, 31.237804, 21.370787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.669605, 31.639042, 37.085079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069210, 31.621277, 37.086418>,  <37.308971, 31.610619, 37.087223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069210, 31.621277, 37.086418>,  <36.669605, 31.639042, 37.085079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069210, 31.621277, 37.086418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012109, -0.343162, -0.939198,
		0.042862, 0.938226, -0.343359,
		0.999008, -0.044413, 0.003347,
		37.368912, 31.607952, 37.087421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889568, 31.892612, 36.449936>,  <36.669605, 31.639042, 37.085079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889568, 31.892612, 36.449936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198715, 31.673803, 36.578583>,  <37.384205, 31.542517, 36.655769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.198715, 31.673803, 36.578583>,  <36.889568, 31.892612, 36.449936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198715, 31.673803, 36.578583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067726, -0.432826, -0.898930,
		0.630940, 0.716537, -0.297470,
		0.772869, -0.547024, 0.321616,
		37.430576, 31.509695, 36.675068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520771, 31.925800, 36.036831>,  <36.889568, 31.892612, 36.449936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520771, 31.925800, 36.036831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542942, 31.567654, 36.213577>,  <37.556244, 31.352766, 36.319626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.542942, 31.567654, 36.213577>,  <37.520771, 31.925800, 36.036831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542942, 31.567654, 36.213577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142262, -0.445111, -0.884103,
		0.988276, -0.013857, -0.152048,
		0.055427, -0.895368, 0.441864,
		37.559570, 31.299044, 36.346138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051983, 31.607901, 35.781021>,  <37.520771, 31.925800, 36.036831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051983, 31.607901, 35.781021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857906, 31.296940, 35.941139>,  <37.741463, 31.110363, 36.037209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857906, 31.296940, 35.941139>,  <38.051983, 31.607901, 35.781021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857906, 31.296940, 35.941139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107375, -0.507296, -0.855056,
		0.867791, -0.371882, 0.329609,
		-0.485190, -0.777402, 0.400296,
		37.712349, 31.063719, 36.061230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423836, 31.021883, 35.654079>,  <38.051983, 31.607901, 35.781021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423836, 31.021883, 35.654079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.080269, 30.849001, 35.763958>,  <37.874130, 30.745272, 35.829887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.080269, 30.849001, 35.763958>,  <38.423836, 31.021883, 35.654079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080269, 30.849001, 35.763958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076717, -0.638941, -0.765421,
		0.506335, -0.636359, 0.581955,
		-0.858918, -0.432205, 0.274699,
		37.822594, 30.719339, 35.846367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559231, 30.286283, 35.692493>,  <38.423836, 31.021883, 35.654079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559231, 30.286283, 35.692493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160847, 30.309967, 35.665482>,  <37.921818, 30.324177, 35.649273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.160847, 30.309967, 35.665482>,  <38.559231, 30.286283, 35.692493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160847, 30.309967, 35.665482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022299, -0.565367, -0.824538,
		-0.086999, -0.822712, 0.561762,
		-0.995959, 0.059207, -0.067532,
		37.862061, 30.327730, 35.645222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325558, 29.588539, 35.526443>,  <38.559231, 30.286283, 35.692493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325558, 29.588539, 35.526443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059265, 29.859673, 35.401642>,  <37.899490, 30.022352, 35.326763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.059265, 29.859673, 35.401642>,  <38.325558, 29.588539, 35.526443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059265, 29.859673, 35.401642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042012, -0.383413, -0.922621,
		-0.745011, -0.627322, 0.226771,
		-0.665728, 0.677836, -0.312002,
		37.859547, 30.063023, 35.308041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902668, 29.225309, 35.139297>,  <38.325558, 29.588539, 35.526443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902668, 29.225309, 35.139297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812286, 29.600227, 35.033146>,  <37.758057, 29.825178, 34.969456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812286, 29.600227, 35.033146>,  <37.902668, 29.225309, 35.139297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812286, 29.600227, 35.033146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150331, -0.235607, -0.960151,
		-0.962468, -0.256847, -0.087668,
		-0.225956, 0.937294, -0.265376,
		37.744499, 29.881416, 34.953533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497272, 29.138922, 34.479038>,  <37.902668, 29.225309, 35.139297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497272, 29.138922, 34.479038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610584, 29.522139, 34.496521>,  <37.678574, 29.752068, 34.507011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610584, 29.522139, 34.496521>,  <37.497272, 29.138922, 34.479038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610584, 29.522139, 34.496521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257585, -0.032104, -0.965722,
		-0.923797, 0.284832, -0.255871,
		0.283283, 0.958040, 0.043711,
		37.695568, 29.809551, 34.509636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117485, 29.373217, 33.933613>,  <37.497272, 29.138922, 34.479038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117485, 29.373217, 33.933613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414246, 29.634291, 33.995045>,  <37.592300, 29.790936, 34.031902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.414246, 29.634291, 33.995045>,  <37.117485, 29.373217, 33.933613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414246, 29.634291, 33.995045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093688, 0.125895, -0.987610,
		-0.663933, 0.747096, 0.032253,
		0.741900, 0.652685, 0.153579,
		37.636814, 29.830097, 34.041119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024990, 29.775679, 33.372475>,  <37.117485, 29.373217, 33.933613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024990, 29.775679, 33.372475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395779, 29.873880, 33.485935>,  <37.618252, 29.932800, 33.554012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395779, 29.873880, 33.485935>,  <37.024990, 29.775679, 33.372475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395779, 29.873880, 33.485935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237193, 0.202229, -0.950180,
		-0.290635, 0.948067, 0.129228,
		0.926969, 0.245503, 0.283650,
		37.673870, 29.947531, 33.571030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175842, 30.397373, 33.009922>,  <37.024990, 29.775679, 33.372475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175842, 30.397373, 33.009922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512680, 30.217060, 33.128361>,  <37.714783, 30.108873, 33.199425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512680, 30.217060, 33.128361>,  <37.175842, 30.397373, 33.009922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512680, 30.217060, 33.128361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389704, 0.129039, -0.911855,
		0.372839, 0.883258, 0.284334,
		0.842094, -0.450781, 0.296099,
		37.765308, 30.081825, 33.217190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154469, 31.198706, 33.162415>,  <37.175842, 30.397373, 33.009922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154469, 31.198706, 33.162415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814037, 31.099010, 32.977570>,  <36.609779, 31.039194, 32.866665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814037, 31.099010, 32.977570>,  <37.154469, 31.198706, 33.162415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814037, 31.099010, 32.977570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516712, 0.241497, 0.821394,
		-0.093124, 0.937849, -0.334317,
		-0.851080, -0.249238, -0.462108,
		36.558712, 31.024239, 32.838936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737354, 31.679756, 33.398396>,  <37.154469, 31.198706, 33.162415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737354, 31.679756, 33.398396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485203, 31.410257, 33.244156>,  <36.333912, 31.248558, 33.151611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.485203, 31.410257, 33.244156>,  <36.737354, 31.679756, 33.398396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485203, 31.410257, 33.244156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676391, 0.232948, 0.698735,
		-0.380946, 0.701284, -0.602562,
		-0.630377, -0.673748, -0.385602,
		36.296089, 31.208134, 33.128475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132160, 32.126369, 33.501297>,  <36.737354, 31.679756, 33.398396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132160, 32.126369, 33.501297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050808, 31.739017, 33.443493>,  <36.001999, 31.506607, 33.408810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050808, 31.739017, 33.443493>,  <36.132160, 32.126369, 33.501297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050808, 31.739017, 33.443493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638815, 0.019389, 0.769117,
		-0.741993, 0.248735, -0.622557,
		-0.203377, -0.968377, -0.144509,
		35.989796, 31.448503, 33.400139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389076, 32.184917, 33.548313>,  <36.132160, 32.126369, 33.501297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389076, 32.184917, 33.548313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504688, 31.805651, 33.601135>,  <35.574055, 31.578091, 33.632828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504688, 31.805651, 33.601135>,  <35.389076, 32.184917, 33.548313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504688, 31.805651, 33.601135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690168, -0.110783, 0.715120,
		-0.663424, -0.297833, -0.686414,
		0.289029, -0.948168, 0.132059,
		35.591396, 31.521200, 33.640755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742668, 31.721186, 33.441792>,  <35.389076, 32.184917, 33.548313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742668, 31.721186, 33.441792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993568, 31.500423, 33.661591>,  <35.144108, 31.367966, 33.793472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993568, 31.500423, 33.661591>,  <34.742668, 31.721186, 33.441792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993568, 31.500423, 33.661591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703125, -0.097894, 0.704295,
		-0.334911, -0.828141, -0.449464,
		0.627255, -0.551906, 0.549501,
		35.181744, 31.334852, 33.826443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369759, 31.194431, 33.824314>,  <34.742668, 31.721186, 33.441792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369759, 31.194431, 33.824314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705269, 31.224255, 34.040051>,  <34.906574, 31.242149, 34.169495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.705269, 31.224255, 34.040051>,  <34.369759, 31.194431, 33.824314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705269, 31.224255, 34.040051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537073, -0.049457, 0.842085,
		0.089462, -0.995989, -0.001439,
		0.838779, 0.074562, 0.539343,
		34.956902, 31.246622, 34.201855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112358, 30.842609, 34.369797>,  <34.369759, 31.194431, 33.824314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112358, 30.842609, 34.369797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452942, 30.997562, 34.511192>,  <34.657291, 31.090534, 34.596031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452942, 30.997562, 34.511192>,  <34.112358, 30.842609, 34.369797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452942, 30.997562, 34.511192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396902, 0.035454, 0.917176,
		0.342766, -0.921237, 0.183940,
		0.851458, 0.387383, 0.353488,
		34.708378, 31.113777, 34.617237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190105, 30.515783, 35.065968>,  <34.112358, 30.842609, 34.369797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190105, 30.515783, 35.065968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455551, 30.813675, 35.094215>,  <34.614819, 30.992411, 35.111164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455551, 30.813675, 35.094215>,  <34.190105, 30.515783, 35.065968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455551, 30.813675, 35.094215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157303, 0.046631, 0.986449,
		0.731347, -0.665733, 0.148093,
		0.663617, 0.744732, 0.070618,
		34.654636, 31.037094, 35.115402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739052, 30.287546, 35.533199>,  <34.190105, 30.515783, 35.065968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739052, 30.287546, 35.533199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699219, 30.685497, 35.526306>,  <34.675320, 30.924269, 35.522171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699219, 30.685497, 35.526306>,  <34.739052, 30.287546, 35.533199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699219, 30.685497, 35.526306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186200, -0.001619, 0.982511,
		0.977452, 0.101051, 0.185408,
		-0.099584, 0.994880, -0.017233,
		34.669342, 30.983961, 35.521137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940151, 30.491438, 36.213299>,  <34.739052, 30.287546, 35.533199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940151, 30.491438, 36.213299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734650, 30.814013, 36.096191>,  <34.611347, 31.007557, 36.025928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734650, 30.814013, 36.096191>,  <34.940151, 30.491438, 36.213299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734650, 30.814013, 36.096191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315937, 0.139428, 0.938479,
		0.797644, 0.574647, 0.183151,
		-0.513758, 0.806436, -0.292767,
		34.580521, 31.055944, 36.008362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004173, 31.032595, 36.764244>,  <34.940151, 30.491438, 36.213299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004173, 31.032595, 36.764244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680676, 31.145861, 36.558041>,  <34.486576, 31.213820, 36.434319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680676, 31.145861, 36.558041>,  <35.004173, 31.032595, 36.764244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680676, 31.145861, 36.558041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520977, 0.061888, 0.851324,
		0.272967, 0.957073, 0.097470,
		-0.808747, 0.283163, -0.515506,
		34.438053, 31.230810, 36.403389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787903, 31.564835, 37.124081>,  <35.004173, 31.032595, 36.764244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787903, 31.564835, 37.124081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464233, 31.468611, 36.909657>,  <34.270031, 31.410877, 36.781002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464233, 31.468611, 36.909657>,  <34.787903, 31.564835, 37.124081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464233, 31.468611, 36.909657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547901, -0.020596, 0.836290,
		-0.212218, 0.970416, -0.115137,
		-0.809177, -0.240560, -0.536063,
		34.221481, 31.396442, 36.748837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282337, 32.003403, 37.230793>,  <34.787903, 31.564835, 37.124081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282337, 32.003403, 37.230793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067593, 31.696531, 37.090389>,  <33.938744, 31.512407, 37.006145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067593, 31.696531, 37.090389>,  <34.282337, 32.003403, 37.230793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067593, 31.696531, 37.090389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632279, 0.090417, 0.769446,
		-0.558569, 0.635023, -0.533616,
		-0.536864, -0.767183, -0.351008,
		33.906532, 31.466377, 36.985088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616627, 32.195797, 37.219261>,  <34.282337, 32.003403, 37.230793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616627, 32.195797, 37.219261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598450, 31.796629, 37.237560>,  <33.587543, 31.557129, 37.248539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598450, 31.796629, 37.237560>,  <33.616627, 32.195797, 37.219261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598450, 31.796629, 37.237560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789533, 0.063933, 0.610369,
		-0.612023, -0.008380, -0.790795,
		-0.045443, -0.997919, 0.045745,
		33.584816, 31.497253, 37.251286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952869, 32.525360, 37.212090>,  <33.616627, 32.195797, 37.219261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952869, 32.525360, 37.212090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753750, 32.840557, 37.357014>,  <32.634277, 33.029675, 37.443970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753750, 32.840557, 37.357014>,  <32.952869, 32.525360, 37.212090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753750, 32.840557, 37.357014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027559, 0.431909, -0.901496,
		-0.866854, -0.438779, -0.236720,
		-0.497799, 0.787990, 0.362310,
		32.604408, 33.076954, 37.465706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353237, 32.716061, 36.734795>,  <32.952869, 32.525360, 37.212090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353237, 32.716061, 36.734795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474194, 33.032589, 36.947350>,  <32.546768, 33.222507, 37.074883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474194, 33.032589, 36.947350>,  <32.353237, 32.716061, 36.734795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474194, 33.032589, 36.947350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210073, 0.488451, -0.846927,
		-0.929746, 0.367735, -0.018531,
		0.302393, 0.791319, 0.531387,
		32.564911, 33.269985, 37.106766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897356, 33.364258, 36.641548>,  <32.353237, 32.716061, 36.734795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897356, 33.364258, 36.641548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291206, 33.395000, 36.704292>,  <32.527515, 33.413445, 36.741940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291206, 33.395000, 36.704292>,  <31.897356, 33.364258, 36.641548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291206, 33.395000, 36.704292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114239, 0.396006, -0.911114,
		-0.132141, 0.915026, 0.381138,
		0.984626, 0.076855, 0.156860,
		32.586594, 33.418056, 36.751350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076706, 34.036652, 36.503902>,  <31.897356, 33.364258, 36.641548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076706, 34.036652, 36.503902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406971, 33.819202, 36.443558>,  <32.605129, 33.688732, 36.407349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.406971, 33.819202, 36.443558>,  <32.076706, 34.036652, 36.503902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406971, 33.819202, 36.443558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184748, 0.513196, -0.838152,
		0.533064, 0.664155, 0.524158,
		0.825658, -0.543625, -0.150865,
		32.654667, 33.656116, 36.398300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552166, 34.454739, 36.171005>,  <32.076706, 34.036652, 36.503902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552166, 34.454739, 36.171005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701622, 34.092407, 36.091145>,  <32.791294, 33.875008, 36.043228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.701622, 34.092407, 36.091145>,  <32.552166, 34.454739, 36.171005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701622, 34.092407, 36.091145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364042, 0.341175, -0.866645,
		0.853151, 0.251132, 0.457237,
		0.373640, -0.905832, -0.199651,
		32.813713, 33.820656, 36.031250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174252, 34.601875, 35.932156>,  <32.552166, 34.454739, 36.171005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174252, 34.601875, 35.932156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144745, 34.219135, 35.819729>,  <33.127041, 33.989491, 35.752274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.144745, 34.219135, 35.819729>,  <33.174252, 34.601875, 35.932156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144745, 34.219135, 35.819729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479552, 0.213080, -0.851250,
		0.874407, -0.197580, 0.443141,
		-0.073766, -0.956848, -0.281069,
		33.122616, 33.932079, 35.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898151, 34.352329, 35.711956>,  <33.174252, 34.601875, 35.932156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898151, 34.352329, 35.711956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604950, 34.132332, 35.551849>,  <33.429031, 34.000332, 35.455784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.604950, 34.132332, 35.551849>,  <33.898151, 34.352329, 35.711956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604950, 34.132332, 35.551849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381661, 0.154546, -0.911290,
		0.563066, -0.820743, 0.096630,
		-0.733001, -0.549997, -0.400265,
		33.385048, 33.967335, 35.431770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211178, 33.833752, 35.236897>,  <33.898151, 34.352329, 35.711956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211178, 33.833752, 35.236897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844143, 33.889835, 35.088104>,  <33.623920, 33.923485, 34.998829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844143, 33.889835, 35.088104>,  <34.211178, 33.833752, 35.236897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844143, 33.889835, 35.088104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395262, 0.222020, -0.891333,
		-0.042384, -0.964909, -0.259142,
		-0.917590, 0.140207, -0.371982,
		33.568867, 33.931896, 34.976509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336994, 33.592369, 34.611313>,  <34.211178, 33.833752, 35.236897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336994, 33.592369, 34.611313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967808, 33.729855, 34.542042>,  <33.746296, 33.812347, 34.500477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967808, 33.729855, 34.542042>,  <34.336994, 33.592369, 34.611313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967808, 33.729855, 34.542042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196250, 0.033212, -0.979991,
		-0.331085, -0.938487, -0.098108,
		-0.922968, 0.343714, -0.173182,
		33.690918, 33.832970, 34.490086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031925, 33.202538, 34.166283>,  <34.336994, 33.592369, 34.611313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031925, 33.202538, 34.166283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814400, 33.534916, 34.119301>,  <33.683884, 33.734344, 34.091110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814400, 33.534916, 34.119301>,  <34.031925, 33.202538, 34.166283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814400, 33.534916, 34.119301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221945, 0.007426, -0.975031,
		-0.809326, -0.556302, -0.188463,
		-0.543811, 0.830947, -0.117459,
		33.651257, 33.784199, 34.084064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673828, 33.143738, 33.437576>,  <34.031925, 33.202538, 34.166283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673828, 33.143738, 33.437576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643623, 33.524391, 33.556705>,  <33.625500, 33.752781, 33.628181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643623, 33.524391, 33.556705>,  <33.673828, 33.143738, 33.437576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643623, 33.524391, 33.556705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281160, 0.306873, -0.909273,
		-0.956685, 0.015074, -0.290734,
		-0.075512, 0.951631, 0.297819,
		33.620968, 33.809879, 33.646049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270443, 33.504879, 32.930794>,  <33.673828, 33.143738, 33.437576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270443, 33.504879, 32.930794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478256, 33.804382, 33.095451>,  <33.602943, 33.984085, 33.194244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.478256, 33.804382, 33.095451>,  <33.270443, 33.504879, 32.930794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478256, 33.804382, 33.095451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224358, 0.345315, -0.911274,
		-0.824468, 0.565794, 0.011414,
		0.519535, 0.748756, 0.411641,
		33.634117, 34.029011, 33.218945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117233, 34.017933, 32.491009>,  <33.270443, 33.504879, 32.930794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117233, 34.017933, 32.491009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447887, 34.143108, 32.678085>,  <33.646282, 34.218212, 32.790333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447887, 34.143108, 32.678085>,  <33.117233, 34.017933, 32.491009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447887, 34.143108, 32.678085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273038, 0.503679, -0.819608,
		-0.492055, 0.805218, 0.330917,
		0.826639, 0.312940, 0.467693,
		33.695881, 34.236992, 32.818394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111240, 34.778419, 32.331787>,  <33.117233, 34.017933, 32.491009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111240, 34.778419, 32.331787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466721, 34.637249, 32.448849>,  <33.680008, 34.552547, 32.519085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466721, 34.637249, 32.448849>,  <33.111240, 34.778419, 32.331787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466721, 34.637249, 32.448849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414883, 0.347390, -0.840947,
		0.195130, 0.868770, 0.455152,
		0.888705, -0.352929, 0.292651,
		33.733334, 34.531372, 32.536644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485310, 35.246525, 32.151394>,  <33.111240, 34.778419, 32.331787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485310, 35.246525, 32.151394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752422, 34.949310, 32.169178>,  <33.912689, 34.770981, 32.179848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.752422, 34.949310, 32.169178>,  <33.485310, 35.246525, 32.151394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752422, 34.949310, 32.169178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386684, 0.295249, -0.873672,
		0.636041, 0.600609, 0.484479,
		0.667778, -0.743032, 0.044456,
		33.952755, 34.726402, 32.182514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113461, 35.577271, 32.015114>,  <33.485310, 35.246525, 32.151394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113461, 35.577271, 32.015114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189045, 35.192608, 31.935596>,  <34.234394, 34.961811, 31.887886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189045, 35.192608, 31.935596>,  <34.113461, 35.577271, 32.015114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189045, 35.192608, 31.935596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265449, 0.244924, -0.932496,
		0.945427, 0.123432, 0.301550,
		0.188957, -0.961653, -0.198793,
		34.245731, 34.904114, 31.875959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770809, 35.601849, 31.763506>,  <34.113461, 35.577271, 32.015114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770809, 35.601849, 31.763506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638287, 35.257275, 31.609533>,  <34.558773, 35.050529, 31.517151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638287, 35.257275, 31.609533>,  <34.770809, 35.601849, 31.763506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638287, 35.257275, 31.609533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289096, 0.295668, -0.910497,
		0.898143, -0.412934, 0.151080,
		-0.331305, -0.861432, -0.384930,
		34.538895, 34.998844, 31.494055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282623, 35.418781, 31.294884>,  <34.770809, 35.601849, 31.763506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282623, 35.418781, 31.294884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959103, 35.210468, 31.185616>,  <34.764992, 35.085480, 31.120054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959103, 35.210468, 31.185616>,  <35.282623, 35.418781, 31.294884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959103, 35.210468, 31.185616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071484, 0.374004, -0.924668,
		0.583722, -0.767399, -0.265267,
		-0.808801, -0.520787, -0.273171,
		34.716461, 35.054234, 31.103664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437855, 35.032505, 30.676054>,  <35.282623, 35.418781, 31.294884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437855, 35.032505, 30.676054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038212, 35.019016, 30.665928>,  <34.798424, 35.010925, 30.659853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038212, 35.019016, 30.665928>,  <35.437855, 35.032505, 30.676054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038212, 35.019016, 30.665928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026276, -0.028399, -0.999251,
		0.032978, -0.999028, 0.029260,
		-0.999111, -0.033722, -0.025314,
		34.738480, 35.008900, 30.658333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288517, 34.442051, 30.241335>,  <35.437855, 35.032505, 30.676054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288517, 34.442051, 30.241335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998592, 34.717525, 30.233850>,  <34.824638, 34.882812, 30.229361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.998592, 34.717525, 30.233850>,  <35.288517, 34.442051, 30.241335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998592, 34.717525, 30.233850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083014, -0.114266, -0.989976,
		-0.683924, -0.715996, 0.139993,
		-0.724815, 0.688690, -0.018712,
		34.781147, 34.924133, 30.228237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837971, 34.124760, 29.873264>,  <35.288517, 34.442051, 30.241335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837971, 34.124760, 29.873264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759254, 34.516891, 29.867319>,  <34.712025, 34.752171, 29.863752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759254, 34.516891, 29.867319>,  <34.837971, 34.124760, 29.873264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759254, 34.516891, 29.867319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029411, -0.009249, -0.999525,
		-0.980004, -0.197136, -0.027012,
		-0.196792, 0.980333, -0.014862,
		34.700218, 34.810989, 29.862860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470100, 34.237682, 29.259005>,  <34.837971, 34.124760, 29.873264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470100, 34.237682, 29.259005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585964, 34.607941, 29.356394>,  <34.655483, 34.830097, 29.414827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.585964, 34.607941, 29.356394>,  <34.470100, 34.237682, 29.259005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585964, 34.607941, 29.356394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098383, 0.224238, -0.969556,
		-0.952061, 0.304793, -0.026116,
		0.289657, 0.925645, 0.243475,
		34.672863, 34.885635, 29.429436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056538, 34.624802, 28.896946>,  <34.470100, 34.237682, 29.259005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056538, 34.624802, 28.896946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375717, 34.843288, 28.998867>,  <34.567226, 34.974380, 29.060020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.375717, 34.843288, 28.998867>,  <34.056538, 34.624802, 28.896946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375717, 34.843288, 28.998867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170904, 0.200352, -0.964703,
		-0.577985, 0.813332, 0.066520,
		0.797950, 0.546215, 0.254802,
		34.615101, 35.007153, 29.075308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973606, 35.201538, 28.406128>,  <34.056538, 34.624802, 28.896946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973606, 35.201538, 28.406128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351116, 35.265354, 28.521946>,  <34.577621, 35.303646, 28.591436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351116, 35.265354, 28.521946>,  <33.973606, 35.201538, 28.406128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351116, 35.265354, 28.521946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223878, 0.336003, -0.914866,
		-0.243248, 0.928250, 0.281393,
		0.943774, 0.159542, 0.289547,
		34.634247, 35.313217, 28.608810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117008, 35.873875, 28.249729>,  <33.973606, 35.201538, 28.406128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117008, 35.873875, 28.249729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475208, 35.697357, 28.272812>,  <34.690128, 35.591446, 28.286661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475208, 35.697357, 28.272812>,  <34.117008, 35.873875, 28.249729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475208, 35.697357, 28.272812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265610, 0.425889, -0.864911,
		0.357104, 0.789859, 0.498598,
		0.895504, -0.441295, 0.057708,
		34.743858, 35.564968, 28.290125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650646, 36.352592, 28.032835>,  <34.117008, 35.873875, 28.249729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650646, 36.352592, 28.032835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805714, 35.989861, 27.966660>,  <34.898754, 35.772221, 27.926954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805714, 35.989861, 27.966660>,  <34.650646, 36.352592, 28.032835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805714, 35.989861, 27.966660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411155, 0.330740, -0.849448,
		0.825023, 0.261286, 0.501066,
		0.387671, -0.906830, -0.165439,
		34.922016, 35.717812, 27.917028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349846, 36.439827, 27.895531>,  <34.650646, 36.352592, 28.032835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349846, 36.439827, 27.895531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298599, 36.066792, 27.760555>,  <35.267853, 35.842972, 27.679569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298599, 36.066792, 27.760555>,  <35.349846, 36.439827, 27.895531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298599, 36.066792, 27.760555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551646, 0.215743, -0.805693,
		0.824180, -0.289368, 0.486820,
		-0.128114, -0.932589, -0.337439,
		35.260166, 35.787014, 27.659323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040249, 36.168671, 27.654177>,  <35.349846, 36.439827, 27.895531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040249, 36.168671, 27.654177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722683, 35.989841, 27.489336>,  <35.532143, 35.882545, 27.390432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722683, 35.989841, 27.489336>,  <36.040249, 36.168671, 27.654177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722683, 35.989841, 27.489336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397959, 0.130359, -0.908094,
		0.459703, -0.884949, 0.074422,
		-0.793915, -0.447070, -0.412100,
		35.484509, 35.855721, 27.365705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686756, 35.739624, 27.963840>,  <36.040249, 36.168671, 27.654177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686756, 35.739624, 27.963840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071304, 35.829556, 28.027365>,  <37.302032, 35.883514, 28.065479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071304, 35.829556, 28.027365>,  <36.686756, 35.739624, 27.963840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071304, 35.829556, 28.027365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113567, -0.201582, 0.972866,
		0.250738, -0.953320, -0.168262,
		0.961371, 0.224825, 0.158810,
		37.359715, 35.897003, 28.075008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908386, 35.206253, 28.381121>,  <36.686756, 35.739624, 27.963840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908386, 35.206253, 28.381121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180611, 35.494877, 28.432018>,  <37.343945, 35.668053, 28.462557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180611, 35.494877, 28.432018>,  <36.908386, 35.206253, 28.381121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180611, 35.494877, 28.432018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096582, -0.260495, 0.960632,
		0.726302, -0.641476, -0.246971,
		0.680557, 0.721562, 0.127243,
		37.384777, 35.711346, 28.470192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542637, 34.923328, 28.732695>,  <36.908386, 35.206253, 28.381121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542637, 34.923328, 28.732695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503353, 35.314117, 28.808460>,  <37.479782, 35.548592, 28.853920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.503353, 35.314117, 28.808460>,  <37.542637, 34.923328, 28.732695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503353, 35.314117, 28.808460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019725, -0.188384, 0.981898,
		0.994970, 0.100169, -0.000769,
		-0.098211, 0.976974, 0.189412,
		37.473888, 35.607208, 28.865284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038033, 35.012222, 29.339146>,  <37.542637, 34.923328, 28.732695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038033, 35.012222, 29.339146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819984, 35.347500, 29.345728>,  <37.689156, 35.548668, 29.349678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.819984, 35.347500, 29.345728>,  <38.038033, 35.012222, 29.339146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819984, 35.347500, 29.345728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100405, -0.084762, 0.991329,
		0.832322, 0.538743, 0.130365,
		-0.545122, 0.838195, 0.016457,
		37.656448, 35.598957, 29.350664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257832, 35.424236, 29.855583>,  <38.038033, 35.012222, 29.339146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257832, 35.424236, 29.855583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873066, 35.526855, 29.817822>,  <37.642208, 35.588428, 29.795164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873066, 35.526855, 29.817822>,  <38.257832, 35.424236, 29.855583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873066, 35.526855, 29.817822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038881, 0.213437, 0.976183,
		0.270587, 0.942671, -0.195332,
		-0.961910, 0.256547, -0.094405,
		37.584492, 35.603821, 29.789499>
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
