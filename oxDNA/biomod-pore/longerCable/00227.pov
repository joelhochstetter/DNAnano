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
	<24.436125, 34.491478, 35.290253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421747, 34.888870, 35.246990>,  <24.413120, 35.127308, 35.221031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421747, 34.888870, 35.246990>,  <24.436125, 34.491478, 35.290253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.421747, 34.888870, 35.246990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777328, -0.040226, -0.627807,
		-0.628067, -0.106641, -0.770817,
		-0.035943, 0.993484, -0.108160,
		24.410965, 35.186916, 35.214542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823807, 34.626717, 34.705315>,  <24.436125, 34.491478, 35.290253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823807, 34.626717, 34.705315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820200, 34.974422, 34.903019>,  <24.818037, 35.183048, 35.021641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.820200, 34.974422, 34.903019>,  <24.823807, 34.626717, 34.705315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.820200, 34.974422, 34.903019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862679, 0.256714, -0.435755,
		-0.505671, 0.422459, -0.752214,
		-0.009015, 0.869268, 0.494259,
		24.817495, 35.235203, 35.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070604, 34.550179, 34.041756>,  <24.823807, 34.626717, 34.705315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070604, 34.550179, 34.041756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366768, 34.544044, 33.772964>,  <25.544466, 34.540363, 33.611691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366768, 34.544044, 33.772964>,  <25.070604, 34.550179, 34.041756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366768, 34.544044, 33.772964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015459, 0.999087, -0.039828,
		0.671979, 0.039877, 0.739496,
		0.740408, -0.015331, -0.671982,
		25.588890, 34.539444, 33.571369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531370, 35.144493, 34.276417>,  <25.070604, 34.550179, 34.041756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531370, 35.144493, 34.276417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627790, 35.085136, 33.892776>,  <25.685642, 35.049522, 33.662594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627790, 35.085136, 33.892776>,  <25.531370, 35.144493, 34.276417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627790, 35.085136, 33.892776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017328, 0.987426, -0.157127,
		0.970358, 0.054495, 0.235447,
		0.241050, -0.148389, -0.959102,
		25.700106, 35.040619, 33.605045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106337, 35.535767, 34.297268>,  <25.531370, 35.144493, 34.276417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106337, 35.535767, 34.297268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906815, 35.496273, 33.952839>,  <25.787102, 35.472576, 33.746181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906815, 35.496273, 33.952839>,  <26.106337, 35.535767, 34.297268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906815, 35.496273, 33.952839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133439, 0.990393, -0.036260,
		0.856381, 0.096814, -0.507186,
		-0.498803, -0.098731, -0.861073,
		25.757174, 35.466652, 33.694515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412405, 35.838909, 33.743065>,  <26.106337, 35.535767, 34.297268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412405, 35.838909, 33.743065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025114, 35.860363, 33.645359>,  <25.792740, 35.873234, 33.586735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025114, 35.860363, 33.645359>,  <26.412405, 35.838909, 33.743065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025114, 35.860363, 33.645359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063635, 0.997419, -0.033242,
		0.241847, -0.047729, -0.969140,
		-0.968225, 0.053632, -0.244260,
		25.734646, 35.876453, 33.572083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397556, 36.272964, 33.254066>,  <26.412405, 35.838909, 33.743065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397556, 36.272964, 33.254066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011427, 36.300686, 33.354740>,  <25.779749, 36.317318, 33.415146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011427, 36.300686, 33.354740>,  <26.397556, 36.272964, 33.254066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011427, 36.300686, 33.354740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063425, 0.997493, -0.031387,
		-0.253232, -0.014335, -0.967300,
		-0.965324, 0.069299, 0.251687,
		25.721830, 36.321476, 33.430248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056694, 36.771072, 32.710503>,  <26.397556, 36.272964, 33.254066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056694, 36.771072, 32.710503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866343, 36.751316, 33.061752>,  <25.752132, 36.739464, 33.272503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866343, 36.751316, 33.061752>,  <26.056694, 36.771072, 32.710503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866343, 36.751316, 33.061752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071348, 0.992963, 0.094516,
		-0.876612, 0.107630, -0.469007,
		-0.475879, -0.049391, 0.878123,
		25.723579, 36.736500, 33.325188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581621, 37.275616, 32.694965>,  <26.056694, 36.771072, 32.710503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581621, 37.275616, 32.694965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644285, 37.210983, 33.084702>,  <25.681885, 37.172203, 33.318542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644285, 37.210983, 33.084702>,  <25.581621, 37.275616, 32.694965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644285, 37.210983, 33.084702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247016, 0.961584, 0.119749,
		-0.956264, 0.221919, 0.190557,
		0.156662, -0.161582, 0.974345,
		25.691284, 37.162510, 33.377007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023123, 37.617310, 33.014980>,  <25.581621, 37.275616, 32.694965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023123, 37.617310, 33.014980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335653, 37.574463, 33.260925>,  <25.523170, 37.548756, 33.408493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335653, 37.574463, 33.260925>,  <25.023123, 37.617310, 33.014980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335653, 37.574463, 33.260925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160395, 0.986536, -0.031946,
		-0.603163, 0.123581, 0.787986,
		0.781324, -0.107121, 0.614864,
		25.570051, 37.542328, 33.445385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929438, 38.105663, 33.577595>,  <25.023123, 37.617310, 33.014980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.929438, 38.105663, 33.577595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314281, 38.001942, 33.543877>,  <25.545189, 37.939709, 33.523647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.314281, 38.001942, 33.543877>,  <24.929438, 38.105663, 33.577595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.314281, 38.001942, 33.543877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258813, 0.965780, -0.016864,
		0.085781, -0.005591, 0.996298,
		0.962111, -0.259302, -0.084293,
		25.602915, 37.924152, 33.518589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210068, 38.527462, 34.025459>,  <24.929438, 38.105663, 33.577595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210068, 38.527462, 34.025459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492491, 38.407410, 33.768894>,  <25.661943, 38.335381, 33.614956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492491, 38.407410, 33.768894>,  <25.210068, 38.527462, 34.025459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492491, 38.407410, 33.768894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398887, 0.916945, 0.010036,
		0.585127, -0.262937, 0.767131,
		0.706056, -0.300126, -0.641412,
		25.704308, 38.317371, 33.576469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272736, 39.222195, 33.653812>,  <25.210068, 38.527462, 34.025459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272736, 39.222195, 33.653812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664049, 39.298027, 33.620293>,  <25.898836, 39.343529, 33.600182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664049, 39.298027, 33.620293>,  <25.272736, 39.222195, 33.653812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664049, 39.298027, 33.620293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197596, -0.975094, 0.100737,
		-0.062616, -0.115108, -0.991377,
		0.978281, 0.189585, -0.083801,
		25.957533, 39.354904, 33.595154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581032, 39.045692, 33.072655>,  <25.272736, 39.222195, 33.653812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581032, 39.045692, 33.072655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871096, 38.996010, 33.343567>,  <26.045134, 38.966202, 33.506115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.871096, 38.996010, 33.343567>,  <25.581032, 39.045692, 33.072655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871096, 38.996010, 33.343567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051340, -0.971106, -0.233059,
		0.686663, 0.203777, -0.697831,
		0.725160, -0.124206, 0.677285,
		26.088644, 38.958748, 33.546753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247887, 38.675316, 32.749435>,  <25.581032, 39.045692, 33.072655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247887, 38.675316, 32.749435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233435, 38.624374, 33.145916>,  <26.224764, 38.593811, 33.383804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233435, 38.624374, 33.145916>,  <26.247887, 38.675316, 32.749435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233435, 38.624374, 33.145916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015168, -0.991663, -0.127965,
		0.999232, -0.019659, 0.033899,
		-0.036132, -0.127353, 0.991199,
		26.222595, 38.586170, 33.443275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687529, 38.090786, 32.983047>,  <26.247887, 38.675316, 32.749435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687529, 38.090786, 32.983047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442989, 38.149002, 33.294193>,  <26.296267, 38.183933, 33.480881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442989, 38.149002, 33.294193>,  <26.687529, 38.090786, 32.983047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442989, 38.149002, 33.294193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068052, -0.988970, 0.131560,
		0.788430, 0.027494, 0.614510,
		-0.611349, 0.145545, 0.777862,
		26.259584, 38.192665, 33.527554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879185, 37.714146, 33.642620>,  <26.687529, 38.090786, 32.983047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879185, 37.714146, 33.642620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485126, 37.776012, 33.612785>,  <26.248692, 37.813133, 33.594887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485126, 37.776012, 33.612785>,  <26.879185, 37.714146, 33.642620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485126, 37.776012, 33.612785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171650, -0.898326, 0.404410,
		-0.004452, 0.411206, 0.911532,
		-0.985148, 0.154664, -0.074583,
		26.189583, 37.822411, 33.590412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546377, 37.451962, 34.332024>,  <26.879185, 37.714146, 33.642620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546377, 37.451962, 34.332024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259533, 37.461536, 34.053406>,  <26.087425, 37.467281, 33.886234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.259533, 37.461536, 34.053406>,  <26.546377, 37.451962, 34.332024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.259533, 37.461536, 34.053406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381312, -0.850044, 0.363354,
		-0.583396, 0.526167, 0.618706,
		-0.717113, 0.023941, -0.696546,
		26.044399, 37.468719, 33.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842648, 37.190037, 34.645576>,  <26.546377, 37.451962, 34.332024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842648, 37.190037, 34.645576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790674, 37.165001, 34.249760>,  <25.759489, 37.149979, 34.012268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790674, 37.165001, 34.249760>,  <25.842648, 37.190037, 34.645576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790674, 37.165001, 34.249760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578066, -0.806064, 0.126889,
		-0.805579, 0.588509, 0.068555,
		-0.129935, -0.062590, -0.989545,
		25.751694, 37.146225, 33.952896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327721, 36.696217, 34.598293>,  <25.842648, 37.190037, 34.645576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327721, 36.696217, 34.598293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425335, 36.725368, 34.211483>,  <25.483904, 36.742859, 33.979397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425335, 36.725368, 34.211483>,  <25.327721, 36.696217, 34.598293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425335, 36.725368, 34.211483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185837, -0.975177, -0.120390,
		-0.951794, 0.209088, -0.224433,
		0.244034, 0.072879, -0.967024,
		25.498545, 36.747231, 33.921375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849180, 37.080276, 34.193699>,  <25.327721, 36.696217, 34.598293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849180, 37.080276, 34.193699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055363, 36.935600, 33.882961>,  <25.179073, 36.848797, 33.696518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055363, 36.935600, 33.882961>,  <24.849180, 37.080276, 34.193699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055363, 36.935600, 33.882961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072169, -0.921661, 0.381225,
		-0.853869, -0.140442, -0.501182,
		0.515460, -0.361686, -0.776842,
		25.210001, 36.827095, 33.649910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.565660, 36.379635, 33.998886>,  <24.849180, 37.080276, 34.193699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.565660, 36.379635, 33.998886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921341, 36.355648, 33.817455>,  <25.134748, 36.341255, 33.708599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921341, 36.355648, 33.817455>,  <24.565660, 36.379635, 33.998886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921341, 36.355648, 33.817455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141236, -0.978933, -0.147452,
		-0.435175, 0.195175, -0.878937,
		0.889199, -0.059970, -0.453573,
		25.188101, 36.337658, 33.681385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408346, 36.105396, 33.395279>,  <24.565660, 36.379635, 33.998886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408346, 36.105396, 33.395279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792017, 36.033344, 33.482491>,  <25.022219, 35.990112, 33.534817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.792017, 36.033344, 33.482491>,  <24.408346, 36.105396, 33.395279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.792017, 36.033344, 33.482491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124870, -0.961456, -0.244968,
		0.253753, 0.207741, -0.944697,
		0.959175, -0.180125, 0.218032,
		25.079769, 35.979305, 33.547901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842445, 35.966076, 32.813103>,  <24.408346, 36.105396, 33.395279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842445, 35.966076, 32.813103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064072, 35.824299, 33.114403>,  <25.197048, 35.739235, 33.295181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.064072, 35.824299, 33.114403>,  <24.842445, 35.966076, 32.813103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.064072, 35.824299, 33.114403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027651, -0.912168, -0.408881,
		0.832012, 0.205720, -0.515204,
		0.554067, -0.354440, 0.753247,
		25.230291, 35.717968, 33.340378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087881, 35.323112, 32.538570>,  <24.842445, 35.966076, 32.813103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087881, 35.323112, 32.538570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274128, 35.350700, 32.891487>,  <25.385876, 35.367252, 33.103237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274128, 35.350700, 32.891487>,  <25.087881, 35.323112, 32.538570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274128, 35.350700, 32.891487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334284, -0.936807, -0.103185,
		0.819422, 0.342982, -0.459250,
		0.465619, 0.068968, 0.882294,
		25.413815, 35.371391, 33.156174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667227, 34.879044, 32.383190>,  <25.087881, 35.323112, 32.538570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667227, 34.879044, 32.383190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709417, 34.920856, 32.778755>,  <25.734732, 34.945946, 33.016094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709417, 34.920856, 32.778755>,  <25.667227, 34.879044, 32.383190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709417, 34.920856, 32.778755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311092, -0.948013, 0.067032,
		0.944509, 0.300572, -0.132513,
		0.105476, 0.104536, 0.988912,
		25.741060, 34.952217, 33.075428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311424, 34.638470, 32.418835>,  <25.667227, 34.879044, 32.383190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311424, 34.638470, 32.418835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090837, 34.595547, 32.749741>,  <25.958485, 34.569794, 32.948284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090837, 34.595547, 32.749741>,  <26.311424, 34.638470, 32.418835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090837, 34.595547, 32.749741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162854, -0.986460, -0.019391,
		0.818145, 0.124030, 0.561476,
		-0.551469, -0.107303, 0.827266,
		25.925396, 34.563354, 32.997921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687656, 34.289543, 32.984013>,  <26.311424, 34.638470, 32.418835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687656, 34.289543, 32.984013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296553, 34.215759, 33.023945>,  <26.061892, 34.171490, 33.047905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296553, 34.215759, 33.023945>,  <26.687656, 34.289543, 32.984013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296553, 34.215759, 33.023945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172499, -0.977974, -0.117519,
		0.119307, -0.097685, 0.988040,
		-0.977758, -0.184456, 0.099828,
		26.003225, 34.160423, 33.053894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869019, 33.715805, 32.538361>,  <26.687656, 34.289543, 32.984013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869019, 33.715805, 32.538361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141088, 33.856461, 32.795643>,  <27.304331, 33.940853, 32.950012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141088, 33.856461, 32.795643>,  <26.869019, 33.715805, 32.538361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141088, 33.856461, 32.795643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414664, -0.539001, 0.733166,
		0.604495, -0.765396, -0.220805,
		0.680176, 0.351635, 0.643205,
		27.345140, 33.961952, 32.988605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072390, 33.183331, 33.081570>,  <26.869019, 33.715805, 32.538361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072390, 33.183331, 33.081570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126276, 33.533516, 33.267223>,  <27.158607, 33.743626, 33.378616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126276, 33.533516, 33.267223>,  <27.072390, 33.183331, 33.081570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126276, 33.533516, 33.267223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312985, -0.406826, 0.858215,
		0.940155, -0.260881, 0.219201,
		0.134716, 0.875462, 0.464132,
		27.166691, 33.796154, 33.406464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478743, 32.975510, 33.607182>,  <27.072390, 33.183331, 33.081570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478743, 32.975510, 33.607182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306135, 33.324913, 33.697319>,  <27.202570, 33.534554, 33.751404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306135, 33.324913, 33.697319>,  <27.478743, 32.975510, 33.607182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306135, 33.324913, 33.697319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357468, -0.394926, 0.846315,
		0.828256, 0.284646, 0.482668,
		-0.431519, 0.873504, 0.225348,
		27.176680, 33.586964, 33.764923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810217, 33.023712, 34.100365>,  <27.478743, 32.975510, 33.607182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810217, 33.023712, 34.100365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177197, 33.007038, 34.258629>,  <27.397385, 32.997036, 34.353588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177197, 33.007038, 34.258629>,  <26.810217, 33.023712, 34.100365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177197, 33.007038, 34.258629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355954, -0.530232, 0.769513,
		0.177721, -0.846828, -0.501296,
		0.917449, -0.041680, 0.395666,
		27.452431, 32.994534, 34.377327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964247, 32.344906, 34.045509>,  <26.810217, 33.023712, 34.100365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964247, 32.344906, 34.045509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179760, 32.517742, 34.334785>,  <27.309069, 32.621445, 34.508350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179760, 32.517742, 34.334785>,  <26.964247, 32.344906, 34.045509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179760, 32.517742, 34.334785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506921, -0.519357, 0.687967,
		0.672862, -0.737266, -0.060783,
		0.538783, 0.432095, 0.723192,
		27.341394, 32.647369, 34.551743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702940, 32.004021, 34.743813>,  <26.964247, 32.344906, 34.045509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702940, 32.004021, 34.743813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954357, 32.297203, 34.847893>,  <27.105207, 32.473114, 34.910343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954357, 32.297203, 34.847893>,  <26.702940, 32.004021, 34.743813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954357, 32.297203, 34.847893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205130, -0.166485, 0.964471,
		0.750236, -0.659588, 0.045709,
		0.628544, 0.732957, 0.260205,
		27.142920, 32.517090, 34.925953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475443, 31.979691, 34.602383>,  <26.702940, 32.004021, 34.743813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475443, 31.979691, 34.602383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744150, 32.236065, 34.750938>,  <27.905375, 32.389889, 34.840073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.744150, 32.236065, 34.750938>,  <27.475443, 31.979691, 34.602383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744150, 32.236065, 34.750938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419695, -0.083813, 0.903787,
		0.610398, -0.763004, 0.212695,
		0.671767, 0.640937, 0.371388,
		27.945681, 32.428345, 34.862354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851543, 31.863985, 35.208054>,  <27.475443, 31.979691, 34.602383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851543, 31.863985, 35.208054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852024, 32.262806, 35.238735>,  <27.852312, 32.502098, 35.257145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852024, 32.262806, 35.238735>,  <27.851543, 31.863985, 35.208054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852024, 32.262806, 35.238735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305582, -0.072668, 0.949389,
		0.952165, -0.024578, 0.304595,
		0.001199, 0.997053, 0.076703,
		27.852385, 32.561920, 35.261745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289089, 32.043713, 35.816364>,  <27.851543, 31.863985, 35.208054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289089, 32.043713, 35.816364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989082, 32.294689, 35.732658>,  <27.809078, 32.445274, 35.682434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989082, 32.294689, 35.732658>,  <28.289089, 32.043713, 35.816364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989082, 32.294689, 35.732658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363465, -0.126644, 0.922960,
		0.552602, 0.768295, 0.323038,
		-0.750017, 0.627442, -0.209265,
		27.764078, 32.482922, 35.669880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263227, 32.467995, 36.431911>,  <28.289089, 32.043713, 35.816364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263227, 32.467995, 36.431911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904951, 32.558468, 36.278770>,  <27.689985, 32.612751, 36.186886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.904951, 32.558468, 36.278770>,  <28.263227, 32.467995, 36.431911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904951, 32.558468, 36.278770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432738, -0.245210, 0.867531,
		0.102338, 0.942717, 0.317510,
		-0.895693, 0.226180, -0.382855,
		27.636244, 32.626320, 36.163914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005329, 32.971542, 36.875256>,  <28.263227, 32.467995, 36.431911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005329, 32.971542, 36.875256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727631, 32.766239, 36.673428>,  <27.561012, 32.643059, 36.552330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727631, 32.766239, 36.673428>,  <28.005329, 32.971542, 36.875256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727631, 32.766239, 36.673428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464924, -0.215361, 0.858758,
		-0.549427, 0.830777, -0.089111,
		-0.694245, -0.513254, -0.504573,
		27.519358, 32.612263, 36.522057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562374, 32.368210, 37.281754>,  <28.005329, 32.971542, 36.875256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562374, 32.368210, 37.281754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754808, 32.028721, 37.193916>,  <27.870270, 31.825027, 37.141212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.754808, 32.028721, 37.193916>,  <27.562374, 32.368210, 37.281754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754808, 32.028721, 37.193916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793289, 0.314826, 0.521131,
		-0.373161, -0.424913, 0.824742,
		0.481086, -0.848725, -0.219598,
		27.899134, 31.774103, 37.128036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259430, 31.673967, 37.444736>,  <27.562374, 32.368210, 37.281754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259430, 31.673967, 37.444736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925282, 31.891222, 37.410896>,  <26.724792, 32.021576, 37.390594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925282, 31.891222, 37.410896>,  <27.259430, 31.673967, 37.444736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925282, 31.891222, 37.410896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323765, 0.361801, -0.874229,
		-0.444219, -0.757695, -0.478087,
		-0.835372, 0.543137, -0.084596,
		26.674669, 32.054161, 37.385517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870117, 31.542500, 36.790245>,  <27.259430, 31.673967, 37.444736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870117, 31.542500, 36.790245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779589, 31.921062, 36.882408>,  <26.725271, 32.148201, 36.937706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779589, 31.921062, 36.882408>,  <26.870117, 31.542500, 36.790245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779589, 31.921062, 36.882408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188037, 0.274549, -0.943008,
		-0.955730, -0.170098, -0.240096,
		-0.226322, 0.946409, 0.230410,
		26.711693, 32.204987, 36.951530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474392, 31.745520, 36.347546>,  <26.870117, 31.542500, 36.790245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474392, 31.745520, 36.347546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679991, 32.056637, 36.492237>,  <26.803350, 32.243305, 36.579052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679991, 32.056637, 36.492237>,  <26.474392, 31.745520, 36.347546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679991, 32.056637, 36.492237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229780, 0.281436, -0.931662,
		-0.826441, 0.561991, -0.034063,
		0.513999, 0.777791, 0.361725,
		26.834190, 32.289974, 36.600754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282057, 32.392185, 36.129398>,  <26.474392, 31.745520, 36.347546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282057, 32.392185, 36.129398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670362, 32.439796, 36.212772>,  <26.903347, 32.468365, 36.262798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670362, 32.439796, 36.212772>,  <26.282057, 32.392185, 36.129398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670362, 32.439796, 36.212772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162692, 0.312174, -0.935991,
		-0.176478, 0.942539, 0.283683,
		0.970766, 0.119029, 0.208436,
		26.961592, 32.475506, 36.275303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475037, 32.699833, 35.590767>,  <26.282057, 32.392185, 36.129398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475037, 32.699833, 35.590767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834787, 32.690437, 35.765385>,  <27.050638, 32.684799, 35.870155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834787, 32.690437, 35.765385>,  <26.475037, 32.699833, 35.590767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834787, 32.690437, 35.765385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409873, 0.392676, -0.823292,
		-0.152083, 0.919377, 0.362790,
		0.899374, -0.023489, 0.436548,
		27.104599, 32.683392, 35.896347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827208, 33.392746, 35.533459>,  <26.475037, 32.699833, 35.590767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827208, 33.392746, 35.533459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102610, 33.106239, 35.578930>,  <27.267851, 32.934334, 35.606213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102610, 33.106239, 35.578930>,  <26.827208, 33.392746, 35.533459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102610, 33.106239, 35.578930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372282, 0.214542, -0.902983,
		0.622388, 0.664028, 0.414366,
		0.688505, -0.716267, 0.113677,
		27.309160, 32.891357, 35.613033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509830, 33.632275, 35.352867>,  <26.827208, 33.392746, 35.533459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509830, 33.632275, 35.352867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482468, 33.236996, 35.298050>,  <27.466051, 32.999828, 35.265160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482468, 33.236996, 35.298050>,  <27.509830, 33.632275, 35.352867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482468, 33.236996, 35.298050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505585, 0.084078, -0.858670,
		0.860061, -0.128022, 0.493869,
		-0.068405, -0.988201, -0.137038,
		27.461946, 32.940536, 35.256939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200460, 33.381851, 35.358807>,  <27.509830, 33.632275, 35.352867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200460, 33.381851, 35.358807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951342, 33.143486, 35.156021>,  <27.801870, 33.000465, 35.034351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951342, 33.143486, 35.156021>,  <28.200460, 33.381851, 35.358807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951342, 33.143486, 35.156021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480895, 0.219550, -0.848845,
		0.617140, -0.772455, 0.149836,
		-0.622799, -0.595911, -0.506963,
		27.764502, 32.964714, 35.003933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608221, 32.863800, 34.983860>,  <28.200460, 33.381851, 35.358807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608221, 32.863800, 34.983860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262146, 32.922398, 34.792030>,  <28.054501, 32.957558, 34.676933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262146, 32.922398, 34.792030>,  <28.608221, 32.863800, 34.983860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262146, 32.922398, 34.792030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499785, 0.174117, -0.848468,
		-0.040794, -0.973768, -0.223859,
		-0.865188, 0.146494, -0.479572,
		28.002590, 32.966347, 34.648159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697535, 32.464172, 34.368412>,  <28.608221, 32.863800, 34.983860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697535, 32.464172, 34.368412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437672, 32.745693, 34.253445>,  <28.281754, 32.914604, 34.184464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437672, 32.745693, 34.253445>,  <28.697535, 32.464172, 34.368412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437672, 32.745693, 34.253445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445413, 0.045999, -0.894143,
		-0.616079, -0.708905, -0.343367,
		-0.649657, 0.703803, -0.287417,
		28.242775, 32.956833, 34.167221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457756, 32.704132, 34.232433>,  <28.697535, 32.464172, 34.368412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457756, 32.704132, 34.232433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295103, 32.954933, 33.966644>,  <29.197512, 33.105415, 33.807171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295103, 32.954933, 33.966644>,  <29.457756, 32.704132, 34.232433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295103, 32.954933, 33.966644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895223, -0.128345, 0.426735,
		0.182282, 0.768372, 0.613496,
		-0.406630, 0.627002, -0.664470,
		29.173115, 33.143032, 33.767303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128851, 32.639778, 34.249367>,  <29.457756, 32.704132, 34.232433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128851, 32.639778, 34.249367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313833, 32.515301, 34.581463>,  <30.424822, 32.440613, 34.780720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313833, 32.515301, 34.581463>,  <30.128851, 32.639778, 34.249367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313833, 32.515301, 34.581463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879241, 0.281694, -0.384165,
		-0.114322, 0.907637, 0.403887,
		0.462455, -0.311196, 0.830236,
		30.452570, 32.421944, 34.830532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697443, 33.081272, 34.285019>,  <30.128851, 32.639778, 34.249367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697443, 33.081272, 34.285019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780542, 32.767780, 34.519150>,  <30.830402, 32.579685, 34.659630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780542, 32.767780, 34.519150>,  <30.697443, 33.081272, 34.285019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780542, 32.767780, 34.519150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965462, 0.260474, 0.006094,
		-0.157238, 0.563843, 0.810775,
		0.207750, -0.783731, 0.585326,
		30.842867, 32.532661, 34.694748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296427, 33.259560, 34.597824>,  <30.697443, 33.081272, 34.285019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296427, 33.259560, 34.597824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358608, 32.873753, 34.683189>,  <31.395916, 32.642269, 34.734409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358608, 32.873753, 34.683189>,  <31.296427, 33.259560, 34.597824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358608, 32.873753, 34.683189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987429, 0.157975, -0.005291,
		-0.028610, 0.211552, 0.976948,
		0.155452, -0.964515, 0.213413,
		31.405245, 32.584396, 34.747211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724909, 33.191288, 35.167843>,  <31.296427, 33.259560, 34.597824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724909, 33.191288, 35.167843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754919, 32.842060, 34.975128>,  <31.772924, 32.632523, 34.859501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754919, 32.842060, 34.975128>,  <31.724909, 33.191288, 35.167843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754919, 32.842060, 34.975128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982822, 0.146439, -0.112325,
		0.168620, -0.465083, 0.869060,
		0.075024, -0.873071, -0.481787,
		31.777426, 32.580139, 34.830593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297668, 33.273197, 34.722710>,  <31.724909, 33.191288, 35.167843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297668, 33.273197, 34.722710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685089, 33.330254, 34.804260>,  <32.917542, 33.364487, 34.853191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685089, 33.330254, 34.804260>,  <32.297668, 33.273197, 34.722710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685089, 33.330254, 34.804260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248473, 0.511397, 0.822639,
		0.013082, -0.847424, 0.530756,
		0.968550, 0.142640, 0.203872,
		32.975655, 33.373047, 34.865421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442596, 32.989254, 35.513470>,  <32.297668, 33.273197, 34.722710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442596, 32.989254, 35.513470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698639, 33.280556, 35.415562>,  <32.852264, 33.455338, 35.356819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698639, 33.280556, 35.415562>,  <32.442596, 32.989254, 35.513470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698639, 33.280556, 35.415562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274151, 0.514122, 0.812724,
		0.717712, -0.453123, 0.528743,
		0.640103, 0.728257, -0.244768,
		32.890671, 33.499031, 35.342133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827579, 33.152718, 36.231552>,  <32.442596, 32.989254, 35.513470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827579, 33.152718, 36.231552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842491, 33.429985, 35.943626>,  <32.851440, 33.596344, 35.770870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842491, 33.429985, 35.943626>,  <32.827579, 33.152718, 36.231552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842491, 33.429985, 35.943626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306410, 0.693548, 0.652000,
		0.951169, 0.196251, 0.238248,
		0.037281, 0.693164, -0.719815,
		32.853676, 33.637936, 35.727680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701366, 33.776730, 36.370911>,  <32.827579, 33.152718, 36.231552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701366, 33.776730, 36.370911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444656, 33.663269, 36.655914>,  <32.290630, 33.595192, 36.826916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444656, 33.663269, 36.655914>,  <32.701366, 33.776730, 36.370911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444656, 33.663269, 36.655914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714675, 0.115767, 0.689810,
		-0.278151, 0.951914, 0.128423,
		-0.641772, -0.283652, 0.712509,
		32.252125, 33.578175, 36.869667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157772, 34.076984, 36.819809>,  <32.701366, 33.776730, 36.370911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157772, 34.076984, 36.819809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387478, 34.381901, 36.700390>,  <32.525303, 34.564850, 36.628738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387478, 34.381901, 36.700390>,  <32.157772, 34.076984, 36.819809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387478, 34.381901, 36.700390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344569, -0.555861, -0.756499,
		-0.742625, 0.331559, -0.581873,
		0.574265, 0.762290, -0.298552,
		32.559757, 34.610588, 36.610825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097557, 34.198322, 36.098251>,  <32.157772, 34.076984, 36.819809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097557, 34.198322, 36.098251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473763, 34.319950, 36.158882>,  <32.699486, 34.392929, 36.195263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473763, 34.319950, 36.158882>,  <32.097557, 34.198322, 36.098251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473763, 34.319950, 36.158882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292740, -0.498782, -0.815794,
		-0.172455, 0.811638, -0.558125,
		0.940512, 0.304073, 0.151581,
		32.755917, 34.411171, 36.204357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429695, 34.623898, 35.663204>,  <32.097557, 34.198322, 36.098251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429695, 34.623898, 35.663204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711529, 34.392227, 35.827209>,  <32.880630, 34.253223, 35.925613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711529, 34.392227, 35.827209>,  <32.429695, 34.623898, 35.663204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711529, 34.392227, 35.827209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188413, -0.404369, -0.894978,
		0.684150, 0.707840, -0.175787,
		0.704584, -0.579179, 0.410016,
		32.922905, 34.218475, 35.950214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115524, 34.823116, 35.454407>,  <32.429695, 34.623898, 35.663204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115524, 34.823116, 35.454407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105843, 34.431301, 35.534328>,  <33.100033, 34.196213, 35.582283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105843, 34.431301, 35.534328>,  <33.115524, 34.823116, 35.454407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105843, 34.431301, 35.534328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370292, -0.194435, -0.908339,
		0.928600, 0.052001, 0.367420,
		-0.024205, -0.979536, 0.199807,
		33.098579, 34.137440, 35.594273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670357, 34.521599, 35.116791>,  <33.115524, 34.823116, 35.454407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670357, 34.521599, 35.116791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457951, 34.187851, 35.175922>,  <33.330505, 33.987602, 35.211403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457951, 34.187851, 35.175922>,  <33.670357, 34.521599, 35.116791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457951, 34.187851, 35.175922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305044, -0.350992, -0.885298,
		0.790551, -0.425012, 0.440901,
		-0.531015, -0.834368, 0.147829,
		33.298645, 33.937542, 35.220272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109798, 33.928360, 35.008259>,  <33.670357, 34.521599, 35.116791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109798, 33.928360, 35.008259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758507, 33.741806, 34.965923>,  <33.547733, 33.629875, 34.940521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758507, 33.741806, 34.965923>,  <34.109798, 33.928360, 35.008259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758507, 33.741806, 34.965923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322867, -0.414944, -0.850635,
		0.352808, -0.781221, 0.514995,
		-0.878227, -0.466385, -0.105835,
		33.495037, 33.601891, 34.934174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169189, 33.107460, 34.975330>,  <34.109798, 33.928360, 35.008259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169189, 33.107460, 34.975330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856964, 33.281265, 34.795589>,  <33.669628, 33.385548, 34.687744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856964, 33.281265, 34.795589>,  <34.169189, 33.107460, 34.975330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856964, 33.281265, 34.795589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248751, -0.443573, -0.861026,
		-0.573450, -0.783862, 0.238150,
		-0.780562, 0.434515, -0.449354,
		33.622795, 33.411621, 34.660782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143009, 32.686771, 34.335850>,  <34.169189, 33.107460, 34.975330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143009, 32.686771, 34.335850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915882, 33.013702, 34.296745>,  <33.779606, 33.209862, 34.273281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915882, 33.013702, 34.296745>,  <34.143009, 32.686771, 34.335850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915882, 33.013702, 34.296745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134353, -0.209196, -0.968600,
		-0.812113, -0.536857, 0.228596,
		-0.567822, 0.817326, -0.097763,
		33.745537, 33.258900, 34.267418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494358, 32.539505, 34.016438>,  <34.143009, 32.686771, 34.335850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494358, 32.539505, 34.016438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610046, 32.913986, 33.936569>,  <33.679459, 33.138676, 33.888649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610046, 32.913986, 33.936569>,  <33.494358, 32.539505, 34.016438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610046, 32.913986, 33.936569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218938, -0.138364, -0.965879,
		-0.931889, 0.323070, 0.164953,
		0.289223, 0.936206, -0.199672,
		33.696812, 33.194847, 33.876667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958355, 32.826054, 33.926987>,  <33.494358, 32.539505, 34.016438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958355, 32.826054, 33.926987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238773, 33.034100, 33.731838>,  <33.407024, 33.158928, 33.614750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238773, 33.034100, 33.731838>,  <32.958355, 32.826054, 33.926987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238773, 33.034100, 33.731838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488195, -0.148648, -0.859982,
		-0.519807, 0.841064, 0.149707,
		0.701046, 0.520111, -0.487872,
		33.449089, 33.190132, 33.585476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546082, 33.166924, 33.512581>,  <32.958355, 32.826054, 33.926987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546082, 33.166924, 33.512581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908264, 33.208977, 33.348095>,  <33.125572, 33.234207, 33.249405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908264, 33.208977, 33.348095>,  <32.546082, 33.166924, 33.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908264, 33.208977, 33.348095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414803, 0.013880, -0.909805,
		-0.089940, 0.994362, 0.056175,
		0.905455, 0.105129, -0.411216,
		33.179901, 33.240517, 33.224731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487965, 33.752251, 33.149212>,  <32.546082, 33.166924, 33.512581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487965, 33.752251, 33.149212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799423, 33.559032, 32.989025>,  <32.986298, 33.443104, 32.892914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799423, 33.559032, 32.989025>,  <32.487965, 33.752251, 33.149212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799423, 33.559032, 32.989025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410766, 0.090043, -0.907284,
		0.474314, 0.870955, -0.128305,
		0.778651, -0.483041, -0.400467,
		33.033020, 33.414120, 32.868885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762165, 34.228905, 32.570305>,  <32.487965, 33.752251, 33.149212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762165, 34.228905, 32.570305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916328, 33.870232, 32.483208>,  <33.008827, 33.655025, 32.430950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916328, 33.870232, 32.483208>,  <32.762165, 34.228905, 32.570305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916328, 33.870232, 32.483208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385467, 0.057941, -0.920901,
		0.838376, 0.438856, -0.323312,
		0.385410, -0.896687, -0.217741,
		33.031952, 33.601227, 32.417885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090618, 34.278221, 31.930780>,  <32.762165, 34.228905, 32.570305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090618, 34.278221, 31.930780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016605, 33.887894, 31.977320>,  <32.972198, 33.653698, 32.005241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016605, 33.887894, 31.977320>,  <33.090618, 34.278221, 31.930780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016605, 33.887894, 31.977320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371583, -0.040129, -0.927532,
		0.909773, -0.214859, -0.355173,
		-0.185036, -0.975820, 0.116346,
		32.961094, 33.595146, 32.012222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510456, 33.829395, 31.353838>,  <33.090618, 34.278221, 31.930780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510456, 33.829395, 31.353838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195251, 33.606159, 31.457813>,  <33.006126, 33.472218, 31.520199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195251, 33.606159, 31.457813>,  <33.510456, 33.829395, 31.353838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195251, 33.606159, 31.457813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252096, -0.092694, -0.963253,
		0.561675, -0.824588, -0.067647,
		-0.788016, -0.558088, 0.259939,
		32.958847, 33.438732, 31.535795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465866, 33.454910, 30.809849>,  <33.510456, 33.829395, 31.353838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465866, 33.454910, 30.809849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108288, 33.410690, 30.983580>,  <32.893742, 33.384159, 31.087818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108288, 33.410690, 30.983580>,  <33.465866, 33.454910, 30.809849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108288, 33.410690, 30.983580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427450, -0.080976, -0.900405,
		0.134712, -0.990566, 0.025132,
		-0.893946, -0.110552, 0.434326,
		32.840103, 33.377525, 31.113878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126274, 32.823505, 30.530361>,  <33.465866, 33.454910, 30.809849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126274, 32.823505, 30.530361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835850, 33.060459, 30.670031>,  <32.661594, 33.202633, 30.753832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.835850, 33.060459, 30.670031>,  <33.126274, 32.823505, 30.530361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835850, 33.060459, 30.670031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481513, -0.075483, -0.873182,
		-0.490905, -0.802110, 0.340047,
		-0.726056, 0.592387, 0.349171,
		32.618034, 33.238174, 30.774782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526226, 32.714447, 30.060930>,  <33.126274, 32.823505, 30.530361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526226, 32.714447, 30.060930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405720, 33.044727, 30.251703>,  <32.333416, 33.242893, 30.366167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405720, 33.044727, 30.251703>,  <32.526226, 32.714447, 30.060930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405720, 33.044727, 30.251703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494811, 0.292183, -0.818408,
		-0.815107, -0.482551, 0.320538,
		-0.301268, 0.825696, 0.476931,
		32.315338, 33.292435, 30.394783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851179, 32.751339, 29.970957>,  <32.526226, 32.714447, 30.060930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851179, 32.751339, 29.970957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955410, 33.124828, 30.069143>,  <32.017948, 33.348923, 30.128056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955410, 33.124828, 30.069143>,  <31.851179, 32.751339, 29.970957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955410, 33.124828, 30.069143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379793, 0.332887, -0.863101,
		-0.887613, 0.131678, 0.441366,
		0.260577, 0.933728, 0.245465,
		32.033585, 33.404945, 30.142782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418133, 33.123871, 29.726673>,  <31.851179, 32.751339, 29.970957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418133, 33.123871, 29.726673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704113, 33.396610, 29.788549>,  <31.875700, 33.560253, 29.825676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704113, 33.396610, 29.788549>,  <31.418133, 33.123871, 29.726673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704113, 33.396610, 29.788549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300055, 0.499057, -0.812963,
		-0.631518, 0.534811, 0.561393,
		0.714949, 0.681849, 0.154691,
		31.918598, 33.601166, 29.834957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044800, 33.765232, 29.521494>,  <31.418133, 33.123871, 29.726673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044800, 33.765232, 29.521494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439894, 33.817322, 29.487026>,  <31.676950, 33.848576, 29.466345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439894, 33.817322, 29.487026>,  <31.044800, 33.765232, 29.521494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439894, 33.817322, 29.487026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137026, 0.458209, -0.878219,
		-0.074878, 0.879254, 0.470432,
		0.987733, 0.130221, -0.086171,
		31.736214, 33.856388, 29.461174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105810, 34.471806, 29.517691>,  <31.044800, 33.765232, 29.521494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105810, 34.471806, 29.517691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430223, 34.299786, 29.359055>,  <31.624872, 34.196575, 29.263874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430223, 34.299786, 29.359055>,  <31.105810, 34.471806, 29.517691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430223, 34.299786, 29.359055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025399, 0.651405, -0.758305,
		0.584447, 0.625084, 0.517389,
		0.811034, -0.430048, -0.396588,
		31.673534, 34.170773, 29.240078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638962, 34.992603, 29.509348>,  <31.105810, 34.471806, 29.517691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638962, 34.992603, 29.509348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768919, 34.720341, 29.246698>,  <31.846893, 34.556984, 29.089109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768919, 34.720341, 29.246698>,  <31.638962, 34.992603, 29.509348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768919, 34.720341, 29.246698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110149, 0.716797, -0.688527,
		0.939314, 0.151372, 0.307857,
		0.324895, -0.680653, -0.656623,
		31.866388, 34.516144, 29.049711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092934, 35.341927, 29.037619>,  <31.638962, 34.992603, 29.509348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092934, 35.341927, 29.037619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005478, 35.014938, 28.824478>,  <31.953003, 34.818745, 28.696594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005478, 35.014938, 28.824478>,  <32.092934, 35.341927, 29.037619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005478, 35.014938, 28.824478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034856, 0.539172, -0.841474,
		0.975182, -0.202555, -0.089392,
		-0.218643, -0.817475, -0.532851,
		31.939884, 34.769695, 28.664623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527985, 35.293007, 28.467161>,  <32.092934, 35.341927, 29.037619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527985, 35.293007, 28.467161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246452, 35.036049, 28.345871>,  <32.077534, 34.881874, 28.273096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246452, 35.036049, 28.345871>,  <32.527985, 35.293007, 28.467161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246452, 35.036049, 28.345871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103424, 0.514981, -0.850939,
		0.702796, -0.567559, -0.428900,
		-0.703834, -0.642395, -0.303227,
		32.035301, 34.843330, 28.254904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661781, 35.211933, 27.742592>,  <32.527985, 35.293007, 28.467161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661781, 35.211933, 27.742592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274620, 35.138046, 27.810768>,  <32.042324, 35.093716, 27.851673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274620, 35.138046, 27.810768>,  <32.661781, 35.211933, 27.742592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274620, 35.138046, 27.810768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249183, 0.616673, -0.746741,
		0.032831, -0.765241, -0.642906,
		-0.967900, -0.184717, 0.170439,
		31.984251, 35.082630, 27.861900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386555, 35.126656, 27.051426>,  <32.661781, 35.211933, 27.742592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386555, 35.126656, 27.051426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078751, 35.218204, 27.289913>,  <31.894068, 35.273132, 27.433004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078751, 35.218204, 27.289913>,  <32.386555, 35.126656, 27.051426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078751, 35.218204, 27.289913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425497, 0.512450, -0.745887,
		-0.476244, -0.827655, -0.296949,
		-0.769508, 0.228873, 0.596216,
		31.847898, 35.286865, 27.468779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847191, 35.010838, 26.661585>,  <32.386555, 35.126656, 27.051426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847191, 35.010838, 26.661585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651199, 35.222099, 26.938993>,  <31.533604, 35.348858, 27.105438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651199, 35.222099, 26.938993>,  <31.847191, 35.010838, 26.661585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651199, 35.222099, 26.938993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469258, 0.510659, -0.720433,
		-0.734655, -0.678437, -0.002369,
		-0.489978, 0.528158, 0.693520,
		31.504206, 35.380547, 27.147049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071306, 34.874123, 26.532711>,  <31.847191, 35.010838, 26.661585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071306, 34.874123, 26.532711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111025, 35.225269, 26.720112>,  <31.134855, 35.435955, 26.832552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111025, 35.225269, 26.720112>,  <31.071306, 34.874123, 26.532711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111025, 35.225269, 26.720112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490925, 0.452758, -0.744314,
		-0.865525, -0.156092, 0.475922,
		0.099297, 0.877864, 0.468503,
		31.140814, 35.488628, 26.860662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396675, 35.217777, 26.404154>,  <31.071306, 34.874123, 26.532711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396675, 35.217777, 26.404154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633768, 35.512634, 26.533951>,  <30.776024, 35.689548, 26.611830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.633768, 35.512634, 26.533951>,  <30.396675, 35.217777, 26.404154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633768, 35.512634, 26.533951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530128, 0.660392, -0.531833,
		-0.606328, 0.143210, 0.782213,
		0.592731, 0.737139, 0.324494,
		30.811586, 35.733776, 26.631300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960030, 35.811527, 26.671667>,  <30.396675, 35.217777, 26.404154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960030, 35.811527, 26.671667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312304, 35.955433, 26.548403>,  <30.523668, 36.041775, 26.474443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312304, 35.955433, 26.548403>,  <29.960030, 35.811527, 26.671667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312304, 35.955433, 26.548403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460647, 0.802087, -0.380080,
		0.110435, 0.476685, 0.872110,
		0.880686, 0.359760, -0.308162,
		30.576509, 36.063362, 26.455954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873278, 36.506214, 26.659414>,  <29.960030, 35.811527, 26.671667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873278, 36.506214, 26.659414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199896, 36.456612, 26.433893>,  <30.395866, 36.426849, 26.298580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199896, 36.456612, 26.433893>,  <29.873278, 36.506214, 26.659414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199896, 36.456612, 26.433893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261514, 0.791237, -0.552771,
		0.514648, 0.598805, 0.613653,
		0.816546, -0.124004, -0.563804,
		30.444860, 36.419411, 26.264751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200058, 37.178856, 26.635620>,  <29.873278, 36.506214, 26.659414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200058, 37.178856, 26.635620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331749, 36.967060, 26.322891>,  <30.410763, 36.839981, 26.135254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331749, 36.967060, 26.322891>,  <30.200058, 37.178856, 26.635620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331749, 36.967060, 26.322891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214642, 0.764342, -0.608038,
		0.919532, 0.367994, 0.137991,
		0.329227, -0.529492, -0.781824,
		30.430517, 36.808212, 26.088345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454359, 37.635334, 26.233862>,  <30.200058, 37.178856, 26.635620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454359, 37.635334, 26.233862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442673, 37.352245, 25.951508>,  <30.435661, 37.182392, 25.782095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442673, 37.352245, 25.951508>,  <30.454359, 37.635334, 26.233862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442673, 37.352245, 25.951508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231920, 0.691718, -0.683915,
		0.972296, 0.143729, -0.184344,
		-0.029215, -0.707721, -0.705888,
		30.433908, 37.139931, 25.739740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988598, 37.790020, 25.738922>,  <30.454359, 37.635334, 26.233862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988598, 37.790020, 25.738922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729105, 37.546043, 25.556885>,  <30.573408, 37.399658, 25.447662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729105, 37.546043, 25.556885>,  <30.988598, 37.790020, 25.738922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729105, 37.546043, 25.556885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040475, 0.569509, -0.820988,
		0.759939, -0.551022, -0.344772,
		-0.648733, -0.609946, -0.455094,
		30.534485, 37.363060, 25.420357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242222, 37.662289, 25.092014>,  <30.988598, 37.790020, 25.738922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242222, 37.662289, 25.092014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856403, 37.571724, 25.037773>,  <30.624912, 37.517384, 25.005228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856403, 37.571724, 25.037773>,  <31.242222, 37.662289, 25.092014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856403, 37.571724, 25.037773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008657, 0.540680, -0.841184,
		0.263772, -0.810187, -0.523470,
		-0.964546, -0.226413, -0.135602,
		30.567039, 37.503799, 24.997093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147684, 37.636330, 24.367643>,  <31.242222, 37.662289, 25.092014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147684, 37.636330, 24.367643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787315, 37.694569, 24.531178>,  <30.571095, 37.729511, 24.629297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787315, 37.694569, 24.531178>,  <31.147684, 37.636330, 24.367643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787315, 37.694569, 24.531178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231128, 0.636370, -0.735943,
		-0.367318, -0.757519, -0.539668,
		-0.900920, 0.145593, 0.408834,
		30.517038, 37.738247, 24.653828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718897, 37.565224, 23.848379>,  <31.147684, 37.636330, 24.367643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718897, 37.565224, 23.848379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472887, 37.754528, 24.100655>,  <30.325281, 37.868111, 24.252020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472887, 37.754528, 24.100655>,  <30.718897, 37.565224, 23.848379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472887, 37.754528, 24.100655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389906, 0.512684, -0.764937,
		-0.685361, -0.716363, -0.130784,
		-0.615023, 0.473265, 0.630688,
		30.288380, 37.896507, 24.289862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047115, 37.528782, 23.535664>,  <30.718897, 37.565224, 23.848379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047115, 37.528782, 23.535664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064421, 37.839378, 23.787119>,  <30.074804, 38.025738, 23.937992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064421, 37.839378, 23.787119>,  <30.047115, 37.528782, 23.535664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064421, 37.839378, 23.787119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408432, 0.587989, -0.698178,
		-0.911763, -0.226549, 0.342584,
		0.043264, 0.776495, 0.628636,
		30.077400, 38.072327, 23.975710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388054, 37.967793, 23.378271>,  <30.047115, 37.528782, 23.535664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388054, 37.967793, 23.378271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646891, 38.199638, 23.576389>,  <29.802193, 38.338745, 23.695259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646891, 38.199638, 23.576389>,  <29.388054, 37.967793, 23.378271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646891, 38.199638, 23.576389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244748, 0.773181, -0.585055,
		-0.722060, 0.257362, 0.642179,
		0.647092, 0.579617, 0.495295,
		29.841019, 38.373524, 23.724977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004148, 38.543488, 23.468985>,  <29.388054, 37.967793, 23.378271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004148, 38.543488, 23.468985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392969, 38.628746, 23.508350>,  <29.626261, 38.679901, 23.531969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392969, 38.628746, 23.508350>,  <29.004148, 38.543488, 23.468985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392969, 38.628746, 23.508350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088299, 0.720347, -0.687970,
		-0.217530, 0.660052, 0.719035,
		0.972051, 0.213144, 0.098415,
		29.684586, 38.692688, 23.537874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008032, 39.241398, 23.574329>,  <29.004148, 38.543488, 23.468985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008032, 39.241398, 23.574329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374029, 39.134567, 23.453365>,  <29.593628, 39.070469, 23.380787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374029, 39.134567, 23.453365>,  <29.008032, 39.241398, 23.574329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374029, 39.134567, 23.453365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029844, 0.792282, -0.609425,
		0.402359, 0.548596, 0.732905,
		0.914995, -0.267080, -0.302410,
		29.648527, 39.054443, 23.362642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217461, 39.769581, 23.507452>,  <29.008032, 39.241398, 23.574329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217461, 39.769581, 23.507452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478569, 39.562325, 23.286394>,  <29.635235, 39.437969, 23.153759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478569, 39.562325, 23.286394>,  <29.217461, 39.769581, 23.507452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478569, 39.562325, 23.286394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026694, 0.744792, -0.666763,
		0.757085, 0.420491, 0.500010,
		0.652771, -0.518144, -0.552646,
		29.674400, 39.406883, 23.120600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814489, 40.120213, 23.403942>,  <29.217461, 39.769581, 23.507452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814489, 40.120213, 23.403942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803619, 39.862373, 23.098328>,  <29.797098, 39.707668, 22.914959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803619, 39.862373, 23.098328>,  <29.814489, 40.120213, 23.403942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803619, 39.862373, 23.098328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090316, 0.759608, -0.644080,
		0.995542, -0.086506, 0.037576,
		-0.027174, -0.644602, -0.764035,
		29.795467, 39.668991, 22.869118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262890, 40.392574, 22.850039>,  <29.814489, 40.120213, 23.403942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262890, 40.392574, 22.850039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039351, 40.120586, 22.660164>,  <29.905228, 39.957394, 22.546240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039351, 40.120586, 22.660164>,  <30.262890, 40.392574, 22.850039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039351, 40.120586, 22.660164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072880, 0.610472, -0.788677,
		0.826060, -0.406157, -0.390718,
		-0.558849, -0.679971, -0.474687,
		29.871696, 39.916595, 22.517757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358248, 40.451962, 22.191973>,  <30.262890, 40.392574, 22.850039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358248, 40.451962, 22.191973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012407, 40.259037, 22.135624>,  <29.804903, 40.143284, 22.101814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012407, 40.259037, 22.135624>,  <30.358248, 40.451962, 22.191973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012407, 40.259037, 22.135624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231909, 0.631764, -0.739657,
		0.445741, -0.606838, -0.658075,
		-0.864600, -0.482309, -0.140872,
		29.753027, 40.114346, 22.093363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276957, 40.195217, 21.461090>,  <30.358248, 40.451962, 22.191973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276957, 40.195217, 21.461090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900612, 40.199997, 21.596519>,  <29.674805, 40.202866, 21.677778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900612, 40.199997, 21.596519>,  <30.276957, 40.195217, 21.461090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900612, 40.199997, 21.596519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286882, 0.503495, -0.814980,
		-0.180206, -0.863916, -0.470293,
		-0.940864, 0.011946, 0.338574,
		29.618353, 40.203579, 21.698092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875778, 40.129429, 20.870642>,  <30.276957, 40.195217, 21.461090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875778, 40.129429, 20.870642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601656, 40.240238, 21.140045>,  <29.437183, 40.306725, 21.301687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.601656, 40.240238, 21.140045>,  <29.875778, 40.129429, 20.870642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601656, 40.240238, 21.140045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542809, 0.422248, -0.725993,
		-0.485505, -0.863113, -0.138997,
		-0.685305, 0.277024, 0.673509,
		29.396065, 40.323345, 21.342098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110323, 39.836025, 20.611040>,  <29.875778, 40.129429, 20.870642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110323, 39.836025, 20.611040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106478, 40.162395, 20.842270>,  <29.104170, 40.358219, 20.981009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106478, 40.162395, 20.842270>,  <29.110323, 39.836025, 20.611040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106478, 40.162395, 20.842270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492968, 0.499100, -0.712658,
		-0.869994, -0.291824, 0.397427,
		-0.009615, 0.815928, 0.578074,
		29.103594, 40.407173, 21.015692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517881, 40.224319, 20.426466>,  <29.110323, 39.836025, 20.611040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517881, 40.224319, 20.426466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715042, 40.518967, 20.611696>,  <28.833338, 40.695755, 20.722834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715042, 40.518967, 20.611696>,  <28.517881, 40.224319, 20.426466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715042, 40.518967, 20.611696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437731, 0.669896, -0.599692,
		-0.751958, 0.092886, 0.652634,
		0.492900, 0.736622, 0.463074,
		28.862911, 40.739952, 20.750618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990950, 40.699295, 20.482428>,  <28.517881, 40.224319, 20.426466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990950, 40.699295, 20.482428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344093, 40.883133, 20.521082>,  <28.555979, 40.993435, 20.544275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344093, 40.883133, 20.521082>,  <27.990950, 40.699295, 20.482428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344093, 40.883133, 20.521082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363626, 0.799157, -0.478670,
		-0.297220, 0.387458, 0.872661,
		0.882857, 0.459592, 0.096636,
		28.608950, 41.021011, 20.550072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772272, 41.361919, 20.767172>,  <27.990950, 40.699295, 20.482428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772272, 41.361919, 20.767172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137400, 41.402252, 20.608885>,  <28.356476, 41.426453, 20.513912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137400, 41.402252, 20.608885>,  <27.772272, 41.361919, 20.767172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137400, 41.402252, 20.608885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263689, 0.885466, -0.382645,
		0.311813, 0.453633, 0.834859,
		0.912820, 0.100830, -0.395718,
		28.411245, 41.432503, 20.490170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870445, 42.097809, 20.810959>,  <27.772272, 41.361919, 20.767172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870445, 42.097809, 20.810959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100466, 41.932812, 20.528355>,  <28.238478, 41.833813, 20.358791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100466, 41.932812, 20.528355>,  <27.870445, 42.097809, 20.810959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100466, 41.932812, 20.528355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072087, 0.834678, -0.546000,
		0.814934, 0.364910, 0.450249,
		0.575053, -0.412497, -0.706512,
		28.272982, 41.809063, 20.316401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462120, 42.597328, 20.610218>,  <27.870445, 42.097809, 20.810959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462120, 42.597328, 20.610218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311380, 42.343296, 20.340504>,  <28.220938, 42.190876, 20.178675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311380, 42.343296, 20.340504>,  <28.462120, 42.597328, 20.610218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311380, 42.343296, 20.340504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240373, 0.770066, -0.590947,
		0.894543, -0.060616, -0.442853,
		-0.376847, -0.635077, -0.674286,
		28.198326, 42.152771, 20.138218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181192, 42.644047, 19.893162>,  <28.462120, 42.597328, 20.610218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181192, 42.644047, 19.893162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533848, 42.570286, 20.066925>,  <28.745441, 42.526028, 20.171183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533848, 42.570286, 20.066925>,  <28.181192, 42.644047, 19.893162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533848, 42.570286, 20.066925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214876, -0.976402, 0.021619,
		0.420171, -0.112404, -0.900457,
		0.881638, -0.184403, 0.434409,
		28.798340, 42.514965, 20.197248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800732, 42.818707, 19.721436>,  <28.181192, 42.644047, 19.893162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800732, 42.818707, 19.721436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725937, 43.115627, 19.978813>,  <28.681061, 43.293781, 20.133240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725937, 43.115627, 19.978813>,  <28.800732, 42.818707, 19.721436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725937, 43.115627, 19.978813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923999, 0.355302, -0.141373,
		-0.333560, 0.568108, -0.752324,
		-0.186987, 0.742303, 0.643446,
		28.669840, 43.338318, 20.171846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311556, 42.369648, 19.324720>,  <28.800732, 42.818707, 19.721436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311556, 42.369648, 19.324720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583479, 42.076550, 19.312407>,  <29.746634, 41.900692, 19.305019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583479, 42.076550, 19.312407>,  <29.311556, 42.369648, 19.324720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583479, 42.076550, 19.312407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169071, -0.115738, -0.978785,
		0.713636, 0.670590, -0.202565,
		0.679807, -0.732744, -0.030783,
		29.787420, 41.856728, 19.303171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507154, 43.067875, 19.624821>,  <29.311556, 42.369648, 19.324720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507154, 43.067875, 19.624821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630432, 43.439377, 19.707214>,  <29.704399, 43.662277, 19.756651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.630432, 43.439377, 19.707214>,  <29.507154, 43.067875, 19.624821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630432, 43.439377, 19.707214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653690, -0.364061, 0.663437,
		0.691162, -0.069817, -0.719320,
		0.308196, 0.928755, 0.205986,
		29.722891, 43.718002, 19.769011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204252, 43.140118, 19.515177>,  <29.507154, 43.067875, 19.624821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204252, 43.140118, 19.515177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087744, 43.408283, 19.788147>,  <30.017838, 43.569183, 19.951929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087744, 43.408283, 19.788147>,  <30.204252, 43.140118, 19.515177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087744, 43.408283, 19.788147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681584, -0.355125, 0.639789,
		0.671270, 0.651483, -0.353506,
		-0.291272, 0.670415, 0.682425,
		30.000362, 43.609409, 19.992874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801754, 43.349049, 19.898239>,  <30.204252, 43.140118, 19.515177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801754, 43.349049, 19.898239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476582, 43.415047, 20.121637>,  <30.281479, 43.454643, 20.255676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476582, 43.415047, 20.121637>,  <30.801754, 43.349049, 19.898239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476582, 43.415047, 20.121637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541058, -0.140744, 0.829125,
		0.215403, 0.976201, 0.025146,
		-0.812932, 0.164991, 0.558498,
		30.232702, 43.464542, 20.289186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089109, 43.800713, 20.424223>,  <30.801754, 43.349049, 19.898239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089109, 43.800713, 20.424223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773058, 43.620060, 20.589983>,  <30.583427, 43.511669, 20.689440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773058, 43.620060, 20.589983>,  <31.089109, 43.800713, 20.424223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773058, 43.620060, 20.589983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525847, -0.152088, 0.836872,
		-0.314928, 0.879149, 0.357656,
		-0.790130, -0.451627, 0.414401,
		30.536018, 43.484573, 20.714304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978363, 44.037418, 21.142780>,  <31.089109, 43.800713, 20.424223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978363, 44.037418, 21.142780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851652, 43.659676, 21.107344>,  <30.775625, 43.433029, 21.086082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851652, 43.659676, 21.107344>,  <30.978363, 44.037418, 21.142780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851652, 43.659676, 21.107344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538858, -0.256043, 0.802542,
		-0.780567, 0.206490, 0.589981,
		-0.316777, -0.944354, -0.088590,
		30.756618, 43.376369, 21.080767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704470, 43.839558, 21.810970>,  <30.978363, 44.037418, 21.142780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704470, 43.839558, 21.810970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773905, 43.493771, 21.622263>,  <30.815567, 43.286301, 21.509039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773905, 43.493771, 21.622263>,  <30.704470, 43.839558, 21.810970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773905, 43.493771, 21.622263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394706, -0.377813, 0.837534,
		-0.902260, -0.331597, 0.275625,
		0.173589, -0.864465, -0.471769,
		30.825981, 43.234432, 21.480732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454840, 43.338787, 22.246782>,  <30.704470, 43.839558, 21.810970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454840, 43.338787, 22.246782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691662, 43.135113, 21.996920>,  <30.833755, 43.012909, 21.847002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691662, 43.135113, 21.996920>,  <30.454840, 43.338787, 22.246782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691662, 43.135113, 21.996920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242221, -0.626838, 0.740542,
		-0.768634, -0.589748, -0.247788,
		0.592056, -0.509186, -0.624659,
		30.869278, 42.982357, 21.809523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231148, 42.625454, 22.432409>,  <30.454840, 43.338787, 22.246782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231148, 42.625454, 22.432409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591129, 42.606125, 22.259090>,  <30.807119, 42.594528, 22.155100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591129, 42.606125, 22.259090>,  <30.231148, 42.625454, 22.432409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591129, 42.606125, 22.259090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280779, -0.696068, 0.660797,
		-0.333533, -0.716349, -0.612863,
		0.899955, -0.048319, -0.433297,
		30.861116, 42.591629, 22.129101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429016, 41.964001, 22.267502>,  <30.231148, 42.625454, 22.432409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429016, 41.964001, 22.267502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781582, 42.151470, 22.291016>,  <30.993120, 42.263954, 22.305124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781582, 42.151470, 22.291016>,  <30.429016, 41.964001, 22.267502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781582, 42.151470, 22.291016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311510, -0.670318, 0.673524,
		0.355069, -0.575340, -0.736824,
		0.881412, 0.468676, 0.058785,
		31.046005, 42.292072, 22.308651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935825, 41.367737, 22.329466>,  <30.429016, 41.964001, 22.267502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935825, 41.367737, 22.329466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110405, 41.706314, 22.451485>,  <31.215153, 41.909458, 22.524696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110405, 41.706314, 22.451485>,  <30.935825, 41.367737, 22.329466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110405, 41.706314, 22.451485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511388, -0.512329, 0.689929,
		0.740268, -0.145119, -0.656463,
		0.436447, 0.846439, 0.305049,
		31.241339, 41.960247, 22.542999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643349, 41.307674, 22.363361>,  <30.935825, 41.367737, 22.329466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643349, 41.307674, 22.363361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569469, 41.608276, 22.616699>,  <31.525143, 41.788639, 22.768702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569469, 41.608276, 22.616699>,  <31.643349, 41.307674, 22.363361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569469, 41.608276, 22.616699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586800, -0.432630, 0.684468,
		0.788386, 0.498066, -0.361078,
		-0.184697, 0.751506, 0.633345,
		31.514061, 41.833729, 22.806704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311684, 41.653767, 22.673185>,  <31.643349, 41.307674, 22.363361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311684, 41.653767, 22.673185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013992, 41.759010, 22.918753>,  <31.835377, 41.822155, 23.066093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013992, 41.759010, 22.918753>,  <32.311684, 41.653767, 22.673185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013992, 41.759010, 22.918753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584110, -0.189405, 0.789266,
		0.323943, 0.945991, -0.012725,
		-0.744228, 0.263110, 0.613920,
		31.790724, 41.837944, 23.102928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622566, 41.997345, 23.239389>,  <32.311684, 41.653767, 22.673185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622566, 41.997345, 23.239389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253471, 41.923389, 23.374670>,  <32.032017, 41.879017, 23.455839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253471, 41.923389, 23.374670>,  <32.622566, 41.997345, 23.239389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253471, 41.923389, 23.374670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371414, -0.191963, 0.908406,
		-0.103034, 0.963829, 0.245802,
		-0.922732, -0.184891, 0.338201,
		31.976652, 41.867924, 23.476130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575550, 42.352024, 23.959707>,  <32.622566, 41.997345, 23.239389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575550, 42.352024, 23.959707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282513, 42.079784, 23.963409>,  <32.106689, 41.916439, 23.965631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282513, 42.079784, 23.963409>,  <32.575550, 42.352024, 23.959707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282513, 42.079784, 23.963409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398174, -0.417486, 0.816800,
		-0.552049, 0.602071, 0.576847,
		-0.732597, -0.680600, 0.009256,
		32.062733, 41.875603, 23.966187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144665, 42.444061, 24.630384>,  <32.575550, 42.352024, 23.959707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144665, 42.444061, 24.630384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052429, 42.084957, 24.480267>,  <31.997087, 41.869495, 24.390196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052429, 42.084957, 24.480267>,  <32.144665, 42.444061, 24.630384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052429, 42.084957, 24.480267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313222, -0.433645, 0.844893,
		-0.921260, 0.077272, 0.381194,
		-0.230589, -0.897764, -0.375297,
		31.983252, 41.815628, 24.367678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766687, 42.126347, 25.112745>,  <32.144665, 42.444061, 24.630384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766687, 42.126347, 25.112745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895336, 41.812149, 24.901253>,  <31.972525, 41.623631, 24.774357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895336, 41.812149, 24.901253>,  <31.766687, 42.126347, 25.112745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895336, 41.812149, 24.901253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204176, -0.487731, 0.848782,
		-0.924593, -0.380940, 0.003516,
		0.321620, -0.785496, -0.528732,
		31.991821, 41.576500, 24.742634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535503, 41.552734, 25.509642>,  <31.766687, 42.126347, 25.112745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535503, 41.552734, 25.509642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797844, 41.362877, 25.274839>,  <31.955248, 41.248962, 25.133957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797844, 41.362877, 25.274839>,  <31.535503, 41.552734, 25.509642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797844, 41.362877, 25.274839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309647, -0.540028, 0.782616,
		-0.688462, -0.695043, -0.207206,
		0.655849, -0.474641, -0.587008,
		31.994598, 41.220486, 25.098738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313423, 40.850357, 25.478413>,  <31.535503, 41.552734, 25.509642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313423, 40.850357, 25.478413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709051, 40.878048, 25.426334>,  <31.946428, 40.894661, 25.395086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709051, 40.878048, 25.426334>,  <31.313423, 40.850357, 25.478413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709051, 40.878048, 25.426334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147326, -0.501086, 0.852765,
		-0.006207, -0.862624, -0.505807,
		0.989068, 0.069226, -0.130197,
		32.005772, 40.898815, 25.387276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519934, 40.154987, 25.607994>,  <31.313423, 40.850357, 25.478413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519934, 40.154987, 25.607994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829988, 40.405655, 25.640108>,  <32.016022, 40.556057, 25.659376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829988, 40.405655, 25.640108>,  <31.519934, 40.154987, 25.607994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829988, 40.405655, 25.640108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193057, -0.355938, 0.914351,
		0.601573, -0.693248, -0.396884,
		0.775138, 0.626670, 0.080286,
		32.062531, 40.593655, 25.664194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187935, 39.796143, 25.679998>,  <31.519934, 40.154987, 25.607994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187935, 39.796143, 25.679998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214745, 40.162865, 25.837467>,  <32.230831, 40.382896, 25.931948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214745, 40.162865, 25.837467>,  <32.187935, 39.796143, 25.679998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214745, 40.162865, 25.837467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224469, -0.398299, 0.889366,
		0.972174, 0.028761, -0.232489,
		0.067021, 0.916804, 0.393672,
		32.234852, 40.437904, 25.955568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782200, 39.702450, 26.067898>,  <32.187935, 39.796143, 25.679998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782200, 39.702450, 26.067898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640030, 40.047909, 26.210890>,  <32.554729, 40.255184, 26.296684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640030, 40.047909, 26.210890>,  <32.782200, 39.702450, 26.067898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640030, 40.047909, 26.210890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368554, -0.221979, 0.902714,
		0.858979, 0.452594, -0.239404,
		-0.355421, 0.863646, 0.357481,
		32.533405, 40.307003, 26.318134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216362, 39.889439, 26.566139>,  <32.782200, 39.702450, 26.067898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216362, 39.889439, 26.566139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924538, 40.148632, 26.653646>,  <32.749443, 40.304146, 26.706150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924538, 40.148632, 26.653646>,  <33.216362, 39.889439, 26.566139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924538, 40.148632, 26.653646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167333, -0.141032, 0.975761,
		0.663128, 0.748486, -0.005537,
		-0.729562, 0.647981, 0.218768,
		32.705669, 40.343025, 26.719276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474464, 40.470352, 27.111441>,  <33.216362, 39.889439, 26.566139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474464, 40.470352, 27.111441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083687, 40.386921, 27.129684>,  <32.849220, 40.336864, 27.140631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083687, 40.386921, 27.129684>,  <33.474464, 40.470352, 27.111441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083687, 40.386921, 27.129684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091233, -0.214685, 0.972413,
		-0.193028, 0.954153, 0.228764,
		-0.976943, -0.208574, 0.045610,
		32.790604, 40.324348, 27.143368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331886, 40.636940, 27.830608>,  <33.474464, 40.470352, 27.111441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331886, 40.636940, 27.830608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990280, 40.462158, 27.717669>,  <32.785316, 40.357288, 27.649904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990280, 40.462158, 27.717669>,  <33.331886, 40.636940, 27.830608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990280, 40.462158, 27.717669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181279, -0.258774, 0.948775,
		-0.487636, 0.861457, 0.141787,
		-0.854020, -0.436953, -0.282351,
		32.734074, 40.331074, 27.632963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922550, 40.982506, 28.275747>,  <33.331886, 40.636940, 27.830608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922550, 40.982506, 28.275747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811348, 40.627998, 28.127562>,  <32.744625, 40.415295, 28.038651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811348, 40.627998, 28.127562>,  <32.922550, 40.982506, 28.275747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811348, 40.627998, 28.127562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108885, -0.354104, 0.928845,
		-0.954388, 0.298563, 0.001942,
		-0.278007, -0.886268, -0.370462,
		32.727947, 40.362118, 28.016422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314018, 40.765442, 28.672386>,  <32.922550, 40.982506, 28.275747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314018, 40.765442, 28.672386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477497, 40.432060, 28.523623>,  <32.575584, 40.232029, 28.434364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477497, 40.432060, 28.523623>,  <32.314018, 40.765442, 28.672386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477497, 40.432060, 28.523623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003263, -0.408827, 0.912606,
		-0.912666, -0.371763, -0.169805,
		0.408694, -0.833458, -0.371910,
		32.600105, 40.182022, 28.412050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964117, 40.142162, 29.062321>,  <32.314018, 40.765442, 28.672386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964117, 40.142162, 29.062321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300434, 39.991222, 28.907051>,  <32.502224, 39.900658, 28.813890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300434, 39.991222, 28.907051>,  <31.964117, 40.142162, 29.062321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300434, 39.991222, 28.907051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113506, -0.578218, 0.807948,
		-0.529322, -0.723377, -0.443331,
		0.840794, -0.377344, -0.388171,
		32.552673, 39.878017, 28.790600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830349, 39.479504, 29.100496>,  <31.964117, 40.142162, 29.062321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830349, 39.479504, 29.100496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226791, 39.459999, 29.050962>,  <32.464657, 39.448296, 29.021242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226791, 39.459999, 29.050962>,  <31.830349, 39.479504, 29.100496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226791, 39.459999, 29.050962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049458, -0.728894, 0.682838,
		-0.123555, -0.682888, -0.719999,
		0.991104, -0.048759, -0.123833,
		32.524124, 39.445370, 29.013813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017685, 38.757019, 29.094746>,  <31.830349, 39.479504, 29.100496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017685, 38.757019, 29.094746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366261, 38.941105, 29.162622>,  <32.575405, 39.051556, 29.203348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366261, 38.941105, 29.162622>,  <32.017685, 38.757019, 29.094746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366261, 38.941105, 29.162622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259529, -0.726181, 0.636637,
		0.416214, -0.510752, -0.752262,
		0.871442, 0.460211, 0.169692,
		32.627693, 39.079166, 29.213530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559120, 38.297817, 28.914408>,  <32.017685, 38.757019, 29.094746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559120, 38.297817, 28.914408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686504, 38.558216, 29.190027>,  <32.762936, 38.714455, 29.355398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686504, 38.558216, 29.190027>,  <32.559120, 38.297817, 28.914408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686504, 38.558216, 29.190027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128085, -0.749776, 0.649177,
		0.939243, -0.118480, -0.322156,
		0.318459, 0.650998, 0.689047,
		32.782043, 38.753517, 29.396742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190414, 38.039700, 29.179785>,  <32.559120, 38.297817, 28.914408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190414, 38.039700, 29.179785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057503, 38.281055, 29.469755>,  <32.977757, 38.425869, 29.643738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057503, 38.281055, 29.469755>,  <33.190414, 38.039700, 29.179785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057503, 38.281055, 29.469755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153781, -0.723653, 0.672814,
		0.930560, 0.335042, 0.147666,
		-0.332280, 0.603385, 0.724925,
		32.957817, 38.462070, 29.687233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759228, 38.005257, 29.674164>,  <33.190414, 38.039700, 29.179785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759228, 38.005257, 29.674164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427654, 38.133831, 29.857271>,  <33.228710, 38.210976, 29.967136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427654, 38.133831, 29.857271>,  <33.759228, 38.005257, 29.674164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427654, 38.133831, 29.857271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064500, -0.758005, 0.649051,
		0.555617, 0.567546, 0.607603,
		-0.828932, 0.321433, 0.457768,
		33.178974, 38.230263, 29.994602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944862, 37.940655, 30.333271>,  <33.759228, 38.005257, 29.674164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944862, 37.940655, 30.333271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550770, 37.999184, 30.368855>,  <33.314316, 38.034302, 30.390203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550770, 37.999184, 30.368855>,  <33.944862, 37.940655, 30.333271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550770, 37.999184, 30.368855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027470, -0.647814, 0.761303,
		0.169020, 0.747615, 0.642265,
		-0.985230, 0.146318, 0.088956,
		33.255199, 38.043079, 30.395542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794506, 37.863129, 31.013670>,  <33.944862, 37.940655, 30.333271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794506, 37.863129, 31.013670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420605, 37.819157, 30.878525>,  <33.196262, 37.792774, 30.797438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420605, 37.819157, 30.878525>,  <33.794506, 37.863129, 31.013670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420605, 37.819157, 30.878525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174739, -0.685737, 0.706564,
		-0.309361, 0.719500, 0.621784,
		-0.934752, -0.109934, -0.337865,
		33.140179, 37.786175, 30.777164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409504, 37.987427, 31.540848>,  <33.794506, 37.863129, 31.013670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409504, 37.987427, 31.540848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180923, 37.752369, 31.311720>,  <33.043774, 37.611336, 31.174244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180923, 37.752369, 31.311720>,  <33.409504, 37.987427, 31.540848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180923, 37.752369, 31.311720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117713, -0.632103, 0.765891,
		-0.812148, 0.505099, 0.292045,
		-0.571454, -0.587640, -0.572818,
		33.009487, 37.576077, 31.139875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935123, 37.767216, 31.993681>,  <33.409504, 37.987427, 31.540848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935123, 37.767216, 31.993681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902973, 37.524017, 31.677738>,  <32.883682, 37.378098, 31.488173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902973, 37.524017, 31.677738>,  <32.935123, 37.767216, 31.993681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902973, 37.524017, 31.677738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007365, -0.792762, 0.609486,
		-0.996738, 0.043169, 0.068195,
		-0.080373, -0.608000, -0.789858,
		32.878860, 37.341618, 31.440781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328426, 37.376247, 32.106377>,  <32.935123, 37.767216, 31.993681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328426, 37.376247, 32.106377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566788, 37.169472, 31.860558>,  <32.709805, 37.045406, 31.713066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566788, 37.169472, 31.860558>,  <32.328426, 37.376247, 32.106377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566788, 37.169472, 31.860558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068195, -0.795075, 0.602666,
		-0.800173, -0.317206, -0.509022,
		0.595880, -0.516949, -0.614565,
		32.745560, 37.014389, 31.676193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104958, 36.721951, 32.119770>,  <32.328426, 37.376247, 32.106377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104958, 36.721951, 32.119770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471409, 36.691364, 31.962364>,  <32.691280, 36.673012, 31.867920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471409, 36.691364, 31.962364>,  <32.104958, 36.721951, 32.119770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471409, 36.691364, 31.962364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221288, -0.722068, 0.655476,
		-0.334268, -0.687583, -0.644588,
		0.916131, -0.076465, -0.393518,
		32.746246, 36.668427, 31.844309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216431, 35.995758, 31.994114>,  <32.104958, 36.721951, 32.119770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216431, 35.995758, 31.994114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583431, 36.152134, 32.023399>,  <32.803631, 36.245960, 32.040970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583431, 36.152134, 32.023399>,  <32.216431, 35.995758, 31.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583431, 36.152134, 32.023399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268558, -0.744710, 0.610969,
		0.293375, -0.540902, -0.788262,
		0.917501, 0.390938, 0.073216,
		32.858681, 36.269417, 32.045364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605545, 35.451679, 32.022476>,  <32.216431, 35.995758, 31.994114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605545, 35.451679, 32.022476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867474, 35.731064, 32.137970>,  <33.024632, 35.898693, 32.207268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867474, 35.731064, 32.137970>,  <32.605545, 35.451679, 32.022476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867474, 35.731064, 32.137970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421928, -0.654793, 0.627075,
		0.627045, -0.288797, -0.723471,
		0.654821, 0.698457, 0.288733,
		33.063919, 35.940601, 32.224590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319248, 35.153637, 31.994347>,  <32.605545, 35.451679, 32.022476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319248, 35.153637, 31.994347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331684, 35.455170, 32.256878>,  <33.339146, 35.636089, 32.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331684, 35.455170, 32.256878>,  <33.319248, 35.153637, 31.994347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331684, 35.455170, 32.256878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448887, -0.597231, 0.664693,
		0.893047, 0.273950, -0.356956,
		0.031093, 0.753835, 0.656328,
		33.341011, 35.681320, 32.453777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054932, 35.316914, 32.231239>,  <33.319248, 35.153637, 31.994347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054932, 35.316914, 32.231239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848789, 35.484222, 32.530430>,  <33.725105, 35.584606, 32.709942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848789, 35.484222, 32.530430>,  <34.054932, 35.316914, 32.231239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848789, 35.484222, 32.530430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605337, -0.440142, 0.663206,
		0.606613, 0.794560, -0.026367,
		-0.515351, 0.418270, 0.747973,
		33.694183, 35.609703, 32.754822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524776, 35.614506, 32.630859>,  <34.054932, 35.316914, 32.231239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524776, 35.614506, 32.630859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198631, 35.538937, 32.849762>,  <34.002945, 35.493595, 32.981106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198631, 35.538937, 32.849762>,  <34.524776, 35.614506, 32.630859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198631, 35.538937, 32.849762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554720, -0.525536, 0.645057,
		0.165740, 0.829531, 0.533300,
		-0.815362, -0.188920, 0.547260,
		33.954021, 35.482262, 33.013939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793438, 35.798317, 31.934063>,  <34.524776, 35.614506, 32.630859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793438, 35.798317, 31.934063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156898, 35.652100, 31.853329>,  <35.374973, 35.564369, 31.804888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156898, 35.652100, 31.853329>,  <34.793438, 35.798317, 31.934063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156898, 35.652100, 31.853329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260391, 0.873910, -0.410461,
		0.326425, 0.320409, 0.889261,
		0.908649, -0.365540, -0.201834,
		35.429493, 35.542439, 31.792778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188530, 36.407860, 32.143017>,  <34.793438, 35.798317, 31.934063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188530, 36.407860, 32.143017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423145, 36.160599, 31.933687>,  <35.563915, 36.012241, 31.808090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423145, 36.160599, 31.933687>,  <35.188530, 36.407860, 32.143017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423145, 36.160599, 31.933687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587808, 0.769400, -0.250009,
		0.557189, -0.160975, 0.814633,
		0.586534, -0.618151, -0.523324,
		35.599106, 35.975155, 31.776690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863514, 36.598846, 32.276024>,  <35.188530, 36.407860, 32.143017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863514, 36.598846, 32.276024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854950, 36.426792, 31.915018>,  <35.849812, 36.323559, 31.698416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854950, 36.426792, 31.915018>,  <35.863514, 36.598846, 32.276024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854950, 36.426792, 31.915018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516347, 0.768247, -0.378394,
		0.856112, -0.474109, 0.205651,
		-0.021409, -0.430135, -0.902511,
		35.848526, 36.297752, 31.644264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516861, 36.803352, 31.921022>,  <35.863514, 36.598846, 32.276024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516861, 36.803352, 31.921022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264027, 36.710773, 31.625214>,  <36.112324, 36.655224, 31.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264027, 36.710773, 31.625214>,  <36.516861, 36.803352, 31.921022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264027, 36.710773, 31.625214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344459, 0.770954, -0.535703,
		0.694127, -0.593347, -0.407586,
		-0.632088, -0.231449, -0.739524,
		36.074402, 36.641338, 31.403357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885666, 36.742741, 31.264549>,  <36.516861, 36.803352, 31.921022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885666, 36.742741, 31.264549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504921, 36.809952, 31.161997>,  <36.276474, 36.850281, 31.100466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504921, 36.809952, 31.161997>,  <36.885666, 36.742741, 31.264549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504921, 36.809952, 31.161997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295902, 0.722073, -0.625342,
		0.080049, -0.671100, -0.737032,
		-0.951858, 0.168031, -0.256381,
		36.219364, 36.860363, 31.085083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006569, 36.938141, 30.597845>,  <36.885666, 36.742741, 31.264549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006569, 36.938141, 30.597845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621067, 37.020821, 30.665308>,  <36.389767, 37.070427, 30.705786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621067, 37.020821, 30.665308>,  <37.006569, 36.938141, 30.597845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621067, 37.020821, 30.665308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053183, 0.768380, -0.637780,
		-0.261422, -0.605696, -0.751526,
		-0.963758, 0.206698, 0.168659,
		36.331940, 37.082829, 30.715906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782013, 37.024731, 29.933647>,  <37.006569, 36.938141, 30.597845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782013, 37.024731, 29.933647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532684, 37.205574, 30.188856>,  <36.383087, 37.314079, 30.341982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532684, 37.205574, 30.188856>,  <36.782013, 37.024731, 29.933647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532684, 37.205574, 30.188856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249325, 0.658429, -0.710147,
		-0.741155, -0.601722, -0.297689,
		-0.623318, 0.452108, 0.638023,
		36.345688, 37.341206, 30.380262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180229, 37.114071, 29.539968>,  <36.782013, 37.024731, 29.933647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180229, 37.114071, 29.539968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188847, 37.382648, 29.836264>,  <36.194016, 37.543797, 30.014042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188847, 37.382648, 29.836264>,  <36.180229, 37.114071, 29.539968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188847, 37.382648, 29.836264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115645, 0.737612, -0.665248,
		-0.993057, -0.071332, 0.093539,
		0.021542, 0.671446, 0.740740,
		36.195309, 37.584084, 30.058485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561203, 37.496181, 29.402292>,  <36.180229, 37.114071, 29.539968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561203, 37.496181, 29.402292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775459, 37.719212, 29.655970>,  <35.904015, 37.853031, 29.808176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775459, 37.719212, 29.655970>,  <35.561203, 37.496181, 29.402292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775459, 37.719212, 29.655970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235299, 0.819821, -0.522043,
		-0.811001, 0.130404, 0.570327,
		0.535642, 0.557574, 0.634191,
		35.936153, 37.886482, 29.846228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159317, 38.102566, 29.575829>,  <35.561203, 37.496181, 29.402292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159317, 38.102566, 29.575829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553024, 38.159771, 29.617331>,  <35.789249, 38.194096, 29.642231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553024, 38.159771, 29.617331>,  <35.159317, 38.102566, 29.575829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553024, 38.159771, 29.617331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051055, 0.792381, -0.607886,
		-0.169151, 0.593025, 0.787216,
		0.984267, 0.143016, 0.103755,
		35.848305, 38.202675, 29.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198544, 38.804588, 29.533943>,  <35.159317, 38.102566, 29.575829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198544, 38.804588, 29.533943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575184, 38.690475, 29.462397>,  <35.801170, 38.622009, 29.419468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575184, 38.690475, 29.462397>,  <35.198544, 38.804588, 29.533943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575184, 38.690475, 29.462397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082546, 0.710565, -0.698773,
		0.326444, 0.643204, 0.692621,
		0.941605, -0.285283, -0.178866,
		35.857666, 38.604889, 29.408737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556015, 39.432655, 29.518202>,  <35.198544, 38.804588, 29.533943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556015, 39.432655, 29.518202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819447, 39.187019, 29.344233>,  <35.977505, 39.039639, 29.239851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819447, 39.187019, 29.344233>,  <35.556015, 39.432655, 29.518202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819447, 39.187019, 29.344233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288185, 0.739724, -0.608077,
		0.695139, 0.275131, 0.664142,
		0.658582, -0.614094, -0.434923,
		36.017021, 39.002792, 29.213757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268517, 39.834248, 29.548267>,  <35.556015, 39.432655, 29.518202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268517, 39.834248, 29.548267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251225, 39.566235, 29.251839>,  <36.240849, 39.405426, 29.073982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251225, 39.566235, 29.251839>,  <36.268517, 39.834248, 29.548267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251225, 39.566235, 29.251839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230142, 0.715137, -0.660011,
		0.972196, -0.199086, 0.123285,
		-0.043233, -0.670033, -0.741071,
		36.238255, 39.365223, 29.029518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631405, 40.173801, 29.013927>,  <36.268517, 39.834248, 29.548267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631405, 40.173801, 29.013927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471256, 39.874542, 28.802277>,  <36.375168, 39.694988, 28.675285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471256, 39.874542, 28.802277>,  <36.631405, 40.173801, 29.013927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471256, 39.874542, 28.802277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096083, 0.608522, -0.787699,
		0.911300, -0.264535, -0.315521,
		-0.400375, -0.748146, -0.529129,
		36.351143, 39.650097, 28.643538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978725, 40.213402, 28.506273>,  <36.631405, 40.173801, 29.013927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978725, 40.213402, 28.506273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689526, 39.980225, 28.357979>,  <36.516006, 39.840317, 28.269003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689526, 39.980225, 28.357979>,  <36.978725, 40.213402, 28.506273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689526, 39.980225, 28.357979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234547, 0.297638, -0.925419,
		0.649813, -0.756033, -0.078464,
		-0.723001, -0.582946, -0.370734,
		36.472626, 39.805340, 28.246759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207211, 40.011929, 27.835075>,  <36.978725, 40.213402, 28.506273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207211, 40.011929, 27.835075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811970, 39.950527, 27.831470>,  <36.574825, 39.913685, 27.829308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811970, 39.950527, 27.831470>,  <37.207211, 40.011929, 27.835075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811970, 39.950527, 27.831470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041521, 0.322779, -0.945563,
		0.148058, -0.933943, -0.325314,
		-0.988107, -0.153505, -0.009012,
		36.515537, 39.904476, 27.828766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043140, 39.576607, 27.183487>,  <37.207211, 40.011929, 27.835075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043140, 39.576607, 27.183487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698967, 39.740761, 27.304308>,  <36.492462, 39.839252, 27.376801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698967, 39.740761, 27.304308>,  <37.043140, 39.576607, 27.183487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698967, 39.740761, 27.304308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260572, 0.155042, -0.952924,
		-0.437898, -0.898635, -0.026468,
		-0.860435, 0.410386, 0.302051,
		36.440838, 39.863876, 27.394924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578270, 39.318409, 26.715666>,  <37.043140, 39.576607, 27.183487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578270, 39.318409, 26.715666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433594, 39.659630, 26.866121>,  <36.346790, 39.864365, 26.956394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433594, 39.659630, 26.866121>,  <36.578270, 39.318409, 26.715666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433594, 39.659630, 26.866121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314261, 0.268286, -0.910638,
		-0.877737, -0.447572, 0.171046,
		-0.361687, 0.853054, 0.376139,
		36.325089, 39.915546, 26.978964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036678, 39.447754, 26.319227>,  <36.578270, 39.318409, 26.715666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036678, 39.447754, 26.319227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031948, 39.802246, 26.504469>,  <36.029110, 40.014942, 26.615614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031948, 39.802246, 26.504469>,  <36.036678, 39.447754, 26.319227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031948, 39.802246, 26.504469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358502, 0.428586, -0.829331,
		-0.933454, -0.175833, 0.312644,
		-0.011829, 0.886226, 0.463102,
		36.028400, 40.068115, 26.643400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287006, 39.709839, 26.277962>,  <36.036678, 39.447754, 26.319227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287006, 39.709839, 26.277962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565754, 39.995007, 26.309240>,  <35.733002, 40.166107, 26.328007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565754, 39.995007, 26.309240>,  <35.287006, 39.709839, 26.277962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565754, 39.995007, 26.309240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476626, 0.541832, -0.692276,
		-0.535906, 0.445158, 0.717384,
		0.696874, 0.712919, 0.078197,
		35.774815, 40.208881, 26.332699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905838, 40.335205, 26.214687>,  <35.287006, 39.709839, 26.277962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905838, 40.335205, 26.214687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272640, 40.483963, 26.157007>,  <35.492722, 40.573215, 26.122398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272640, 40.483963, 26.157007>,  <34.905838, 40.335205, 26.214687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272640, 40.483963, 26.157007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371103, 0.662934, -0.650231,
		-0.146221, 0.649780, 0.745926,
		0.917007, 0.371893, -0.144201,
		35.547741, 40.595531, 26.113747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875668, 41.030857, 26.296917>,  <34.905838, 40.335205, 26.214687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875668, 41.030857, 26.296917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187653, 40.969913, 26.054117>,  <35.374844, 40.933346, 25.908438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187653, 40.969913, 26.054117>,  <34.875668, 41.030857, 26.296917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187653, 40.969913, 26.054117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482361, 0.471607, -0.738183,
		0.398733, 0.868547, 0.294344,
		0.779961, -0.152358, -0.606999,
		35.421642, 40.924206, 25.872017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929554, 41.634758, 25.906952>,  <34.875668, 41.030857, 26.296917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929554, 41.634758, 25.906952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117691, 41.348473, 25.700443>,  <35.230572, 41.176701, 25.576538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117691, 41.348473, 25.700443>,  <34.929554, 41.634758, 25.906952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117691, 41.348473, 25.700443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474969, 0.287753, -0.831627,
		0.743763, 0.636362, -0.204597,
		0.470342, -0.715710, -0.516273,
		35.258793, 41.133759, 25.545561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987801, 41.939449, 25.232777>,  <34.929554, 41.634758, 25.906952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987801, 41.939449, 25.232777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008934, 41.542603, 25.187338>,  <35.021614, 41.304493, 25.160074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008934, 41.542603, 25.187338>,  <34.987801, 41.939449, 25.232777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008934, 41.542603, 25.187338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404112, 0.082781, -0.910956,
		0.913182, 0.094038, -0.396554,
		0.052838, -0.992121, -0.113596,
		35.024784, 41.244965, 25.153259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121719, 41.879608, 24.477711>,  <34.987801, 41.939449, 25.232777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121719, 41.879608, 24.477711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056232, 41.497849, 24.577572>,  <35.016941, 41.268795, 24.637489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056232, 41.497849, 24.577572>,  <35.121719, 41.879608, 24.477711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056232, 41.497849, 24.577572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425978, -0.159867, -0.890497,
		0.889797, -0.252139, -0.380378,
		-0.163719, -0.954395, 0.249655,
		35.007118, 41.211529, 24.652468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447906, 41.528713, 23.957918>,  <35.121719, 41.879608, 24.477711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447906, 41.528713, 23.957918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177277, 41.286537, 24.125580>,  <35.014900, 41.141232, 24.226177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177277, 41.286537, 24.125580>,  <35.447906, 41.528713, 23.957918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177277, 41.286537, 24.125580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340280, -0.247736, -0.907103,
		0.653039, -0.756350, -0.038409,
		-0.676572, -0.605443, 0.419152,
		34.974304, 41.104904, 24.251326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416134, 40.812752, 23.617033>,  <35.447906, 41.528713, 23.957918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416134, 40.812752, 23.617033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071445, 40.846889, 23.817097>,  <34.864632, 40.867371, 23.937136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071445, 40.846889, 23.817097>,  <35.416134, 40.812752, 23.617033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071445, 40.846889, 23.817097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489752, -0.397541, -0.775954,
		0.132612, -0.913607, 0.384365,
		-0.861717, 0.085343, 0.500160,
		34.812931, 40.872494, 23.967144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076748, 40.177891, 23.482197>,  <35.416134, 40.812752, 23.617033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076748, 40.177891, 23.482197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791172, 40.439510, 23.582205>,  <34.619827, 40.596481, 23.642210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791172, 40.439510, 23.582205>,  <35.076748, 40.177891, 23.482197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791172, 40.439510, 23.582205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556238, -0.312872, -0.769877,
		-0.425315, -0.688714, 0.587180,
		-0.713938, 0.654052, 0.250019,
		34.576992, 40.635727, 23.657211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480698, 39.802631, 23.420717>,  <35.076748, 40.177891, 23.482197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480698, 39.802631, 23.420717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377705, 40.186775, 23.377979>,  <34.315910, 40.417263, 23.352337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377705, 40.186775, 23.377979>,  <34.480698, 39.802631, 23.420717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377705, 40.186775, 23.377979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504329, -0.227878, -0.832900,
		-0.824230, -0.160571, 0.543011,
		-0.257480, 0.960358, -0.106844,
		34.300461, 40.474884, 23.345926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831417, 39.768127, 23.495071>,  <34.480698, 39.802631, 23.420717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831417, 39.768127, 23.495071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908939, 40.095589, 23.278831>,  <33.955452, 40.292065, 23.149088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908939, 40.095589, 23.278831>,  <33.831417, 39.768127, 23.495071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908939, 40.095589, 23.278831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743709, -0.236766, -0.625172,
		-0.639793, 0.523212, 0.562951,
		0.193810, 0.818652, -0.540599,
		33.967083, 40.341183, 23.116652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095840, 40.130878, 23.360706>,  <33.831417, 39.768127, 23.495071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095840, 40.130878, 23.360706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376392, 40.231640, 23.093988>,  <33.544724, 40.292095, 22.933958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376392, 40.231640, 23.093988>,  <33.095840, 40.130878, 23.360706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376392, 40.231640, 23.093988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635850, -0.201647, -0.745006,
		-0.322123, 0.946512, 0.018739,
		0.701379, 0.251899, -0.666795,
		33.586807, 40.307209, 22.893950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686272, 40.091103, 22.868763>,  <33.095840, 40.130878, 23.360706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686272, 40.091103, 22.868763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039680, 40.153404, 22.692070>,  <33.251728, 40.190784, 22.586054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039680, 40.153404, 22.692070>,  <32.686272, 40.091103, 22.868763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039680, 40.153404, 22.692070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373965, -0.333275, -0.865493,
		-0.282018, 0.929876, -0.236212,
		0.883525, 0.155749, -0.441731,
		33.304737, 40.200130, 22.559551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526997, 40.475964, 22.267752>,  <32.686272, 40.091103, 22.868763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526997, 40.475964, 22.267752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885620, 40.328537, 22.169493>,  <33.100796, 40.240082, 22.110538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885620, 40.328537, 22.169493>,  <32.526997, 40.475964, 22.267752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885620, 40.328537, 22.169493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362208, -0.290885, -0.885546,
		0.254925, 0.882920, -0.394292,
		0.896560, -0.368563, -0.245646,
		33.154587, 40.217968, 22.095798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569061, 40.813412, 21.696115>,  <32.526997, 40.475964, 22.267752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569061, 40.813412, 21.696115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846684, 40.528919, 21.651524>,  <33.013256, 40.358223, 21.624769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846684, 40.528919, 21.651524>,  <32.569061, 40.813412, 21.696115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846684, 40.528919, 21.651524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322774, -0.169014, -0.931263,
		0.643504, 0.682335, -0.346874,
		0.694060, -0.711234, -0.111478,
		33.054901, 40.315548, 21.618080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851532, 40.854038, 21.019632>,  <32.569061, 40.813412, 21.696115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851532, 40.854038, 21.019632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942398, 40.477039, 21.117693>,  <32.996918, 40.250839, 21.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942398, 40.477039, 21.117693>,  <32.851532, 40.854038, 21.019632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942398, 40.477039, 21.117693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226771, -0.296008, -0.927876,
		0.947085, 0.155190, -0.280974,
		0.227168, -0.942494, 0.245152,
		33.010548, 40.194290, 21.191238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270813, 40.478413, 20.536806>,  <32.851532, 40.854038, 21.019632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270813, 40.478413, 20.536806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102032, 40.171246, 20.729576>,  <33.000763, 39.986946, 20.845238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102032, 40.171246, 20.729576>,  <33.270813, 40.478413, 20.536806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102032, 40.171246, 20.729576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099507, -0.489124, -0.866519,
		0.901140, -0.413587, 0.129975,
		-0.421955, -0.767922, 0.481924,
		32.975445, 39.940868, 20.874153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511993, 39.908001, 20.330008>,  <33.270813, 40.478413, 20.536806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511993, 39.908001, 20.330008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178314, 39.745968, 20.479685>,  <32.978107, 39.648750, 20.569492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178314, 39.745968, 20.479685>,  <33.511993, 39.908001, 20.330008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178314, 39.745968, 20.479685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077873, -0.585222, -0.807125,
		0.545936, -0.702443, 0.456648,
		-0.834200, -0.405078, 0.374195,
		32.928055, 39.624443, 20.591944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605526, 39.300446, 20.111559>,  <33.511993, 39.908001, 20.330008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605526, 39.300446, 20.111559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219845, 39.328541, 20.213837>,  <32.988438, 39.345398, 20.275204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219845, 39.328541, 20.213837>,  <33.605526, 39.300446, 20.111559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219845, 39.328541, 20.213837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252737, -0.535198, -0.806032,
		0.080232, -0.841801, 0.533791,
		-0.964203, 0.070239, 0.255694,
		32.930584, 39.349613, 20.290545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353580, 39.318058, 19.403996>,  <33.605526, 39.300446, 20.111559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353580, 39.318058, 19.403996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618763, 39.109337, 19.189257>,  <33.777874, 38.984104, 19.060413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618763, 39.109337, 19.189257>,  <33.353580, 39.318058, 19.403996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618763, 39.109337, 19.189257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579684, -0.095993, 0.809167,
		-0.473760, -0.847647, 0.238842,
		0.662961, -0.521804, -0.536845,
		33.817650, 38.952797, 19.028202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323956, 38.561348, 19.656612>,  <33.353580, 39.318058, 19.403996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323956, 38.561348, 19.656612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669491, 38.662659, 19.482422>,  <33.876812, 38.723446, 19.377907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669491, 38.662659, 19.482422>,  <33.323956, 38.561348, 19.656612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669491, 38.662659, 19.482422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489470, -0.217428, 0.844479,
		0.119203, -0.942643, -0.311793,
		0.863835, 0.253278, -0.435478,
		33.928642, 38.738644, 19.351778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875793, 38.051777, 19.833735>,  <33.323956, 38.561348, 19.656612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875793, 38.051777, 19.833735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084850, 38.372608, 19.718132>,  <34.210285, 38.565105, 19.648771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084850, 38.372608, 19.718132>,  <33.875793, 38.051777, 19.833735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084850, 38.372608, 19.718132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584613, -0.090425, 0.806258,
		0.620546, -0.590337, -0.516163,
		0.522638, 0.802076, -0.289005,
		34.241642, 38.613232, 19.631430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588547, 37.937767, 19.953503>,  <33.875793, 38.051777, 19.833735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588547, 37.937767, 19.953503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598419, 38.336376, 19.921648>,  <34.604343, 38.575542, 19.902534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598419, 38.336376, 19.921648>,  <34.588547, 37.937767, 19.953503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598419, 38.336376, 19.921648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576975, 0.050854, 0.815177,
		0.816389, -0.066071, -0.573711,
		0.024684, 0.996518, -0.079638,
		34.605824, 38.635330, 19.897757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310406, 38.141487, 19.944828>,  <34.588547, 37.937767, 19.953503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310406, 38.141487, 19.944828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113213, 38.472950, 20.050875>,  <34.994896, 38.671829, 20.114502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113213, 38.472950, 20.050875>,  <35.310406, 38.141487, 19.944828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113213, 38.472950, 20.050875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544113, 0.055873, 0.837149,
		0.678900, 0.556955, -0.478430,
		-0.492986, 0.828661, 0.265115,
		34.965317, 38.721550, 20.130409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842995, 38.668564, 19.917255>,  <35.310406, 38.141487, 19.944828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842995, 38.668564, 19.917255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543594, 38.782990, 20.156559>,  <35.363953, 38.851643, 20.300140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543594, 38.782990, 20.156559>,  <35.842995, 38.668564, 19.917255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543594, 38.782990, 20.156559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632130, 0.035174, 0.774064,
		0.200387, 0.957565, -0.207156,
		-0.748503, 0.286062, 0.598257,
		35.319042, 38.868809, 20.336037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969643, 39.376083, 20.122786>,  <35.842995, 38.668564, 19.917255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969643, 39.376083, 20.122786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714603, 39.237255, 20.397888>,  <35.561581, 39.153957, 20.562950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714603, 39.237255, 20.397888>,  <35.969643, 39.376083, 20.122786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714603, 39.237255, 20.397888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703119, 0.102619, 0.703629,
		-0.314786, 0.932207, 0.178603,
		-0.637600, -0.347071, 0.687755,
		35.523323, 39.133133, 20.604216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983238, 39.863712, 20.765812>,  <35.969643, 39.376083, 20.122786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983238, 39.863712, 20.765812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820786, 39.543167, 20.941481>,  <35.723316, 39.350838, 21.046883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820786, 39.543167, 20.941481>,  <35.983238, 39.863712, 20.765812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820786, 39.543167, 20.941481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744488, -0.011475, 0.667537,
		-0.529902, 0.598065, 0.601267,
		-0.406130, -0.801365, 0.439172,
		35.698948, 39.302757, 21.073233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925556, 40.076096, 21.562674>,  <35.983238, 39.863712, 20.765812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925556, 40.076096, 21.562674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894356, 39.678535, 21.531479>,  <35.875637, 39.439999, 21.512762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894356, 39.678535, 21.531479>,  <35.925556, 40.076096, 21.562674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894356, 39.678535, 21.531479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553905, -0.108243, 0.825514,
		-0.828918, 0.021192, 0.558968,
		-0.077998, -0.993899, -0.077986,
		35.870956, 39.380367, 21.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771893, 39.830559, 22.287994>,  <35.925556, 40.076096, 21.562674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771893, 39.830559, 22.287994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923710, 39.515358, 22.094090>,  <36.014801, 39.326237, 21.977747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923710, 39.515358, 22.094090>,  <35.771893, 39.830559, 22.287994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923710, 39.515358, 22.094090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317938, -0.380965, 0.868206,
		-0.868827, -0.483649, 0.105942,
		0.379547, -0.788003, -0.484763,
		36.037575, 39.278957, 21.948660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572548, 39.391956, 22.756147>,  <35.771893, 39.830559, 22.287994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572548, 39.391956, 22.756147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832161, 39.221451, 22.504099>,  <35.987930, 39.119148, 22.352869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832161, 39.221451, 22.504099>,  <35.572548, 39.391956, 22.756147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832161, 39.221451, 22.504099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556358, -0.298963, 0.775298,
		-0.518862, -0.853770, 0.043116,
		0.649036, -0.426261, -0.630122,
		36.026871, 39.093571, 22.315062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666363, 38.656815, 22.892893>,  <35.572548, 39.391956, 22.756147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666363, 38.656815, 22.892893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987453, 38.788960, 22.694304>,  <36.180107, 38.868248, 22.575150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987453, 38.788960, 22.694304>,  <35.666363, 38.656815, 22.892893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987453, 38.788960, 22.694304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577415, -0.222481, 0.785553,
		0.149063, -0.917257, -0.369349,
		0.802728, 0.330365, -0.496475,
		36.228271, 38.888069, 22.545361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121044, 38.175945, 22.951303>,  <35.666363, 38.656815, 22.892893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121044, 38.175945, 22.951303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379238, 38.467201, 22.859066>,  <36.534153, 38.641953, 22.803724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379238, 38.467201, 22.859066>,  <36.121044, 38.175945, 22.951303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379238, 38.467201, 22.859066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626882, -0.332597, 0.704555,
		0.436317, -0.599331, -0.671140,
		0.645481, 0.728135, -0.230593,
		36.572884, 38.685642, 22.789888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870327, 37.812286, 23.042681>,  <36.121044, 38.175945, 22.951303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870327, 37.812286, 23.042681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891968, 38.211674, 23.047258>,  <36.904953, 38.451305, 23.050005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891968, 38.211674, 23.047258>,  <36.870327, 37.812286, 23.042681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891968, 38.211674, 23.047258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576463, -0.040592, 0.816114,
		0.815330, -0.037558, -0.577777,
		0.054104, 0.998470, 0.011445,
		36.908199, 38.511215, 23.050692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617008, 37.949135, 23.142956>,  <36.870327, 37.812286, 23.042681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617008, 37.949135, 23.142956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402580, 38.271694, 23.242830>,  <37.273922, 38.465229, 23.302755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402580, 38.271694, 23.242830>,  <37.617008, 37.949135, 23.142956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402580, 38.271694, 23.242830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519969, 0.082411, 0.850200,
		0.665025, 0.585598, -0.463482,
		-0.536072, 0.806401, 0.249687,
		37.241760, 38.513615, 23.317736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029987, 38.368790, 23.276058>,  <37.617008, 37.949135, 23.142956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029987, 38.368790, 23.276058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703678, 38.480831, 23.478466>,  <37.507893, 38.548058, 23.599911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703678, 38.480831, 23.478466>,  <38.029987, 38.368790, 23.276058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703678, 38.480831, 23.478466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555109, 0.133545, 0.820987,
		0.162387, 0.950635, -0.264432,
		-0.815772, 0.280106, 0.506020,
		37.458946, 38.564861, 23.630272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214985, 38.851849, 23.745098>,  <38.029987, 38.368790, 23.276058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214985, 38.851849, 23.745098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865250, 38.767994, 23.920181>,  <37.655407, 38.717682, 24.025230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865250, 38.767994, 23.920181>,  <38.214985, 38.851849, 23.745098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865250, 38.767994, 23.920181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415787, 0.141601, 0.898371,
		-0.250311, 0.967472, -0.036644,
		-0.874338, -0.209636, 0.437706,
		37.602947, 38.705105, 24.051493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084820, 39.366364, 24.249636>,  <38.214985, 38.851849, 23.745098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084820, 39.366364, 24.249636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847366, 39.067291, 24.368683>,  <37.704895, 38.887848, 24.440111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847366, 39.067291, 24.368683>,  <38.084820, 39.366364, 24.249636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847366, 39.067291, 24.368683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420219, 0.027397, 0.907009,
		-0.686304, 0.663497, 0.297924,
		-0.593636, -0.747677, 0.297617,
		37.669277, 38.842987, 24.457968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845123, 39.531513, 25.019768>,  <38.084820, 39.366364, 24.249636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845123, 39.531513, 25.019768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758999, 39.143097, 24.978365>,  <37.707325, 38.910046, 24.953524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758999, 39.143097, 24.978365>,  <37.845123, 39.531513, 25.019768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758999, 39.143097, 24.978365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037626, -0.114162, 0.992749,
		-0.975820, 0.209858, 0.061118,
		-0.215314, -0.971044, -0.103506,
		37.694405, 38.851784, 24.947313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330647, 39.422707, 25.497053>,  <37.845123, 39.531513, 25.019768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330647, 39.422707, 25.497053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467529, 39.051792, 25.436340>,  <37.549660, 38.829243, 25.399912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467529, 39.051792, 25.436340>,  <37.330647, 39.422707, 25.497053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467529, 39.051792, 25.436340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238821, -0.242067, 0.940409,
		-0.908768, -0.285564, -0.304292,
		0.342206, -0.927285, -0.151783,
		37.570190, 38.773605, 25.390806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873859, 39.080856, 25.840641>,  <37.330647, 39.422707, 25.497053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873859, 39.080856, 25.840641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205383, 38.858891, 25.811964>,  <37.404297, 38.725712, 25.794758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205383, 38.858891, 25.811964>,  <36.873859, 39.080856, 25.840641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205383, 38.858891, 25.811964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090068, -0.258775, 0.961729,
		-0.552234, -0.790633, -0.264455,
		0.828809, -0.554918, -0.071694,
		37.454025, 38.692413, 25.790457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751480, 38.448265, 26.117052>,  <36.873859, 39.080856, 25.840641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751480, 38.448265, 26.117052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151455, 38.452785, 26.117495>,  <37.391441, 38.455498, 26.117760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151455, 38.452785, 26.117495>,  <36.751480, 38.448265, 26.117052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151455, 38.452785, 26.117495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004002, -0.441972, 0.897020,
		0.010623, -0.896958, -0.441989,
		0.999936, 0.011298, 0.001105,
		37.451435, 38.456173, 26.117826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929996, 37.832367, 26.544230>,  <36.751480, 38.448265, 26.117052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929996, 37.832367, 26.544230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281513, 38.023003, 26.534504>,  <37.492424, 38.137383, 26.528669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281513, 38.023003, 26.534504>,  <36.929996, 37.832367, 26.544230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281513, 38.023003, 26.534504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214074, -0.348178, 0.912658,
		0.426495, -0.807241, -0.408000,
		0.878792, 0.476586, -0.024314,
		37.545151, 38.165977, 26.527210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410507, 37.356720, 26.842787>,  <36.929996, 37.832367, 26.544230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410507, 37.356720, 26.842787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626705, 37.692844, 26.859495>,  <37.756424, 37.894520, 26.869520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626705, 37.692844, 26.859495>,  <37.410507, 37.356720, 26.842787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626705, 37.692844, 26.859495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282502, -0.228026, 0.931771,
		0.792500, -0.491819, -0.360636,
		0.540497, 0.840308, 0.041770,
		37.788853, 37.944939, 26.872026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080017, 37.229000, 27.063736>,  <37.410507, 37.356720, 26.842787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080017, 37.229000, 27.063736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040745, 37.620651, 27.134924>,  <38.017181, 37.855640, 27.177637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040745, 37.620651, 27.134924>,  <38.080017, 37.229000, 27.063736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040745, 37.620651, 27.134924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513293, -0.103386, 0.851964,
		0.852579, 0.174997, -0.492428,
		-0.098181, 0.979126, 0.177970,
		38.011292, 37.914391, 27.188314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765240, 37.590755, 27.114737>,  <38.080017, 37.229000, 27.063736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765240, 37.590755, 27.114737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481209, 37.768864, 27.332918>,  <38.310791, 37.875729, 27.463827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481209, 37.768864, 27.332918>,  <38.765240, 37.590755, 27.114737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481209, 37.768864, 27.332918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490159, -0.243550, 0.836915,
		0.505502, 0.861635, -0.045316,
		-0.710079, 0.445274, 0.545453,
		38.268185, 37.902447, 27.496553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103657, 37.861797, 27.595762>,  <38.765240, 37.590755, 27.114737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103657, 37.861797, 27.595762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728531, 37.890888, 27.731533>,  <38.503456, 37.908340, 27.812996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728531, 37.890888, 27.731533>,  <39.103657, 37.861797, 27.595762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728531, 37.890888, 27.731533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334132, -0.075960, 0.939461,
		0.094104, 0.994455, 0.046937,
		-0.937817, 0.072724, 0.339427,
		38.447186, 37.912704, 27.833361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161526, 38.247288, 28.276960>,  <39.103657, 37.861797, 27.595762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161526, 38.247288, 28.276960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800011, 38.076859, 28.293125>,  <38.583103, 37.974602, 28.302824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800011, 38.076859, 28.293125>,  <39.161526, 38.247288, 28.276960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800011, 38.076859, 28.293125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154604, -0.236970, 0.959137,
		-0.399083, 0.873103, 0.280042,
		-0.903787, -0.426071, 0.040414,
		38.528873, 37.949036, 28.305250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765995, 38.467587, 28.858118>,  <39.161526, 38.247288, 28.276960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765995, 38.467587, 28.858118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632790, 38.106655, 28.748644>,  <38.552868, 37.890095, 28.682959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632790, 38.106655, 28.748644>,  <38.765995, 38.467587, 28.858118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632790, 38.106655, 28.748644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235607, -0.360672, 0.902444,
		-0.913014, 0.236040, 0.332703,
		-0.333009, -0.902331, -0.273686,
		38.532887, 37.835957, 28.666538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449371, 38.196365, 29.457333>,  <38.765995, 38.467587, 28.858118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449371, 38.196365, 29.457333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507572, 37.866055, 29.239370>,  <38.542492, 37.667870, 29.108593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507572, 37.866055, 29.239370>,  <38.449371, 38.196365, 29.457333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507572, 37.866055, 29.239370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189089, -0.517404, 0.834589,
		-0.971121, -0.224468, 0.080863,
		0.145500, -0.825777, -0.544906,
		38.551224, 37.618320, 29.075899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223652, 37.736542, 29.937923>,  <38.449371, 38.196365, 29.457333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223652, 37.736542, 29.937923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408184, 37.509151, 29.665449>,  <38.518902, 37.372719, 29.501965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408184, 37.509151, 29.665449>,  <38.223652, 37.736542, 29.937923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408184, 37.509151, 29.665449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126733, -0.717674, 0.684750,
		-0.878131, -0.402225, -0.259040,
		0.461330, -0.568471, -0.681187,
		38.546581, 37.338612, 29.461094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838097, 37.133293, 29.896179>,  <38.223652, 37.736542, 29.937923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838097, 37.133293, 29.896179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212341, 37.078007, 29.766235>,  <38.436886, 37.044834, 29.688269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212341, 37.078007, 29.766235>,  <37.838097, 37.133293, 29.896179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212341, 37.078007, 29.766235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084129, -0.806383, 0.585380,
		-0.342868, -0.575016, -0.742831,
		0.935609, -0.138214, -0.324858,
		38.493023, 37.036541, 29.668777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828209, 36.463661, 29.790447>,  <37.838097, 37.133293, 29.896179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828209, 36.463661, 29.790447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208805, 36.565796, 29.859116>,  <38.437164, 36.627075, 29.900316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208805, 36.565796, 29.859116>,  <37.828209, 36.463661, 29.790447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208805, 36.565796, 29.859116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109102, -0.801691, 0.587698,
		0.287686, -0.540459, -0.790658,
		0.951490, 0.255335, 0.171670,
		38.494251, 36.642395, 29.910616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239269, 35.872902, 29.650719>,  <37.828209, 36.463661, 29.790447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239269, 35.872902, 29.650719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456947, 36.109295, 29.888908>,  <38.587555, 36.251133, 30.031822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456947, 36.109295, 29.888908>,  <38.239269, 35.872902, 29.650719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456947, 36.109295, 29.888908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079280, -0.742825, 0.664775,
		0.835205, -0.314557, -0.451094,
		0.544193, 0.590986, 0.595473,
		38.620205, 36.286591, 30.067551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660847, 35.381405, 29.935591>,  <38.239269, 35.872902, 29.650719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660847, 35.381405, 29.935591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690250, 35.705856, 30.167683>,  <38.707893, 35.900528, 30.306938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690250, 35.705856, 30.167683>,  <38.660847, 35.381405, 29.935591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690250, 35.705856, 30.167683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191042, -0.582481, 0.790075,
		0.978826, 0.052771, -0.197777,
		0.073508, 0.811130, 0.580229,
		38.712303, 35.949196, 30.341751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178852, 35.247253, 30.400448>,  <38.660847, 35.381405, 29.935591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178852, 35.247253, 30.400448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954227, 35.526337, 30.578373>,  <38.819454, 35.693787, 30.685127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954227, 35.526337, 30.578373>,  <39.178852, 35.247253, 30.400448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954227, 35.526337, 30.578373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063224, -0.572189, 0.817681,
		0.825018, 0.431053, 0.365429,
		-0.561559, 0.697706, 0.444813,
		38.785759, 35.735649, 30.711817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421394, 35.305782, 31.051310>,  <39.178852, 35.247253, 30.400448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421394, 35.305782, 31.051310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048012, 35.448814, 31.062574>,  <38.823982, 35.534634, 31.069334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048012, 35.448814, 31.062574>,  <39.421394, 35.305782, 31.051310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048012, 35.448814, 31.062574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198837, -0.581202, 0.789093,
		0.298536, 0.730984, 0.613627,
		-0.933456, 0.357585, 0.028163,
		38.767975, 35.556091, 31.071024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433861, 35.419262, 31.667160>,  <39.421394, 35.305782, 31.051310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433861, 35.419262, 31.667160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053101, 35.391842, 31.547703>,  <38.824646, 35.375389, 31.476028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053101, 35.391842, 31.547703>,  <39.433861, 35.419262, 31.667160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053101, 35.391842, 31.547703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229279, -0.487227, 0.842640,
		-0.203272, 0.870581, 0.448073,
		-0.951899, -0.068551, -0.298645,
		38.767532, 35.371277, 31.458109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204243, 35.296280, 32.337910>,  <39.433861, 35.419262, 31.667160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204243, 35.296280, 32.337910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881542, 35.213821, 32.116405>,  <38.687923, 35.164345, 31.983501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881542, 35.213821, 32.116405>,  <39.204243, 35.296280, 32.337910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881542, 35.213821, 32.116405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463958, -0.359359, 0.809694,
		-0.365917, 0.910145, 0.194269,
		-0.806751, -0.206148, -0.553765,
		38.639515, 35.151978, 31.950275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646343, 35.416790, 32.738846>,  <39.204243, 35.296280, 32.337910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646343, 35.416790, 32.738846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518940, 35.137775, 32.482098>,  <38.442497, 34.970367, 32.328049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518940, 35.137775, 32.482098>,  <38.646343, 35.416790, 32.738846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518940, 35.137775, 32.482098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496065, -0.454361, 0.739916,
		-0.807759, 0.554076, -0.201307,
		-0.318504, -0.697535, -0.641872,
		38.423389, 34.928516, 32.289536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819500, 35.457489, 33.500591>,  <38.646343, 35.416790, 32.738846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819500, 35.457489, 33.500591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179855, 35.626804, 33.539013>,  <39.396069, 35.728394, 33.562065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179855, 35.626804, 33.539013>,  <38.819500, 35.457489, 33.500591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179855, 35.626804, 33.539013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387164, 0.883701, -0.263014,
		-0.196213, 0.199758, 0.959998,
		0.900891, 0.423284, 0.096054,
		39.450123, 35.753788, 33.567829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836983, 35.992680, 33.991188>,  <38.819500, 35.457489, 33.500591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836983, 35.992680, 33.991188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161167, 36.083763, 33.775299>,  <39.355679, 36.138412, 33.645763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161167, 36.083763, 33.775299>,  <38.836983, 35.992680, 33.991188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161167, 36.083763, 33.775299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378076, 0.907098, -0.185019,
		0.447453, 0.354008, 0.821258,
		0.810459, 0.227710, -0.539726,
		39.404305, 36.152077, 33.613380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020138, 36.617313, 34.320839>,  <38.836983, 35.992680, 33.991188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020138, 36.617313, 34.320839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219181, 36.576180, 33.976326>,  <39.338608, 36.551498, 33.769619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219181, 36.576180, 33.976326>,  <39.020138, 36.617313, 34.320839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219181, 36.576180, 33.976326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010447, 0.993586, -0.112595,
		0.867338, 0.047030, 0.495493,
		0.497610, -0.102834, -0.861283,
		39.368465, 36.545330, 33.717941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695866, 36.872498, 34.252563>,  <39.020138, 36.617313, 34.320839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695866, 36.872498, 34.252563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576473, 36.888481, 33.871132>,  <39.504837, 36.898071, 33.642273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576473, 36.888481, 33.871132>,  <39.695866, 36.872498, 34.252563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576473, 36.888481, 33.871132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136696, 0.990612, -0.001278,
		0.944576, -0.130732, -0.301139,
		-0.298479, 0.039957, -0.953579,
		39.486931, 36.900467, 33.585056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085327, 37.317410, 33.973057>,  <39.695866, 36.872498, 34.252563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085327, 37.317410, 33.973057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754234, 37.335007, 33.749298>,  <39.555580, 37.345566, 33.615044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754234, 37.335007, 33.749298>,  <40.085327, 37.317410, 33.973057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754234, 37.335007, 33.749298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044345, 0.998932, 0.012939,
		0.559370, -0.014096, -0.828799,
		-0.827731, 0.043991, -0.559398,
		39.505917, 37.348206, 33.581478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157738, 37.939133, 33.489410>,  <40.085327, 37.317410, 33.973057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157738, 37.939133, 33.489410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768772, 37.848663, 33.466557>,  <39.535393, 37.794384, 33.452843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768772, 37.848663, 33.466557>,  <40.157738, 37.939133, 33.489410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768772, 37.848663, 33.466557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220010, 0.970597, -0.097660,
		0.077543, -0.082395, -0.993578,
		-0.972411, -0.226170, -0.057135,
		39.477051, 37.780811, 33.449417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100414, 38.055168, 32.780281>,  <40.157738, 37.939133, 33.489410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100414, 38.055168, 32.780281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752316, 38.056160, 32.977322>,  <39.543457, 38.056755, 33.095547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752316, 38.056160, 32.977322>,  <40.100414, 38.055168, 32.780281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752316, 38.056160, 32.977322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146362, 0.953527, -0.263371,
		-0.470365, -0.301297, -0.829444,
		-0.870250, 0.002482, 0.492604,
		39.491241, 38.056904, 33.125103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507637, 38.289696, 32.347775>,  <40.100414, 38.055168, 32.780281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507637, 38.289696, 32.347775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370701, 38.349522, 32.718811>,  <39.288540, 38.385418, 32.941433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370701, 38.349522, 32.718811>,  <39.507637, 38.289696, 32.347775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370701, 38.349522, 32.718811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232404, 0.943092, -0.237835,
		-0.910379, -0.296998, -0.288102,
		-0.342343, 0.149564, 0.927595,
		39.267998, 38.394390, 32.997089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171612, 38.842670, 32.245289>,  <39.507637, 38.289696, 32.347775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171612, 38.842670, 32.245289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179256, 38.832794, 32.645092>,  <39.183842, 38.826870, 32.884975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179256, 38.832794, 32.645092>,  <39.171612, 38.842670, 32.245289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179256, 38.832794, 32.645092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230756, 0.972596, 0.028437,
		-0.972824, -0.231187, 0.012889,
		0.019110, -0.024689, 0.999513,
		39.184990, 38.825386, 32.944946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482880, 39.035282, 32.488747>,  <39.171612, 38.842670, 32.245289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482880, 39.035282, 32.488747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764496, 39.094128, 32.766651>,  <38.933464, 39.129436, 32.933392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764496, 39.094128, 32.766651>,  <38.482880, 39.035282, 32.488747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764496, 39.094128, 32.766651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303918, 0.946610, 0.107535,
		-0.641844, -0.286858, 0.711160,
		0.704038, 0.147114, 0.694758,
		38.975708, 39.138264, 32.975079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051910, 39.419334, 32.924469>,  <38.482880, 39.035282, 32.488747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051910, 39.419334, 32.924469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080372, 39.374153, 33.320889>,  <38.097446, 39.347046, 33.558739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080372, 39.374153, 33.320889>,  <38.051910, 39.419334, 32.924469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080372, 39.374153, 33.320889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492818, 0.859849, 0.133381,
		-0.867219, -0.497897, 0.005513,
		0.071150, -0.112954, 0.991049,
		38.101719, 39.340267, 33.618202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409641, 39.521729, 33.328392>,  <38.051910, 39.419334, 32.924469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409641, 39.521729, 33.328392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745174, 39.614010, 33.525627>,  <37.946495, 39.669380, 33.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745174, 39.614010, 33.525627>,  <37.409641, 39.521729, 33.328392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745174, 39.614010, 33.525627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324685, 0.939050, 0.112982,
		-0.436970, -0.254871, 0.862611,
		0.838831, 0.230707, 0.493090,
		37.996822, 39.683224, 33.673553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250488, 40.004745, 33.883812>,  <37.409641, 39.521729, 33.328392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250488, 40.004745, 33.883812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604259, 40.039391, 33.700386>,  <37.816521, 40.060177, 33.590332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604259, 40.039391, 33.700386>,  <37.250488, 40.004745, 33.883812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604259, 40.039391, 33.700386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209259, 0.951905, -0.223801,
		0.417127, 0.293895, 0.860017,
		0.884429, 0.086613, -0.458566,
		37.869587, 40.065372, 33.562817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631371, 40.566563, 34.177055>,  <37.250488, 40.004745, 33.883812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631371, 40.566563, 34.177055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781860, 40.512096, 33.810467>,  <37.872154, 40.479416, 33.590515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781860, 40.512096, 33.810467>,  <37.631371, 40.566563, 34.177055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781860, 40.512096, 33.810467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140713, 0.969271, -0.201775,
		0.915780, 0.204872, 0.345507,
		0.376228, -0.136164, -0.916467,
		37.894730, 40.471249, 33.535526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006947, 41.206680, 34.082558>,  <37.631371, 40.566563, 34.177055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006947, 41.206680, 34.082558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931580, 41.027756, 33.732834>,  <37.886360, 40.920403, 33.522999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931580, 41.027756, 33.732834>,  <38.006947, 41.206680, 34.082558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931580, 41.027756, 33.732834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252501, 0.882389, -0.397031,
		0.949074, 0.145954, -0.279207,
		-0.188421, -0.447312, -0.874305,
		37.875053, 40.893562, 33.470543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278275, 41.621441, 33.481670>,  <38.006947, 41.206680, 34.082558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278275, 41.621441, 33.481670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958462, 41.411797, 33.364323>,  <37.766575, 41.286011, 33.293915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958462, 41.411797, 33.364323>,  <38.278275, 41.621441, 33.481670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958462, 41.411797, 33.364323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377147, 0.818218, -0.433912,
		0.467455, -0.236283, -0.851855,
		-0.799529, -0.524108, -0.293367,
		37.718605, 41.254562, 33.276314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241531, 41.733326, 32.758129>,  <38.278275, 41.621441, 33.481670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241531, 41.733326, 32.758129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877342, 41.617268, 32.876011>,  <37.658829, 41.547630, 32.946739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877342, 41.617268, 32.876011>,  <38.241531, 41.733326, 32.758129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877342, 41.617268, 32.876011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400187, 0.797890, -0.450800,
		-0.104343, -0.528379, -0.842572,
		-0.910474, -0.290149, 0.294705,
		37.604198, 41.530224, 32.964424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793839, 41.831200, 32.220638>,  <38.241531, 41.733326, 32.758129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793839, 41.831200, 32.220638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538956, 41.817303, 32.528603>,  <37.386024, 41.808964, 32.713379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538956, 41.817303, 32.528603>,  <37.793839, 41.831200, 32.220638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538956, 41.817303, 32.528603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540011, 0.732874, -0.413864,
		-0.549866, -0.679476, -0.485757,
		-0.637210, -0.034744, 0.769907,
		37.347794, 41.806881, 32.759575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097012, 41.762642, 31.991625>,  <37.793839, 41.831200, 32.220638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097012, 41.762642, 31.991625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066166, 41.917740, 32.359039>,  <37.047661, 42.010799, 32.579487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066166, 41.917740, 32.359039>,  <37.097012, 41.762642, 31.991625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066166, 41.917740, 32.359039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480259, 0.792908, -0.375032,
		-0.873731, -0.470054, 0.125077,
		-0.077111, 0.387746, 0.918535,
		37.043034, 42.034065, 32.634602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332035, 42.020142, 32.222744>,  <37.097012, 41.762642, 31.991625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332035, 42.020142, 32.222744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670437, 42.199181, 32.338634>,  <36.873478, 42.306602, 32.408169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670437, 42.199181, 32.338634>,  <36.332035, 42.020142, 32.222744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670437, 42.199181, 32.338634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288028, 0.840935, -0.458114,
		-0.448688, 0.304117, 0.840352,
		0.846002, 0.447595, 0.289724,
		36.924236, 42.333458, 32.425552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081028, 42.590099, 32.413616>,  <36.332035, 42.020142, 32.222744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081028, 42.590099, 32.413616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468117, 42.660038, 32.341015>,  <36.700371, 42.702000, 32.297455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468117, 42.660038, 32.341015>,  <36.081028, 42.590099, 32.413616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468117, 42.660038, 32.341015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248522, 0.781647, -0.572071,
		0.041844, 0.598712, 0.799871,
		0.967722, 0.174848, -0.181500,
		36.758434, 42.712494, 32.286564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378269, 43.298084, 32.582584>,  <36.081028, 42.590099, 32.413616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378269, 43.298084, 32.582584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577847, 43.133846, 32.277309>,  <36.697594, 43.035301, 32.094143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577847, 43.133846, 32.277309>,  <36.378269, 43.298084, 32.582584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577847, 43.133846, 32.277309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354614, 0.706812, -0.612099,
		0.790760, 0.576043, 0.207058,
		0.498946, -0.410598, -0.763192,
		36.727531, 43.010666, 32.048351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811596, 43.767056, 32.308819>,  <36.378269, 43.298084, 32.582584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811596, 43.767056, 32.308819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673325, 43.490280, 32.055290>,  <36.590363, 43.324215, 31.903173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673325, 43.490280, 32.055290>,  <36.811596, 43.767056, 32.308819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673325, 43.490280, 32.055290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505001, 0.706482, -0.495840,
		0.790873, 0.148677, -0.593646,
		-0.345681, -0.691938, -0.633819,
		36.569622, 43.282700, 31.865145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360413, 43.622345, 32.724953>,  <36.811596, 43.767056, 32.308819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360413, 43.622345, 32.724953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437904, 43.732227, 33.101677>,  <37.484402, 43.798157, 33.327709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437904, 43.732227, 33.101677>,  <37.360413, 43.622345, 32.724953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437904, 43.732227, 33.101677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946140, -0.306147, -0.105327,
		0.259397, 0.911487, -0.319223,
		0.193734, 0.274708, 0.941808,
		37.496025, 43.814640, 33.384220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641956, 43.058319, 33.038685>,  <37.360413, 43.622345, 32.724953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641956, 43.058319, 33.038685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294155, 42.948353, 32.874542>,  <37.085476, 42.882374, 32.776058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294155, 42.948353, 32.874542>,  <37.641956, 43.058319, 33.038685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294155, 42.948353, 32.874542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092649, -0.725270, 0.682203,
		-0.485166, 0.631194, 0.605151,
		-0.869500, -0.274915, -0.410355,
		37.033306, 42.865879, 32.751434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179348, 42.804184, 33.520592>,  <37.641956, 43.058319, 33.038685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179348, 42.804184, 33.520592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107788, 42.603016, 33.182346>,  <37.064850, 42.482315, 32.979401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107788, 42.603016, 33.182346>,  <37.179348, 42.804184, 33.520592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107788, 42.603016, 33.182346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025761, -0.861581, 0.506966,
		-0.983529, 0.068915, 0.167096,
		-0.178904, -0.502920, -0.845615,
		37.054115, 42.452141, 32.928661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840134, 42.268814, 33.863827>,  <37.179348, 42.804184, 33.520592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840134, 42.268814, 33.863827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883297, 42.200054, 33.472153>,  <36.909195, 42.158798, 33.237148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883297, 42.200054, 33.472153>,  <36.840134, 42.268814, 33.863827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883297, 42.200054, 33.472153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113347, -0.980642, 0.159669,
		-0.987678, 0.093759, -0.125306,
		0.107910, -0.171904, -0.979186,
		36.915668, 42.148483, 33.178398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474159, 41.682255, 33.739216>,  <36.840134, 42.268814, 33.863827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474159, 41.682255, 33.739216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724148, 41.700661, 33.427502>,  <36.874142, 41.711704, 33.240471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724148, 41.700661, 33.427502>,  <36.474159, 41.682255, 33.739216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724148, 41.700661, 33.427502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277803, -0.946023, 0.166934,
		-0.729544, -0.320818, -0.604021,
		0.624972, 0.046013, -0.779290,
		36.911640, 41.714466, 33.193714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393421, 41.087265, 33.306564>,  <36.474159, 41.682255, 33.739216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393421, 41.087265, 33.306564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766964, 41.206718, 33.227848>,  <36.991089, 41.278389, 33.180618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766964, 41.206718, 33.227848>,  <36.393421, 41.087265, 33.306564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766964, 41.206718, 33.227848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326998, -0.935811, 0.131640,
		-0.144850, -0.187285, -0.971567,
		0.933858, 0.298632, -0.196794,
		37.047123, 41.296307, 33.168808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650497, 40.827900, 32.729382>,  <36.393421, 41.087265, 33.306564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650497, 40.827900, 32.729382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941853, 40.884266, 32.997589>,  <37.116665, 40.918083, 33.158512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941853, 40.884266, 32.997589>,  <36.650497, 40.827900, 32.729382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941853, 40.884266, 32.997589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144733, -0.988184, 0.050447,
		0.669702, 0.060301, -0.740178,
		0.728390, 0.140913, 0.670516,
		37.160370, 40.926540, 33.198746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125725, 40.353889, 32.591995>,  <36.650497, 40.827900, 32.729382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125725, 40.353889, 32.591995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205536, 40.439877, 32.974403>,  <37.253422, 40.491467, 33.203850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205536, 40.439877, 32.974403>,  <37.125725, 40.353889, 32.591995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205536, 40.439877, 32.974403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438429, -0.892120, 0.109094,
		0.876339, 0.397381, -0.272247,
		0.199525, 0.214964, 0.956023,
		37.265392, 40.504364, 33.261211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831367, 40.452896, 32.270374>,  <37.125725, 40.353889, 32.591995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831367, 40.452896, 32.270374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935505, 40.607136, 32.624443>,  <37.997986, 40.699680, 32.836884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935505, 40.607136, 32.624443>,  <37.831367, 40.452896, 32.270374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935505, 40.607136, 32.624443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342636, -0.894018, 0.288672,
		0.902674, 0.228140, -0.364871,
		0.260344, 0.385595, 0.885176,
		38.013607, 40.722813, 32.889996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510925, 40.305820, 32.443821>,  <37.831367, 40.452896, 32.270374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510925, 40.305820, 32.443821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359241, 40.363686, 32.809395>,  <38.268230, 40.398403, 33.028740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359241, 40.363686, 32.809395>,  <38.510925, 40.305820, 32.443821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359241, 40.363686, 32.809395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472576, -0.818898, 0.325697,
		0.795533, 0.555410, 0.242172,
		-0.379209, 0.144658, 0.913933,
		38.245480, 40.407082, 33.083576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003315, 40.204586, 32.957119>,  <38.510925, 40.305820, 32.443821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003315, 40.204586, 32.957119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656181, 40.156319, 33.149910>,  <38.447903, 40.127357, 33.265587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656181, 40.156319, 33.149910>,  <39.003315, 40.204586, 32.957119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656181, 40.156319, 33.149910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342992, -0.847330, 0.405447,
		0.359473, 0.517176, 0.776729,
		-0.867834, -0.120664, 0.481980,
		38.395832, 40.120121, 33.294502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963131, 40.416206, 33.706795>,  <39.003315, 40.204586, 32.957119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963131, 40.416206, 33.706795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728249, 40.107418, 33.609428>,  <38.587318, 39.922146, 33.551010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728249, 40.107418, 33.609428>,  <38.963131, 40.416206, 33.706795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728249, 40.107418, 33.609428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555716, -0.603137, 0.572193,
		-0.588528, 0.200726, 0.783163,
		-0.587209, -0.771968, -0.243416,
		38.552086, 39.875828, 33.536404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599926, 40.138870, 33.500309>,  <38.963131, 40.416206, 33.706795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599926, 40.138870, 33.500309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958244, 40.029057, 33.640125>,  <40.173237, 39.963169, 33.724014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958244, 40.029057, 33.640125>,  <39.599926, 40.138870, 33.500309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958244, 40.029057, 33.640125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042930, 0.836199, 0.546743,
		-0.442381, -0.474767, 0.760852,
		0.895799, -0.274532, 0.349537,
		40.226986, 39.946697, 33.744987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842045, 39.617786, 34.043945>,  <39.599926, 40.138870, 33.500309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842045, 39.617786, 34.043945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932758, 39.887806, 34.324764>,  <39.987186, 40.049820, 34.493256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932758, 39.887806, 34.324764>,  <39.842045, 39.617786, 34.043945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932758, 39.887806, 34.324764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961289, -0.039311, -0.272725,
		-0.156506, 0.736722, -0.657835,
		0.226783, 0.675052, 0.702050,
		40.000793, 40.090321, 34.535378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433689, 38.987923, 34.115402>,  <39.842045, 39.617786, 34.043945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433689, 38.987923, 34.115402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247639, 38.912029, 33.769531>,  <39.136009, 38.866493, 33.562008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247639, 38.912029, 33.769531>,  <39.433689, 38.987923, 34.115402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247639, 38.912029, 33.769531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067539, -0.981520, 0.179044,
		-0.882665, 0.024879, 0.469344,
		-0.465125, -0.189735, -0.864673,
		39.108101, 38.855110, 33.510128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828983, 38.567131, 34.196522>,  <39.433689, 38.987923, 34.115402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828983, 38.567131, 34.196522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939949, 38.521820, 33.814903>,  <39.006527, 38.494633, 33.585930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939949, 38.521820, 33.814903>,  <38.828983, 38.567131, 34.196522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939949, 38.521820, 33.814903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103809, -0.990745, 0.087450,
		-0.955125, 0.074779, -0.286607,
		0.277415, -0.113278, -0.954049,
		39.023174, 38.487835, 33.528690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289165, 38.185600, 33.733818>,  <38.828983, 38.567131, 34.196522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289165, 38.185600, 33.733818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657349, 38.147522, 33.582188>,  <38.878258, 38.124676, 33.491207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657349, 38.147522, 33.582188>,  <38.289165, 38.185600, 33.733818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657349, 38.147522, 33.582188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200263, -0.947767, -0.248258,
		-0.335645, 0.304425, -0.891441,
		0.920455, -0.095196, -0.379078,
		38.933487, 38.118961, 33.468464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177147, 37.630539, 33.291252>,  <38.289165, 38.185600, 33.733818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177147, 37.630539, 33.291252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573681, 37.677780, 33.314232>,  <38.811604, 37.706123, 33.328018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573681, 37.677780, 33.314232>,  <38.177147, 37.630539, 33.291252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573681, 37.677780, 33.314232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128932, -0.958440, -0.254499,
		0.025004, 0.259702, -0.965365,
		0.991338, 0.118103, 0.057449,
		38.871082, 37.713211, 33.331467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497269, 37.347332, 32.654739>,  <38.177147, 37.630539, 33.291252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497269, 37.347332, 32.654739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781868, 37.349876, 32.935802>,  <38.952629, 37.351402, 33.104439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781868, 37.349876, 32.935802>,  <38.497269, 37.347332, 32.654739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781868, 37.349876, 32.935802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153765, -0.977134, -0.146855,
		0.685658, 0.212531, -0.696207,
		0.711498, 0.006360, 0.702659,
		38.995319, 37.351784, 33.146599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870613, 36.781837, 32.450874>,  <38.497269, 37.347332, 32.654739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870613, 36.781837, 32.450874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097225, 36.852062, 32.772923>,  <39.233192, 36.894196, 32.966152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097225, 36.852062, 32.772923>,  <38.870613, 36.781837, 32.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097225, 36.852062, 32.772923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295585, -0.955316, 0.000323,
		0.769205, 0.237799, -0.593107,
		0.566528, 0.175562, 0.805124,
		39.267185, 36.904732, 33.014462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632893, 36.432335, 32.403500>,  <38.870613, 36.781837, 32.450874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632893, 36.432335, 32.403500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555782, 36.475006, 32.793671>,  <39.509514, 36.500607, 33.027775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555782, 36.475006, 32.793671>,  <39.632893, 36.432335, 32.403500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555782, 36.475006, 32.793671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380943, -0.907966, 0.174586,
		0.904278, 0.405238, 0.134400,
		-0.192780, 0.106676, 0.975426,
		39.497948, 36.507008, 33.086300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320194, 36.222027, 32.715412>,  <39.632893, 36.432335, 32.403500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320194, 36.222027, 32.715412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043705, 36.221653, 33.004467>,  <39.877811, 36.221428, 33.177902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043705, 36.221653, 33.004467>,  <40.320194, 36.222027, 32.715412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043705, 36.221653, 33.004467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476665, -0.752192, 0.454969,
		0.543138, 0.658943, 0.520380,
		-0.691225, -0.000936, 0.722640,
		39.836338, 36.221371, 33.221260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711533, 36.211552, 33.255108>,  <40.320194, 36.222027, 32.715412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711533, 36.211552, 33.255108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347862, 36.064087, 33.332565>,  <40.129662, 35.975609, 33.379040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.347862, 36.064087, 33.332565>,  <40.711533, 36.211552, 33.255108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347862, 36.064087, 33.332565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416311, -0.793979, 0.443039,
		-0.009584, 0.483413, 0.875340,
		-0.909172, -0.368659, 0.193641,
		40.075111, 35.953487, 33.390659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604908, 36.085224, 33.971859>,  <40.711533, 36.211552, 33.255108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604908, 36.085224, 33.971859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321362, 35.840675, 33.831158>,  <40.151234, 35.693947, 33.746738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321362, 35.840675, 33.831158>,  <40.604908, 36.085224, 33.971859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321362, 35.840675, 33.831158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284915, -0.704390, 0.650122,
		-0.645239, 0.360630, 0.673508,
		-0.708865, -0.611377, -0.351751,
		40.108704, 35.657261, 33.725632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161823, 35.967590, 34.549706>,  <40.604908, 36.085224, 33.971859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161823, 35.967590, 34.549706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173668, 35.659595, 34.294758>,  <40.180775, 35.474800, 34.141788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173668, 35.659595, 34.294758>,  <40.161823, 35.967590, 34.549706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173668, 35.659595, 34.294758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404094, -0.573999, 0.712203,
		-0.914238, -0.278644, 0.294153,
		0.029607, -0.769989, -0.637370,
		40.182549, 35.428600, 34.103546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894527, 35.316231, 34.806160>,  <40.161823, 35.967590, 34.549706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894527, 35.316231, 34.806160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204292, 35.264690, 34.558392>,  <40.390152, 35.233768, 34.409729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204292, 35.264690, 34.558392>,  <39.894527, 35.316231, 34.806160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204292, 35.264690, 34.558392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477110, -0.524056, 0.705501,
		-0.415515, -0.841881, -0.344360,
		0.774412, -0.128849, -0.619422,
		40.436615, 35.226036, 34.372566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229462, 34.656780, 34.963585>,  <39.894527, 35.316231, 34.806160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229462, 34.656780, 34.963585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513081, 34.883369, 34.795605>,  <40.683250, 35.019321, 34.694817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513081, 34.883369, 34.795605>,  <40.229462, 34.656780, 34.963585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513081, 34.883369, 34.795605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643015, -0.274936, 0.714802,
		0.289455, -0.776864, -0.559194,
		0.709047, 0.566473, -0.419954,
		40.725796, 35.053310, 34.669617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160652, 34.542171, 35.625698>,  <40.229462, 34.656780, 34.963585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160652, 34.542171, 35.625698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345100, 34.702641, 35.942287>,  <40.455769, 34.798923, 36.132240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345100, 34.702641, 35.942287>,  <40.160652, 34.542171, 35.625698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345100, 34.702641, 35.942287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290059, -0.774812, 0.561723,
		0.838591, -0.488594, -0.240915,
		0.461119, 0.401176, 0.791472,
		40.483437, 34.822994, 36.179729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775436, 34.110771, 35.980774>,  <40.160652, 34.542171, 35.625698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775436, 34.110771, 35.980774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631634, 34.366776, 36.252407>,  <40.545353, 34.520378, 36.415386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631634, 34.366776, 36.252407>,  <40.775436, 34.110771, 35.980774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631634, 34.366776, 36.252407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293167, -0.768350, 0.568939,
		0.885895, 0.005452, 0.463854,
		-0.359504, 0.640007, 0.679079,
		40.523781, 34.558777, 36.456131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823574, 33.861626, 36.711365>,  <40.775436, 34.110771, 35.980774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823574, 33.861626, 36.711365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522675, 34.125179, 36.710995>,  <40.342136, 34.283310, 36.710773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522675, 34.125179, 36.710995>,  <40.823574, 33.861626, 36.711365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522675, 34.125179, 36.710995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411183, -0.468347, 0.782036,
		0.514837, 0.588662, 0.623233,
		-0.752244, 0.658884, -0.000925,
		40.297001, 34.322845, 36.710716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419434, 34.219013, 36.471916>,  <40.823574, 33.861626, 36.711365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419434, 34.219013, 36.471916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577595, 34.125740, 36.827282>,  <41.672493, 34.069775, 37.040501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577595, 34.125740, 36.827282>,  <41.419434, 34.219013, 36.471916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577595, 34.125740, 36.827282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884413, -0.164425, -0.436781,
		0.247928, 0.958431, 0.141217,
		0.395405, -0.233185, 0.888414,
		41.696217, 34.055786, 37.093807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957726, 34.812435, 36.782505>,  <41.419434, 34.219013, 36.471916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957726, 34.812435, 36.782505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016266, 34.418381, 36.818470>,  <42.051392, 34.181946, 36.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016266, 34.418381, 36.818470>,  <41.957726, 34.812435, 36.782505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016266, 34.418381, 36.818470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846972, 0.077826, -0.525911,
		0.511097, 0.153123, 0.845774,
		0.146352, -0.985138, 0.089914,
		42.060173, 34.122841, 36.845444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689362, 34.551769, 37.010906>,  <41.957726, 34.812435, 36.782505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689362, 34.551769, 37.010906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528107, 34.316299, 36.730637>,  <42.431355, 34.175018, 36.562473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528107, 34.316299, 36.730637>,  <42.689362, 34.551769, 37.010906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528107, 34.316299, 36.730637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645075, 0.360290, -0.673847,
		0.649120, -0.723642, 0.234490,
		-0.403139, -0.588671, -0.700674,
		42.407166, 34.139698, 36.520435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133591, 34.533115, 36.621719>,  <42.689362, 34.551769, 37.010906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133591, 34.533115, 36.621719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894142, 34.343483, 36.363445>,  <42.750473, 34.229706, 36.208481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894142, 34.343483, 36.363445>,  <43.133591, 34.533115, 36.621719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894142, 34.343483, 36.363445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674848, 0.135788, -0.725357,
		0.431552, -0.869949, 0.238645,
		-0.598618, -0.474078, -0.645683,
		42.714558, 34.201260, 36.169739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495415, 33.880997, 36.302586>,  <43.133591, 34.533115, 36.621719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495415, 33.880997, 36.302586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264267, 34.057377, 36.027882>,  <43.125580, 34.163204, 35.863060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264267, 34.057377, 36.027882>,  <43.495415, 33.880997, 36.302586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264267, 34.057377, 36.027882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783292, 0.063348, -0.618418,
		-0.229186, -0.895295, -0.381997,
		-0.577865, 0.440948, -0.686758,
		43.090908, 34.189659, 35.821854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692902, 33.558437, 35.658062>,  <43.495415, 33.880997, 36.302586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692902, 33.558437, 35.658062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527531, 33.911118, 35.567131>,  <43.428307, 34.122726, 35.512573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527531, 33.911118, 35.567131>,  <43.692902, 33.558437, 35.658062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527531, 33.911118, 35.567131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760043, 0.196690, -0.619393,
		-0.501408, -0.428853, -0.751449,
		-0.413431, 0.881702, -0.227325,
		43.403500, 34.175629, 35.498932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377110, 33.778893, 35.252636>,  <43.692902, 33.558437, 35.658062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377110, 33.778893, 35.252636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221104, 34.146008, 35.222832>,  <44.127499, 34.366276, 35.204948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221104, 34.146008, 35.222832>,  <44.377110, 33.778893, 35.252636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221104, 34.146008, 35.222832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807567, 0.302054, -0.506555,
		-0.442405, -0.257737, -0.858982,
		-0.390017, 0.917788, -0.074509,
		44.104099, 34.421345, 35.200478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370243, 33.987118, 34.566181>,  <44.377110, 33.778893, 35.252636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370243, 33.987118, 34.566181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431717, 34.295601, 34.813282>,  <44.468601, 34.480690, 34.961544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.431717, 34.295601, 34.813282>,  <44.370243, 33.987118, 34.566181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.431717, 34.295601, 34.813282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918082, 0.119738, -0.377873,
		-0.365387, 0.625223, -0.689629,
		0.153681, 0.771206, 0.617756,
		44.477821, 34.526962, 34.998608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473831, 34.766239, 34.210403>,  <44.370243, 33.987118, 34.566181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473831, 34.766239, 34.210403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664192, 34.756119, 34.562057>,  <44.778408, 34.750046, 34.773048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664192, 34.756119, 34.562057>,  <44.473831, 34.766239, 34.210403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664192, 34.756119, 34.562057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843085, 0.297763, -0.447822,
		-0.250443, 0.954305, 0.163037,
		0.475905, -0.025300, 0.879133,
		44.806965, 34.748528, 34.825798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960316, 35.264484, 34.500546>,  <44.473831, 34.766239, 34.210403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960316, 35.264484, 34.500546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157455, 34.929192, 34.593899>,  <45.275742, 34.728016, 34.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157455, 34.929192, 34.593899>,  <44.960316, 35.264484, 34.500546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157455, 34.929192, 34.593899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831593, 0.374853, -0.409802,
		0.256024, 0.396051, 0.881814,
		0.492853, -0.838230, 0.233382,
		45.305313, 34.677723, 34.663914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635582, 35.358334, 34.957447>,  <44.960316, 35.264484, 34.500546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635582, 35.358334, 34.957447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660275, 35.036827, 34.720753>,  <45.675091, 34.843925, 34.578735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660275, 35.036827, 34.720753>,  <45.635582, 35.358334, 34.957447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660275, 35.036827, 34.720753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869568, 0.334336, -0.363416,
		0.489940, -0.492122, 0.719566,
		0.061732, -0.803763, -0.591738,
		45.678795, 34.795696, 34.543232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127773, 34.798271, 35.096645>,  <45.635582, 35.358334, 34.957447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127773, 34.798271, 35.096645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067272, 34.760559, 34.703049>,  <46.030972, 34.737930, 34.466892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067272, 34.760559, 34.703049>,  <46.127773, 34.798271, 35.096645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067272, 34.760559, 34.703049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937578, 0.301678, -0.173027,
		0.313161, -0.948736, 0.042768,
		-0.151255, -0.094284, -0.983988,
		46.021896, 34.732273, 34.407852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.659546, 35.047638, 34.561588>,  <46.127773, 34.798271, 35.096645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.659546, 35.047638, 34.561588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515339, 35.356598, 34.770748>,  <46.428814, 35.541973, 34.896244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515339, 35.356598, 34.770748>,  <46.659546, 35.047638, 34.561588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515339, 35.356598, 34.770748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122750, 0.595010, -0.794289,
		-0.924642, -0.222166, -0.309321,
		-0.360513, 0.772402, 0.522900,
		46.407185, 35.588318, 34.927620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.237988, 34.728035, 34.946232>,  <46.659546, 35.047638, 34.561588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.237988, 34.728035, 34.946232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553257, 34.934540, 34.812218>,  <47.742420, 35.058441, 34.731808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553257, 34.934540, 34.812218>,  <47.237988, 34.728035, 34.946232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553257, 34.934540, 34.812218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373836, -0.834041, -0.405736,
		-0.488899, 0.194543, -0.850370,
		0.788178, 0.516263, -0.335035,
		47.789711, 35.089420, 34.711708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.368279, 34.529205, 24.143648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015961, 34.464622, 24.321697>,  <32.804569, 34.425873, 24.428526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015961, 34.464622, 24.321697>,  <33.368279, 34.529205, 24.143648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015961, 34.464622, 24.321697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465387, -0.468476, 0.750963,
		0.087278, 0.868597, 0.487772,
		-0.880794, -0.161460, 0.445122,
		32.751724, 34.416183, 24.455235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478054, 34.705208, 24.898829>,  <33.368279, 34.529205, 24.143648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478054, 34.705208, 24.898829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.121849, 34.523296, 24.903919>,  <32.908127, 34.414150, 24.906973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.121849, 34.523296, 24.903919>,  <33.478054, 34.705208, 24.898829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121849, 34.523296, 24.903919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200652, -0.367492, 0.908123,
		-0.408318, 0.811250, 0.418509,
		-0.890514, -0.454778, 0.012725,
		32.854694, 34.386864, 24.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023300, 34.936382, 25.547771>,  <33.478054, 34.705208, 24.898829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023300, 34.936382, 25.547771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919815, 34.574177, 25.413242>,  <32.857723, 34.356853, 25.332525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919815, 34.574177, 25.413242>,  <33.023300, 34.936382, 25.547771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919815, 34.574177, 25.413242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158116, -0.383178, 0.910041,
		-0.952926, 0.182258, 0.242308,
		-0.258710, -0.905515, -0.336323,
		32.842201, 34.302521, 25.312346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588291, 34.692535, 26.073891>,  <33.023300, 34.936382, 25.547771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588291, 34.692535, 26.073891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720688, 34.374706, 25.870285>,  <32.800125, 34.184010, 25.748121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.720688, 34.374706, 25.870285>,  <32.588291, 34.692535, 26.073891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720688, 34.374706, 25.870285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121266, -0.499128, 0.858001,
		-0.935811, -0.345714, -0.068850,
		0.330988, -0.794577, -0.509013,
		32.819984, 34.136333, 25.717581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213821, 34.140877, 26.385099>,  <32.588291, 34.692535, 26.073891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213821, 34.140877, 26.385099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.521099, 33.989082, 26.178850>,  <32.705467, 33.898006, 26.055101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.521099, 33.989082, 26.178850>,  <32.213821, 34.140877, 26.385099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521099, 33.989082, 26.178850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313603, -0.479097, 0.819828,
		-0.558149, -0.791488, -0.249031,
		0.768194, -0.379490, -0.515621,
		32.751556, 33.875237, 26.024164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247303, 33.396561, 26.583485>,  <32.213821, 34.140877, 26.385099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247303, 33.396561, 26.583485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606880, 33.481144, 26.430027>,  <32.822628, 33.531895, 26.337952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606880, 33.481144, 26.430027>,  <32.247303, 33.396561, 26.583485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606880, 33.481144, 26.430027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437386, -0.384688, 0.812840,
		0.024300, -0.898499, -0.438303,
		0.898945, 0.211460, -0.383643,
		32.876564, 33.544582, 26.314934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566513, 32.748451, 26.557405>,  <32.247303, 33.396561, 26.583485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566513, 32.748451, 26.557405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.878773, 32.995991, 26.522495>,  <33.066128, 33.144516, 26.501549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.878773, 32.995991, 26.522495>,  <32.566513, 32.748451, 26.557405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878773, 32.995991, 26.522495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516694, -0.560507, 0.647193,
		0.351597, -0.550323, -0.757314,
		0.780645, 0.618851, -0.087277,
		33.112965, 33.181644, 26.496313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161285, 32.323189, 26.631393>,  <32.566513, 32.748451, 26.557405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161285, 32.323189, 26.631393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294724, 32.691452, 26.712486>,  <33.374786, 32.912411, 26.761141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294724, 32.691452, 26.712486>,  <33.161285, 32.323189, 26.631393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294724, 32.691452, 26.712486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506023, -0.356316, 0.785481,
		0.795397, -0.159444, -0.584740,
		0.333592, 0.920661, 0.202730,
		33.394802, 32.967651, 26.773306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753185, 32.175076, 26.929747>,  <33.161285, 32.323189, 26.631393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753185, 32.175076, 26.929747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719471, 32.562904, 27.021677>,  <33.699242, 32.795601, 27.076836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719471, 32.562904, 27.021677>,  <33.753185, 32.175076, 26.929747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719471, 32.562904, 27.021677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608629, -0.132530, 0.782309,
		0.788966, 0.205814, -0.578942,
		-0.084283, 0.969576, 0.229826,
		33.694187, 32.853779, 27.090624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409763, 32.436306, 27.158539>,  <33.753185, 32.175076, 26.929747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409763, 32.436306, 27.158539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151211, 32.700199, 27.311872>,  <33.996078, 32.858536, 27.403873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.151211, 32.700199, 27.311872>,  <34.409763, 32.436306, 27.158539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151211, 32.700199, 27.311872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589454, 0.112746, 0.799895,
		0.484500, 0.742992, -0.461761,
		-0.646377, 0.659736, 0.383334,
		33.957298, 32.898121, 27.426872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825890, 33.017605, 27.363848>,  <34.409763, 32.436306, 27.158539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825890, 33.017605, 27.363848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487213, 33.007763, 27.576452>,  <34.284008, 33.001858, 27.704016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487213, 33.007763, 27.576452>,  <34.825890, 33.017605, 27.363848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487213, 33.007763, 27.576452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527739, 0.088500, 0.844783,
		-0.067828, 0.995772, -0.061946,
		-0.846694, -0.024609, 0.531511,
		34.233204, 33.000381, 27.735905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906700, 33.562038, 27.839905>,  <34.825890, 33.017605, 27.363848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906700, 33.562038, 27.839905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667023, 33.277508, 27.986864>,  <34.523216, 33.106789, 28.075041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667023, 33.277508, 27.986864>,  <34.906700, 33.562038, 27.839905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667023, 33.277508, 27.986864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520352, 0.002739, 0.853948,
		-0.608440, 0.702858, 0.368497,
		-0.599195, -0.711324, 0.367400,
		34.487263, 33.064110, 28.097084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780128, 33.790089, 28.539394>,  <34.906700, 33.562038, 27.839905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780128, 33.790089, 28.539394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653122, 33.410835, 28.545425>,  <34.576920, 33.183285, 28.549044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653122, 33.410835, 28.545425>,  <34.780128, 33.790089, 28.539394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653122, 33.410835, 28.545425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112180, -0.021769, 0.993450,
		-0.941594, 0.317129, 0.113273,
		-0.317517, -0.948133, 0.015078,
		34.557865, 33.126396, 28.549950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337204, 33.796318, 29.054575>,  <34.780128, 33.790089, 28.539394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337204, 33.796318, 29.054575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416805, 33.405323, 29.026524>,  <34.464565, 33.170727, 29.009693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416805, 33.405323, 29.026524>,  <34.337204, 33.796318, 29.054575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416805, 33.405323, 29.026524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218300, -0.025546, 0.975547,
		-0.955375, -0.209450, 0.208301,
		0.199007, -0.977486, -0.070129,
		34.476509, 33.112076, 29.005486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993855, 33.479073, 29.558266>,  <34.337204, 33.796318, 29.054575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993855, 33.479073, 29.558266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286938, 33.227673, 29.453861>,  <34.462788, 33.076832, 29.391218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.286938, 33.227673, 29.453861>,  <33.993855, 33.479073, 29.558266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286938, 33.227673, 29.453861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220438, -0.143673, 0.964762,
		-0.643850, -0.764428, 0.033273,
		0.732710, -0.628497, -0.261013,
		34.506752, 33.039124, 29.375557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861557, 32.873718, 30.023130>,  <33.993855, 33.479073, 29.558266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861557, 32.873718, 30.023130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.229427, 32.863266, 29.866411>,  <34.450150, 32.856995, 29.772379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.229427, 32.863266, 29.866411>,  <33.861557, 32.873718, 30.023130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229427, 32.863266, 29.866411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362375, -0.327833, 0.872474,
		-0.151245, -0.944374, -0.292032,
		0.919679, -0.026132, -0.391800,
		34.505333, 32.855427, 29.748871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080677, 32.253750, 30.320280>,  <33.861557, 32.873718, 30.023130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080677, 32.253750, 30.320280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425934, 32.431953, 30.225193>,  <34.633087, 32.538876, 30.168140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.425934, 32.431953, 30.225193>,  <34.080677, 32.253750, 30.320280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425934, 32.431953, 30.225193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412140, -0.349524, 0.841411,
		0.291772, -0.824228, -0.485302,
		0.863139, 0.445512, -0.237716,
		34.684875, 32.565609, 30.153877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592747, 31.783058, 30.356993>,  <34.080677, 32.253750, 30.320280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592747, 31.783058, 30.356993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765530, 32.138760, 30.417179>,  <34.869198, 32.352180, 30.453291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.765530, 32.138760, 30.417179>,  <34.592747, 31.783058, 30.356993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765530, 32.138760, 30.417179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519889, -0.381832, 0.764146,
		0.736973, -0.251853, -0.627249,
		0.431957, 0.889255, 0.150464,
		34.895115, 32.405537, 30.462318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251152, 31.648012, 30.764772>,  <34.592747, 31.783058, 30.356993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251152, 31.648012, 30.764772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240395, 32.047867, 30.765404>,  <35.233940, 32.287781, 30.765783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.240395, 32.047867, 30.765404>,  <35.251152, 31.648012, 30.764772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240395, 32.047867, 30.765404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635635, 0.015883, 0.771826,
		0.771521, 0.021765, -0.635832,
		-0.026898, 0.999637, 0.001581,
		35.232327, 32.347759, 30.765879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989830, 31.838888, 30.856510>,  <35.251152, 31.648012, 30.764772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989830, 31.838888, 30.856510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757866, 32.144035, 30.970873>,  <35.618687, 32.327122, 31.039490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757866, 32.144035, 30.970873>,  <35.989830, 31.838888, 30.856510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757866, 32.144035, 30.970873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722134, 0.318880, 0.613871,
		0.377133, 0.562450, -0.735813,
		-0.579908, 0.762867, 0.285905,
		35.583893, 32.372894, 31.056644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411201, 32.459148, 30.743551>,  <35.989830, 31.838888, 30.856510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411201, 32.459148, 30.743551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152859, 32.491074, 31.047260>,  <35.997852, 32.510231, 31.229486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152859, 32.491074, 31.047260>,  <36.411201, 32.459148, 30.743551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152859, 32.491074, 31.047260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742107, 0.299182, 0.599806,
		-0.179287, 0.950852, -0.252461,
		-0.645859, 0.079816, 0.759273,
		35.959103, 32.515018, 31.275042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105507, 32.525219, 31.141249>,  <36.411201, 32.459148, 30.743551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105507, 32.525219, 31.141249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421871, 32.765644, 31.187193>,  <37.611691, 32.909897, 31.214760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421871, 32.765644, 31.187193>,  <37.105507, 32.525219, 31.141249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421871, 32.765644, 31.187193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001884, 0.190093, -0.981764,
		-0.611932, 0.776269, 0.151478,
		0.790908, 0.601058, 0.114862,
		37.659145, 32.945961, 31.221651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957836, 33.242630, 30.766554>,  <37.105507, 32.525219, 31.141249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957836, 33.242630, 30.766554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353249, 33.186005, 30.787565>,  <37.590496, 33.152031, 30.800173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353249, 33.186005, 30.787565>,  <36.957836, 33.242630, 30.766554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353249, 33.186005, 30.787565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074146, 0.152038, -0.985590,
		0.131533, 0.978185, 0.160791,
		0.988535, -0.141560, 0.052530,
		37.649811, 33.143536, 30.803324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196167, 33.693363, 30.358265>,  <36.957836, 33.242630, 30.766554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196167, 33.693363, 30.358265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514252, 33.451084, 30.369289>,  <37.705105, 33.305717, 30.375904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.514252, 33.451084, 30.369289>,  <37.196167, 33.693363, 30.358265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514252, 33.451084, 30.369289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056389, 0.028619, -0.997999,
		0.603698, 0.795179, 0.056913,
		0.795216, -0.605699, 0.027562,
		37.752815, 33.269375, 30.377558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733074, 34.034828, 29.982924>,  <37.196167, 33.693363, 30.358265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733074, 34.034828, 29.982924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808022, 33.642056, 29.972361>,  <37.852989, 33.406391, 29.966022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808022, 33.642056, 29.972361>,  <37.733074, 34.034828, 29.982924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808022, 33.642056, 29.972361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222721, 0.068652, -0.972462,
		0.956708, 0.176322, 0.231561,
		0.187364, -0.981935, -0.026409,
		37.864231, 33.347473, 29.964437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387016, 34.008991, 29.632265>,  <37.733074, 34.034828, 29.982924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387016, 34.008991, 29.632265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194881, 33.659603, 29.600454>,  <38.079601, 33.449970, 29.581367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194881, 33.659603, 29.600454>,  <38.387016, 34.008991, 29.632265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194881, 33.659603, 29.600454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187111, -0.013465, -0.982246,
		0.856891, -0.486693, 0.169904,
		-0.480341, -0.873469, -0.079528,
		38.050777, 33.397564, 29.576595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867126, 33.514526, 29.136412>,  <38.387016, 34.008991, 29.632265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867126, 33.514526, 29.136412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510059, 33.334400, 29.128908>,  <38.295818, 33.226322, 29.124407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510059, 33.334400, 29.128908>,  <38.867126, 33.514526, 29.136412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510059, 33.334400, 29.128908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069220, -0.095854, -0.992986,
		0.445362, -0.887708, 0.116737,
		-0.892671, -0.450318, -0.018757,
		38.242256, 33.199306, 29.123281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994614, 32.891758, 28.700804>,  <38.867126, 33.514526, 29.136412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994614, 32.891758, 28.700804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600937, 32.962444, 28.705515>,  <38.364731, 33.004856, 28.708342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600937, 32.962444, 28.705515>,  <38.994614, 32.891758, 28.700804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600937, 32.962444, 28.705515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010809, 0.126309, -0.991932,
		-0.176776, -0.976124, -0.126222,
		-0.984192, 0.176714, 0.011777,
		38.305679, 33.015457, 28.709047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828022, 32.634968, 28.130079>,  <38.994614, 32.891758, 28.700804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828022, 32.634968, 28.130079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526005, 32.874535, 28.236816>,  <38.344795, 33.018276, 28.300859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.526005, 32.874535, 28.236816>,  <38.828022, 32.634968, 28.130079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526005, 32.874535, 28.236816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236011, 0.131441, -0.962820,
		-0.611725, -0.789949, 0.042108,
		-0.755044, 0.598919, 0.266842,
		38.299492, 33.054211, 28.316870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271996, 32.382603, 27.780951>,  <38.828022, 32.634968, 28.130079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271996, 32.382603, 27.780951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191013, 32.761570, 27.880079>,  <38.142426, 32.988949, 27.939556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191013, 32.761570, 27.880079>,  <38.271996, 32.382603, 27.780951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191013, 32.761570, 27.880079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410109, 0.147776, -0.899985,
		-0.889282, -0.283839, 0.358626,
		-0.202454, 0.947416, 0.247819,
		38.130276, 33.045795, 27.954426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686508, 32.507629, 27.389639>,  <38.271996, 32.382603, 27.780951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686508, 32.507629, 27.389639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778954, 32.880901, 27.499743>,  <37.834419, 33.104862, 27.565805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778954, 32.880901, 27.499743>,  <37.686508, 32.507629, 27.389639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778954, 32.880901, 27.499743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249516, 0.330306, -0.910296,
		-0.940387, 0.141701, 0.309181,
		0.231115, 0.933176, 0.275259,
		37.848289, 33.160854, 27.582321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123653, 32.932098, 27.171497>,  <37.686508, 32.507629, 27.389639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123653, 32.932098, 27.171497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446354, 33.167706, 27.190302>,  <37.639973, 33.309071, 27.201584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446354, 33.167706, 27.190302>,  <37.123653, 32.932098, 27.171497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446354, 33.167706, 27.190302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214162, 0.365618, -0.905791,
		-0.550717, 0.720679, 0.421108,
		0.806750, 0.589020, 0.047010,
		37.688377, 33.344410, 27.204405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817116, 33.557667, 27.001181>,  <37.123653, 32.932098, 27.171497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817116, 33.557667, 27.001181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210670, 33.552296, 26.929861>,  <37.446804, 33.549072, 26.887070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210670, 33.552296, 26.929861>,  <36.817116, 33.557667, 27.001181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210670, 33.552296, 26.929861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158003, 0.401491, -0.902131,
		0.083698, 0.915764, 0.392900,
		0.983885, -0.013427, -0.178297,
		37.505836, 33.548267, 26.876371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961460, 34.174320, 26.942272>,  <36.817116, 33.557667, 27.001181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961460, 34.174320, 26.942272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262955, 33.994312, 26.750708>,  <37.443851, 33.886307, 26.635769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262955, 33.994312, 26.750708>,  <36.961460, 34.174320, 26.942272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262955, 33.994312, 26.750708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262292, 0.462181, -0.847108,
		0.602562, 0.764113, 0.230327,
		0.753739, -0.450022, -0.478913,
		37.489075, 33.859306, 26.607035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569138, 34.652882, 26.581261>,  <36.961460, 34.174320, 26.942272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569138, 34.652882, 26.581261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492912, 34.312759, 26.385033>,  <37.447178, 34.108685, 26.267296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492912, 34.312759, 26.385033>,  <37.569138, 34.652882, 26.581261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492912, 34.312759, 26.385033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426853, 0.521787, -0.738603,
		0.884014, 0.068649, -0.462391,
		-0.190565, -0.850309, -0.490570,
		37.435741, 34.057667, 26.237862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641315, 34.842251, 25.896955>,  <37.569138, 34.652882, 26.581261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641315, 34.842251, 25.896955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458458, 34.487637, 25.868490>,  <37.348743, 34.274868, 25.851412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458458, 34.487637, 25.868490>,  <37.641315, 34.842251, 25.896955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458458, 34.487637, 25.868490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447769, 0.298548, -0.842835,
		0.768453, -0.353433, -0.533446,
		-0.457146, -0.886541, -0.071164,
		37.321316, 34.221676, 25.847141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700436, 34.683685, 25.157970>,  <37.641315, 34.842251, 25.896955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700436, 34.683685, 25.157970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394436, 34.477291, 25.312134>,  <37.210835, 34.353455, 25.404633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394436, 34.477291, 25.312134>,  <37.700436, 34.683685, 25.157970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394436, 34.477291, 25.312134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545179, 0.200237, -0.814054,
		0.342863, -0.832868, -0.434484,
		-0.764999, -0.515981, 0.385408,
		37.164936, 34.322498, 25.427755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400799, 34.343460, 24.637915>,  <37.700436, 34.683685, 25.157970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400799, 34.343460, 24.637915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096474, 34.323708, 24.896749>,  <36.913879, 34.311855, 25.052052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.096474, 34.323708, 24.896749>,  <37.400799, 34.343460, 24.637915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096474, 34.323708, 24.896749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629401, 0.299161, -0.717187,
		-0.158168, -0.952924, -0.258687,
		-0.760813, -0.049382, 0.647089,
		36.868229, 34.308891, 25.090876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931820, 33.806854, 24.362032>,  <37.400799, 34.343460, 24.637915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931820, 33.806854, 24.362032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750076, 34.066067, 24.606531>,  <36.641029, 34.221592, 24.753231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.750076, 34.066067, 24.606531>,  <36.931820, 33.806854, 24.362032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750076, 34.066067, 24.606531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683958, 0.185860, -0.705448,
		-0.570756, -0.738591, 0.358777,
		-0.454355, 0.648028, 0.611246,
		36.613770, 34.260475, 24.789906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191315, 33.568607, 24.493265>,  <36.931820, 33.806854, 24.362032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191315, 33.568607, 24.493265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199635, 33.955368, 24.594982>,  <36.204624, 34.187424, 24.656012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199635, 33.955368, 24.594982>,  <36.191315, 33.568607, 24.493265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199635, 33.955368, 24.594982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857345, 0.148092, -0.492979,
		-0.514322, -0.207764, 0.832050,
		0.020797, 0.966903, 0.254292,
		36.205875, 34.245438, 24.671270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.486179, 33.667934, 24.518915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631424, 34.040024, 24.540192>,  <35.718571, 34.263279, 24.552958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631424, 34.040024, 24.540192>,  <35.486179, 33.667934, 24.518915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631424, 34.040024, 24.540192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715297, 0.314886, -0.623856,
		-0.597078, 0.188480, 0.779727,
		0.363109, 0.930227, 0.053192,
		35.740356, 34.319092, 24.556149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868999, 34.266674, 24.512222>,  <35.486179, 33.667934, 24.518915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868999, 34.266674, 24.512222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199581, 34.461502, 24.399267>,  <35.397930, 34.578400, 24.331495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199581, 34.461502, 24.399267>,  <34.868999, 34.266674, 24.512222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199581, 34.461502, 24.399267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535578, 0.525504, -0.661061,
		-0.173586, 0.697575, 0.695167,
		0.826452, 0.487067, -0.282386,
		35.447517, 34.607624, 24.314552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660686, 34.982452, 24.406429>,  <34.868999, 34.266674, 24.512222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660686, 34.982452, 24.406429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990273, 34.960545, 24.180832>,  <35.188023, 34.947399, 24.045473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990273, 34.960545, 24.180832>,  <34.660686, 34.982452, 24.406429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990273, 34.960545, 24.180832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452816, 0.534722, -0.713463,
		0.340655, 0.843251, 0.415790,
		0.823961, -0.054769, -0.563994,
		35.237461, 34.944115, 24.011633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806591, 35.683544, 23.955469>,  <34.660686, 34.982452, 24.406429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806591, 35.683544, 23.955469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967716, 35.371376, 23.764181>,  <35.064392, 35.184074, 23.649408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967716, 35.371376, 23.764181>,  <34.806591, 35.683544, 23.955469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967716, 35.371376, 23.764181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324816, 0.366587, -0.871842,
		0.855710, 0.506518, -0.105828,
		0.402808, -0.780419, -0.478218,
		35.088558, 35.137249, 23.620716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167126, 35.870258, 23.348160>,  <34.806591, 35.683544, 23.955469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167126, 35.870258, 23.348160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073952, 35.484241, 23.300112>,  <35.018047, 35.252632, 23.271282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073952, 35.484241, 23.300112>,  <35.167126, 35.870258, 23.348160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073952, 35.484241, 23.300112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516841, 0.227480, -0.825305,
		0.823781, -0.130160, -0.551763,
		-0.232937, -0.965045, -0.120122,
		35.004070, 35.194729, 23.264074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954048, 35.736088, 22.636747>,  <35.167126, 35.870258, 23.348160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954048, 35.736088, 22.636747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811451, 35.390949, 22.780085>,  <34.725895, 35.183865, 22.866087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811451, 35.390949, 22.780085>,  <34.954048, 35.736088, 22.636747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811451, 35.390949, 22.780085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514296, -0.138976, -0.846278,
		0.780010, -0.485983, -0.394216,
		-0.356490, -0.862848, 0.358341,
		34.704502, 35.132095, 22.887587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081345, 35.300175, 22.150242>,  <34.954048, 35.736088, 22.636747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081345, 35.300175, 22.150242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768253, 35.165802, 22.359808>,  <34.580399, 35.085178, 22.485548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768253, 35.165802, 22.359808>,  <35.081345, 35.300175, 22.150242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768253, 35.165802, 22.359808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506615, -0.145041, -0.849885,
		0.361497, -0.930650, -0.056663,
		-0.782727, -0.335937, 0.523913,
		34.533436, 35.065022, 22.516981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806973, 34.749771, 21.750204>,  <35.081345, 35.300175, 22.150242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806973, 34.749771, 21.750204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507504, 34.845665, 21.997433>,  <34.327820, 34.903202, 22.145769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507504, 34.845665, 21.997433>,  <34.806973, 34.749771, 21.750204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507504, 34.845665, 21.997433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661245, -0.203489, -0.722044,
		-0.047326, -0.949274, 0.310869,
		-0.748676, 0.239732, 0.618072,
		34.282902, 34.917583, 22.182854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291939, 34.238323, 21.624462>,  <34.806973, 34.749771, 21.750204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291939, 34.238323, 21.624462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110188, 34.550560, 21.796146>,  <34.001137, 34.737900, 21.899157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110188, 34.550560, 21.796146>,  <34.291939, 34.238323, 21.624462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110188, 34.550560, 21.796146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668185, 0.019991, -0.743727,
		-0.589126, -0.624724, 0.512495,
		-0.454378, 0.780590, 0.429208,
		33.973873, 34.784737, 21.924910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546253, 34.158989, 21.556274>,  <34.291939, 34.238323, 21.624462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546253, 34.158989, 21.556274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562798, 34.553379, 21.620960>,  <33.572723, 34.790012, 21.659771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562798, 34.553379, 21.620960>,  <33.546253, 34.158989, 21.556274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562798, 34.553379, 21.620960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654103, 0.149066, -0.741572,
		-0.755274, -0.075109, 0.651091,
		0.041357, 0.985971, 0.161715,
		33.575203, 34.849171, 21.669476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833313, 34.383812, 21.531565>,  <33.546253, 34.158989, 21.556274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833313, 34.383812, 21.531565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053204, 34.709366, 21.456320>,  <33.185139, 34.904697, 21.411173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.053204, 34.709366, 21.456320>,  <32.833313, 34.383812, 21.531565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053204, 34.709366, 21.456320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687104, 0.312493, -0.655924,
		-0.475065, 0.489832, 0.731012,
		0.549729, 0.813887, -0.188111,
		33.218121, 34.953533, 21.399887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270035, 34.990498, 21.420959>,  <32.833313, 34.383812, 21.531565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270035, 34.990498, 21.420959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611301, 35.125488, 21.261850>,  <32.816059, 35.206482, 21.166386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.611301, 35.125488, 21.261850>,  <32.270035, 34.990498, 21.420959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611301, 35.125488, 21.261850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521492, 0.533428, -0.665958,
		-0.012561, 0.775607, 0.631092,
		0.853163, 0.337474, -0.397773,
		32.867252, 35.226730, 21.142519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219223, 35.775852, 21.431829>,  <32.270035, 34.990498, 21.420959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219223, 35.775852, 21.431829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463249, 35.644897, 21.143208>,  <32.609665, 35.566326, 20.970034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463249, 35.644897, 21.143208>,  <32.219223, 35.775852, 21.431829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463249, 35.644897, 21.143208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444813, 0.612108, -0.653808,
		0.655716, 0.719822, 0.227800,
		0.610064, -0.327384, -0.721555,
		32.646267, 35.546680, 20.926741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391941, 36.356564, 20.991215>,  <32.219223, 35.775852, 21.431829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391941, 36.356564, 20.991215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543461, 36.065960, 20.761887>,  <32.634373, 35.891598, 20.624290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543461, 36.065960, 20.761887>,  <32.391941, 36.356564, 20.991215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543461, 36.065960, 20.761887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201043, 0.540095, -0.817238,
		0.903377, 0.424834, 0.058530,
		0.378803, -0.726507, -0.573320,
		32.657101, 35.848007, 20.589891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960350, 36.685299, 20.526207>,  <32.391941, 36.356564, 20.991215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960350, 36.685299, 20.526207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800228, 36.357079, 20.363016>,  <32.704155, 36.160145, 20.265100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800228, 36.357079, 20.363016>,  <32.960350, 36.685299, 20.526207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800228, 36.357079, 20.363016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352651, 0.548859, -0.757886,
		0.845811, -0.159509, -0.509079,
		-0.400302, -0.820555, -0.407980,
		32.680138, 36.110912, 20.240622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147335, 36.666080, 19.816036>,  <32.960350, 36.685299, 20.526207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147335, 36.666080, 19.816036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.825310, 36.428944, 19.824100>,  <32.632095, 36.286659, 19.828939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.825310, 36.428944, 19.824100>,  <33.147335, 36.666080, 19.816036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825310, 36.428944, 19.824100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393408, 0.508181, -0.766147,
		0.443959, -0.624731, -0.642348,
		-0.805065, -0.592843, 0.020162,
		32.583790, 36.251091, 19.830149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100185, 36.516041, 19.171791>,  <33.147335, 36.666080, 19.816036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100185, 36.516041, 19.171791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746620, 36.373753, 19.293222>,  <32.534481, 36.288380, 19.366081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746620, 36.373753, 19.293222>,  <33.100185, 36.516041, 19.171791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746620, 36.373753, 19.293222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461733, 0.560945, -0.687127,
		0.074132, -0.747534, -0.660074,
		-0.883916, -0.355716, 0.303577,
		32.481445, 36.267036, 19.384296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714787, 36.231411, 18.580715>,  <33.100185, 36.516041, 19.171791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714787, 36.231411, 18.580715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415340, 36.291588, 18.838997>,  <32.235672, 36.327694, 18.993967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415340, 36.291588, 18.838997>,  <32.714787, 36.231411, 18.580715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415340, 36.291588, 18.838997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580620, 0.321415, -0.748046,
		-0.320078, -0.934911, -0.153268,
		-0.748619, 0.150443, 0.645707,
		32.190754, 36.336720, 19.032709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129021, 35.843117, 18.316204>,  <32.714787, 36.231411, 18.580715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129021, 35.843117, 18.316204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.009968, 36.139347, 18.557192>,  <31.938536, 36.317085, 18.701784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.009968, 36.139347, 18.557192>,  <32.129021, 35.843117, 18.316204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009968, 36.139347, 18.557192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489823, 0.423214, -0.762210,
		-0.819445, -0.521959, 0.236789,
		-0.297630, 0.740574, 0.602468,
		31.920679, 36.361519, 18.737932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395330, 35.933228, 18.109015>,  <32.129021, 35.843117, 18.316204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395330, 35.933228, 18.109015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.502623, 36.264572, 18.305735>,  <31.566998, 36.463379, 18.423767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.502623, 36.264572, 18.305735>,  <31.395330, 35.933228, 18.109015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502623, 36.264572, 18.305735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456609, 0.558840, -0.692246,
		-0.848268, -0.038877, 0.528138,
		0.268232, 0.828363, 0.491798,
		31.583092, 36.513081, 18.453274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813461, 36.275242, 18.027716>,  <31.395330, 35.933228, 18.109015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813461, 36.275242, 18.027716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084244, 36.563923, 18.085501>,  <31.246714, 36.737133, 18.120171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084244, 36.563923, 18.085501>,  <30.813461, 36.275242, 18.027716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084244, 36.563923, 18.085501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439976, 0.554143, -0.706645,
		-0.590042, 0.414809, 0.692664,
		0.676958, 0.721706, 0.144462,
		31.287331, 36.780434, 18.128839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509022, 36.986797, 18.047874>,  <30.813461, 36.275242, 18.027716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509022, 36.986797, 18.047874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891802, 37.051552, 17.951508>,  <31.121469, 37.090405, 17.893688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.891802, 37.051552, 17.951508>,  <30.509022, 36.986797, 18.047874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891802, 37.051552, 17.951508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286773, 0.655494, -0.698634,
		0.044820, 0.737645, 0.673699,
		0.956950, 0.161886, -0.240916,
		31.178886, 37.100117, 17.879232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625504, 37.724251, 18.138586>,  <30.509022, 36.986797, 18.047874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625504, 37.724251, 18.138586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840025, 37.526615, 17.864870>,  <30.968737, 37.408031, 17.700642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840025, 37.526615, 17.864870>,  <30.625504, 37.724251, 18.138586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840025, 37.526615, 17.864870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306451, 0.641426, -0.703321,
		0.786427, 0.586894, 0.192583,
		0.536303, -0.494094, -0.684289,
		31.000916, 37.378387, 17.659584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991940, 38.260014, 18.301910>,  <30.625504, 37.724251, 18.138586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991940, 38.260014, 18.301910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.295185, 38.513496, 18.240355>,  <30.477133, 38.665585, 18.203421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.295185, 38.513496, 18.240355>,  <29.991940, 38.260014, 18.301910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295185, 38.513496, 18.240355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225657, -0.476329, -0.849818,
		-0.611835, 0.609532, -0.504111,
		0.758114, 0.633705, -0.153890,
		30.522619, 38.703609, 18.194187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093306, 38.962906, 18.364588>,  <29.991940, 38.260014, 18.301910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093306, 38.962906, 18.364588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754179, 38.802559, 18.503448>,  <29.550703, 38.706352, 18.586765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754179, 38.802559, 18.503448>,  <30.093306, 38.962906, 18.364588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754179, 38.802559, 18.503448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409690, -0.079497, 0.908754,
		-0.336693, 0.912680, 0.231630,
		-0.847816, -0.400868, 0.347150,
		29.499834, 38.682297, 18.607594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969896, 39.354294, 18.931789>,  <30.093306, 38.962906, 18.364588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969896, 39.354294, 18.931789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755627, 39.022049, 18.992624>,  <29.627066, 38.822701, 19.029125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755627, 39.022049, 18.992624>,  <29.969896, 39.354294, 18.931789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755627, 39.022049, 18.992624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398371, -0.089773, 0.912821,
		-0.744550, 0.549561, 0.378982,
		-0.535673, -0.830616, 0.152088,
		29.594925, 38.772865, 19.038250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700727, 39.367565, 19.584213>,  <29.969896, 39.354294, 18.931789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700727, 39.367565, 19.584213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685181, 38.975010, 19.508999>,  <29.675852, 38.739475, 19.463869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685181, 38.975010, 19.508999>,  <29.700727, 39.367565, 19.584213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685181, 38.975010, 19.508999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242580, -0.191818, 0.950979,
		-0.969352, -0.008651, 0.245522,
		-0.038869, -0.981392, -0.188038,
		29.673519, 38.680592, 19.452587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443708, 39.036091, 20.267694>,  <29.700727, 39.367565, 19.584213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443708, 39.036091, 20.267694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606005, 38.745350, 20.046043>,  <29.703382, 38.570904, 19.913052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.606005, 38.745350, 20.046043>,  <29.443708, 39.036091, 20.267694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606005, 38.745350, 20.046043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270282, -0.483743, 0.832431,
		-0.873110, -0.487523, 0.000180,
		0.405742, -0.726852, -0.554129,
		29.727728, 38.527294, 19.879805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230824, 38.412556, 20.525246>,  <29.443708, 39.036091, 20.267694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230824, 38.412556, 20.525246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568636, 38.324577, 20.329945>,  <29.771322, 38.271790, 20.212763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568636, 38.324577, 20.329945>,  <29.230824, 38.412556, 20.525246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568636, 38.324577, 20.329945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359366, -0.443192, 0.821241,
		-0.397017, -0.869025, -0.295250,
		0.844531, -0.219944, -0.488253,
		29.821995, 38.258595, 20.183468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377817, 37.784782, 20.759453>,  <29.230824, 38.412556, 20.525246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377817, 37.784782, 20.759453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.719091, 37.913502, 20.595249>,  <29.923857, 37.990734, 20.496727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.719091, 37.913502, 20.595249>,  <29.377817, 37.784782, 20.759453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719091, 37.913502, 20.595249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521557, -0.515299, 0.680033,
		0.007300, -0.794299, -0.607483,
		0.853185, 0.321801, -0.410511,
		29.975046, 38.010040, 20.472095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771717, 37.120319, 20.630754>,  <29.377817, 37.784782, 20.759453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771717, 37.120319, 20.630754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019718, 37.433681, 20.648052>,  <30.168520, 37.621700, 20.658432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.019718, 37.433681, 20.648052>,  <29.771717, 37.120319, 20.630754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019718, 37.433681, 20.648052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571716, -0.488843, 0.658918,
		0.537340, -0.383808, -0.750971,
		0.620005, 0.783405, 0.043246,
		30.205719, 37.668701, 20.661026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357794, 36.784508, 20.749670>,  <29.771717, 37.120319, 20.630754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357794, 36.784508, 20.749670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485340, 37.158169, 20.813765>,  <30.561869, 37.382366, 20.852221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485340, 37.158169, 20.813765>,  <30.357794, 36.784508, 20.749670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485340, 37.158169, 20.813765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654770, -0.339347, 0.675366,
		0.685273, -0.110434, -0.719864,
		0.318868, 0.934156, 0.160237,
		30.581001, 37.438416, 20.861835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008263, 36.803947, 20.667110>,  <30.357794, 36.784508, 20.749670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008263, 36.803947, 20.667110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923595, 37.098671, 20.923954>,  <30.872795, 37.275505, 21.078060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.923595, 37.098671, 20.923954>,  <31.008263, 36.803947, 20.667110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923595, 37.098671, 20.923954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561290, -0.446200, 0.697036,
		0.800093, 0.507950, -0.319120,
		-0.211668, 0.736812, 0.642109,
		30.860094, 37.319714, 21.116587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599421, 37.090816, 20.903681>,  <31.008263, 36.803947, 20.667110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599421, 37.090816, 20.903681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332546, 37.155869, 21.194448>,  <31.172421, 37.194901, 21.368910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332546, 37.155869, 21.194448>,  <31.599421, 37.090816, 20.903681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332546, 37.155869, 21.194448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644170, -0.364058, 0.672686,
		0.374038, 0.917068, 0.138135,
		-0.667188, 0.162628, 0.726920,
		31.132389, 37.204659, 21.412525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030315, 36.946648, 21.453981>,  <31.599421, 37.090816, 20.903681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030315, 36.946648, 21.453981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675922, 37.000793, 21.631392>,  <31.463287, 37.033279, 21.737837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675922, 37.000793, 21.631392>,  <32.030315, 36.946648, 21.453981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675922, 37.000793, 21.631392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267686, -0.631707, 0.727524,
		0.378658, 0.763298, 0.523445,
		-0.885981, 0.135363, 0.443525,
		31.410128, 37.041401, 21.764448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255680, 37.112995, 22.038097>,  <32.030315, 36.946648, 21.453981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255680, 37.112995, 22.038097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880566, 36.982464, 22.085535>,  <31.655497, 36.904144, 22.113997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880566, 36.982464, 22.085535>,  <32.255680, 37.112995, 22.038097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880566, 36.982464, 22.085535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294829, -0.568016, 0.768397,
		-0.183387, 0.755558, 0.628890,
		-0.937788, -0.326329, 0.118593,
		31.599230, 36.884563, 22.121113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123917, 37.175705, 22.703835>,  <32.255680, 37.112995, 22.038097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123917, 37.175705, 22.703835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860130, 36.909451, 22.564102>,  <31.701857, 36.749699, 22.480263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860130, 36.909451, 22.564102>,  <32.123917, 37.175705, 22.703835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860130, 36.909451, 22.564102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097026, -0.536186, 0.838505,
		-0.745443, 0.519075, 0.418182,
		-0.659470, -0.665632, -0.349332,
		31.662289, 36.709763, 22.459303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675917, 36.929497, 23.316154>,  <32.123917, 37.175705, 22.703835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675917, 36.929497, 23.316154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644302, 36.626266, 23.057213>,  <31.625334, 36.444328, 22.901848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644302, 36.626266, 23.057213>,  <31.675917, 36.929497, 23.316154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644302, 36.626266, 23.057213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023063, -0.647822, 0.761443,
		-0.996605, 0.075111, 0.033718,
		-0.079036, -0.758080, -0.647354,
		31.620592, 36.398842, 22.863007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250937, 36.517368, 23.579498>,  <31.675917, 36.929497, 23.316154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250937, 36.517368, 23.579498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436951, 36.278992, 23.317629>,  <31.548559, 36.135967, 23.160507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.436951, 36.278992, 23.317629>,  <31.250937, 36.517368, 23.579498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436951, 36.278992, 23.317629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113281, -0.693367, 0.711625,
		-0.878014, -0.405093, -0.254932,
		0.465035, -0.595938, -0.654675,
		31.576462, 36.100212, 23.121227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041719, 35.819885, 23.754833>,  <31.250937, 36.517368, 23.579498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041719, 35.819885, 23.754833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364964, 35.762432, 23.526333>,  <31.558910, 35.727959, 23.389233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364964, 35.762432, 23.526333>,  <31.041719, 35.819885, 23.754833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364964, 35.762432, 23.526333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251976, -0.792302, 0.555667,
		-0.532414, -0.592982, -0.604076,
		0.808111, -0.143632, -0.571250,
		31.607397, 35.719341, 23.354958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984888, 35.167183, 23.536373>,  <31.041719, 35.819885, 23.754833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984888, 35.167183, 23.536373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373869, 35.253479, 23.501064>,  <31.607258, 35.305256, 23.479879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.373869, 35.253479, 23.501064>,  <30.984888, 35.167183, 23.536373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373869, 35.253479, 23.501064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233097, -0.900367, 0.367431,
		-0.000211, -0.377885, -0.925852,
		0.972453, 0.215736, -0.088274,
		31.665606, 35.318199, 23.474583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344048, 34.512993, 23.333160>,  <30.984888, 35.167183, 23.536373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344048, 34.512993, 23.333160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603840, 34.754852, 23.517584>,  <31.759716, 34.899967, 23.628239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.603840, 34.754852, 23.517584>,  <31.344048, 34.512993, 23.333160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603840, 34.754852, 23.517584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410167, -0.789165, 0.457144,
		0.640264, -0.107794, -0.760554,
		0.649481, 0.604648, 0.461060,
		31.798683, 34.936245, 23.655901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051094, 34.250301, 23.299496>,  <31.344048, 34.512993, 23.333160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051094, 34.250301, 23.299496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035168, 34.499699, 23.611820>,  <32.025612, 34.649338, 23.799215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035168, 34.499699, 23.611820>,  <32.051094, 34.250301, 23.299496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035168, 34.499699, 23.611820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582042, -0.620696, 0.525322,
		0.812183, 0.475381, -0.338188,
		-0.039816, 0.623498, 0.780811,
		32.023224, 34.686749, 23.846064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862774, 34.393101, 23.539177>,  <32.051094, 34.250301, 23.299496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862774, 34.393101, 23.539177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.641056, 34.481289, 23.860212>,  <32.508026, 34.534203, 24.052834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.641056, 34.481289, 23.860212>,  <32.862774, 34.393101, 23.539177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641056, 34.481289, 23.860212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648649, -0.489811, 0.582529,
		0.521546, 0.843492, 0.128494,
		-0.554297, 0.220468, 0.802589,
		32.474766, 34.547428, 24.100988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.411167, 33.360344, 25.912136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.153851, 33.541256, 26.159239>,  <37.999462, 33.649803, 26.307501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.153851, 33.541256, 26.159239>,  <38.411167, 33.360344, 25.912136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153851, 33.541256, 26.159239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453302, -0.425249, 0.783378,
		0.617005, 0.783969, 0.068539,
		-0.643290, 0.452279, 0.617755,
		37.960865, 33.676941, 26.344564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759037, 33.726227, 26.551735>,  <38.411167, 33.360344, 25.912136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759037, 33.726227, 26.551735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.383316, 33.654278, 26.668594>,  <38.157883, 33.611111, 26.738710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.383316, 33.654278, 26.668594>,  <38.759037, 33.726227, 26.551735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383316, 33.654278, 26.668594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336864, -0.322180, 0.884716,
		-0.065010, 0.929433, 0.363218,
		-0.939306, -0.179870, 0.292148,
		38.101524, 33.600315, 26.756239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701832, 34.065067, 27.217070>,  <38.759037, 33.726227, 26.551735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701832, 34.065067, 27.217070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.385498, 33.820992, 27.236048>,  <38.195698, 33.674545, 27.247435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.385498, 33.820992, 27.236048>,  <38.701832, 34.065067, 27.217070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385498, 33.820992, 27.236048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193537, -0.175779, 0.965218,
		-0.580629, 0.772506, 0.257106,
		-0.790831, -0.610193, 0.047447,
		38.148251, 33.637932, 27.250282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300297, 34.350468, 27.742857>,  <38.701832, 34.065067, 27.217070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300297, 34.350468, 27.742857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158001, 33.980026, 27.692608>,  <38.072624, 33.757763, 27.662458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.158001, 33.980026, 27.692608>,  <38.300297, 34.350468, 27.742857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158001, 33.980026, 27.692608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042311, -0.118319, 0.992074,
		-0.933628, 0.358233, 0.002906,
		-0.355738, -0.926104, -0.125623,
		38.051281, 33.702194, 27.654921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820919, 34.297829, 28.188477>,  <38.300297, 34.350468, 27.742857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820919, 34.297829, 28.188477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921238, 33.915180, 28.129189>,  <37.981430, 33.685589, 28.093615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.921238, 33.915180, 28.129189>,  <37.820919, 34.297829, 28.188477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921238, 33.915180, 28.129189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024873, -0.159432, 0.986895,
		-0.967720, -0.243823, -0.063779,
		0.250797, -0.956625, -0.148221,
		37.996475, 33.628193, 28.084723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346027, 33.852627, 28.663792>,  <37.820919, 34.297829, 28.188477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346027, 33.852627, 28.663792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.626301, 33.594551, 28.541950>,  <37.794464, 33.439705, 28.468845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.626301, 33.594551, 28.541950>,  <37.346027, 33.852627, 28.663792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626301, 33.594551, 28.541950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123114, -0.529859, 0.839102,
		-0.702774, -0.550440, -0.450693,
		0.700680, -0.645186, -0.304605,
		37.836506, 33.400997, 28.450569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041912, 33.254101, 28.737598>,  <37.346027, 33.852627, 28.663792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041912, 33.254101, 28.737598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.434196, 33.177345, 28.722723>,  <37.669567, 33.131294, 28.713799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.434196, 33.177345, 28.722723>,  <37.041912, 33.254101, 28.737598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434196, 33.177345, 28.722723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027620, -0.324402, 0.945516,
		-0.193494, -0.926252, -0.323445,
		0.980712, -0.191885, -0.037187,
		37.728409, 33.119778, 28.711567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066845, 32.715366, 29.154030>,  <37.041912, 33.254101, 28.737598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066845, 32.715366, 29.154030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440933, 32.854950, 29.130093>,  <37.665386, 32.938702, 29.115730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440933, 32.854950, 29.130093>,  <37.066845, 32.715366, 29.154030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440933, 32.854950, 29.130093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100560, -0.099746, 0.989918,
		0.339475, -0.931813, -0.128377,
		0.935224, 0.348962, -0.059842,
		37.721500, 32.959637, 29.112141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505604, 32.211933, 29.442429>,  <37.066845, 32.715366, 29.154030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505604, 32.211933, 29.442429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671112, 32.571011, 29.503023>,  <37.770416, 32.786457, 29.539379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671112, 32.571011, 29.503023>,  <37.505604, 32.211933, 29.442429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671112, 32.571011, 29.503023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119741, -0.218615, 0.968437,
		0.902472, -0.382572, -0.197946,
		0.413771, 0.897689, 0.151484,
		37.795242, 32.840317, 29.548468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089828, 32.063881, 29.945812>,  <37.505604, 32.211933, 29.442429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089828, 32.063881, 29.945812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008282, 32.455162, 29.961628>,  <37.959354, 32.689930, 29.971117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.008282, 32.455162, 29.961628>,  <38.089828, 32.063881, 29.945812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008282, 32.455162, 29.961628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147271, -0.009285, 0.989053,
		0.967858, 0.207457, -0.142167,
		-0.203866, 0.978200, 0.039539,
		37.947121, 32.748623, 29.973490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623505, 32.330620, 30.373167>,  <38.089828, 32.063881, 29.945812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623505, 32.330620, 30.373167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.340107, 32.612663, 30.361399>,  <38.170071, 32.781891, 30.354338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.340107, 32.612663, 30.361399>,  <38.623505, 32.330620, 30.373167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340107, 32.612663, 30.361399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005804, 0.035864, 0.999340,
		0.705697, 0.708193, -0.021317,
		-0.708490, 0.705107, -0.029419,
		38.127560, 32.824196, 30.352573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901562, 33.014748, 30.779696>,  <38.623505, 32.330620, 30.373167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901562, 33.014748, 30.779696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501667, 33.018085, 30.788258>,  <38.261730, 33.020088, 30.793396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501667, 33.018085, 30.788258>,  <38.901562, 33.014748, 30.779696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501667, 33.018085, 30.788258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022947, 0.315350, 0.948698,
		0.001165, 0.948939, -0.315458,
		-0.999736, 0.008344, 0.021408,
		38.201748, 33.020588, 30.794680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848446, 33.552502, 31.327465>,  <38.901562, 33.014748, 30.779696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848446, 33.552502, 31.327465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492584, 33.371094, 31.306150>,  <38.279068, 33.262249, 31.293362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.492584, 33.371094, 31.306150>,  <38.848446, 33.552502, 31.327465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492584, 33.371094, 31.306150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145338, 0.170596, 0.974563,
		-0.432890, 0.874768, -0.217685,
		-0.889653, -0.453517, -0.053288,
		38.225689, 33.235039, 31.290165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424290, 33.702145, 31.882719>,  <38.848446, 33.552502, 31.327465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424290, 33.702145, 31.882719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266216, 34.033203, 32.042137>,  <38.171371, 34.231838, 32.137787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266216, 34.033203, 32.042137>,  <38.424290, 33.702145, 31.882719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266216, 34.033203, 32.042137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154520, 0.487569, -0.859302,
		-0.905514, -0.277997, -0.320565,
		-0.395181, 0.827644, 0.398545,
		38.147663, 34.281498, 32.161701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892128, 34.077122, 31.485905>,  <38.424290, 33.702145, 31.882719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892128, 34.077122, 31.485905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069706, 34.350281, 31.717958>,  <38.176254, 34.514175, 31.857191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.069706, 34.350281, 31.717958>,  <37.892128, 34.077122, 31.485905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069706, 34.350281, 31.717958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245018, 0.530245, -0.811669,
		-0.861903, 0.502483, 0.068079,
		0.443948, 0.682899, 0.580137,
		38.202892, 34.555149, 31.892000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728199, 34.711590, 31.148916>,  <37.892128, 34.077122, 31.485905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728199, 34.711590, 31.148916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016254, 34.838955, 31.395498>,  <38.189087, 34.915375, 31.543447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016254, 34.838955, 31.395498>,  <37.728199, 34.711590, 31.148916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016254, 34.838955, 31.395498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295233, 0.663409, -0.687551,
		-0.627884, 0.677129, 0.383741,
		0.720138, 0.318409, 0.616455,
		38.232296, 34.934479, 31.580435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549351, 35.415916, 31.115946>,  <37.728199, 34.711590, 31.148916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549351, 35.415916, 31.115946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.935402, 35.389179, 31.217182>,  <38.167034, 35.373138, 31.277924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.935402, 35.389179, 31.217182>,  <37.549351, 35.415916, 31.115946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935402, 35.389179, 31.217182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167872, 0.899896, -0.402501,
		-0.200852, 0.430953, 0.879737,
		0.965131, -0.066840, 0.253091,
		38.224941, 35.369125, 31.293110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637283, 36.092800, 31.246231>,  <37.549351, 35.415916, 31.115946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637283, 36.092800, 31.246231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.007492, 35.947102, 31.204790>,  <38.229618, 35.859684, 31.179926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.007492, 35.947102, 31.204790>,  <37.637283, 36.092800, 31.246231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007492, 35.947102, 31.204790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236458, 0.769545, -0.593202,
		0.295796, 0.524524, 0.798360,
		0.925523, -0.364245, -0.103601,
		38.285149, 35.837830, 31.173710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134521, 36.627174, 31.452278>,  <37.637283, 36.092800, 31.246231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134521, 36.627174, 31.452278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311115, 36.358276, 31.214565>,  <38.417072, 36.196938, 31.071938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311115, 36.358276, 31.214565>,  <38.134521, 36.627174, 31.452278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311115, 36.358276, 31.214565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180465, 0.715317, -0.675096,
		0.878934, 0.190796, 0.437118,
		0.441483, -0.672249, -0.594284,
		38.443562, 36.156601, 31.036280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739540, 36.987793, 31.158836>,  <38.134521, 36.627174, 31.452278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739540, 36.987793, 31.158836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.730480, 36.667248, 30.919737>,  <38.725044, 36.474922, 30.776278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.730480, 36.667248, 30.919737>,  <38.739540, 36.987793, 31.158836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730480, 36.667248, 30.919737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053135, 0.596092, -0.801156,
		0.998331, -0.049907, 0.029079,
		-0.022649, -0.801364, -0.597749,
		38.723686, 36.426838, 30.740412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381187, 37.042931, 30.826769>,  <38.739540, 36.987793, 31.158836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381187, 37.042931, 30.826769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163067, 36.806141, 30.589376>,  <39.032196, 36.664066, 30.446941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163067, 36.806141, 30.589376>,  <39.381187, 37.042931, 30.826769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163067, 36.806141, 30.589376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134417, 0.637091, -0.758978,
		0.827395, -0.493642, -0.267833,
		-0.545298, -0.591973, -0.593480,
		38.999477, 36.628548, 30.411333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715424, 37.040508, 30.133280>,  <39.381187, 37.042931, 30.826769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715424, 37.040508, 30.133280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346405, 36.907249, 30.055380>,  <39.124996, 36.827293, 30.008640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.346405, 36.907249, 30.055380>,  <39.715424, 37.040508, 30.133280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346405, 36.907249, 30.055380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024632, 0.554487, -0.831828,
		0.385103, -0.762601, -0.519745,
		-0.922545, -0.333142, -0.194751,
		39.069641, 36.807308, 29.996954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729622, 36.778210, 29.414570>,  <39.715424, 37.040508, 30.133280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729622, 36.778210, 29.414570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348106, 36.869125, 29.493177>,  <39.119198, 36.923676, 29.540342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348106, 36.869125, 29.493177>,  <39.729622, 36.778210, 29.414570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348106, 36.869125, 29.493177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045888, 0.536174, -0.842859,
		-0.296944, -0.812930, -0.500969,
		-0.953792, 0.227294, 0.196518,
		39.061970, 36.937313, 29.552134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408417, 36.642689, 28.732840>,  <39.729622, 36.778210, 29.414570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408417, 36.642689, 28.732840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127728, 36.843040, 28.935507>,  <38.959316, 36.963253, 29.057106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127728, 36.843040, 28.935507>,  <39.408417, 36.642689, 28.732840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127728, 36.843040, 28.935507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501790, 0.157384, -0.850551,
		-0.505763, -0.851088, 0.140896,
		-0.701719, 0.500878, 0.506667,
		38.917213, 36.993305, 29.087507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673065, 36.575146, 28.328058>,  <39.408417, 36.642689, 28.732840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673065, 36.575146, 28.328058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659828, 36.902451, 28.557617>,  <38.651886, 37.098831, 28.695353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.659828, 36.902451, 28.557617>,  <38.673065, 36.575146, 28.328058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659828, 36.902451, 28.557617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567561, 0.457258, -0.684682,
		-0.822666, -0.348376, 0.449282,
		-0.033089, 0.818260, 0.573896,
		38.649902, 37.147930, 28.729786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978497, 36.782631, 28.188501>,  <38.673065, 36.575146, 28.328058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978497, 36.782631, 28.188501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165962, 37.102802, 28.337984>,  <38.278442, 37.294907, 28.427673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.165962, 37.102802, 28.337984>,  <37.978497, 36.782631, 28.188501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165962, 37.102802, 28.337984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230827, 0.519313, -0.822820,
		-0.852684, 0.299367, 0.428147,
		0.468667, 0.800433, 0.373708,
		38.306564, 37.342934, 28.450096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444000, 37.233032, 28.228775>,  <37.978497, 36.782631, 28.188501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444000, 37.233032, 28.228775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775719, 37.455978, 28.244833>,  <37.974751, 37.589745, 28.254469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.775719, 37.455978, 28.244833>,  <37.444000, 37.233032, 28.228775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775719, 37.455978, 28.244833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330009, 0.546457, -0.769727,
		-0.450959, 0.625081, 0.637110,
		0.829295, 0.557367, 0.040147,
		38.024506, 37.623188, 28.256878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187428, 37.912991, 28.212721>,  <37.444000, 37.233032, 28.228775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187428, 37.912991, 28.212721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575409, 37.933002, 28.117483>,  <37.808197, 37.945011, 28.060341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575409, 37.933002, 28.117483>,  <37.187428, 37.912991, 28.212721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575409, 37.933002, 28.117483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226545, 0.542563, -0.808890,
		0.088712, 0.838524, 0.537594,
		0.969952, 0.050032, -0.238095,
		37.866394, 37.948013, 28.046055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843029, 38.152512, 28.765322>,  <37.187428, 37.912991, 28.212721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843029, 38.152512, 28.765322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.596867, 38.442989, 28.887913>,  <36.449169, 38.617275, 28.961468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.596867, 38.442989, 28.887913>,  <36.843029, 38.152512, 28.765322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596867, 38.442989, 28.887913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076417, -0.441962, 0.893773,
		0.784500, 0.526609, 0.327478,
		-0.615402, 0.726190, 0.306477,
		36.412247, 38.660847, 28.979856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088909, 38.641865, 29.245207>,  <36.843029, 38.152512, 28.765322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088909, 38.641865, 29.245207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699127, 38.567947, 29.296259>,  <36.465260, 38.523598, 29.326891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699127, 38.567947, 29.296259>,  <37.088909, 38.641865, 29.245207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699127, 38.567947, 29.296259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210373, -0.552119, 0.806789,
		-0.078623, 0.813029, 0.576890,
		-0.974455, -0.184794, 0.127630,
		36.406792, 38.512508, 29.334547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976898, 38.711308, 29.985830>,  <37.088909, 38.641865, 29.245207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976898, 38.711308, 29.985830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.632561, 38.538250, 29.878666>,  <36.425961, 38.434418, 29.814367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.632561, 38.538250, 29.878666>,  <36.976898, 38.711308, 29.985830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632561, 38.538250, 29.878666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073248, -0.626340, 0.776101,
		-0.503576, 0.648475, 0.570869,
		-0.860840, -0.432641, -0.267910,
		36.374310, 38.408459, 29.798292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728069, 38.517311, 30.616259>,  <36.976898, 38.711308, 29.985830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728069, 38.517311, 30.616259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.460594, 38.333473, 30.382462>,  <36.300110, 38.223171, 30.242184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.460594, 38.333473, 30.382462>,  <36.728069, 38.517311, 30.616259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460594, 38.333473, 30.382462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287757, -0.564872, 0.773379,
		-0.685607, 0.685338, 0.245468,
		-0.668684, -0.459599, -0.584491,
		36.259991, 38.195595, 30.207113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072098, 38.484924, 30.985323>,  <36.728069, 38.517311, 30.616259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072098, 38.484924, 30.985323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107201, 38.191212, 30.716063>,  <36.128262, 38.014984, 30.554506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.107201, 38.191212, 30.716063>,  <36.072098, 38.484924, 30.985323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107201, 38.191212, 30.716063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203300, -0.674738, 0.709505,
		-0.975176, 0.074590, -0.208490,
		0.087755, -0.734278, -0.673153,
		36.133526, 37.970928, 30.514116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544796, 38.056335, 31.195223>,  <36.072098, 38.484924, 30.985323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544796, 38.056335, 31.195223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.773239, 37.830158, 30.957193>,  <35.910305, 37.694454, 30.814375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.773239, 37.830158, 30.957193>,  <35.544796, 38.056335, 31.195223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773239, 37.830158, 30.957193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369616, -0.824416, 0.428628,
		-0.732952, -0.024845, -0.679827,
		0.571110, -0.565438, -0.595074,
		35.944572, 37.660526, 30.778671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122498, 37.485126, 31.052341>,  <35.544796, 38.056335, 31.195223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122498, 37.485126, 31.052341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.485863, 37.368504, 30.932487>,  <35.703880, 37.298531, 30.860575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.485863, 37.368504, 30.932487>,  <35.122498, 37.485126, 31.052341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485863, 37.368504, 30.932487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224080, -0.944610, 0.239790,
		-0.352948, -0.150687, -0.923429,
		0.908414, -0.291555, -0.299633,
		35.758389, 37.281036, 30.842598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015903, 36.894035, 30.628937>,  <35.122498, 37.485126, 31.052341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015903, 36.894035, 30.628937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391506, 36.887703, 30.766352>,  <35.616867, 36.883904, 30.848801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.391506, 36.887703, 30.766352>,  <35.015903, 36.894035, 30.628937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391506, 36.887703, 30.766352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148035, -0.920266, 0.362210,
		0.310411, -0.390972, -0.866479,
		0.939005, -0.015835, 0.343538,
		35.673206, 36.882954, 30.869413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344433, 36.330795, 30.395216>,  <35.015903, 36.894035, 30.628937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344433, 36.330795, 30.395216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.538586, 36.444279, 30.726013>,  <35.655079, 36.512367, 30.924492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.538586, 36.444279, 30.726013>,  <35.344433, 36.330795, 30.395216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538586, 36.444279, 30.726013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164401, -0.899399, 0.405035,
		0.858707, -0.332555, -0.389911,
		0.485382, 0.283705, 0.826992,
		35.684200, 36.529388, 30.974112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802998, 35.733654, 30.447653>,  <35.344433, 36.330795, 30.395216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802998, 35.733654, 30.447653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.795006, 35.911823, 30.805691>,  <35.790211, 36.018726, 31.020514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.795006, 35.911823, 30.805691>,  <35.802998, 35.733654, 30.447653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795006, 35.911823, 30.805691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277298, -0.862620, 0.423076,
		0.960576, -0.239757, 0.140748,
		-0.019976, 0.445425, 0.895096,
		35.789013, 36.045452, 31.074219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250546, 35.348061, 30.855507>,  <35.802998, 35.733654, 30.447653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250546, 35.348061, 30.855507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.062099, 35.539764, 31.151712>,  <35.949032, 35.654785, 31.329437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.062099, 35.539764, 31.151712>,  <36.250546, 35.348061, 30.855507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062099, 35.539764, 31.151712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183148, -0.874369, 0.449372,
		0.862851, 0.076080, 0.499700,
		-0.471111, 0.479260, 0.740516,
		35.920765, 35.683544, 31.373867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569344, 35.135841, 31.396605>,  <36.250546, 35.348061, 30.855507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569344, 35.135841, 31.396605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.196270, 35.241825, 31.494503>,  <35.972427, 35.305416, 31.553242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.196270, 35.241825, 31.494503>,  <36.569344, 35.135841, 31.396605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196270, 35.241825, 31.494503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102725, -0.845552, 0.523917,
		0.345760, 0.463507, 0.815850,
		-0.932683, 0.264958, 0.244744,
		35.916466, 35.321312, 31.567926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.757431, 40.961712, 25.920155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381516, 40.836670, 25.975386>,  <36.155964, 40.761642, 26.008524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381516, 40.836670, 25.975386>,  <36.757431, 40.961712, 25.920155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381516, 40.836670, 25.975386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274840, -0.451237, 0.849028,
		-0.203108, 0.835859, 0.509987,
		-0.939793, -0.312609, 0.138078,
		36.099579, 40.742886, 26.016809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632484, 41.137661, 26.604912>,  <36.757431, 40.961712, 25.920155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632484, 41.137661, 26.604912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368000, 40.854355, 26.505989>,  <36.209309, 40.684372, 26.446634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368000, 40.854355, 26.505989>,  <36.632484, 41.137661, 26.604912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368000, 40.854355, 26.505989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125253, -0.429252, 0.894457,
		-0.739672, 0.560447, 0.372538,
		-0.661209, -0.708267, -0.247308,
		36.169636, 40.641876, 26.431797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353874, 41.150581, 27.237720>,  <36.632484, 41.137661, 26.604912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353874, 41.150581, 27.237720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208061, 40.830410, 27.047379>,  <36.120575, 40.638309, 26.933174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208061, 40.830410, 27.047379>,  <36.353874, 41.150581, 27.237720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208061, 40.830410, 27.047379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007305, -0.508544, 0.861005,
		-0.931162, 0.317340, 0.179533,
		-0.364532, -0.800424, -0.475855,
		36.098701, 40.590282, 26.904621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801910, 40.958179, 27.559679>,  <36.353874, 41.150581, 27.237720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801910, 40.958179, 27.559679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957455, 40.636890, 27.379179>,  <36.050781, 40.444118, 27.270880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957455, 40.636890, 27.379179>,  <35.801910, 40.958179, 27.559679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957455, 40.636890, 27.379179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113015, -0.527687, 0.841887,
		-0.914340, -0.276376, -0.295972,
		0.388858, -0.803220, -0.451251,
		36.074112, 40.395924, 27.243803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391869, 40.467163, 27.831343>,  <35.801910, 40.958179, 27.559679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391869, 40.467163, 27.831343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720139, 40.291687, 27.684895>,  <35.917099, 40.186401, 27.597025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720139, 40.291687, 27.684895>,  <35.391869, 40.467163, 27.831343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720139, 40.291687, 27.684895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013921, -0.655910, 0.754710,
		-0.571225, -0.614275, -0.544396,
		0.820675, -0.438688, -0.366121,
		35.966339, 40.160080, 27.575058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209759, 39.706791, 27.770493>,  <35.391869, 40.467163, 27.831343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209759, 39.706791, 27.770493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605453, 39.763184, 27.786133>,  <35.842873, 39.797020, 27.795517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605453, 39.763184, 27.786133>,  <35.209759, 39.706791, 27.770493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605453, 39.763184, 27.786133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061359, -0.642431, 0.763883,
		0.132812, -0.753264, -0.644169,
		0.989240, 0.140978, 0.039103,
		35.902225, 39.805477, 27.797863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477364, 39.044704, 27.952473>,  <35.209759, 39.706791, 27.770493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477364, 39.044704, 27.952473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785118, 39.291412, 28.018976>,  <35.969772, 39.439438, 28.058878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785118, 39.291412, 28.018976>,  <35.477364, 39.044704, 27.952473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785118, 39.291412, 28.018976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353979, -0.628317, 0.692760,
		0.531734, -0.474149, -0.701742,
		0.769388, 0.616766, 0.166259,
		36.015934, 39.476440, 28.068853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010696, 38.651871, 27.964304>,  <35.477364, 39.044704, 27.952473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010696, 38.651871, 27.964304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139637, 38.969410, 28.170563>,  <36.216999, 39.159935, 28.294317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139637, 38.969410, 28.170563>,  <36.010696, 38.651871, 27.964304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139637, 38.969410, 28.170563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306348, -0.602892, 0.736663,
		0.895680, -0.079495, -0.437537,
		0.322348, 0.793852, 0.515645,
		36.236343, 39.207565, 28.325256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711262, 38.473507, 28.086027>,  <36.010696, 38.651871, 27.964304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711262, 38.473507, 28.086027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568981, 38.715229, 28.371206>,  <36.483612, 38.860260, 28.542315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568981, 38.715229, 28.371206>,  <36.711262, 38.473507, 28.086027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568981, 38.715229, 28.371206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162427, -0.711259, 0.683907,
		0.920379, 0.359066, 0.154837,
		-0.355697, 0.604304, 0.712950,
		36.462273, 38.896519, 28.585091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333874, 38.697800, 27.947266>,  <36.711262, 38.473507, 28.086027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333874, 38.697800, 27.947266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649483, 38.475266, 27.843010>,  <37.838848, 38.341747, 27.780457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649483, 38.475266, 27.843010>,  <37.333874, 38.697800, 27.947266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649483, 38.475266, 27.843010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054922, 0.358670, -0.931847,
		0.611901, 0.749566, 0.252444,
		0.789025, -0.556334, -0.260638,
		37.886189, 38.308365, 27.764818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881271, 39.113804, 27.542309>,  <37.333874, 38.697800, 27.947266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881271, 39.113804, 27.542309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962406, 38.741982, 27.419165>,  <38.011086, 38.518887, 27.345278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962406, 38.741982, 27.419165>,  <37.881271, 39.113804, 27.542309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962406, 38.741982, 27.419165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234895, 0.259027, -0.936872,
		0.950622, 0.262344, -0.165809,
		0.202834, -0.929559, -0.307861,
		38.023258, 38.463112, 27.326807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429203, 39.069935, 26.942232>,  <37.881271, 39.113804, 27.542309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429203, 39.069935, 26.942232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257164, 38.709572, 26.918934>,  <38.153942, 38.493355, 26.904955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257164, 38.709572, 26.918934>,  <38.429203, 39.069935, 26.942232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257164, 38.709572, 26.918934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088015, 0.106053, -0.990457,
		0.898483, -0.420863, -0.124906,
		-0.430094, -0.900903, -0.058245,
		38.128136, 38.439301, 26.901461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741909, 38.712383, 26.431526>,  <38.429203, 39.069935, 26.942232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741909, 38.712383, 26.431526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370422, 38.568104, 26.465893>,  <38.147530, 38.481537, 26.486513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370422, 38.568104, 26.465893>,  <38.741909, 38.712383, 26.431526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370422, 38.568104, 26.465893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077388, -0.038045, -0.996275,
		0.362626, -0.931905, 0.007419,
		-0.928716, -0.360701, 0.085915,
		38.091808, 38.459892, 26.491667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690960, 38.036621, 26.156033>,  <38.741909, 38.712383, 26.431526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690960, 38.036621, 26.156033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323658, 38.190590, 26.118826>,  <38.103279, 38.282970, 26.096502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323658, 38.190590, 26.118826>,  <38.690960, 38.036621, 26.156033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323658, 38.190590, 26.118826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034997, -0.155089, -0.987280,
		-0.394452, -0.909825, 0.128939,
		-0.918250, 0.384922, -0.093016,
		38.048183, 38.306065, 26.090921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511734, 37.940037, 25.533947>,  <38.690960, 38.036621, 26.156033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511734, 37.940037, 25.533947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186028, 38.158398, 25.612898>,  <37.990604, 38.289413, 25.660269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186028, 38.158398, 25.612898>,  <38.511734, 37.940037, 25.533947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186028, 38.158398, 25.612898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266258, -0.049092, -0.962651,
		-0.515827, -0.836407, 0.185325,
		-0.814266, 0.545905, 0.197378,
		37.941750, 38.322170, 25.672112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123016, 37.619678, 25.135967>,  <38.511734, 37.940037, 25.533947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123016, 37.619678, 25.135967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940605, 37.967598, 25.211311>,  <37.831158, 38.176350, 25.256517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940605, 37.967598, 25.211311>,  <38.123016, 37.619678, 25.135967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940605, 37.967598, 25.211311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309915, 0.043197, -0.949782,
		-0.834261, -0.491504, 0.249865,
		-0.456028, 0.869803, 0.188362,
		37.803795, 38.228539, 25.267820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361851, 37.618015, 24.873959>,  <38.123016, 37.619678, 25.135967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361851, 37.618015, 24.873959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494858, 37.994884, 24.890642>,  <37.574661, 38.221004, 24.900652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494858, 37.994884, 24.890642>,  <37.361851, 37.618015, 24.873959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494858, 37.994884, 24.890642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398653, 0.180501, -0.899164,
		-0.854696, 0.282363, 0.435620,
		0.332520, 0.942173, 0.041708,
		37.594612, 38.277538, 24.903154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793762, 37.955688, 24.818661>,  <37.361851, 37.618015, 24.873959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793762, 37.955688, 24.818661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079334, 38.213253, 24.708618>,  <37.250675, 38.367794, 24.642593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079334, 38.213253, 24.708618>,  <36.793762, 37.955688, 24.818661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079334, 38.213253, 24.708618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460381, 0.135622, -0.877300,
		-0.527595, 0.752982, 0.393270,
		0.713928, 0.643913, -0.275105,
		37.293514, 38.406425, 24.626087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386959, 38.396603, 24.454845>,  <36.793762, 37.955688, 24.818661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386959, 38.396603, 24.454845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760380, 38.489719, 24.345818>,  <36.984432, 38.545589, 24.280401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760380, 38.489719, 24.345818>,  <36.386959, 38.396603, 24.454845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760380, 38.489719, 24.345818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309671, 0.140806, -0.940360,
		-0.180530, 0.962279, 0.203538,
		0.933549, 0.232793, -0.272570,
		37.040443, 38.559559, 24.264046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285316, 38.901993, 24.019386>,  <36.386959, 38.396603, 24.454845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285316, 38.901993, 24.019386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675804, 38.863255, 23.941807>,  <36.910095, 38.840012, 23.895260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675804, 38.863255, 23.941807>,  <36.285316, 38.901993, 24.019386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675804, 38.863255, 23.941807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162687, 0.264017, -0.950699,
		0.143273, 0.959644, 0.241984,
		0.976220, -0.096842, -0.193948,
		36.968670, 38.834202, 23.883623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563820, 39.612438, 23.660913>,  <36.285316, 38.901993, 24.019386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563820, 39.612438, 23.660913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761429, 39.280075, 23.558512>,  <36.879993, 39.080658, 23.497070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761429, 39.280075, 23.558512>,  <36.563820, 39.612438, 23.660913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761429, 39.280075, 23.558512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080654, 0.249378, -0.965042,
		0.865700, 0.497400, 0.056183,
		0.494023, -0.830905, -0.256004,
		36.909637, 39.030804, 23.481710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027962, 39.836098, 23.129984>,  <36.563820, 39.612438, 23.660913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027962, 39.836098, 23.129984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999096, 39.437897, 23.105434>,  <36.981777, 39.198975, 23.090704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999096, 39.437897, 23.105434>,  <37.027962, 39.836098, 23.129984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999096, 39.437897, 23.105434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239638, 0.077039, -0.967801,
		0.968176, -0.055133, -0.244120,
		-0.072164, -0.995502, -0.061375,
		36.977448, 39.139244, 23.087023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268276, 39.728172, 22.456505>,  <37.027962, 39.836098, 23.129984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268276, 39.728172, 22.456505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054878, 39.406593, 22.561611>,  <36.926842, 39.213646, 22.624676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054878, 39.406593, 22.561611>,  <37.268276, 39.728172, 22.456505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054878, 39.406593, 22.561611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319037, -0.096446, -0.942822,
		0.783327, -0.586821, -0.205037,
		-0.533493, -0.803952, 0.262767,
		36.894829, 39.165409, 22.640442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.325022, 37.177544, 24.791580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.703634, 37.282986, 24.865978>,  <29.930801, 37.346249, 24.910618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.703634, 37.282986, 24.865978>,  <29.325022, 37.177544, 24.791580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703634, 37.282986, 24.865978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081496, -0.753193, 0.652732,
		0.312152, -0.602673, -0.734402,
		0.946531, 0.263602, 0.185995,
		29.987593, 37.362068, 24.921776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690956, 36.578419, 24.723326>,  <29.325022, 37.177544, 24.791580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690956, 36.578419, 24.723326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.940796, 36.819820, 24.921577>,  <30.090700, 36.964661, 25.040529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.940796, 36.819820, 24.921577>,  <29.690956, 36.578419, 24.723326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940796, 36.819820, 24.921577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217792, -0.744090, 0.631582,
		0.749960, -0.286543, -0.596199,
		0.624601, 0.603509, 0.495631,
		30.128176, 37.000874, 25.070267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286945, 36.218998, 24.883593>,  <29.690956, 36.578419, 24.723326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286945, 36.218998, 24.883593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.360640, 36.515530, 25.141735>,  <30.404856, 36.693451, 25.296619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.360640, 36.515530, 25.141735>,  <30.286945, 36.218998, 24.883593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360640, 36.515530, 25.141735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518243, -0.631176, 0.577097,
		0.835154, 0.228129, -0.500475,
		0.184236, 0.741333, 0.645355,
		30.415911, 36.737930, 25.335342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973921, 36.263218, 25.052954>,  <30.286945, 36.218998, 24.883593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973921, 36.263218, 25.052954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.807676, 36.429146, 25.376728>,  <30.707930, 36.528702, 25.570993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.807676, 36.429146, 25.376728>,  <30.973921, 36.263218, 25.052954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807676, 36.429146, 25.376728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434953, -0.690941, 0.577423,
		0.798800, 0.592052, 0.106737,
		-0.415613, 0.414820, 0.809438,
		30.682993, 36.553593, 25.619560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525867, 36.376400, 25.530293>,  <30.973921, 36.263218, 25.052954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525867, 36.376400, 25.530293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.194616, 36.373837, 25.754494>,  <30.995865, 36.372299, 25.889013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.194616, 36.373837, 25.754494>,  <31.525867, 36.376400, 25.530293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194616, 36.373837, 25.754494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444526, -0.616650, 0.649723,
		0.341466, 0.787211, 0.513516,
		-0.828129, -0.006413, 0.560501,
		30.946178, 36.371914, 25.922644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839617, 36.363110, 26.199930>,  <31.525867, 36.376400, 25.530293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839617, 36.363110, 26.199930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.459558, 36.281841, 26.294537>,  <31.231524, 36.233078, 26.351299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.459558, 36.281841, 26.294537>,  <31.839617, 36.363110, 26.199930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459558, 36.281841, 26.294537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311000, -0.563259, 0.765518,
		-0.022314, 0.800912, 0.598366,
		-0.950148, -0.203174, 0.236515,
		31.174515, 36.220890, 26.365492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705486, 36.594166, 26.919258>,  <31.839617, 36.363110, 26.199930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705486, 36.594166, 26.919258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.433622, 36.316792, 26.823587>,  <31.270504, 36.150368, 26.766186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.433622, 36.316792, 26.823587>,  <31.705486, 36.594166, 26.919258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433622, 36.316792, 26.823587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264365, -0.535716, 0.801947,
		-0.684231, 0.481822, 0.547426,
		-0.679661, -0.693437, -0.239177,
		31.229725, 36.108761, 26.751835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224491, 36.634441, 27.502254>,  <31.705486, 36.594166, 26.919258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224491, 36.634441, 27.502254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.225227, 36.286827, 27.304356>,  <31.225670, 36.078259, 27.185617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.225227, 36.286827, 27.304356>,  <31.224491, 36.634441, 27.502254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225227, 36.286827, 27.304356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147518, -0.489097, 0.859663,
		-0.989057, -0.074567, 0.127298,
		0.001842, -0.869036, -0.494746,
		31.225780, 36.026115, 27.155931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849487, 36.136276, 27.990595>,  <31.224491, 36.634441, 27.502254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849487, 36.136276, 27.990595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.064068, 35.914791, 27.735842>,  <31.192816, 35.781898, 27.582989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.064068, 35.914791, 27.735842>,  <30.849487, 36.136276, 27.990595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064068, 35.914791, 27.735842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229673, -0.630391, 0.741524,
		-0.812079, -0.544066, -0.210999,
		0.536450, -0.553715, -0.636884,
		31.225002, 35.748676, 27.544777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744833, 35.513786, 28.158289>,  <30.849487, 36.136276, 27.990595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744833, 35.513786, 28.158289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.084902, 35.454216, 27.956287>,  <31.288942, 35.418472, 27.835087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.084902, 35.454216, 27.956287>,  <30.744833, 35.513786, 28.158289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084902, 35.454216, 27.956287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323587, -0.608833, 0.724302,
		-0.415332, -0.779194, -0.469421,
		0.850171, -0.148927, -0.505005,
		31.339952, 35.409538, 27.804787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766777, 34.765152, 28.116903>,  <30.744833, 35.513786, 28.158289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766777, 34.765152, 28.116903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.143198, 34.865135, 28.025743>,  <31.369051, 34.925125, 27.971046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.143198, 34.865135, 28.025743>,  <30.766777, 34.765152, 28.116903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143198, 34.865135, 28.025743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338255, -0.696247, 0.633106,
		-0.000427, -0.672876, -0.739755,
		0.941054, 0.249955, -0.227901,
		31.425514, 34.940121, 27.957373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003181, 34.186344, 28.071066>,  <30.766777, 34.765152, 28.116903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003181, 34.186344, 28.071066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.325655, 34.420937, 28.102318>,  <31.519138, 34.561691, 28.121069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.325655, 34.420937, 28.102318>,  <31.003181, 34.186344, 28.071066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325655, 34.420937, 28.102318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397373, -0.634540, 0.662913,
		0.438365, -0.503382, -0.744609,
		0.806183, 0.586485, 0.078129,
		31.567511, 34.596882, 28.125757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682676, 33.767788, 27.933361>,  <31.003181, 34.186344, 28.071066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682676, 33.767788, 27.933361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.736462, 34.078487, 28.179478>,  <31.768734, 34.264908, 28.327147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.736462, 34.078487, 28.179478>,  <31.682676, 33.767788, 27.933361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736462, 34.078487, 28.179478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401400, -0.610401, 0.682854,
		0.905979, 0.155158, -0.393864,
		0.134465, 0.776748, 0.615291,
		31.776802, 34.311512, 28.364065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351135, 33.620197, 28.138559>,  <31.682676, 33.767788, 27.933361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351135, 33.620197, 28.138559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.202599, 33.877972, 28.405933>,  <32.113476, 34.032635, 28.566359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.202599, 33.877972, 28.405933>,  <32.351135, 33.620197, 28.138559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202599, 33.877972, 28.405933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345002, -0.572603, 0.743706,
		0.862018, 0.506785, -0.009697,
		-0.371346, 0.644434, 0.668436,
		32.091194, 34.071301, 28.606464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069218, 33.662682, 28.013941>,  <32.351135, 33.620197, 28.138559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069218, 33.662682, 28.013941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.342953, 33.419487, 27.852922>,  <33.507195, 33.273571, 27.756311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.342953, 33.419487, 27.852922>,  <33.069218, 33.662682, 28.013941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342953, 33.419487, 27.852922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266242, 0.305603, -0.914178,
		0.678824, 0.732778, 0.047264,
		0.684334, -0.607983, -0.402547,
		33.548252, 33.237091, 27.732159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586437, 34.012028, 27.632874>,  <33.069218, 33.662682, 28.013941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586437, 34.012028, 27.632874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606319, 33.657978, 27.447794>,  <33.618248, 33.445549, 27.336746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.606319, 33.657978, 27.447794>,  <33.586437, 34.012028, 27.632874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606319, 33.657978, 27.447794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144198, 0.452061, -0.880255,
		0.988300, 0.110473, -0.105163,
		0.049704, -0.885120, -0.462701,
		33.621231, 33.392441, 27.308983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913914, 34.115444, 27.044579>,  <33.586437, 34.012028, 27.632874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913914, 34.115444, 27.044579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.750790, 33.763264, 26.947834>,  <33.652916, 33.551956, 26.889788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.750790, 33.763264, 26.947834>,  <33.913914, 34.115444, 27.044579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750790, 33.763264, 26.947834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153487, 0.327221, -0.932399,
		0.900075, -0.343117, -0.268581,
		-0.407807, -0.880453, -0.241860,
		33.628448, 33.499126, 26.875277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087185, 34.009010, 26.359571>,  <33.913914, 34.115444, 27.044579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087185, 34.009010, 26.359571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787968, 33.748638, 26.411285>,  <33.608437, 33.592415, 26.442314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787968, 33.748638, 26.411285>,  <34.087185, 34.009010, 26.359571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787968, 33.748638, 26.411285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401898, 0.289304, -0.868782,
		0.528114, -0.701849, -0.478021,
		-0.748046, -0.650931, 0.129286,
		33.563553, 33.553360, 26.450071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025112, 33.676548, 25.750830>,  <34.087185, 34.009010, 26.359571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025112, 33.676548, 25.750830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.668972, 33.616669, 25.922812>,  <33.455288, 33.580742, 26.026001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.668972, 33.616669, 25.922812>,  <34.025112, 33.676548, 25.750830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668972, 33.616669, 25.922812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454364, 0.232668, -0.859894,
		0.028684, -0.960967, -0.275173,
		-0.890354, -0.149694, 0.429955,
		33.401867, 33.571762, 26.051798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706753, 33.225452, 25.327026>,  <34.025112, 33.676548, 25.750830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706753, 33.225452, 25.327026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.424160, 33.415245, 25.537075>,  <33.254604, 33.529121, 25.663105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.424160, 33.415245, 25.537075>,  <33.706753, 33.225452, 25.327026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424160, 33.415245, 25.537075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458589, 0.258234, -0.850301,
		-0.539056, -0.841536, 0.035155,
		-0.706480, 0.474481, 0.525122,
		33.212215, 33.557590, 25.694613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074177, 33.099785, 24.982616>,  <33.706753, 33.225452, 25.327026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074177, 33.099785, 24.982616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995178, 33.425255, 25.201317>,  <32.947777, 33.620537, 25.332537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.995178, 33.425255, 25.201317>,  <33.074177, 33.099785, 24.982616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995178, 33.425255, 25.201317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638957, 0.316137, -0.701278,
		-0.743457, -0.487850, 0.457464,
		-0.197498, 0.813670, 0.546749,
		32.935928, 33.669357, 25.365341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310791, 33.178669, 24.862432>,  <33.074177, 33.099785, 24.982616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310791, 33.178669, 24.862432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.473961, 33.517220, 24.999397>,  <32.571861, 33.720348, 25.081575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.473961, 33.517220, 24.999397>,  <32.310791, 33.178669, 24.862432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473961, 33.517220, 24.999397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597599, 0.531050, -0.600717,
		-0.690270, 0.040424, 0.722422,
		0.407926, 0.846376, 0.342411,
		32.596340, 33.771133, 25.102121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797050, 33.675037, 25.060520>,  <32.310791, 33.178669, 24.862432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797050, 33.675037, 25.060520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.122192, 33.897636, 24.991728>,  <32.317276, 34.031197, 24.950453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.122192, 33.897636, 24.991728>,  <31.797050, 33.675037, 25.060520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122192, 33.897636, 24.991728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538961, 0.606641, -0.584386,
		-0.220881, 0.567711, 0.793043,
		0.812855, 0.556499, -0.171979,
		32.366047, 34.064587, 24.940134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576635, 34.332592, 25.030697>,  <31.797050, 33.675037, 25.060520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576635, 34.332592, 25.030697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932344, 34.376118, 24.852997>,  <32.145771, 34.402233, 24.746376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932344, 34.376118, 24.852997>,  <31.576635, 34.332592, 25.030697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932344, 34.376118, 24.852997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377670, 0.722571, -0.579014,
		0.257999, 0.682680, 0.683655,
		0.889271, 0.108811, -0.444250,
		32.199127, 34.408760, 24.719723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758957, 35.076656, 25.036253>,  <31.576635, 34.332592, 25.030697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758957, 35.076656, 25.036253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.980223, 34.912003, 24.746544>,  <32.112984, 34.813210, 24.572720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.980223, 34.912003, 24.746544>,  <31.758957, 35.076656, 25.036253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980223, 34.912003, 24.746544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235301, 0.756797, -0.609829,
		0.799151, 0.507758, 0.321776,
		0.553165, -0.411631, -0.724271,
		32.146172, 34.788513, 24.529263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227768, 35.597168, 24.698174>,  <31.758957, 35.076656, 25.036253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227768, 35.597168, 24.698174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164154, 35.308968, 24.428185>,  <32.125984, 35.136047, 24.266191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.164154, 35.308968, 24.428185>,  <32.227768, 35.597168, 24.698174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164154, 35.308968, 24.428185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246992, 0.690970, -0.679378,
		0.955878, 0.058670, -0.287845,
		-0.159033, -0.720498, -0.674975,
		32.116444, 35.092819, 24.225693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673645, 35.893845, 24.024818>,  <32.227768, 35.597168, 24.698174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673645, 35.893845, 24.024818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.446041, 35.588886, 23.901539>,  <32.309479, 35.405910, 23.827570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.446041, 35.588886, 23.901539>,  <32.673645, 35.893845, 24.024818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446041, 35.588886, 23.901539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270811, 0.527609, -0.805165,
		0.776462, -0.374680, -0.506678,
		-0.569006, -0.762393, -0.308200,
		32.275337, 35.360168, 23.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886604, 35.771465, 23.307003>,  <32.673645, 35.893845, 24.024818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886604, 35.771465, 23.307003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.520420, 35.618160, 23.356052>,  <32.300709, 35.526176, 23.385483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.520420, 35.618160, 23.356052>,  <32.886604, 35.771465, 23.307003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520420, 35.618160, 23.356052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297879, 0.440571, -0.846856,
		0.270539, -0.811795, -0.517492,
		-0.915465, -0.383257, 0.122625,
		32.245781, 35.503181, 23.392839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316616, 35.247879, 22.992519>,  <32.886604, 35.771465, 23.307003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316616, 35.247879, 22.992519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.611973, 35.138931, 22.745750>,  <33.789185, 35.073563, 22.597689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.611973, 35.138931, 22.745750>,  <33.316616, 35.247879, 22.992519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611973, 35.138931, 22.745750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534500, -0.321445, 0.781654,
		-0.411210, -0.906910, -0.091767,
		0.738388, -0.272374, -0.616924,
		33.833488, 35.057220, 22.560673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543499, 34.522396, 23.180538>,  <33.316616, 35.247879, 22.992519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543499, 34.522396, 23.180538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.849110, 34.697613, 22.991062>,  <34.032475, 34.802742, 22.877377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.849110, 34.697613, 22.991062>,  <33.543499, 34.522396, 23.180538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849110, 34.697613, 22.991062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618374, -0.287719, 0.731321,
		0.184059, -0.851667, -0.490698,
		0.764026, 0.438041, -0.473692,
		34.078316, 34.829025, 22.848955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237755, 33.991390, 23.175001>,  <33.543499, 34.522396, 23.180538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237755, 33.991390, 23.175001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373135, 34.361568, 23.106873>,  <34.454361, 34.583675, 23.065994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.373135, 34.361568, 23.106873>,  <34.237755, 33.991390, 23.175001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373135, 34.361568, 23.106873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825187, -0.204906, 0.526384,
		0.452237, -0.318703, -0.833012,
		0.338450, 0.925441, -0.170323,
		34.474670, 34.639202, 23.055775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948845, 33.956100, 22.924742>,  <34.237755, 33.991390, 23.175001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948845, 33.956100, 22.924742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936073, 34.335186, 23.051752>,  <34.928410, 34.562637, 23.127958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936073, 34.335186, 23.051752>,  <34.948845, 33.956100, 22.924742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936073, 34.335186, 23.051752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777543, -0.176064, 0.603678,
		0.628018, 0.266165, -0.731265,
		-0.031929, 0.947712, 0.317527,
		34.926495, 34.619499, 23.147011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671722, 34.190121, 23.004654>,  <34.948845, 33.956100, 22.924742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671722, 34.190121, 23.004654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454670, 34.451023, 23.216356>,  <35.324440, 34.607563, 23.343378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454670, 34.451023, 23.216356>,  <35.671722, 34.190121, 23.004654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454670, 34.451023, 23.216356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643555, -0.082088, 0.760985,
		0.539803, 0.753541, -0.375219,
		-0.542632, 0.652256, 0.529256,
		35.291882, 34.646702, 23.375134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248329, 34.562126, 23.340200>,  <35.671722, 34.190121, 23.004654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248329, 34.562126, 23.340200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917717, 34.662037, 23.541977>,  <35.719349, 34.721985, 23.663044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.917717, 34.662037, 23.541977>,  <36.248329, 34.562126, 23.340200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917717, 34.662037, 23.541977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498826, -0.090211, 0.861994,
		0.260813, 0.964092, -0.050034,
		-0.826528, 0.249777, 0.504443,
		35.669758, 34.736969, 23.693310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472984, 35.136562, 23.753284>,  <36.248329, 34.562126, 23.340200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472984, 35.136562, 23.753284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156910, 34.992699, 23.951778>,  <35.967266, 34.906380, 24.070875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.156910, 34.992699, 23.951778>,  <36.472984, 35.136562, 23.753284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156910, 34.992699, 23.951778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533328, -0.004640, 0.845895,
		-0.301932, 0.933072, 0.195484,
		-0.790188, -0.359660, 0.496233,
		35.919853, 34.884800, 24.100649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227673, 35.486084, 24.417597>,  <36.472984, 35.136562, 23.753284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227673, 35.486084, 24.417597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071239, 35.120270, 24.458950>,  <35.977379, 34.900784, 24.483763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071239, 35.120270, 24.458950>,  <36.227673, 35.486084, 24.417597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071239, 35.120270, 24.458950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591328, -0.163601, 0.789662,
		-0.705258, 0.369954, 0.604769,
		-0.391080, -0.914532, 0.103383,
		35.953915, 34.845909, 24.489965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152966, 35.427265, 25.028889>,  <36.227673, 35.486084, 24.417597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152966, 35.427265, 25.028889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142624, 35.034405, 24.954365>,  <36.136417, 34.798687, 24.909651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.142624, 35.034405, 24.954365>,  <36.152966, 35.427265, 25.028889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142624, 35.034405, 24.954365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609290, -0.163237, 0.775964,
		-0.792526, -0.093456, 0.602634,
		-0.025854, -0.982151, -0.186311,
		36.134869, 34.739761, 24.898472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986397, 35.089241, 25.653547>,  <36.152966, 35.427265, 25.028889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986397, 35.089241, 25.653547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.149578, 34.822685, 25.403908>,  <36.247486, 34.662754, 25.254124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.149578, 34.822685, 25.403908>,  <35.986397, 35.089241, 25.653547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149578, 34.822685, 25.403908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542389, -0.372979, 0.752796,
		-0.734429, -0.645612, 0.209283,
		0.407956, -0.666388, -0.624099,
		36.271965, 34.622768, 25.216679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980858, 34.376961, 26.012329>,  <35.986397, 35.089241, 25.653547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980858, 34.376961, 26.012329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.245369, 34.329514, 25.716049>,  <36.404076, 34.301044, 25.538280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.245369, 34.329514, 25.716049>,  <35.980858, 34.376961, 26.012329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245369, 34.329514, 25.716049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559009, -0.580520, 0.592035,
		-0.500216, -0.805560, -0.317580,
		0.661281, -0.118615, -0.740701,
		36.443752, 34.293930, 25.493839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128407, 33.575714, 25.841963>,  <35.980858, 34.376961, 26.012329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128407, 33.575714, 25.841963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440731, 33.796272, 25.724461>,  <36.628124, 33.928608, 25.653959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.440731, 33.796272, 25.724461>,  <36.128407, 33.575714, 25.841963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440731, 33.796272, 25.724461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617313, -0.608496, 0.498654,
		0.096207, -0.570695, -0.815506,
		0.780812, 0.551397, -0.293756,
		36.674976, 33.961693, 25.636333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637356, 33.130138, 25.566954>,  <36.128407, 33.575714, 25.841963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637356, 33.130138, 25.566954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847054, 33.454147, 25.672043>,  <36.972874, 33.648552, 25.735096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.847054, 33.454147, 25.672043>,  <36.637356, 33.130138, 25.566954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847054, 33.454147, 25.672043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667478, -0.582455, 0.463918,
		0.528811, -0.067843, -0.846024,
		0.524244, 0.810027, 0.262725,
		37.004326, 33.697155, 25.750860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332558, 32.915745, 25.632736>,  <36.637356, 33.130138, 25.566954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332558, 32.915745, 25.632736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378006, 33.276512, 25.799416>,  <37.405277, 33.492973, 25.899424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378006, 33.276512, 25.799416>,  <37.332558, 32.915745, 25.632736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378006, 33.276512, 25.799416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768756, -0.345499, 0.538186,
		0.629368, 0.259190, -0.732609,
		0.113623, 0.901915, 0.416700,
		37.412094, 33.547085, 25.924425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.265705, 39.249676, 21.794985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.956181, 39.141247, 22.023977>,  <36.770466, 39.076191, 22.161373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.956181, 39.141247, 22.023977>,  <37.265705, 39.249676, 21.794985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956181, 39.141247, 22.023977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573993, -0.082112, -0.814733,
		0.267857, -0.959051, -0.092053,
		-0.773812, -0.271070, 0.572483,
		36.724037, 39.059925, 22.195723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947037, 38.726883, 21.392689>,  <37.265705, 39.249676, 21.794985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947037, 38.726883, 21.392689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.696064, 38.774433, 21.700506>,  <36.545479, 38.802963, 21.885197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.696064, 38.774433, 21.700506>,  <36.947037, 38.726883, 21.392689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696064, 38.774433, 21.700506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776595, -0.167642, -0.607285,
		0.056816, -0.978655, 0.197502,
		-0.627432, 0.118876, 0.769544,
		36.507835, 38.810097, 21.931370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467522, 38.168797, 21.350212>,  <36.947037, 38.726883, 21.392689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467522, 38.168797, 21.350212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318798, 38.497459, 21.523016>,  <36.229565, 38.694656, 21.626698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318798, 38.497459, 21.523016>,  <36.467522, 38.168797, 21.350212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318798, 38.497459, 21.523016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771000, -0.014136, -0.636678,
		-0.517026, -0.569803, 0.638756,
		-0.371810, 0.821660, 0.432009,
		36.207256, 38.743958, 21.652618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782299, 38.086647, 21.451241>,  <36.467522, 38.168797, 21.350212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782299, 38.086647, 21.451241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798378, 38.485012, 21.483576>,  <35.808025, 38.724033, 21.502977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.798378, 38.485012, 21.483576>,  <35.782299, 38.086647, 21.451241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798378, 38.485012, 21.483576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770992, 0.082375, -0.631495,
		-0.635575, -0.036943, 0.771154,
		0.040195, 0.995916, 0.080838,
		35.810436, 38.783787, 21.507828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094009, 38.316059, 21.457340>,  <35.782299, 38.086647, 21.451241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094009, 38.316059, 21.457340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327675, 38.615170, 21.331116>,  <35.467873, 38.794636, 21.255381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.327675, 38.615170, 21.331116>,  <35.094009, 38.316059, 21.457340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327675, 38.615170, 21.331116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673091, 0.229068, -0.703190,
		-0.453546, 0.623179, 0.637137,
		0.584161, 0.747781, -0.315563,
		35.502922, 38.839504, 21.236446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587196, 38.707100, 21.347399>,  <35.094009, 38.316059, 21.457340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587196, 38.707100, 21.347399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891876, 38.879524, 21.153906>,  <35.074684, 38.982979, 21.037809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891876, 38.879524, 21.153906>,  <34.587196, 38.707100, 21.347399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891876, 38.879524, 21.153906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624371, 0.288853, -0.725758,
		-0.173118, 0.854840, 0.489161,
		0.761702, 0.431060, -0.483732,
		35.120388, 39.008842, 21.008787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413990, 39.342964, 21.135872>,  <34.587196, 38.707100, 21.347399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413990, 39.342964, 21.135872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689934, 39.183643, 20.894064>,  <34.855499, 39.088051, 20.748980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.689934, 39.183643, 20.894064>,  <34.413990, 39.342964, 21.135872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689934, 39.183643, 20.894064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596398, 0.160660, -0.786446,
		0.410369, 0.903073, -0.126716,
		0.689860, -0.398306, -0.604521,
		34.896893, 39.064152, 20.712708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541695, 39.860031, 20.571671>,  <34.413990, 39.342964, 21.135872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541695, 39.860031, 20.571671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623657, 39.495403, 20.429092>,  <34.672832, 39.276627, 20.343546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623657, 39.495403, 20.429092>,  <34.541695, 39.860031, 20.571671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623657, 39.495403, 20.429092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339282, 0.275441, -0.899455,
		0.918097, 0.305236, -0.252842,
		0.204903, -0.911572, -0.356443,
		34.685127, 39.221931, 20.322159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608208, 39.949131, 19.877222>,  <34.541695, 39.860031, 20.571671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608208, 39.949131, 19.877222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581139, 39.550426, 19.894558>,  <34.564896, 39.311203, 19.904959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581139, 39.550426, 19.894558>,  <34.608208, 39.949131, 19.877222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581139, 39.550426, 19.894558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377992, -0.014585, -0.925694,
		0.923332, -0.079025, -0.375782,
		-0.067672, -0.996766, 0.043338,
		34.560837, 39.251396, 19.907558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896969, 39.605072, 19.192734>,  <34.608208, 39.949131, 19.877222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896969, 39.605072, 19.192734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691616, 39.295532, 19.341108>,  <34.568405, 39.109806, 19.430132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691616, 39.295532, 19.341108>,  <34.896969, 39.605072, 19.192734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691616, 39.295532, 19.341108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370076, -0.190344, -0.909292,
		0.774265, -0.604086, -0.188666,
		-0.513379, -0.773854, 0.370935,
		34.537601, 39.063377, 19.452389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974930, 39.055977, 18.594891>,  <34.896969, 39.605072, 19.192734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974930, 39.055977, 18.594891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684753, 38.922676, 18.835783>,  <34.510647, 38.842693, 18.980318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684753, 38.922676, 18.835783>,  <34.974930, 39.055977, 18.594891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684753, 38.922676, 18.835783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507638, -0.331821, -0.795109,
		0.464807, -0.882517, 0.071543,
		-0.725437, -0.333254, 0.602232,
		34.467121, 38.822701, 19.016453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692604, 38.352009, 18.300617>,  <34.974930, 39.055977, 18.594891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692604, 38.352009, 18.300617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428135, 38.569256, 18.507643>,  <34.269451, 38.699604, 18.631857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428135, 38.569256, 18.507643>,  <34.692604, 38.352009, 18.300617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428135, 38.569256, 18.507643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711937, -0.236626, -0.661176,
		-0.236626, -0.805626, 0.543116,
		0.661176, -0.543116, -0.517562,
		34.229782, 38.732189, 18.662912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061203, 37.959198, 18.400637>,  <34.692604, 38.352009, 18.300617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061203, 37.959198, 18.400637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935787, 38.339027, 18.399942>,  <33.860538, 38.566925, 18.399527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935787, 38.339027, 18.399942>,  <34.061203, 37.959198, 18.400637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935787, 38.339027, 18.399942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718419, -0.238410, -0.653479,
		-0.620940, -0.203646, 0.756943,
		-0.313541, 0.949573, -0.001736,
		33.841724, 38.623898, 18.399422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345673, 38.132896, 18.700603>,  <34.061203, 37.959198, 18.400637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345673, 38.132896, 18.700603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483524, 38.329453, 18.380661>,  <33.566235, 38.447384, 18.188696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483524, 38.329453, 18.380661>,  <33.345673, 38.132896, 18.700603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483524, 38.329453, 18.380661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769670, -0.339898, -0.540441,
		-0.537435, 0.801878, 0.261066,
		0.344632, 0.491387, -0.799855,
		33.586914, 38.476868, 18.140705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656334, 38.061462, 18.777752>,  <33.345673, 38.132896, 18.700603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656334, 38.061462, 18.777752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886662, 37.893375, 18.497225>,  <33.024860, 37.792522, 18.328909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886662, 37.893375, 18.497225>,  <32.656334, 38.061462, 18.777752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886662, 37.893375, 18.497225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006750, 0.855329, -0.518041,
		0.817548, 0.303032, 0.489680,
		0.575821, -0.420219, -0.701318,
		33.059406, 37.767311, 18.286829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229366, 37.666046, 18.464067>,  <32.656334, 38.061462, 18.777752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229366, 37.666046, 18.464067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950449, 37.393669, 18.374535>,  <31.783098, 37.230244, 18.320814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950449, 37.393669, 18.374535>,  <32.229366, 37.666046, 18.464067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950449, 37.393669, 18.374535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069359, -0.374906, 0.924465,
		-0.713421, 0.629099, 0.308649,
		-0.697294, -0.680940, -0.223832,
		31.741261, 37.189388, 18.307384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917360, 37.596680, 19.052876>,  <32.229366, 37.666046, 18.464067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917360, 37.596680, 19.052876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.814123, 37.265812, 18.853207>,  <31.752180, 37.067291, 18.733406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.814123, 37.265812, 18.853207>,  <31.917360, 37.596680, 19.052876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814123, 37.265812, 18.853207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157008, -0.545719, 0.823128,
		-0.953276, 0.134071, 0.270720,
		-0.258095, -0.827173, -0.499171,
		31.736694, 37.017658, 18.703455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456270, 37.276279, 19.580864>,  <31.917360, 37.596680, 19.052876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456270, 37.276279, 19.580864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620899, 37.006386, 19.335802>,  <31.719677, 36.844448, 19.188765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620899, 37.006386, 19.335802>,  <31.456270, 37.276279, 19.580864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620899, 37.006386, 19.335802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240323, -0.568087, 0.787097,
		-0.879121, -0.471182, -0.071655,
		0.411572, -0.674733, -0.612653,
		31.744371, 36.803967, 19.152006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216585, 36.544331, 19.889067>,  <31.456270, 37.276279, 19.580864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216585, 36.544331, 19.889067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.526527, 36.487804, 19.642611>,  <31.712492, 36.453888, 19.494738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.526527, 36.487804, 19.642611>,  <31.216585, 36.544331, 19.889067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526527, 36.487804, 19.642611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391873, -0.657425, 0.643606,
		-0.496019, -0.740149, -0.454030,
		0.774855, -0.141319, -0.616140,
		31.758984, 36.445408, 19.457769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255226, 35.859947, 19.810665>,  <31.216585, 36.544331, 19.889067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255226, 35.859947, 19.810665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618341, 35.988430, 19.702780>,  <31.836210, 36.065517, 19.638048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.618341, 35.988430, 19.702780>,  <31.255226, 35.859947, 19.810665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618341, 35.988430, 19.702780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418242, -0.644990, 0.639579,
		0.031473, -0.693409, -0.719857,
		0.907790, 0.321204, -0.269713,
		31.890678, 36.084793, 19.621866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674641, 35.296959, 19.905493>,  <31.255226, 35.859947, 19.810665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674641, 35.296959, 19.905493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.957472, 35.573483, 19.845989>,  <32.127171, 35.739399, 19.810287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.957472, 35.573483, 19.845989>,  <31.674641, 35.296959, 19.905493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957472, 35.573483, 19.845989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608057, -0.487013, 0.626965,
		0.360981, -0.533767, -0.764713,
		0.707078, 0.691311, -0.148758,
		32.169594, 35.780876, 19.801361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276497, 34.975639, 19.735065>,  <31.674641, 35.296959, 19.905493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276497, 34.975639, 19.735065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387321, 35.329506, 19.885050>,  <32.453815, 35.541828, 19.975040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.387321, 35.329506, 19.885050>,  <32.276497, 34.975639, 19.735065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387321, 35.329506, 19.885050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591228, -0.464584, 0.659250,
		0.757419, 0.039034, -0.651761,
		0.277065, 0.884668, 0.374963,
		32.470440, 35.594906, 19.997540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966419, 34.820766, 19.849033>,  <32.276497, 34.975639, 19.735065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966419, 34.820766, 19.849033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878929, 35.143772, 20.068150>,  <32.826435, 35.337578, 20.199619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878929, 35.143772, 20.068150>,  <32.966419, 34.820766, 19.849033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878929, 35.143772, 20.068150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470146, -0.404714, 0.784327,
		0.855057, 0.429094, -0.291130,
		-0.218725, 0.807518, 0.547790,
		32.813313, 35.386028, 20.232487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528992, 35.091206, 20.066628>,  <32.966419, 34.820766, 19.849033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528992, 35.091206, 20.066628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.270573, 35.224693, 20.341219>,  <33.115520, 35.304787, 20.505974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.270573, 35.224693, 20.341219>,  <33.528992, 35.091206, 20.066628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270573, 35.224693, 20.341219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662698, -0.201032, 0.721400,
		0.378750, 0.920987, -0.091279,
		-0.646049, 0.333720, 0.686477,
		33.076759, 35.324810, 20.547163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914211, 35.549030, 20.515924>,  <33.528992, 35.091206, 20.066628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914211, 35.549030, 20.515924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593369, 35.459766, 20.737490>,  <33.400864, 35.406208, 20.870430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593369, 35.459766, 20.737490>,  <33.914211, 35.549030, 20.515924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593369, 35.459766, 20.737490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584956, -0.106906, 0.803989,
		-0.120200, 0.968902, 0.216288,
		-0.802109, -0.223158, 0.553915,
		33.352737, 35.392818, 20.903664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999874, 35.971169, 21.136309>,  <33.914211, 35.549030, 20.515924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999874, 35.971169, 21.136309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747215, 35.675598, 21.230129>,  <33.595619, 35.498257, 21.286421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.747215, 35.675598, 21.230129>,  <33.999874, 35.971169, 21.136309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747215, 35.675598, 21.230129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464055, -0.118011, 0.877910,
		-0.621032, 0.663370, 0.417443,
		-0.631642, -0.738927, 0.234552,
		33.557724, 35.453918, 21.300495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725403, 36.120480, 21.746845>,  <33.999874, 35.971169, 21.136309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725403, 36.120480, 21.746845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665077, 35.725098, 21.752703>,  <33.628880, 35.487869, 21.756216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665077, 35.725098, 21.752703>,  <33.725403, 36.120480, 21.746845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665077, 35.725098, 21.752703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451170, -0.055645, 0.890701,
		-0.879602, 0.140938, 0.454353,
		-0.150816, -0.988453, 0.014642,
		33.619831, 35.428562, 21.757095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336445, 35.844128, 22.255976>,  <33.725403, 36.120480, 21.746845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336445, 35.844128, 22.255976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550419, 35.514030, 22.183521>,  <33.678802, 35.315971, 22.140049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550419, 35.514030, 22.183521>,  <33.336445, 35.844128, 22.255976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550419, 35.514030, 22.183521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323006, 0.001648, 0.946395,
		-0.780711, -0.564771, 0.267441,
		0.534937, -0.825246, -0.181138,
		33.710899, 35.266457, 22.129179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670731, 35.495155, 22.620577>,  <33.336445, 35.844128, 22.255976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670731, 35.495155, 22.620577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344151, 35.568695, 22.839523>,  <32.148201, 35.612820, 22.970892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.344151, 35.568695, 22.839523>,  <32.670731, 35.495155, 22.620577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344151, 35.568695, 22.839523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392052, 0.519444, -0.759258,
		-0.423918, -0.834491, -0.352019,
		-0.816448, 0.183853, 0.547366,
		32.099216, 35.623852, 23.003733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105236, 35.492031, 22.115486>,  <32.670731, 35.495155, 22.620577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105236, 35.492031, 22.115486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938959, 35.670151, 22.432701>,  <31.839191, 35.777023, 22.623030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938959, 35.670151, 22.432701>,  <32.105236, 35.492031, 22.115486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938959, 35.670151, 22.432701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590084, 0.531467, -0.607737,
		-0.692096, -0.720592, 0.041835,
		-0.415696, 0.445299, 0.793036,
		31.814251, 35.803741, 22.670612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350901, 35.515808, 21.937157>,  <32.105236, 35.492031, 22.115486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350901, 35.515808, 21.937157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440844, 35.783890, 22.220074>,  <31.494810, 35.944740, 22.389824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440844, 35.783890, 22.220074>,  <31.350901, 35.515808, 21.937157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440844, 35.783890, 22.220074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518774, 0.696793, -0.495331,
		-0.824810, -0.255546, 0.504365,
		0.224859, 0.670205, 0.707293,
		31.508301, 35.984951, 22.432262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821033, 35.919212, 21.903206>,  <31.350901, 35.515808, 21.937157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821033, 35.919212, 21.903206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075438, 36.156693, 22.100393>,  <31.228081, 36.299179, 22.218706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.075438, 36.156693, 22.100393>,  <30.821033, 35.919212, 21.903206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075438, 36.156693, 22.100393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393574, 0.799052, -0.454550,
		-0.663771, 0.095080, 0.741868,
		0.636010, 0.593697, 0.492966,
		31.266241, 36.334801, 22.248283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388285, 36.375088, 22.197704>,  <30.821033, 35.919212, 21.903206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388285, 36.375088, 22.197704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758413, 36.521111, 22.156687>,  <30.980490, 36.608723, 22.132076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.758413, 36.521111, 22.156687>,  <30.388285, 36.375088, 22.197704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758413, 36.521111, 22.156687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363677, 0.777861, -0.512514,
		-0.107332, 0.511533, 0.852534,
		0.925321, 0.365056, -0.102543,
		31.036009, 36.630627, 22.125923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260315, 37.108856, 22.343929>,  <30.388285, 36.375088, 22.197704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260315, 37.108856, 22.343929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.604332, 37.092113, 22.140528>,  <30.810741, 37.082066, 22.018486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.604332, 37.092113, 22.140528>,  <30.260315, 37.108856, 22.343929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604332, 37.092113, 22.140528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271657, 0.806056, -0.525810,
		0.431893, 0.590357, 0.681870,
		0.860041, -0.041859, -0.508505,
		30.862345, 37.079556, 21.987976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613651, 37.865261, 22.347198>,  <30.260315, 37.108856, 22.343929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613651, 37.865261, 22.347198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720411, 37.621658, 22.048435>,  <30.784468, 37.475498, 21.869177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720411, 37.621658, 22.048435>,  <30.613651, 37.865261, 22.347198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720411, 37.621658, 22.048435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272741, 0.695607, -0.664638,
		0.924325, 0.381104, 0.019554,
		0.266898, -0.609008, -0.746910,
		30.800480, 37.438957, 21.824362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511969, 38.651218, 22.415611>,  <30.613651, 37.865261, 22.347198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511969, 38.651218, 22.415611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.260338, 38.869110, 22.637436>,  <30.109360, 38.999844, 22.770531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.260338, 38.869110, 22.637436>,  <30.511969, 38.651218, 22.415611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260338, 38.869110, 22.637436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208584, -0.568955, 0.795476,
		0.748836, 0.616088, 0.244296,
		-0.629077, 0.544725, 0.554560,
		30.071615, 39.032528, 22.803804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918940, 38.776623, 23.029861>,  <30.511969, 38.651218, 22.415611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918940, 38.776623, 23.029861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534061, 38.849148, 23.111160>,  <30.303135, 38.892662, 23.159939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.534061, 38.849148, 23.111160>,  <30.918940, 38.776623, 23.029861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534061, 38.849148, 23.111160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070302, -0.555610, 0.828466,
		0.263138, 0.811433, 0.521858,
		-0.962194, 0.181313, 0.203247,
		30.245403, 38.903542, 23.172134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983273, 39.001595, 23.686226>,  <30.918940, 38.776623, 23.029861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983273, 39.001595, 23.686226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595533, 38.911396, 23.647209>,  <30.362890, 38.857277, 23.623800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595533, 38.911396, 23.647209>,  <30.983273, 39.001595, 23.686226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595533, 38.911396, 23.647209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029183, -0.499870, 0.865609,
		-0.243952, 0.836229, 0.491129,
		-0.969348, -0.225500, -0.097541,
		30.304729, 38.843746, 23.617947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665394, 39.186680, 24.359463>,  <30.983273, 39.001595, 23.686226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665394, 39.186680, 24.359463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.417789, 38.929169, 24.179516>,  <30.269228, 38.774662, 24.071548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.417789, 38.929169, 24.179516>,  <30.665394, 39.186680, 24.359463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417789, 38.929169, 24.179516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108860, -0.496942, 0.860929,
		-0.777803, 0.581895, 0.237530,
		-0.619009, -0.643776, -0.449868,
		30.232086, 38.736034, 24.044556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114143, 39.015369, 24.844591>,  <30.665394, 39.186680, 24.359463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114143, 39.015369, 24.844591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102098, 38.734852, 24.559696>,  <30.094872, 38.566540, 24.388760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102098, 38.734852, 24.559696>,  <30.114143, 39.015369, 24.844591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102098, 38.734852, 24.559696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075445, -0.708933, 0.701230,
		-0.996695, 0.074852, -0.031560,
		-0.030115, -0.701293, -0.712237,
		30.093063, 38.524464, 24.346025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559500, 38.593327, 25.064863>,  <30.114143, 39.015369, 24.844591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559500, 38.593327, 25.064863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.789902, 38.376736, 24.819906>,  <29.928143, 38.246780, 24.672932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.789902, 38.376736, 24.819906>,  <29.559500, 38.593327, 25.064863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789902, 38.376736, 24.819906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074240, -0.711403, 0.698853,
		-0.814068, -0.448006, -0.369572,
		0.576005, -0.541477, -0.612390,
		29.962704, 38.214294, 24.636189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302185, 37.880974, 25.192614>,  <29.559500, 38.593327, 25.064863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302185, 37.880974, 25.192614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.658047, 37.838673, 25.014925>,  <29.871563, 37.813290, 24.908312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.658047, 37.838673, 25.014925>,  <29.302185, 37.880974, 25.192614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658047, 37.838673, 25.014925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239424, -0.720337, 0.650992,
		-0.388836, -0.685514, -0.615530,
		0.889653, -0.105756, -0.444222,
		29.924942, 37.806946, 24.881659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.692095, 39.348347, 20.543755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.089825, 39.348602, 20.501194>,  <32.328461, 39.348755, 20.475658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.089825, 39.348602, 20.501194>,  <31.692095, 39.348347, 20.543755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089825, 39.348602, 20.501194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103887, 0.210393, 0.972081,
		0.023002, -0.977616, 0.209133,
		0.994323, 0.000634, -0.106401,
		32.388123, 39.348793, 20.469275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886847, 39.195423, 21.202370>,  <31.692095, 39.348347, 20.543755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886847, 39.195423, 21.202370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.201977, 39.343750, 21.005665>,  <32.391056, 39.432747, 20.887642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.201977, 39.343750, 21.005665>,  <31.886847, 39.195423, 21.202370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201977, 39.343750, 21.005665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333880, 0.413809, 0.846927,
		0.517548, -0.831420, 0.202202,
		0.787826, 0.370814, -0.491761,
		32.438324, 39.454994, 20.858137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418991, 39.012413, 21.544140>,  <31.886847, 39.195423, 21.202370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418991, 39.012413, 21.544140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.591465, 39.303699, 21.331057>,  <32.694950, 39.478474, 21.203207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.591465, 39.303699, 21.331057>,  <32.418991, 39.012413, 21.544140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591465, 39.303699, 21.331057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475818, 0.318113, 0.820001,
		0.766603, -0.607040, -0.209337,
		0.431181, 0.728221, -0.532707,
		32.720818, 39.522167, 21.171244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200985, 38.967560, 21.597404>,  <32.418991, 39.012413, 21.544140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200985, 38.967560, 21.597404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.102913, 39.341690, 21.495384>,  <33.044067, 39.566170, 21.434172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.102913, 39.341690, 21.495384>,  <33.200985, 38.967560, 21.597404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102913, 39.341690, 21.495384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461503, 0.343964, 0.817743,
		0.852584, 0.082789, -0.515990,
		-0.245182, 0.935326, -0.255051,
		33.029358, 39.622288, 21.418869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876255, 39.211857, 21.677561>,  <33.200985, 38.967560, 21.597404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876255, 39.211857, 21.677561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.638149, 39.531654, 21.645391>,  <33.495285, 39.723534, 21.626089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.638149, 39.531654, 21.645391>,  <33.876255, 39.211857, 21.677561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638149, 39.531654, 21.645391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413518, 0.390615, 0.822449,
		0.688960, 0.456316, -0.563125,
		-0.595262, 0.799497, -0.080423,
		33.459572, 39.771503, 21.621265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280083, 39.750813, 21.704987>,  <33.876255, 39.211857, 21.677561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280083, 39.750813, 21.704987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.928402, 39.905312, 21.816570>,  <33.717392, 39.998009, 21.883520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.928402, 39.905312, 21.816570>,  <34.280083, 39.750813, 21.704987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928402, 39.905312, 21.816570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399782, 0.279546, 0.872942,
		0.259186, 0.879016, -0.400191,
		-0.879202, 0.386244, 0.278960,
		33.664642, 40.021183, 21.900259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429802, 40.389240, 21.885332>,  <34.280083, 39.750813, 21.704987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429802, 40.389240, 21.885332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092064, 40.328796, 22.090952>,  <33.889420, 40.292530, 22.214323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092064, 40.328796, 22.090952>,  <34.429802, 40.389240, 21.885332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092064, 40.328796, 22.090952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385008, 0.496112, 0.778230,
		-0.372625, 0.855008, -0.360711,
		-0.844346, -0.151111, 0.514048,
		33.838760, 40.283463, 22.245167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290131, 41.068958, 22.104689>,  <34.429802, 40.389240, 21.885332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290131, 41.068958, 22.104689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.088718, 40.820389, 22.344786>,  <33.967869, 40.671249, 22.488844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.088718, 40.820389, 22.344786>,  <34.290131, 41.068958, 22.104689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088718, 40.820389, 22.344786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368888, 0.473602, 0.799764,
		-0.781266, 0.624130, -0.009241,
		-0.503534, -0.621420, 0.600243,
		33.937660, 40.633965, 22.524858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109467, 41.517986, 22.589327>,  <34.290131, 41.068958, 22.104689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109467, 41.517986, 22.589327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.069695, 41.147499, 22.734787>,  <34.045834, 40.925209, 22.822063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.069695, 41.147499, 22.734787>,  <34.109467, 41.517986, 22.589327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069695, 41.147499, 22.734787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235323, 0.333207, 0.913015,
		-0.966818, 0.176355, 0.184830,
		-0.099428, -0.926214, 0.363651,
		34.039867, 40.869637, 22.843882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951172, 41.715511, 23.263498>,  <34.109467, 41.517986, 22.589327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951172, 41.715511, 23.263498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.044910, 41.327538, 23.289726>,  <34.101154, 41.094753, 23.305464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.044910, 41.327538, 23.289726>,  <33.951172, 41.715511, 23.263498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044910, 41.327538, 23.289726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350718, 0.147258, 0.924831,
		-0.906685, -0.193737, 0.374685,
		0.234350, -0.969939, 0.065569,
		34.115215, 41.036556, 23.309397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619358, 41.487080, 23.921015>,  <33.951172, 41.715511, 23.263498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619358, 41.487080, 23.921015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912926, 41.228420, 23.837872>,  <34.089066, 41.073223, 23.787987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.912926, 41.228420, 23.837872>,  <33.619358, 41.487080, 23.921015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912926, 41.228420, 23.837872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355482, 0.104914, 0.928776,
		-0.578785, -0.755538, 0.306871,
		0.733921, -0.646649, -0.207857,
		34.133102, 41.034424, 23.775515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647137, 41.072746, 24.518932>,  <33.619358, 41.487080, 23.921015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647137, 41.072746, 24.518932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.997581, 41.021366, 24.333061>,  <34.207848, 40.990540, 24.221539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.997581, 41.021366, 24.333061>,  <33.647137, 41.072746, 24.518932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997581, 41.021366, 24.333061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476734, 0.087335, 0.874698,
		-0.071770, -0.987863, 0.137751,
		0.876113, -0.128448, -0.464680,
		34.260414, 40.982834, 24.193657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042183, 40.684143, 24.536448>,  <33.647137, 41.072746, 24.518932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042183, 40.684143, 24.536448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.714973, 40.857925, 24.687229>,  <32.518650, 40.962193, 24.777699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.714973, 40.857925, 24.687229>,  <33.042183, 40.684143, 24.536448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714973, 40.857925, 24.687229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353941, 0.136388, -0.925270,
		-0.453398, -0.890308, 0.042203,
		-0.818019, 0.434453, 0.376955,
		32.469566, 40.988262, 24.800316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453159, 40.566216, 24.115784>,  <33.042183, 40.684143, 24.536448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453159, 40.566216, 24.115784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.298107, 40.883232, 24.304089>,  <32.205078, 41.073444, 24.417070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.298107, 40.883232, 24.304089>,  <32.453159, 40.566216, 24.115784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298107, 40.883232, 24.304089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490802, 0.254842, -0.833168,
		-0.780293, -0.554010, 0.290199,
		-0.387629, 0.792546, 0.470761,
		32.181820, 41.120995, 24.445316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701374, 40.636238, 23.941088>,  <32.453159, 40.566216, 24.115784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701374, 40.636238, 23.941088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.800175, 40.999809, 24.075453>,  <31.859455, 41.217953, 24.156073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.800175, 40.999809, 24.075453>,  <31.701374, 40.636238, 23.941088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800175, 40.999809, 24.075453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488587, 0.416183, -0.766860,
		-0.836823, 0.025290, 0.546888,
		0.247000, 0.908929, 0.335915,
		31.874275, 41.272488, 24.176228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065863, 41.023731, 23.860689>,  <31.701374, 40.636238, 23.941088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065863, 41.023731, 23.860689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385086, 41.264175, 23.877542>,  <31.576620, 41.408440, 23.887655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.385086, 41.264175, 23.877542>,  <31.065863, 41.023731, 23.860689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385086, 41.264175, 23.877542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421022, 0.606259, -0.674678,
		-0.431097, 0.520693, 0.736909,
		0.798058, 0.601106, 0.042134,
		31.624504, 41.444508, 23.890182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740622, 41.647579, 23.890226>,  <31.065863, 41.023731, 23.860689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740622, 41.647579, 23.890226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.116817, 41.684345, 23.759361>,  <31.342535, 41.706406, 23.680841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.116817, 41.684345, 23.759361>,  <30.740622, 41.647579, 23.890226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116817, 41.684345, 23.759361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300638, 0.673864, -0.674925,
		0.158430, 0.733116, 0.661393,
		0.940488, 0.091911, -0.327163,
		31.398964, 41.711918, 23.661213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828148, 42.353428, 23.743616>,  <30.740622, 41.647579, 23.890226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828148, 42.353428, 23.743616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144672, 42.191307, 23.560505>,  <31.334587, 42.094036, 23.450638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144672, 42.191307, 23.560505>,  <30.828148, 42.353428, 23.743616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144672, 42.191307, 23.560505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185518, 0.554256, -0.811408,
		0.582591, 0.727001, 0.363398,
		0.791310, -0.405302, -0.457776,
		31.382065, 42.069717, 23.423172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132460, 42.934158, 23.414343>,  <30.828148, 42.353428, 23.743616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132460, 42.934158, 23.414343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.268093, 42.599304, 23.242659>,  <31.349474, 42.398392, 23.139648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.268093, 42.599304, 23.242659>,  <31.132460, 42.934158, 23.414343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268093, 42.599304, 23.242659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015409, 0.451236, -0.892271,
		0.940629, 0.309170, 0.140109,
		0.339086, -0.837138, -0.429210,
		31.369820, 42.348164, 23.113895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794628, 43.052555, 23.004896>,  <31.132460, 42.934158, 23.414343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794628, 43.052555, 23.004896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609669, 42.732422, 22.852234>,  <31.498693, 42.540344, 22.760635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609669, 42.732422, 22.852234>,  <31.794628, 43.052555, 23.004896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609669, 42.732422, 22.852234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050699, 0.453598, -0.889764,
		0.885223, -0.392074, -0.250318,
		-0.462396, -0.800330, -0.381657,
		31.470949, 42.492325, 22.737738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145809, 42.901516, 22.263203>,  <31.794628, 43.052555, 23.004896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145809, 42.901516, 22.263203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.794781, 42.710155, 22.275841>,  <31.584164, 42.595341, 22.283422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.794781, 42.710155, 22.275841>,  <32.145809, 42.901516, 22.263203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794781, 42.710155, 22.275841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239817, 0.380951, -0.892953,
		0.415159, -0.791205, -0.449041,
		-0.877571, -0.478405, 0.031590,
		31.531509, 42.566635, 22.285318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067848, 42.600071, 21.558973>,  <32.145809, 42.901516, 22.263203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067848, 42.600071, 21.558973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.707813, 42.611786, 21.732862>,  <31.491793, 42.618813, 21.837196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.707813, 42.611786, 21.732862>,  <32.067848, 42.600071, 21.558973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707813, 42.611786, 21.732862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421907, 0.190546, -0.886390,
		-0.108792, -0.981241, -0.159153,
		-0.900088, 0.029284, 0.434722,
		31.437786, 42.620571, 21.863279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652077, 42.235497, 21.098650>,  <32.067848, 42.600071, 21.558973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652077, 42.235497, 21.098650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.415155, 42.476505, 21.312622>,  <31.273003, 42.621109, 21.441006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.415155, 42.476505, 21.312622>,  <31.652077, 42.235497, 21.098650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415155, 42.476505, 21.312622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603877, 0.107553, -0.789788,
		-0.533396, -0.790824, 0.300144,
		-0.592302, 0.602520, 0.534929,
		31.237465, 42.657261, 21.473101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060278, 42.172997, 20.787281>,  <31.652077, 42.235497, 21.098650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060278, 42.172997, 20.787281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991302, 42.497196, 21.011190>,  <30.949917, 42.691719, 21.145536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.991302, 42.497196, 21.011190>,  <31.060278, 42.172997, 20.787281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991302, 42.497196, 21.011190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696046, 0.301847, -0.651467,
		-0.696982, -0.501968, 0.512097,
		-0.172440, 0.810504, 0.559774,
		30.939569, 42.740349, 21.179123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326542, 42.111702, 20.970642>,  <31.060278, 42.172997, 20.787281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326542, 42.111702, 20.970642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463676, 42.483818, 21.022846>,  <30.545958, 42.707088, 21.054169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463676, 42.483818, 21.022846>,  <30.326542, 42.111702, 20.970642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463676, 42.483818, 21.022846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825394, 0.364644, -0.430997,
		-0.448540, 0.040040, 0.892865,
		0.342836, 0.930286, 0.130509,
		30.566526, 42.762905, 21.061998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652447, 41.719086, 20.682911>,  <30.326542, 42.111702, 20.970642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652447, 41.719086, 20.682911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313536, 41.508099, 20.657932>,  <29.110189, 41.381508, 20.642944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313536, 41.508099, 20.657932>,  <29.652447, 41.719086, 20.682911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313536, 41.508099, 20.657932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262260, -0.517691, 0.814381,
		-0.461886, 0.673630, 0.576961,
		-0.847279, -0.527465, -0.062447,
		29.059353, 41.349857, 20.639198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467777, 41.651470, 21.442553>,  <29.652447, 41.719086, 20.682911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467777, 41.651470, 21.442553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266951, 41.375523, 21.233934>,  <29.146454, 41.209953, 21.108763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266951, 41.375523, 21.233934>,  <29.467777, 41.651470, 21.442553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266951, 41.375523, 21.233934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034416, -0.618524, 0.785012,
		-0.864144, 0.376179, 0.334283,
		-0.502067, -0.689868, -0.521547,
		29.116331, 41.168564, 21.077471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892786, 41.394379, 21.803068>,  <29.467777, 41.651470, 21.442553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892786, 41.394379, 21.803068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958580, 41.086407, 21.556442>,  <28.998056, 40.901623, 21.408466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.958580, 41.086407, 21.556442>,  <28.892786, 41.394379, 21.803068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958580, 41.086407, 21.556442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093528, -0.610090, 0.786793,
		-0.981935, -0.187083, -0.028342,
		0.164486, -0.769929, -0.616566,
		29.007925, 40.855427, 21.371471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518621, 40.861618, 22.139875>,  <28.892786, 41.394379, 21.803068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518621, 40.861618, 22.139875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768713, 40.676056, 21.888836>,  <28.918768, 40.564720, 21.738213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768713, 40.676056, 21.888836>,  <28.518621, 40.861618, 22.139875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768713, 40.676056, 21.888836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195491, -0.685430, 0.701405,
		-0.755560, -0.561229, -0.337861,
		0.625229, -0.463905, -0.627599,
		28.956282, 40.536884, 21.700556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388268, 40.109692, 22.235109>,  <28.518621, 40.861618, 22.139875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388268, 40.109692, 22.235109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754057, 40.177242, 22.088020>,  <28.973530, 40.217773, 21.999767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.754057, 40.177242, 22.088020>,  <28.388268, 40.109692, 22.235109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754057, 40.177242, 22.088020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344925, -0.800485, 0.490154,
		-0.211582, -0.575069, -0.790271,
		0.914472, 0.168877, -0.367724,
		29.028399, 40.227905, 21.977703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618685, 39.509312, 21.947147>,  <28.388268, 40.109692, 22.235109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618685, 39.509312, 21.947147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963015, 39.701839, 22.013250>,  <29.169613, 39.817356, 22.052912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.963015, 39.701839, 22.013250>,  <28.618685, 39.509312, 21.947147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963015, 39.701839, 22.013250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337888, -0.783403, 0.521643,
		0.380543, -0.393204, -0.837005,
		0.860824, 0.481322, 0.165259,
		29.221262, 39.846237, 22.062828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144325, 39.045620, 21.893299>,  <28.618685, 39.509312, 21.947147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144325, 39.045620, 21.893299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.376928, 39.314758, 22.076220>,  <29.516491, 39.476242, 22.185972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.376928, 39.314758, 22.076220>,  <29.144325, 39.045620, 21.893299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376928, 39.314758, 22.076220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373519, -0.720177, 0.584661,
		0.722726, -0.169174, -0.670110,
		0.581507, 0.672849, 0.457301,
		29.551380, 39.516613, 22.213409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906788, 38.730469, 21.984129>,  <29.144325, 39.045620, 21.893299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906788, 38.730469, 21.984129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.872913, 39.022320, 22.255560>,  <29.852589, 39.197430, 22.418419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.872913, 39.022320, 22.255560>,  <29.906788, 38.730469, 21.984129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872913, 39.022320, 22.255560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161255, -0.662010, 0.731942,
		0.983273, 0.171408, -0.061594,
		-0.084685, 0.729631, 0.678577,
		29.847507, 39.241211, 22.459133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519960, 38.376873, 21.757250>,  <29.906788, 38.730469, 21.984129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519960, 38.376873, 21.757250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.637917, 38.037811, 21.580832>,  <30.708691, 37.834373, 21.474981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.637917, 38.037811, 21.580832>,  <30.519960, 38.376873, 21.757250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637917, 38.037811, 21.580832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287462, 0.361487, -0.886957,
		0.911265, 0.388340, -0.137069,
		0.294892, -0.847655, -0.441044,
		30.726383, 37.783516, 21.448519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865965, 38.643486, 21.253210>,  <30.519960, 38.376873, 21.757250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865965, 38.643486, 21.253210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.795929, 38.266872, 21.138075>,  <30.753906, 38.040905, 21.068995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.795929, 38.266872, 21.138075>,  <30.865965, 38.643486, 21.253210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795929, 38.266872, 21.138075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337093, 0.332014, -0.880985,
		0.925047, -0.057225, -0.375518,
		-0.175091, -0.941537, -0.287839,
		30.743401, 37.984413, 21.051723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179968, 38.508205, 20.590832>,  <30.865965, 38.643486, 21.253210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179968, 38.508205, 20.590832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.865797, 38.262749, 20.623211>,  <30.677294, 38.115475, 20.642639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.865797, 38.262749, 20.623211>,  <31.179968, 38.508205, 20.590832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865797, 38.262749, 20.623211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402011, 0.406310, -0.820548,
		0.470630, -0.677023, -0.565816,
		-0.785427, -0.613638, 0.080949,
		30.630169, 38.078659, 20.647495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129999, 38.324471, 19.955774>,  <31.179968, 38.508205, 20.590832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129999, 38.324471, 19.955774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.778395, 38.220997, 20.115986>,  <30.567432, 38.158913, 20.212112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.778395, 38.220997, 20.115986>,  <31.129999, 38.324471, 19.955774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778395, 38.220997, 20.115986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423850, 0.039195, -0.904884,
		0.218378, -0.965167, -0.144095,
		-0.879012, -0.258681, 0.400527,
		30.514690, 38.143394, 20.236143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808268, 37.892952, 19.429787>,  <31.129999, 38.324471, 19.955774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808268, 37.892952, 19.429787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500994, 38.002644, 19.661198>,  <30.316629, 38.068459, 19.800043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500994, 38.002644, 19.661198>,  <30.808268, 37.892952, 19.429787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500994, 38.002644, 19.661198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573947, 0.105423, -0.812078,
		-0.283682, -0.955870, 0.076406,
		-0.768186, 0.274225, 0.578525,
		30.270538, 38.084911, 19.834755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229647, 37.523155, 19.212208>,  <30.808268, 37.892952, 19.429787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229647, 37.523155, 19.212208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064547, 37.822540, 19.419838>,  <29.965487, 38.002171, 19.544416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.064547, 37.822540, 19.419838>,  <30.229647, 37.523155, 19.212208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064547, 37.822540, 19.419838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708471, 0.094358, -0.699403,
		-0.572458, -0.656428, 0.491319,
		-0.412748, 0.748464, 0.519076,
		29.940722, 38.047081, 19.575562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559238, 37.435905, 19.097286>,  <30.229647, 37.523155, 19.212208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559238, 37.435905, 19.097286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592772, 37.812420, 19.228098>,  <29.612890, 38.038330, 19.306585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592772, 37.812420, 19.228098>,  <29.559238, 37.435905, 19.097286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592772, 37.812420, 19.228098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666627, 0.296908, -0.683706,
		-0.740662, -0.160691, 0.652379,
		0.083831, 0.941289, 0.327030,
		29.617920, 38.094807, 19.326206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850903, 37.701542, 19.112658>,  <29.559238, 37.435905, 19.097286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850903, 37.701542, 19.112658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.083721, 38.025745, 19.086439>,  <29.223413, 38.220268, 19.070709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.083721, 38.025745, 19.086439>,  <28.850903, 37.701542, 19.112658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083721, 38.025745, 19.086439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612123, 0.383666, -0.691452,
		-0.535280, 0.442580, 0.719443,
		0.582049, 0.810508, -0.065545,
		29.258335, 38.268898, 19.066776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422775, 38.318752, 19.203688>,  <28.850903, 37.701542, 19.112658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422775, 38.318752, 19.203688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747080, 38.429668, 18.997473>,  <28.941662, 38.496220, 18.873745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.747080, 38.429668, 18.997473>,  <28.422775, 38.318752, 19.203688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747080, 38.429668, 18.997473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580758, 0.270586, -0.767791,
		-0.073405, 0.921896, 0.380420,
		0.810760, 0.277292, -0.515536,
		28.990309, 38.512856, 18.842812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.486248, 32.148926, 32.359055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694332, 32.429569, 32.164272>,  <35.819183, 32.597954, 32.047401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.694332, 32.429569, 32.164272>,  <35.486248, 32.148926, 32.359055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694332, 32.429569, 32.164272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650869, -0.043467, -0.757945,
		-0.552948, 0.711234, 0.434044,
		0.520210, 0.701610, -0.486955,
		35.850395, 32.640053, 32.018185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073170, 32.753441, 32.181873>,  <35.486248, 32.148926, 32.359055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073170, 32.753441, 32.181873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353790, 32.699402, 31.901995>,  <35.522163, 32.666977, 31.734068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353790, 32.699402, 31.901995>,  <35.073170, 32.753441, 32.181873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353790, 32.699402, 31.901995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701744, 0.039883, -0.711311,
		0.124002, 0.990029, -0.066823,
		0.701554, -0.135097, -0.699693,
		35.564255, 32.658875, 31.692087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916668, 33.326088, 31.605274>,  <35.073170, 32.753441, 32.181873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916668, 33.326088, 31.605274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137962, 33.035507, 31.442204>,  <35.270741, 32.861160, 31.344360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137962, 33.035507, 31.442204>,  <34.916668, 33.326088, 31.605274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137962, 33.035507, 31.442204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520882, 0.080244, -0.849849,
		0.650086, 0.682518, -0.334001,
		0.553236, -0.726450, -0.407677,
		35.303932, 32.817574, 31.319901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086380, 33.593414, 31.037092>,  <34.916668, 33.326088, 31.605274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086380, 33.593414, 31.037092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135269, 33.207256, 30.944944>,  <35.164604, 32.975559, 30.889656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135269, 33.207256, 30.944944>,  <35.086380, 33.593414, 31.037092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135269, 33.207256, 30.944944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288195, 0.187588, -0.939018,
		0.949740, 0.181159, -0.255295,
		0.122222, -0.965397, -0.230369,
		35.171936, 32.917637, 30.875834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497158, 33.597397, 30.529705>,  <35.086380, 33.593414, 31.037092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497158, 33.597397, 30.529705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304520, 33.247005, 30.518894>,  <35.188938, 33.036770, 30.512407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304520, 33.247005, 30.518894>,  <35.497158, 33.597397, 30.529705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304520, 33.247005, 30.518894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156451, 0.116277, -0.980817,
		0.862317, -0.468127, -0.193046,
		-0.481594, -0.875978, -0.027029,
		35.160042, 32.984211, 30.510786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711674, 33.308205, 29.931906>,  <35.497158, 33.597397, 30.529705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711674, 33.308205, 29.931906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392590, 33.081512, 30.014347>,  <35.201138, 32.945499, 30.063812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392590, 33.081512, 30.014347>,  <35.711674, 33.308205, 29.931906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392590, 33.081512, 30.014347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182299, -0.099159, -0.978230,
		0.574827, -0.817917, -0.024214,
		-0.797710, -0.566727, 0.206104,
		35.153278, 32.911495, 30.076178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769047, 32.704517, 29.446692>,  <35.711674, 33.308205, 29.931906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769047, 32.704517, 29.446692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387730, 32.760632, 29.553690>,  <35.158939, 32.794300, 29.617889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387730, 32.760632, 29.553690>,  <35.769047, 32.704517, 29.446692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387730, 32.760632, 29.553690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281257, -0.089370, -0.955462,
		-0.110131, -0.986069, 0.124652,
		-0.953292, 0.140285, 0.267497,
		35.101742, 32.802715, 29.633940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406799, 32.190483, 29.078194>,  <35.769047, 32.704517, 29.446692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406799, 32.190483, 29.078194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121090, 32.451092, 29.180435>,  <34.949665, 32.607456, 29.241781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121090, 32.451092, 29.180435>,  <35.406799, 32.190483, 29.078194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121090, 32.451092, 29.180435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280099, 0.068578, -0.957518,
		-0.641374, -0.755523, 0.133508,
		-0.714272, 0.651522, 0.255606,
		34.906807, 32.646549, 29.257116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894249, 31.943350, 28.740906>,  <35.406799, 32.190483, 29.078194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894249, 31.943350, 28.740906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769058, 32.313457, 28.826622>,  <34.693943, 32.535522, 28.878052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.769058, 32.313457, 28.826622>,  <34.894249, 31.943350, 28.740906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769058, 32.313457, 28.826622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614696, -0.025342, -0.788357,
		-0.724013, -0.378459, 0.576692,
		-0.312975, 0.925271, 0.214290,
		34.675167, 32.591038, 28.890909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147900, 31.910078, 28.733080>,  <34.894249, 31.943350, 28.740906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147900, 31.910078, 28.733080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285606, 32.274899, 28.643961>,  <34.368229, 32.493790, 28.590488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.285606, 32.274899, 28.643961>,  <34.147900, 31.910078, 28.733080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285606, 32.274899, 28.643961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611122, 0.037535, -0.790646,
		-0.712748, 0.408351, 0.570298,
		0.344268, 0.912053, -0.222799,
		34.388885, 32.548515, 28.577122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594994, 32.309624, 28.655109>,  <34.147900, 31.910078, 28.733080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594994, 32.309624, 28.655109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875698, 32.534241, 28.479746>,  <34.044121, 32.669010, 28.374527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.875698, 32.534241, 28.479746>,  <33.594994, 32.309624, 28.655109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875698, 32.534241, 28.479746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663694, 0.291661, -0.688800,
		-0.258922, 0.774343, 0.577367,
		0.701762, 0.561540, -0.438409,
		34.086227, 32.702702, 28.348223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195171, 32.903992, 28.498091>,  <33.594994, 32.309624, 28.655109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195171, 32.903992, 28.498091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524136, 32.958759, 28.277220>,  <33.721512, 32.991619, 28.144697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524136, 32.958759, 28.277220>,  <33.195171, 32.903992, 28.498091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524136, 32.958759, 28.277220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566916, 0.278235, -0.775365,
		0.047469, 0.950704, 0.306446,
		0.822407, 0.136923, -0.552177,
		33.770859, 32.999836, 28.111567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796322, 33.582027, 28.704195>,  <33.195171, 32.903992, 28.498091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796322, 33.582027, 28.704195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469406, 33.766895, 28.841850>,  <32.273254, 33.877815, 28.924444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469406, 33.766895, 28.841850>,  <32.796322, 33.582027, 28.704195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469406, 33.766895, 28.841850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189789, -0.348001, 0.918082,
		0.544069, 0.815657, 0.196705,
		-0.817294, 0.462168, 0.344139,
		32.224216, 33.905544, 28.945091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024185, 33.875015, 29.297268>,  <32.796322, 33.582027, 28.704195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024185, 33.875015, 29.297268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632103, 33.910656, 29.367979>,  <32.396854, 33.932041, 29.410406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.632103, 33.910656, 29.367979>,  <33.024185, 33.875015, 29.297268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632103, 33.910656, 29.367979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164516, -0.130017, 0.977768,
		0.110109, 0.987500, 0.112785,
		-0.980209, 0.089106, 0.176776,
		32.338039, 33.937389, 29.421011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936291, 34.392410, 29.870659>,  <33.024185, 33.875015, 29.297268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936291, 34.392410, 29.870659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627594, 34.138035, 29.870239>,  <32.442375, 33.985409, 29.869987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627594, 34.138035, 29.870239>,  <32.936291, 34.392410, 29.870659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627594, 34.138035, 29.870239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052246, -0.065048, 0.996514,
		-0.633789, 0.768994, 0.083426,
		-0.771740, -0.635938, -0.001050,
		32.396072, 33.947254, 29.869925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578388, 34.581272, 30.458277>,  <32.936291, 34.392410, 29.870659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578388, 34.581272, 30.458277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436852, 34.212078, 30.397755>,  <32.351929, 33.990562, 30.361441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436852, 34.212078, 30.397755>,  <32.578388, 34.581272, 30.458277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436852, 34.212078, 30.397755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247466, -0.063618, 0.966806,
		-0.901973, 0.379540, -0.205896,
		-0.353843, -0.922985, -0.151305,
		32.330700, 33.935181, 30.352364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007732, 34.382755, 31.055241>,  <32.578388, 34.581272, 30.458277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007732, 34.382755, 31.055241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098911, 34.047451, 30.857107>,  <32.153618, 33.846268, 30.738226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098911, 34.047451, 30.857107>,  <32.007732, 34.382755, 31.055241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098911, 34.047451, 30.857107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182239, -0.463008, 0.867417,
		-0.956468, -0.287992, 0.047224,
		0.227945, -0.838262, -0.495336,
		32.167294, 33.795971, 30.708506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681524, 33.818958, 31.453699>,  <32.007732, 34.382755, 31.055241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681524, 33.818958, 31.453699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975967, 33.640682, 31.249931>,  <32.152634, 33.533718, 31.127670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975967, 33.640682, 31.249931>,  <31.681524, 33.818958, 31.453699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975967, 33.640682, 31.249931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395678, -0.327282, 0.858094,
		-0.549164, -0.833216, -0.064567,
		0.736109, -0.445687, -0.509417,
		32.196800, 33.506977, 31.097107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684546, 33.246593, 31.746267>,  <31.681524, 33.818958, 31.453699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684546, 33.246593, 31.746267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037937, 33.277290, 31.561409>,  <32.249973, 33.295708, 31.450495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037937, 33.277290, 31.561409>,  <31.684546, 33.246593, 31.746267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037937, 33.277290, 31.561409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444103, -0.451215, 0.774066,
		-0.149126, -0.889110, -0.432718,
		0.883478, 0.076738, -0.462144,
		32.302982, 33.300312, 31.422766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057800, 32.652386, 32.012611>,  <31.684546, 33.246593, 31.746267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057800, 32.652386, 32.012611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336788, 32.891529, 31.854576>,  <32.504181, 33.035015, 31.759754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336788, 32.891529, 31.854576>,  <32.057800, 32.652386, 32.012611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336788, 32.891529, 31.854576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672177, -0.354694, 0.649900,
		0.248414, -0.718857, -0.649257,
		0.697473, 0.597860, -0.395088,
		32.546032, 33.070889, 31.736050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741024, 32.288540, 32.134853>,  <32.057800, 32.652386, 32.012611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741024, 32.288540, 32.134853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793720, 32.683907, 32.104717>,  <32.825340, 32.921127, 32.086636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793720, 32.683907, 32.104717>,  <32.741024, 32.288540, 32.134853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793720, 32.683907, 32.104717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614251, -0.021748, 0.788811,
		0.778035, -0.150196, -0.610002,
		0.131743, 0.988417, -0.075338,
		32.833244, 32.980431, 32.082115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501625, 32.369278, 32.168491>,  <32.741024, 32.288540, 32.134853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501625, 32.369278, 32.168491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334770, 32.718777, 32.268536>,  <33.234657, 32.928478, 32.328560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334770, 32.718777, 32.268536>,  <33.501625, 32.369278, 32.168491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334770, 32.718777, 32.268536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578766, 0.043208, 0.814348,
		0.700730, 0.484451, -0.523721,
		-0.417141, 0.873751, 0.250107,
		33.209629, 32.980904, 32.343567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070469, 32.940228, 32.254436>,  <33.501625, 32.369278, 32.168491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070469, 32.940228, 32.254436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745644, 33.086338, 32.436478>,  <33.550747, 33.174004, 32.545704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745644, 33.086338, 32.436478>,  <34.070469, 32.940228, 32.254436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745644, 33.086338, 32.436478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553606, 0.235552, 0.798771,
		0.184572, 0.900604, -0.393504,
		-0.812067, 0.365277, 0.455104,
		33.502022, 33.195923, 32.573009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346279, 33.422791, 32.716702>,  <34.070469, 32.940228, 32.254436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346279, 33.422791, 32.716702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973900, 33.378860, 32.855999>,  <33.750473, 33.352505, 32.939579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973900, 33.378860, 32.855999>,  <34.346279, 33.422791, 32.716702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973900, 33.378860, 32.855999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316491, 0.232983, 0.919539,
		-0.182121, 0.966260, -0.182138,
		-0.930949, -0.109822, 0.348244,
		33.694614, 33.345913, 32.960472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134327, 34.089630, 33.080421>,  <34.346279, 33.422791, 32.716702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134327, 34.089630, 33.080421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923340, 33.795643, 33.250877>,  <33.796749, 33.619251, 33.353149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.923340, 33.795643, 33.250877>,  <34.134327, 34.089630, 33.080421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923340, 33.795643, 33.250877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127335, 0.427530, 0.894988,
		-0.839978, 0.526341, -0.131921,
		-0.527469, -0.734972, 0.426138,
		33.765099, 33.575150, 33.378719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878429, 34.461887, 33.645145>,  <34.134327, 34.089630, 33.080421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878429, 34.461887, 33.645145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826851, 34.071510, 33.715473>,  <33.795906, 33.837284, 33.757671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826851, 34.071510, 33.715473>,  <33.878429, 34.461887, 33.645145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826851, 34.071510, 33.715473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273626, 0.135400, 0.952258,
		-0.953154, 0.170896, 0.249584,
		-0.128944, -0.975941, 0.175818,
		33.788166, 33.778728, 33.768219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406231, 34.428909, 34.194477>,  <33.878429, 34.461887, 33.645145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406231, 34.428909, 34.194477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643353, 34.108234, 34.163799>,  <33.785625, 33.915829, 34.145393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.643353, 34.108234, 34.163799>,  <33.406231, 34.428909, 34.194477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643353, 34.108234, 34.163799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305975, 0.136104, 0.942261,
		-0.744961, -0.582041, 0.325980,
		0.592801, -0.801689, -0.076698,
		33.821194, 33.867729, 34.140789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183002, 34.739948, 33.628315>,  <33.406231, 34.428909, 34.194477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183002, 34.739948, 33.628315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487774, 34.991699, 33.567188>,  <33.670635, 35.142750, 33.530510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487774, 34.991699, 33.567188>,  <33.183002, 34.739948, 33.628315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487774, 34.991699, 33.567188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621917, 0.645109, -0.443908,
		-0.180799, 0.433267, 0.882945,
		0.761926, 0.629376, -0.152821,
		33.716351, 35.180511, 33.521343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863670, 35.469444, 33.750225>,  <33.183002, 34.739948, 33.628315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863670, 35.469444, 33.750225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211002, 35.490128, 33.552910>,  <33.419403, 35.502537, 33.434521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211002, 35.490128, 33.552910>,  <32.863670, 35.469444, 33.750225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211002, 35.490128, 33.552910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310013, 0.832921, -0.458404,
		0.387163, 0.550971, 0.739281,
		0.868330, 0.051709, -0.493285,
		33.471500, 35.505642, 33.404926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043839, 36.188019, 33.713909>,  <32.863670, 35.469444, 33.750225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043839, 36.188019, 33.713909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229050, 36.013908, 33.405067>,  <33.340176, 35.909443, 33.219761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229050, 36.013908, 33.405067>,  <33.043839, 36.188019, 33.713909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229050, 36.013908, 33.405067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464587, 0.622668, -0.629638,
		0.754827, 0.650249, 0.086091,
		0.463028, -0.435271, -0.772104,
		33.367958, 35.883327, 33.173435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375462, 36.679813, 33.325939>,  <33.043839, 36.188019, 33.713909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375462, 36.679813, 33.325939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366249, 36.376469, 33.065369>,  <33.360722, 36.194462, 32.909027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.366249, 36.376469, 33.065369>,  <33.375462, 36.679813, 33.325939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366249, 36.376469, 33.065369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166276, 0.645430, -0.745501,
		0.985810, 0.091144, -0.140965,
		-0.023035, -0.758362, -0.651427,
		33.359337, 36.148960, 32.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718292, 36.973099, 32.769470>,  <33.375462, 36.679813, 33.325939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718292, 36.973099, 32.769470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546303, 36.654720, 32.599018>,  <33.443108, 36.463692, 32.496746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.546303, 36.654720, 32.599018>,  <33.718292, 36.973099, 32.769470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546303, 36.654720, 32.599018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095753, 0.509532, -0.855107,
		0.897748, -0.326873, -0.295301,
		-0.429977, -0.795947, -0.426132,
		33.417309, 36.415936, 32.471180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025482, 36.811451, 32.097733>,  <33.718292, 36.973099, 32.769470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025482, 36.811451, 32.097733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662354, 36.644962, 32.077248>,  <33.444477, 36.545067, 32.064957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662354, 36.644962, 32.077248>,  <34.025482, 36.811451, 32.097733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662354, 36.644962, 32.077248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186748, 0.510585, -0.839302,
		0.375486, -0.752370, -0.541248,
		-0.907819, -0.416223, -0.051214,
		33.390007, 36.520096, 32.061882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946808, 36.562088, 31.435486>,  <34.025482, 36.811451, 32.097733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946808, 36.562088, 31.435486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566715, 36.583775, 31.558201>,  <33.338661, 36.596786, 31.631830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566715, 36.583775, 31.558201>,  <33.946808, 36.562088, 31.435486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566715, 36.583775, 31.558201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205337, 0.631583, -0.747623,
		-0.234300, -0.773410, -0.589017,
		-0.950232, 0.054221, 0.306789,
		33.281647, 36.600040, 31.650238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516022, 36.416370, 30.766775>,  <33.946808, 36.562088, 31.435486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516022, 36.416370, 30.766775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299820, 36.587601, 31.056494>,  <33.170097, 36.690338, 31.230326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.299820, 36.587601, 31.056494>,  <33.516022, 36.416370, 30.766775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299820, 36.587601, 31.056494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429758, 0.599626, -0.675098,
		-0.723300, -0.676166, -0.140131,
		-0.540504, 0.428076, 0.724297,
		33.137669, 36.716022, 31.273783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816715, 36.530994, 30.449932>,  <33.516022, 36.416370, 30.766775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816715, 36.530994, 30.449932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826607, 36.782818, 30.760555>,  <32.832542, 36.933910, 30.946930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826607, 36.782818, 30.760555>,  <32.816715, 36.530994, 30.449932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826607, 36.782818, 30.760555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359993, 0.730291, -0.580586,
		-0.932627, -0.265198, 0.244696,
		0.024729, 0.629559, 0.776559,
		32.834026, 36.971687, 30.993523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226856, 36.922832, 30.347158>,  <32.816715, 36.530994, 30.449932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226856, 36.922832, 30.347158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469406, 37.117989, 30.598324>,  <32.614937, 37.235081, 30.749023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469406, 37.117989, 30.598324>,  <32.226856, 36.922832, 30.347158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469406, 37.117989, 30.598324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072457, 0.820267, -0.567373,
		-0.791869, 0.298545, 0.532742,
		0.606378, 0.487886, 0.627912,
		32.651318, 37.264355, 30.786697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060539, 37.528454, 30.219416>,  <32.226856, 36.922832, 30.347158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060539, 37.528454, 30.219416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388027, 37.630447, 30.425205>,  <32.584518, 37.691643, 30.548679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388027, 37.630447, 30.425205>,  <32.060539, 37.528454, 30.219416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388027, 37.630447, 30.425205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071894, 0.843419, -0.532424,
		-0.569677, 0.472893, 0.672191,
		0.818718, 0.254983, 0.514475,
		32.633644, 37.706944, 30.579548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911783, 38.239143, 30.443851>,  <32.060539, 37.528454, 30.219416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911783, 38.239143, 30.443851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.303062, 38.156807, 30.432840>,  <32.537830, 38.107407, 30.426233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.303062, 38.156807, 30.432840>,  <31.911783, 38.239143, 30.443851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303062, 38.156807, 30.432840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165127, 0.851333, -0.497961,
		0.125936, 0.482559, 0.866762,
		0.978199, -0.205837, -0.027530,
		32.596523, 38.095055, 30.424582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121464, 38.835030, 30.411142>,  <31.911783, 38.239143, 30.443851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121464, 38.835030, 30.411142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434391, 38.622700, 30.280787>,  <32.622147, 38.495304, 30.202572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434391, 38.622700, 30.280787>,  <32.121464, 38.835030, 30.411142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434391, 38.622700, 30.280787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222933, 0.727161, -0.649259,
		0.581616, 0.435276, 0.687210,
		0.782320, -0.530821, -0.325891,
		32.669086, 38.463455, 30.183020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622017, 39.284023, 30.569405>,  <32.121464, 38.835030, 30.411142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622017, 39.284023, 30.569405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700680, 39.020763, 30.278704>,  <32.747879, 38.862808, 30.104282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700680, 39.020763, 30.278704>,  <32.622017, 39.284023, 30.569405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700680, 39.020763, 30.278704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218810, 0.751993, -0.621795,
		0.955745, -0.036739, 0.291895,
		0.196659, -0.658146, -0.726752,
		32.759678, 38.823318, 30.060678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275711, 39.549591, 30.240913>,  <32.622017, 39.284023, 30.569405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275711, 39.549591, 30.240913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094673, 39.310524, 29.976200>,  <32.986050, 39.167084, 29.817373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.094673, 39.310524, 29.976200>,  <33.275711, 39.549591, 30.240913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094673, 39.310524, 29.976200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247688, 0.628680, -0.737165,
		0.856626, -0.497552, -0.136503,
		-0.452595, -0.597665, -0.661781,
		32.958893, 39.131226, 29.777666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746105, 39.578571, 29.593925>,  <33.275711, 39.549591, 30.240913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746105, 39.578571, 29.593925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389507, 39.436607, 29.481302>,  <33.175549, 39.351429, 29.413729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389507, 39.436607, 29.481302>,  <33.746105, 39.578571, 29.593925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389507, 39.436607, 29.481302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058873, 0.706993, -0.704766,
		0.449187, -0.611720, -0.651175,
		-0.891496, -0.354909, -0.281559,
		33.122059, 39.330135, 29.396835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790802, 39.475899, 28.829432>,  <33.746105, 39.578571, 29.593925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790802, 39.475899, 28.829432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395576, 39.441250, 28.880392>,  <33.158443, 39.420460, 28.910969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395576, 39.441250, 28.880392>,  <33.790802, 39.475899, 28.829432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395576, 39.441250, 28.880392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154044, 0.568370, -0.808224,
		-0.002398, -0.818200, -0.574928,
		-0.988061, -0.086626, 0.127402,
		33.099159, 39.415260, 28.918613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516708, 39.190956, 28.241587>,  <33.790802, 39.475899, 28.829432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516708, 39.190956, 28.241587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221630, 39.404106, 28.407404>,  <33.044582, 39.531998, 28.506895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221630, 39.404106, 28.407404>,  <33.516708, 39.190956, 28.241587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221630, 39.404106, 28.407404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327263, 0.254816, -0.909927,
		-0.590511, -0.806915, -0.013586,
		-0.737696, 0.532876, 0.414545,
		33.000320, 39.563969, 28.531767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923275, 39.010262, 27.850163>,  <33.516708, 39.190956, 28.241587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923275, 39.010262, 27.850163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860935, 39.362923, 28.028332>,  <32.823532, 39.574520, 28.135233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860935, 39.362923, 28.028332>,  <32.923275, 39.010262, 27.850163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860935, 39.362923, 28.028332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370659, 0.365782, -0.853707,
		-0.915599, -0.298153, 0.269783,
		-0.155854, 0.881651, 0.445422,
		32.814178, 39.627419, 28.161959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356567, 39.178841, 27.496920>,  <32.923275, 39.010262, 27.850163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356567, 39.178841, 27.496920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447372, 39.526558, 27.672554>,  <32.501858, 39.735188, 27.777935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447372, 39.526558, 27.672554>,  <32.356567, 39.178841, 27.496920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447372, 39.526558, 27.672554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250867, 0.487838, -0.836110,
		-0.941026, 0.079657, 0.328823,
		0.227014, 0.869292, 0.439085,
		32.515476, 39.787346, 27.804279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760820, 39.539696, 27.313568>,  <32.356567, 39.178841, 27.496920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760820, 39.539696, 27.313568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056160, 39.787907, 27.419235>,  <32.233364, 39.936832, 27.482635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056160, 39.787907, 27.419235>,  <31.760820, 39.539696, 27.313568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056160, 39.787907, 27.419235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281689, 0.639646, -0.715196,
		-0.612774, 0.453651, 0.647078,
		0.738349, 0.620528, 0.264170,
		32.277664, 39.974064, 27.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495766, 40.345524, 27.400429>,  <31.760820, 39.539696, 27.313568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495766, 40.345524, 27.400429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883278, 40.311543, 27.307264>,  <32.115784, 40.291153, 27.251366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.883278, 40.311543, 27.307264>,  <31.495766, 40.345524, 27.400429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883278, 40.311543, 27.307264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170845, 0.452020, -0.875494,
		0.179652, 0.887954, 0.423395,
		0.968781, -0.084950, -0.232909,
		32.173912, 40.286057, 27.237392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651997, 41.005005, 27.102209>,  <31.495766, 40.345524, 27.400429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651997, 41.005005, 27.102209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974537, 40.801964, 26.980789>,  <32.168060, 40.680141, 26.907936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974537, 40.801964, 26.980789>,  <31.651997, 41.005005, 27.102209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974537, 40.801964, 26.980789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149859, 0.321143, -0.935099,
		0.572140, 0.799506, 0.182884,
		0.806349, -0.507601, -0.303552,
		32.216442, 40.649685, 26.889723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008911, 41.408062, 26.728819>,  <31.651997, 41.005005, 27.102209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008911, 41.408062, 26.728819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169930, 41.066219, 26.597603>,  <32.266541, 40.861115, 26.518873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169930, 41.066219, 26.597603>,  <32.008911, 41.408062, 26.728819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169930, 41.066219, 26.597603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024962, 0.347978, -0.937170,
		0.915061, 0.385440, 0.118743,
		0.402543, -0.854604, -0.328042,
		32.290691, 40.809837, 26.499189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537159, 41.670826, 26.363239>,  <32.008911, 41.408062, 26.728819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537159, 41.670826, 26.363239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451202, 41.295876, 26.253584>,  <32.399628, 41.070908, 26.187792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451202, 41.295876, 26.253584>,  <32.537159, 41.670826, 26.363239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451202, 41.295876, 26.253584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072965, 0.295319, -0.952608,
		0.973908, -0.184708, -0.131858,
		-0.214894, -0.937374, -0.274136,
		32.386734, 41.014664, 26.171343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006332, 41.471207, 25.748190>,  <32.537159, 41.670826, 26.363239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006332, 41.471207, 25.748190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718891, 41.193977, 25.725393>,  <32.546425, 41.027637, 25.711716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718891, 41.193977, 25.725393>,  <33.006332, 41.471207, 25.748190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718891, 41.193977, 25.725393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001673, 0.083675, -0.996492,
		0.695414, -0.715990, -0.061289,
		-0.718607, -0.693077, -0.056991,
		32.503307, 40.986053, 25.708296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290306, 40.970303, 25.186745>,  <33.006332, 41.471207, 25.748190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290306, 40.970303, 25.186745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895386, 40.952110, 25.247631>,  <32.658432, 40.941196, 25.284163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895386, 40.952110, 25.247631>,  <33.290306, 40.970303, 25.186745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895386, 40.952110, 25.247631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156354, 0.108574, -0.981716,
		0.028120, -0.993048, -0.114306,
		-0.987301, -0.045478, 0.152214,
		32.599197, 40.938469, 25.293295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972980, 40.559612, 24.895222>,  <33.290306, 40.970303, 25.186745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972980, 40.559612, 24.895222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271782, 40.730221, 24.691235>,  <34.451061, 40.832584, 24.568842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.271782, 40.730221, 24.691235>,  <33.972980, 40.559612, 24.895222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271782, 40.730221, 24.691235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599802, -0.101520, 0.793682,
		0.286751, -0.898761, -0.331665,
		0.747002, 0.426523, -0.509967,
		34.495884, 40.858177, 24.538244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504761, 40.056480, 25.001154>,  <33.972980, 40.559612, 24.895222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504761, 40.056480, 25.001154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679260, 40.397491, 24.885998>,  <34.783962, 40.602097, 24.816904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679260, 40.397491, 24.885998>,  <34.504761, 40.056480, 25.001154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679260, 40.397491, 24.885998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737948, -0.155892, 0.656605,
		0.514894, -0.498893, -0.697129,
		0.436253, 0.852527, -0.287889,
		34.810135, 40.653248, 24.799631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192295, 40.023994, 24.883307>,  <34.504761, 40.056480, 25.001154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192295, 40.023994, 24.883307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155018, 40.412899, 24.969116>,  <35.132652, 40.646240, 25.020601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155018, 40.412899, 24.969116>,  <35.192295, 40.023994, 24.883307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155018, 40.412899, 24.969116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750609, -0.072948, 0.656707,
		0.654141, 0.222227, -0.722990,
		-0.093197, 0.972262, 0.214524,
		35.127060, 40.704578, 25.033474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850342, 40.240894, 24.788561>,  <35.192295, 40.023994, 24.883307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850342, 40.240894, 24.788561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665047, 40.494392, 25.036360>,  <35.553867, 40.646492, 25.185040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.665047, 40.494392, 25.036360>,  <35.850342, 40.240894, 24.788561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665047, 40.494392, 25.036360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699650, -0.167540, 0.694565,
		0.543966, 0.755183, -0.365786,
		-0.463240, 0.633742, 0.619500,
		35.526073, 40.684513, 25.222210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413349, 40.595051, 25.100731>,  <35.850342, 40.240894, 24.788561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413349, 40.595051, 25.100731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104855, 40.687717, 25.337891>,  <35.919758, 40.743317, 25.480186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104855, 40.687717, 25.337891>,  <36.413349, 40.595051, 25.100731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104855, 40.687717, 25.337891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563507, -0.184754, 0.805186,
		0.296072, 0.955091, 0.011945,
		-0.771233, 0.231662, 0.592901,
		35.873486, 40.757217, 25.515760>
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
