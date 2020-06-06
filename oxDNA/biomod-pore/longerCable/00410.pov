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
	<24.185246, 35.118938, 34.816185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323122, 34.974358, 35.162720>,  <24.405848, 34.887608, 35.370640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323122, 34.974358, 35.162720>,  <24.185246, 35.118938, 34.816185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323122, 34.974358, 35.162720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895073, -0.151579, -0.419366,
		0.282900, 0.919987, 0.271279,
		0.344691, -0.361453, 0.866337,
		24.426529, 34.865921, 35.422623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867416, 35.471157, 34.858734>,  <24.185246, 35.118938, 34.816185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867416, 35.471157, 34.858734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833652, 35.148911, 35.093288>,  <24.813395, 34.955563, 35.234020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.833652, 35.148911, 35.093288>,  <24.867416, 35.471157, 34.858734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.833652, 35.148911, 35.093288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954708, -0.233898, -0.183913,
		0.285319, 0.544306, 0.788875,
		-0.084412, -0.805619, 0.586389,
		24.808329, 34.907227, 35.269203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333216, 35.433266, 35.374340>,  <24.867416, 35.471157, 34.858734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333216, 35.433266, 35.374340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217134, 35.096062, 35.193180>,  <25.147486, 34.893738, 35.084484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217134, 35.096062, 35.193180>,  <25.333216, 35.433266, 35.374340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217134, 35.096062, 35.193180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932590, -0.142999, -0.331402,
		0.214610, -0.518544, 0.827680,
		-0.290204, -0.843008, -0.452900,
		25.130074, 34.843159, 35.057312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851957, 34.910831, 35.562778>,  <25.333216, 35.433266, 35.374340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851957, 34.910831, 35.562778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648161, 34.806007, 35.234940>,  <25.525883, 34.743111, 35.038235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648161, 34.806007, 35.234940>,  <25.851957, 34.910831, 35.562778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648161, 34.806007, 35.234940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857286, -0.236541, -0.457285,
		-0.074030, -0.935613, 0.345179,
		-0.509491, -0.262064, -0.819599,
		25.495314, 34.727386, 34.989059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135017, 34.307636, 35.384228>,  <25.851957, 34.910831, 35.562778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135017, 34.307636, 35.384228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972393, 34.402035, 35.031181>,  <25.874819, 34.458675, 34.819351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972393, 34.402035, 35.031181>,  <26.135017, 34.307636, 35.384228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972393, 34.402035, 35.031181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850473, -0.255171, -0.459982,
		-0.333773, -0.937653, -0.096967,
		-0.406560, 0.235997, -0.882618,
		25.850426, 34.472836, 34.766396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300901, 33.790039, 34.966923>,  <26.135017, 34.307636, 35.384228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300901, 33.790039, 34.966923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227509, 34.092823, 34.716053>,  <26.183474, 34.274494, 34.565533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227509, 34.092823, 34.716053>,  <26.300901, 33.790039, 34.966923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227509, 34.092823, 34.716053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845813, -0.203551, -0.493120,
		-0.500934, -0.620948, -0.602900,
		-0.183480, 0.756962, -0.627172,
		26.172464, 34.319912, 34.527901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406195, 33.530994, 34.273235>,  <26.300901, 33.790039, 34.966923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406195, 33.530994, 34.273235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439495, 33.929119, 34.253521>,  <26.459475, 34.167992, 34.241692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439495, 33.929119, 34.253521>,  <26.406195, 33.530994, 34.273235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439495, 33.929119, 34.253521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751140, -0.095174, -0.653246,
		-0.654872, 0.017364, -0.755540,
		0.083251, 0.995309, -0.049284,
		26.464470, 34.227711, 34.238735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268713, 33.896465, 33.592319>,  <26.406195, 33.530994, 34.273235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268713, 33.896465, 33.592319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569798, 34.042225, 33.811642>,  <26.750448, 34.129681, 33.943233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569798, 34.042225, 33.811642>,  <26.268713, 33.896465, 33.592319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569798, 34.042225, 33.811642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641183, -0.216809, -0.736123,
		-0.149365, 0.905653, -0.396841,
		0.752711, 0.364399, 0.548306,
		26.795610, 34.151543, 33.976135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737976, 34.032661, 33.062477>,  <26.268713, 33.896465, 33.592319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737976, 34.032661, 33.062477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951477, 34.058487, 33.399746>,  <27.079578, 34.073982, 33.602108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.951477, 34.058487, 33.399746>,  <26.737976, 34.032661, 33.062477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951477, 34.058487, 33.399746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802369, -0.353529, -0.480855,
		0.267041, 0.933193, -0.240501,
		0.533754, 0.064562, 0.843171,
		27.111603, 34.077854, 33.652699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381281, 34.494324, 32.903004>,  <26.737976, 34.032661, 33.062477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381281, 34.494324, 32.903004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459183, 34.263214, 33.220051>,  <27.505924, 34.124546, 33.410278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459183, 34.263214, 33.220051>,  <27.381281, 34.494324, 32.903004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459183, 34.263214, 33.220051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866098, -0.277988, -0.415448,
		0.460375, 0.767395, 0.446273,
		0.194754, -0.577778, 0.792619,
		27.517609, 34.089882, 33.457836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118301, 34.565693, 33.060032>,  <27.381281, 34.494324, 32.903004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118301, 34.565693, 33.060032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021706, 34.219769, 33.236115>,  <27.963749, 34.012215, 33.341763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021706, 34.219769, 33.236115>,  <28.118301, 34.565693, 33.060032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021706, 34.219769, 33.236115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949874, -0.303476, -0.075114,
		0.198551, 0.399999, 0.894750,
		-0.241490, -0.864814, 0.440204,
		27.949259, 33.960323, 33.368176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550373, 34.446041, 33.582664>,  <28.118301, 34.565693, 33.060032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550373, 34.446041, 33.582664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401047, 34.102337, 33.442780>,  <28.311451, 33.896114, 33.358849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401047, 34.102337, 33.442780>,  <28.550373, 34.446041, 33.582664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401047, 34.102337, 33.442780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927109, -0.332069, -0.173775,
		0.033189, -0.389098, 0.920598,
		-0.373318, -0.859263, -0.349716,
		28.289051, 33.844559, 33.337864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936470, 33.815720, 33.890167>,  <28.550373, 34.446041, 33.582664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936470, 33.815720, 33.890167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751820, 33.740246, 33.543457>,  <28.641029, 33.694962, 33.335430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751820, 33.740246, 33.543457>,  <28.936470, 33.815720, 33.890167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751820, 33.740246, 33.543457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747543, -0.608800, -0.265598,
		-0.477576, -0.770558, 0.422092,
		-0.461629, -0.188689, -0.866773,
		28.613331, 33.683640, 33.283424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711720, 33.129112, 33.888302>,  <28.936470, 33.815720, 33.890167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711720, 33.129112, 33.888302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788282, 33.247044, 33.513828>,  <28.834221, 33.317802, 33.289143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788282, 33.247044, 33.513828>,  <28.711720, 33.129112, 33.888302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788282, 33.247044, 33.513828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712499, -0.697753, -0.074066,
		-0.675062, -0.652853, -0.343621,
		0.191408, 0.294829, -0.936183,
		28.845705, 33.335491, 33.232975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608622, 32.587177, 33.450993>,  <28.711720, 33.129112, 33.888302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608622, 32.587177, 33.450993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832203, 32.827202, 33.222080>,  <28.966352, 32.971214, 33.084732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832203, 32.827202, 33.222080>,  <28.608622, 32.587177, 33.450993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832203, 32.827202, 33.222080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676591, -0.729036, -0.103589,
		-0.479370, -0.329295, -0.813492,
		0.558954, 0.600059, -0.572276,
		28.999889, 33.007221, 33.050396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832472, 32.659657, 33.472462>,  <28.608622, 32.587177, 33.450993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832472, 32.659657, 33.472462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020035, 33.008904, 33.525822>,  <28.132572, 33.218452, 33.557838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020035, 33.008904, 33.525822>,  <27.832472, 32.659657, 33.472462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020035, 33.008904, 33.525822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845869, 0.400438, 0.352357,
		0.254230, -0.278062, 0.926309,
		0.468906, 0.873116, 0.133401,
		28.160707, 33.270840, 33.565842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672602, 32.932301, 34.094334>,  <27.832472, 32.659657, 33.472462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672602, 32.932301, 34.094334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773224, 33.252377, 33.876556>,  <27.833597, 33.444420, 33.745892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773224, 33.252377, 33.876556>,  <27.672602, 32.932301, 34.094334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773224, 33.252377, 33.876556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708035, 0.535671, 0.460155,
		0.659854, 0.269732, 0.701311,
		0.251554, 0.800188, -0.544445,
		27.848690, 33.492432, 33.713223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708216, 33.508369, 34.589096>,  <27.672602, 32.932301, 34.094334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708216, 33.508369, 34.589096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665525, 33.665649, 34.223801>,  <27.639912, 33.760017, 34.004623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665525, 33.665649, 34.223801>,  <27.708216, 33.508369, 34.589096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665525, 33.665649, 34.223801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663465, 0.655931, 0.359955,
		0.740556, 0.644318, 0.190870,
		-0.106728, 0.393202, -0.913237,
		27.633507, 33.783611, 33.949829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859472, 34.293972, 34.657883>,  <27.708216, 33.508369, 34.589096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859472, 34.293972, 34.657883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618599, 34.231823, 34.344646>,  <27.474075, 34.194534, 34.156704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618599, 34.231823, 34.344646>,  <27.859472, 34.293972, 34.657883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618599, 34.231823, 34.344646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679724, 0.614263, 0.400820,
		0.418750, 0.773655, -0.475507,
		-0.602182, -0.155370, -0.783095,
		27.437944, 34.185211, 34.109718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585167, 35.003231, 34.365150>,  <27.859472, 34.293972, 34.657883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585167, 35.003231, 34.365150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336769, 34.708843, 34.257286>,  <27.187731, 34.532211, 34.192566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336769, 34.708843, 34.257286>,  <27.585167, 35.003231, 34.365150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336769, 34.708843, 34.257286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771386, 0.512822, 0.376799,
		-0.139023, 0.442003, -0.886175,
		-0.620996, -0.735967, -0.269661,
		27.150471, 34.488052, 34.176388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886400, 35.286671, 34.693298>,  <27.585167, 35.003231, 34.365150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886400, 35.286671, 34.693298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861769, 34.997681, 34.417839>,  <26.846989, 34.824287, 34.252563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861769, 34.997681, 34.417839>,  <26.886400, 35.286671, 34.693298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861769, 34.997681, 34.417839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992353, -0.029628, 0.119823,
		-0.106973, 0.690759, -0.715128,
		-0.061581, -0.722478, -0.688646,
		26.843294, 34.780937, 34.211246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473932, 35.529079, 34.146347>,  <26.886400, 35.286671, 34.693298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473932, 35.529079, 34.146347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470840, 35.130833, 34.183628>,  <26.468987, 34.891884, 34.205997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470840, 35.130833, 34.183628>,  <26.473932, 35.529079, 34.146347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470840, 35.130833, 34.183628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952020, 0.035840, 0.303930,
		-0.305939, -0.086378, -0.948125,
		-0.007728, -0.995618, 0.093198,
		26.468521, 34.832146, 34.211586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866697, 35.346146, 33.810314>,  <26.473932, 35.529079, 34.146347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866697, 35.346146, 33.810314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973619, 35.032845, 34.034836>,  <26.037773, 34.844864, 34.169548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973619, 35.032845, 34.034836>,  <25.866697, 35.346146, 33.810314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973619, 35.032845, 34.034836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934011, -0.067330, 0.350844,
		-0.237008, -0.618044, -0.749566,
		0.267305, -0.783255, 0.561302,
		26.053810, 34.797867, 34.203228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210562, 35.688313, 33.652740>,  <25.866697, 35.346146, 33.810314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210562, 35.688313, 33.652740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905300, 35.830406, 33.436813>,  <24.722143, 35.915665, 33.307259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905300, 35.830406, 33.436813>,  <25.210562, 35.688313, 33.652740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905300, 35.830406, 33.436813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379641, 0.429534, 0.819373,
		0.522942, 0.830245, -0.192938,
		-0.763154, 0.355238, -0.539817,
		24.676353, 35.936977, 33.274868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194315, 34.966045, 33.741440>,  <25.210562, 35.688313, 33.652740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194315, 34.966045, 33.741440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404373, 34.805374, 34.041542>,  <25.530409, 34.708973, 34.221603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404373, 34.805374, 34.041542>,  <25.194315, 34.966045, 33.741440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404373, 34.805374, 34.041542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850903, -0.261918, 0.455371,
		0.013593, -0.877528, -0.479332,
		0.525147, -0.401675, 0.750252,
		25.561916, 34.684872, 34.266617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861652, 34.334766, 33.912098>,  <25.194315, 34.966045, 33.741440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861652, 34.334766, 33.912098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054943, 34.424400, 34.250629>,  <25.170918, 34.478180, 34.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.054943, 34.424400, 34.250629>,  <24.861652, 34.334766, 33.912098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.054943, 34.424400, 34.250629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858567, -0.067887, 0.508187,
		0.171332, -0.972202, 0.159588,
		0.483226, 0.224086, 0.846332,
		25.199911, 34.491627, 34.504528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695757, 33.846855, 34.339867>,  <24.861652, 34.334766, 33.912098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695757, 33.846855, 34.339867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818512, 34.166557, 34.546558>,  <24.892164, 34.358379, 34.670574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818512, 34.166557, 34.546558>,  <24.695757, 33.846855, 34.339867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818512, 34.166557, 34.546558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936844, 0.157987, 0.312029,
		0.167760, -0.579839, 0.797273,
		0.306886, 0.799267, 0.516715,
		24.910578, 34.406334, 34.701576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837147, 33.261318, 34.650200>,  <24.695757, 33.846855, 34.339867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837147, 33.261318, 34.650200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201176, 33.125294, 34.744965>,  <25.419594, 33.043678, 34.801823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201176, 33.125294, 34.744965>,  <24.837147, 33.261318, 34.650200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201176, 33.125294, 34.744965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406730, -0.842613, 0.352951,
		0.079601, -0.417571, -0.905151,
		0.910074, -0.340057, 0.236911,
		25.474197, 33.023277, 34.816036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163094, 33.630825, 35.260136>,  <24.837147, 33.261318, 34.650200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163094, 33.630825, 35.260136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985863, 33.348907, 35.481747>,  <24.879524, 33.179756, 35.614712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985863, 33.348907, 35.481747>,  <25.163094, 33.630825, 35.260136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985863, 33.348907, 35.481747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850012, 0.133886, -0.509465,
		0.284893, -0.696661, -0.658407,
		-0.443075, -0.704797, 0.554026,
		24.852940, 33.137470, 35.647953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176462, 33.806755, 36.055107>,  <25.163094, 33.630825, 35.260136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176462, 33.806755, 36.055107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184826, 33.406868, 36.059505>,  <25.189844, 33.166935, 36.062145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184826, 33.406868, 36.059505>,  <25.176462, 33.806755, 36.055107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184826, 33.406868, 36.059505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263735, 0.005088, 0.964582,
		-0.964369, -0.023070, -0.263555,
		0.020911, -0.999721, 0.010991,
		25.191099, 33.106953, 36.062801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496050, 33.607220, 36.533958>,  <25.176462, 33.806755, 36.055107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496050, 33.607220, 36.533958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749275, 33.298641, 36.508327>,  <24.901211, 33.113495, 36.492950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749275, 33.298641, 36.508327>,  <24.496050, 33.607220, 36.533958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749275, 33.298641, 36.508327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306590, -0.325879, 0.894318,
		-0.710796, -0.546516, -0.442819,
		0.633065, -0.771442, -0.064077,
		24.939196, 33.067207, 36.489105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237057, 32.913097, 36.792049>,  <24.496050, 33.607220, 36.533958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237057, 32.913097, 36.792049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633495, 32.943989, 36.835442>,  <24.871359, 32.962524, 36.861477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633495, 32.943989, 36.835442>,  <24.237057, 32.913097, 36.792049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633495, 32.943989, 36.835442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085976, -0.251005, 0.964160,
		0.101687, -0.964901, -0.242130,
		0.991095, 0.077225, 0.108482,
		24.930824, 32.967155, 36.867985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379930, 32.401497, 37.122250>,  <24.237057, 32.913097, 36.792049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379930, 32.401497, 37.122250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.690479, 32.639923, 37.204174>,  <24.876808, 32.782978, 37.253326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.690479, 32.639923, 37.204174>,  <24.379930, 32.401497, 37.122250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.690479, 32.639923, 37.204174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113857, -0.186965, 0.975746,
		0.619905, -0.780861, -0.077288,
		0.776372, 0.596070, 0.204807,
		24.923391, 32.818745, 37.265617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593966, 32.107220, 37.808224>,  <24.379930, 32.401497, 37.122250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593966, 32.107220, 37.808224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743885, 32.474796, 37.759121>,  <24.833838, 32.695343, 37.729660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743885, 32.474796, 37.759121>,  <24.593966, 32.107220, 37.808224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743885, 32.474796, 37.759121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022820, 0.123226, 0.992116,
		0.926825, -0.374646, 0.025215,
		0.374800, 0.918943, -0.122758,
		24.856325, 32.750481, 37.722294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330376, 32.197262, 38.054276>,  <24.593966, 32.107220, 37.808224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330376, 32.197262, 38.054276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067986, 32.499016, 38.064034>,  <24.910551, 32.680069, 38.069889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.067986, 32.499016, 38.064034>,  <25.330376, 32.197262, 38.054276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067986, 32.499016, 38.064034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151960, -0.163658, 0.974743,
		0.739327, 0.635700, 0.221992,
		-0.655975, 0.754388, 0.024396,
		24.871193, 32.725334, 38.071354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044565, 32.624397, 37.898346>,  <25.330376, 32.197262, 38.054276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044565, 32.624397, 37.898346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814753, 32.949425, 37.859047>,  <25.676865, 33.144440, 37.835468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.814753, 32.949425, 37.859047>,  <26.044565, 32.624397, 37.898346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814753, 32.949425, 37.859047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270306, 0.301672, 0.914291,
		0.772560, 0.498732, -0.392961,
		-0.574531, 0.812564, -0.098250,
		25.642393, 33.193195, 37.829571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414814, 33.099129, 38.220779>,  <26.044565, 32.624397, 37.898346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414814, 33.099129, 38.220779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039898, 33.236126, 38.194897>,  <25.814949, 33.318325, 38.179367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039898, 33.236126, 38.194897>,  <26.414814, 33.099129, 38.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039898, 33.236126, 38.194897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004886, 0.172712, 0.984960,
		0.348518, 0.923509, -0.160208,
		-0.937289, 0.342493, -0.064706,
		25.758711, 33.338875, 38.175484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324059, 33.639278, 38.697491>,  <26.414814, 33.099129, 38.220779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324059, 33.639278, 38.697491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945816, 33.541363, 38.611786>,  <25.718870, 33.482613, 38.560364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945816, 33.541363, 38.611786>,  <26.324059, 33.639278, 38.697491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945816, 33.541363, 38.611786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254833, 0.147967, 0.955597,
		-0.202214, 0.958220, -0.202298,
		-0.945605, -0.244788, -0.214265,
		25.662134, 33.467926, 38.547508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938562, 34.157269, 38.942337>,  <26.324059, 33.639278, 38.697491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938562, 34.157269, 38.942337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682652, 33.851334, 38.912125>,  <25.529104, 33.667770, 38.893997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682652, 33.851334, 38.912125>,  <25.938562, 34.157269, 38.942337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682652, 33.851334, 38.912125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230570, 0.097259, 0.968183,
		-0.733159, 0.636836, -0.238573,
		-0.639777, -0.764840, -0.075529,
		25.490719, 33.621883, 38.889465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609056, 34.148266, 39.636925>,  <25.938562, 34.157269, 38.942337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609056, 34.148266, 39.636925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428045, 33.865501, 39.419487>,  <25.319439, 33.695843, 39.289024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428045, 33.865501, 39.419487>,  <25.609056, 34.148266, 39.636925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428045, 33.865501, 39.419487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559978, -0.249138, 0.790162,
		-0.694006, 0.661968, -0.283115,
		-0.452527, -0.706915, -0.543590,
		25.292288, 33.653427, 39.256409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667406, 33.561501, 39.924232>,  <25.609056, 34.148266, 39.636925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667406, 33.561501, 39.924232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284756, 33.478672, 40.006191>,  <25.055164, 33.428974, 40.055367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284756, 33.478672, 40.006191>,  <25.667406, 33.561501, 39.924232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284756, 33.478672, 40.006191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084859, -0.474782, -0.876003,
		0.278679, -0.855397, 0.436618,
		-0.956628, -0.207073, 0.204900,
		24.997766, 33.416550, 40.067661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472548, 32.806381, 39.839752>,  <25.667406, 33.561501, 39.924232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472548, 32.806381, 39.839752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179123, 33.064190, 39.753510>,  <25.003069, 33.218876, 39.701763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179123, 33.064190, 39.753510>,  <25.472548, 32.806381, 39.839752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179123, 33.064190, 39.753510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042382, -0.273240, -0.961012,
		-0.678300, -0.714099, 0.173122,
		-0.733561, 0.644517, -0.215604,
		24.959055, 33.257545, 39.688828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.914637, 32.573689, 39.518158>,  <25.472548, 32.806381, 39.839752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.914637, 32.573689, 39.518158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944332, 32.950130, 39.386211>,  <24.962151, 33.175995, 39.307045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944332, 32.950130, 39.386211>,  <24.914637, 32.573689, 39.518158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944332, 32.950130, 39.386211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200779, -0.338109, -0.919440,
		-0.976819, 0.002030, -0.214056,
		0.074241, 0.941105, -0.329864,
		24.966604, 33.232460, 39.287251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599104, 32.601086, 38.811398>,  <24.914637, 32.573689, 39.518158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599104, 32.601086, 38.811398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856968, 32.906441, 38.827709>,  <25.011686, 33.089653, 38.837494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.856968, 32.906441, 38.827709>,  <24.599104, 32.601086, 38.811398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.856968, 32.906441, 38.827709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204751, -0.121024, -0.971303,
		-0.736542, 0.634507, -0.234322,
		0.644658, 0.763383, 0.040777,
		25.050365, 33.135456, 38.839943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.376993, 33.121120, 38.361042>,  <24.599104, 32.601086, 38.811398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.376993, 33.121120, 38.361042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769175, 33.180653, 38.412518>,  <25.004484, 33.216370, 38.443405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.769175, 33.180653, 38.412518>,  <24.376993, 33.121120, 38.361042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.769175, 33.180653, 38.412518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114274, 0.101713, -0.988229,
		-0.160165, 0.983618, 0.082718,
		0.980453, 0.148827, 0.128693,
		25.063311, 33.225300, 38.451126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.561855, 33.733654, 38.055588>,  <24.376993, 33.121120, 38.361042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.561855, 33.733654, 38.055588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846838, 33.452969, 38.055374>,  <25.017828, 33.284557, 38.055244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.846838, 33.452969, 38.055374>,  <24.561855, 33.733654, 38.055588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.846838, 33.452969, 38.055374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041557, -0.041435, -0.998277,
		0.700486, 0.711249, -0.058682,
		0.712455, -0.701718, -0.000533,
		25.060574, 33.242455, 38.055214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139765, 34.042328, 37.603729>,  <24.561855, 33.733654, 38.055588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139765, 34.042328, 37.603729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105766, 33.645287, 37.638416>,  <25.085367, 33.407063, 37.659229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105766, 33.645287, 37.638416>,  <25.139765, 34.042328, 37.603729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105766, 33.645287, 37.638416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106518, -0.095586, -0.989706,
		0.990671, -0.074883, 0.113854,
		-0.084995, -0.992601, 0.086718,
		25.080267, 33.347507, 37.664433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827026, 33.741661, 37.442120>,  <25.139765, 34.042328, 37.603729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827026, 33.741661, 37.442120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563728, 33.442410, 37.408615>,  <25.405750, 33.262859, 37.388512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563728, 33.442410, 37.408615>,  <25.827026, 33.741661, 37.442120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563728, 33.442410, 37.408615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291322, -0.150548, -0.944705,
		0.694152, -0.646247, 0.317044,
		-0.658243, -0.748131, -0.083763,
		25.366255, 33.217972, 37.383488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169579, 33.198082, 37.242115>,  <25.827026, 33.741661, 37.442120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169579, 33.198082, 37.242115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796127, 33.117256, 37.123791>,  <25.572056, 33.068760, 37.052795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796127, 33.117256, 37.123791>,  <26.169579, 33.198082, 37.242115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796127, 33.117256, 37.123791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319835, -0.098198, -0.942371,
		0.161374, -0.974436, 0.156309,
		-0.933630, -0.202067, -0.295812,
		25.516039, 33.056637, 37.035046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082809, 32.557804, 37.000248>,  <26.169579, 33.198082, 37.242115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082809, 32.557804, 37.000248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834351, 32.808407, 36.811924>,  <25.685274, 32.958771, 36.698929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834351, 32.808407, 36.811924>,  <26.082809, 32.557804, 37.000248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834351, 32.808407, 36.811924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474420, -0.177565, -0.862205,
		-0.623779, -0.758918, -0.186935,
		-0.621149, 0.626510, -0.470807,
		25.648006, 32.996361, 36.670681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896919, 32.192352, 36.391102>,  <26.082809, 32.557804, 37.000248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896919, 32.192352, 36.391102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601980, 32.459572, 36.431175>,  <25.425016, 32.619904, 36.455219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601980, 32.459572, 36.431175>,  <25.896919, 32.192352, 36.391102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601980, 32.459572, 36.431175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158861, 0.315634, -0.935488,
		-0.656570, -0.673862, -0.338858,
		-0.737345, 0.668045, 0.100186,
		25.380777, 32.659985, 36.461231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497858, 32.014732, 35.752983>,  <25.896919, 32.192352, 36.391102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497858, 32.014732, 35.752983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563890, 32.382099, 35.896793>,  <25.603510, 32.602520, 35.983078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563890, 32.382099, 35.896793>,  <25.497858, 32.014732, 35.752983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563890, 32.382099, 35.896793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294465, 0.302001, -0.906690,
		-0.941296, 0.255544, -0.220587,
		0.165082, 0.918419, 0.359521,
		25.613415, 32.657623, 36.004650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025928, 32.313965, 35.426125>,  <25.497858, 32.014732, 35.752983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025928, 32.313965, 35.426125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229763, 32.028503, 35.618385>,  <26.352064, 31.857227, 35.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229763, 32.028503, 35.618385>,  <26.025928, 32.313965, 35.426125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229763, 32.028503, 35.618385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382447, -0.312541, -0.869513,
		0.770752, 0.626914, 0.113668,
		0.509584, -0.713650, 0.480653,
		26.382639, 31.814409, 35.762581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761259, 32.320087, 35.214336>,  <26.025928, 32.313965, 35.426125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761259, 32.320087, 35.214336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673876, 31.956459, 35.356251>,  <26.621447, 31.738283, 35.441399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673876, 31.956459, 35.356251>,  <26.761259, 32.320087, 35.214336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673876, 31.956459, 35.356251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273765, -0.406056, -0.871878,
		0.936659, -0.093341, 0.337577,
		-0.218457, -0.909069, 0.354782,
		26.608339, 31.683739, 35.462685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359552, 31.907696, 34.990795>,  <26.761259, 32.320087, 35.214336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359552, 31.907696, 34.990795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002272, 31.736851, 35.047035>,  <26.787903, 31.634344, 35.080780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.002272, 31.736851, 35.047035>,  <27.359552, 31.907696, 34.990795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002272, 31.736851, 35.047035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009149, -0.329880, -0.943978,
		0.449567, -0.841875, 0.298557,
		-0.893200, -0.427113, 0.140601,
		26.734312, 31.608717, 35.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515062, 31.084724, 34.928875>,  <27.359552, 31.907696, 34.990795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515062, 31.084724, 34.928875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475689, 31.143610, 34.535198>,  <27.452065, 31.178942, 34.298992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475689, 31.143610, 34.535198>,  <27.515062, 31.084724, 34.928875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475689, 31.143610, 34.535198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464256, 0.867985, 0.176263,
		0.880214, 0.474269, -0.017095,
		-0.098434, 0.147213, -0.984195,
		27.446159, 31.187775, 34.239941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055143, 30.426647, 34.867764>,  <27.515062, 31.084724, 34.928875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055143, 30.426647, 34.867764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196527, 30.435118, 34.493679>,  <28.281359, 30.440201, 34.269230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196527, 30.435118, 34.493679>,  <28.055143, 30.426647, 34.867764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196527, 30.435118, 34.493679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934994, -0.039156, 0.352495,
		-0.029152, -0.999008, -0.033646,
		0.353462, 0.021183, -0.935209,
		28.302567, 30.441471, 34.213116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420801, 29.829363, 34.564384>,  <28.055143, 30.426647, 34.867764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420801, 29.829363, 34.564384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572725, 30.168724, 34.416893>,  <28.663879, 30.372341, 34.328400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572725, 30.168724, 34.416893>,  <28.420801, 29.829363, 34.564384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572725, 30.168724, 34.416893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792127, -0.092407, 0.603320,
		0.477785, -0.521225, -0.707139,
		0.379810, 0.848402, -0.368726,
		28.686668, 30.423244, 34.306274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083866, 29.795959, 34.109737>,  <28.420801, 29.829363, 34.564384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083866, 29.795959, 34.109737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067097, 30.139442, 34.314037>,  <29.057035, 30.345531, 34.436615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067097, 30.139442, 34.314037>,  <29.083866, 29.795959, 34.109737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067097, 30.139442, 34.314037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831421, -0.253500, 0.494446,
		0.554060, 0.445375, -0.703320,
		-0.041923, 0.858708, 0.510748,
		29.054520, 30.397055, 34.467262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733591, 30.243986, 34.003651>,  <29.083866, 29.795959, 34.109737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733591, 30.243986, 34.003651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567764, 30.313486, 34.360962>,  <29.468267, 30.355186, 34.575348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567764, 30.313486, 34.360962>,  <29.733591, 30.243986, 34.003651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567764, 30.313486, 34.360962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889672, -0.129021, 0.437992,
		0.191354, 0.976301, -0.101094,
		-0.414569, 0.173751, 0.893276,
		29.443394, 30.365612, 34.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145065, 30.721888, 34.524826>,  <29.733591, 30.243986, 34.003651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145065, 30.721888, 34.524826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926672, 30.439743, 34.705654>,  <29.795635, 30.270456, 34.814152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926672, 30.439743, 34.705654>,  <30.145065, 30.721888, 34.524826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926672, 30.439743, 34.705654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747430, -0.166329, 0.643182,
		-0.378484, 0.689057, 0.618021,
		-0.545984, -0.705362, 0.452069,
		29.762877, 30.228134, 34.841274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622087, 31.183002, 34.113869>,  <30.145065, 30.721888, 34.524826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622087, 31.183002, 34.113869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811007, 31.410067, 34.383591>,  <30.924358, 31.546305, 34.545425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.811007, 31.410067, 34.383591>,  <30.622087, 31.183002, 34.113869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811007, 31.410067, 34.383591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868147, -0.167231, -0.467283,
		-0.152493, 0.806097, -0.571798,
		0.472298, 0.567662, 0.674310,
		30.952696, 31.580366, 34.585884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080721, 31.684423, 33.752701>,  <30.622087, 31.183002, 34.113869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080721, 31.684423, 33.752701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235395, 31.640324, 34.118938>,  <31.328199, 31.613863, 34.338680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235395, 31.640324, 34.118938>,  <31.080721, 31.684423, 33.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235395, 31.640324, 34.118938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917962, -0.049190, -0.393607,
		0.088433, 0.992686, 0.082183,
		0.386686, -0.110249, 0.915598,
		31.351400, 31.607248, 34.393620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631300, 32.179146, 33.996868>,  <31.080721, 31.684423, 33.752701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631300, 32.179146, 33.996868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693415, 31.803772, 34.120304>,  <31.730682, 31.578548, 34.194366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693415, 31.803772, 34.120304>,  <31.631300, 32.179146, 33.996868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693415, 31.803772, 34.120304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788868, -0.070232, -0.610536,
		0.594621, 0.338247, 0.729394,
		0.155285, -0.938433, 0.308594,
		31.740000, 31.522242, 34.212883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367050, 31.986725, 34.327583>,  <31.631300, 32.179146, 33.996868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367050, 31.986725, 34.327583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155720, 31.725870, 34.110111>,  <32.028923, 31.569357, 33.979630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155720, 31.725870, 34.110111>,  <32.367050, 31.986725, 34.327583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155720, 31.725870, 34.110111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725357, -0.013875, -0.688233,
		0.441280, -0.757972, 0.480365,
		-0.528327, -0.652139, -0.543678,
		31.997221, 31.530228, 33.947006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643230, 31.227785, 34.168034>,  <32.367050, 31.986725, 34.327583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643230, 31.227785, 34.168034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423092, 31.351196, 33.857697>,  <32.291008, 31.425243, 33.671494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.423092, 31.351196, 33.857697>,  <32.643230, 31.227785, 34.168034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423092, 31.351196, 33.857697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748499, -0.229419, -0.622187,
		-0.369956, -0.923134, -0.104675,
		-0.550348, 0.308531, -0.775839,
		32.257988, 31.443756, 33.624947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574844, 30.717142, 33.522129>,  <32.643230, 31.227785, 34.168034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574844, 30.717142, 33.522129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575443, 31.109915, 33.446442>,  <32.575802, 31.345579, 33.401028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575443, 31.109915, 33.446442>,  <32.574844, 30.717142, 33.522129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575443, 31.109915, 33.446442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683560, -0.139115, -0.716514,
		-0.729893, -0.128272, -0.671418,
		0.001496, 0.981933, -0.189221,
		32.575893, 31.404495, 33.389675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309345, 30.794304, 32.911369>,  <32.574844, 30.717142, 33.522129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309345, 30.794304, 32.911369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531845, 31.121666, 32.969051>,  <32.665344, 31.318083, 33.003662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531845, 31.121666, 32.969051>,  <32.309345, 30.794304, 32.911369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531845, 31.121666, 32.969051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456768, -0.156137, -0.875777,
		-0.694225, 0.553022, -0.460673,
		0.556251, 0.818406, 0.144208,
		32.698719, 31.367188, 33.012314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470554, 31.070974, 32.243977>,  <32.309345, 30.794304, 32.911369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470554, 31.070974, 32.243977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729843, 31.292894, 32.452595>,  <32.885418, 31.426046, 32.577766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729843, 31.292894, 32.452595>,  <32.470554, 31.070974, 32.243977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729843, 31.292894, 32.452595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589179, 0.068449, -0.805098,
		-0.482366, 0.829164, -0.282505,
		0.648221, 0.554798, 0.521544,
		32.924309, 31.459333, 32.609058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590591, 31.703756, 31.807516>,  <32.470554, 31.070974, 32.243977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590591, 31.703756, 31.807516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895382, 31.676395, 32.065109>,  <33.078255, 31.659979, 32.219666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895382, 31.676395, 32.065109>,  <32.590591, 31.703756, 31.807516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895382, 31.676395, 32.065109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647095, 0.119934, -0.752917,
		-0.025734, 0.990423, 0.135650,
		0.761975, -0.068403, 0.643984,
		33.123974, 31.655874, 32.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024765, 32.164959, 31.488144>,  <32.590591, 31.703756, 31.807516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024765, 32.164959, 31.488144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266697, 31.951180, 31.724295>,  <33.411854, 31.822912, 31.865986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266697, 31.951180, 31.724295>,  <33.024765, 32.164959, 31.488144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266697, 31.951180, 31.724295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769982, 0.203253, -0.604827,
		0.203253, 0.820397, 0.534451,
		0.604827, -0.534451, 0.590379,
		33.448147, 31.790844, 31.901409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630604, 32.538670, 31.617773>,  <33.024765, 32.164959, 31.488144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630604, 32.538670, 31.617773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749607, 32.166622, 31.703901>,  <33.821011, 31.943394, 31.755577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749607, 32.166622, 31.703901>,  <33.630604, 32.538670, 31.617773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749607, 32.166622, 31.703901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819972, 0.133421, -0.556637,
		0.489012, 0.342162, 0.802367,
		0.297513, -0.930120, 0.215319,
		33.838860, 31.887587, 31.768497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323090, 32.678955, 31.849239>,  <33.630604, 32.538670, 31.617773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323090, 32.678955, 31.849239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303020, 32.290688, 31.755194>,  <34.290981, 32.057728, 31.698767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303020, 32.290688, 31.755194>,  <34.323090, 32.678955, 31.849239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303020, 32.290688, 31.755194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833837, 0.088865, -0.544811,
		0.549726, -0.223378, 0.804925,
		-0.050169, -0.970673, -0.235112,
		34.287971, 31.999485, 31.684660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021557, 32.365601, 31.864357>,  <34.323090, 32.678955, 31.849239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021557, 32.365601, 31.864357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794743, 32.150345, 31.614916>,  <34.658653, 32.021191, 31.465252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794743, 32.150345, 31.614916>,  <35.021557, 32.365601, 31.864357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794743, 32.150345, 31.614916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700805, 0.082644, -0.708549,
		0.432835, -0.838794, 0.330269,
		-0.567032, -0.538139, -0.623603,
		34.624634, 31.988903, 31.427835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505192, 31.985575, 31.360886>,  <35.021557, 32.365601, 31.864357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505192, 31.985575, 31.360886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147537, 31.933605, 31.189476>,  <34.932945, 31.902424, 31.086630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147537, 31.933605, 31.189476>,  <35.505192, 31.985575, 31.360886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147537, 31.933605, 31.189476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425764, 0.049769, -0.903464,
		0.138706, -0.990275, 0.010815,
		-0.894139, -0.129921, -0.428526,
		34.879295, 31.894629, 31.060919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523743, 31.332752, 31.016462>,  <35.505192, 31.985575, 31.360886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523743, 31.332752, 31.016462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245270, 31.565828, 30.848749>,  <35.078186, 31.705673, 30.748121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245270, 31.565828, 30.848749>,  <35.523743, 31.332752, 31.016462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245270, 31.565828, 30.848749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504835, -0.017844, -0.863032,
		-0.510361, -0.812499, -0.281739,
		-0.696185, 0.582689, -0.419285,
		35.036415, 31.740635, 30.722963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298794, 31.030352, 30.445726>,  <35.523743, 31.332752, 31.016462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298794, 31.030352, 30.445726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179882, 31.405378, 30.373518>,  <35.108536, 31.630394, 30.330193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179882, 31.405378, 30.373518>,  <35.298794, 31.030352, 30.445726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179882, 31.405378, 30.373518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520725, 0.000733, -0.853724,
		-0.800292, -0.347800, -0.488433,
		-0.297283, 0.937568, -0.180522,
		35.090698, 31.686649, 30.319361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203007, 31.068106, 29.643814>,  <35.298794, 31.030352, 30.445726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203007, 31.068106, 29.643814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211502, 31.456087, 29.740759>,  <35.216599, 31.688875, 29.798925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211502, 31.456087, 29.740759>,  <35.203007, 31.068106, 29.643814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211502, 31.456087, 29.740759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567604, 0.187865, -0.801581,
		-0.823028, 0.154589, -0.546560,
		0.021236, 0.969953, 0.242364,
		35.217873, 31.747072, 29.813469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073174, 31.391569, 29.003822>,  <35.203007, 31.068106, 29.643814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073174, 31.391569, 29.003822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248184, 31.651489, 29.252445>,  <35.353191, 31.807442, 29.401619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248184, 31.651489, 29.252445>,  <35.073174, 31.391569, 29.003822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248184, 31.651489, 29.252445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531634, 0.370553, -0.761614,
		-0.725216, 0.663665, -0.183329,
		0.437524, 0.649799, 0.621558,
		35.379440, 31.846430, 29.438913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052353, 32.069855, 28.584650>,  <35.073174, 31.391569, 29.003822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052353, 32.069855, 28.584650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329472, 32.122166, 28.868319>,  <35.495743, 32.153553, 29.038521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329472, 32.122166, 28.868319>,  <35.052353, 32.069855, 28.584650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329472, 32.122166, 28.868319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605562, 0.428484, -0.670594,
		-0.391565, 0.894036, 0.217663,
		0.692800, 0.130773, 0.709173,
		35.537312, 32.161396, 29.081070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234684, 32.849136, 28.689230>,  <35.052353, 32.069855, 28.584650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234684, 32.849136, 28.689230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555164, 32.630600, 28.786880>,  <35.747452, 32.499477, 28.845470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555164, 32.630600, 28.786880>,  <35.234684, 32.849136, 28.689230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555164, 32.630600, 28.786880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563693, 0.552142, -0.614321,
		0.200835, 0.629804, 0.750341,
		0.801196, -0.546339, 0.244127,
		35.795525, 32.466698, 28.860119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731251, 33.339767, 28.826094>,  <35.234684, 32.849136, 28.689230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731251, 33.339767, 28.826094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945438, 33.006672, 28.769779>,  <36.073952, 32.806816, 28.735991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945438, 33.006672, 28.769779>,  <35.731251, 33.339767, 28.826094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945438, 33.006672, 28.769779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657479, 0.515654, -0.549384,
		0.530090, 0.201614, 0.823624,
		0.535469, -0.832738, -0.140786,
		36.106079, 32.756851, 28.727543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426212, 33.527225, 28.961136>,  <35.731251, 33.339767, 28.826094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426212, 33.527225, 28.961136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445435, 33.200500, 28.731178>,  <36.456966, 33.004463, 28.593204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445435, 33.200500, 28.731178>,  <36.426212, 33.527225, 28.961136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445435, 33.200500, 28.731178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638945, 0.467533, -0.610870,
		0.767750, -0.337969, 0.544369,
		0.048056, -0.816817, -0.574892,
		36.459850, 32.955456, 28.558710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137569, 33.384705, 28.819698>,  <36.426212, 33.527225, 28.961136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137569, 33.384705, 28.819698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934021, 33.193371, 28.533411>,  <36.811893, 33.078571, 28.361639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934021, 33.193371, 28.533411>,  <37.137569, 33.384705, 28.819698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934021, 33.193371, 28.533411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610456, 0.385692, -0.691798,
		0.606954, -0.788950, 0.095732,
		-0.508871, -0.478330, -0.715717,
		36.781361, 33.049873, 28.318695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713791, 33.302231, 28.309099>,  <37.137569, 33.384705, 28.819698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713791, 33.302231, 28.309099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371162, 33.216911, 28.121145>,  <37.165585, 33.165718, 28.008373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371162, 33.216911, 28.121145>,  <37.713791, 33.302231, 28.309099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371162, 33.216911, 28.121145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414188, 0.258945, -0.872580,
		0.307798, -0.942045, -0.133456,
		-0.856568, -0.213302, -0.469887,
		37.114193, 33.152924, 27.980179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811886, 32.758549, 27.811966>,  <37.713791, 33.302231, 28.309099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811886, 32.758549, 27.811966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502594, 32.991341, 27.711239>,  <37.317020, 33.131016, 27.650803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502594, 32.991341, 27.711239>,  <37.811886, 32.758549, 27.811966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502594, 32.991341, 27.711239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484628, 0.286238, -0.826561,
		-0.408963, -0.761160, -0.503373,
		-0.773230, 0.581981, -0.251819,
		37.270626, 33.165936, 27.635693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791245, 32.585648, 27.179138>,  <37.811886, 32.758549, 27.811966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791245, 32.585648, 27.179138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592426, 32.932549, 27.190565>,  <37.473137, 33.140690, 27.197422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592426, 32.932549, 27.190565>,  <37.791245, 32.585648, 27.179138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592426, 32.932549, 27.190565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477946, 0.301104, -0.825169,
		-0.724235, -0.396490, -0.564163,
		-0.497043, 0.867255, 0.028569,
		37.443314, 33.192726, 27.199137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683662, 32.874744, 26.480061>,  <37.791245, 32.585648, 27.179138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683662, 32.874744, 26.480061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516750, 33.206467, 26.628723>,  <37.416603, 33.405502, 26.717920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516750, 33.206467, 26.628723>,  <37.683662, 32.874744, 26.480061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516750, 33.206467, 26.628723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288103, 0.508582, -0.811382,
		-0.861904, -0.231495, -0.451145,
		-0.417276, 0.829309, 0.371654,
		37.391567, 33.455261, 26.740219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279163, 33.075752, 25.931768>,  <37.683662, 32.874744, 26.480061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279163, 33.075752, 25.931768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370567, 33.386917, 26.165909>,  <37.425411, 33.573616, 26.306393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370567, 33.386917, 26.165909>,  <37.279163, 33.075752, 25.931768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370567, 33.386917, 26.165909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399848, 0.473213, -0.784979,
		-0.887639, 0.413429, -0.202911,
		0.228513, 0.777912, 0.585351,
		37.439121, 33.620289, 26.341515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996403, 33.717888, 25.677187>,  <37.279163, 33.075752, 25.931768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996403, 33.717888, 25.677187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322353, 33.791340, 25.897097>,  <37.517925, 33.835411, 26.029043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322353, 33.791340, 25.897097>,  <36.996403, 33.717888, 25.677187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322353, 33.791340, 25.897097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364862, 0.574493, -0.732689,
		-0.450389, 0.797644, 0.401141,
		0.814878, 0.183634, 0.549775,
		37.566818, 33.846432, 26.062029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972858, 34.446529, 25.879368>,  <36.996403, 33.717888, 25.677187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972858, 34.446529, 25.879368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342205, 34.293045, 25.874493>,  <37.563812, 34.200954, 25.871567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342205, 34.293045, 25.874493>,  <36.972858, 34.446529, 25.879368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342205, 34.293045, 25.874493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265370, 0.660885, -0.702004,
		0.277425, 0.644975, 0.712069,
		0.923371, -0.383715, -0.012189,
		37.619217, 34.177929, 25.870836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287052, 35.118748, 25.718126>,  <36.972858, 34.446529, 25.879368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287052, 35.118748, 25.718126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547966, 34.819843, 25.667332>,  <37.704514, 34.640503, 25.636854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547966, 34.819843, 25.667332>,  <37.287052, 35.118748, 25.718126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547966, 34.819843, 25.667332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525633, 0.566657, -0.634515,
		0.546104, 0.347138, 0.762407,
		0.652288, -0.747258, -0.126987,
		37.743652, 34.595665, 25.629236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001953, 35.400650, 25.742353>,  <37.287052, 35.118748, 25.718126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001953, 35.400650, 25.742353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017231, 35.051006, 25.548660>,  <38.026398, 34.841221, 25.432444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017231, 35.051006, 25.548660>,  <38.001953, 35.400650, 25.742353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017231, 35.051006, 25.548660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539744, 0.425863, -0.726166,
		0.840963, -0.233627, 0.488057,
		0.038193, -0.874105, -0.484234,
		38.028690, 34.788776, 25.403391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686989, 35.362408, 25.464687>,  <38.001953, 35.400650, 25.742353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686989, 35.362408, 25.464687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503319, 35.073101, 25.258368>,  <38.393116, 34.899517, 25.134577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503319, 35.073101, 25.258368>,  <38.686989, 35.362408, 25.464687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503319, 35.073101, 25.258368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396501, 0.352722, -0.847570,
		0.794952, -0.593694, 0.124816,
		-0.459172, -0.723266, -0.515797,
		38.365566, 34.856121, 25.103628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102894, 35.024502, 24.987444>,  <38.686989, 35.362408, 25.464687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102894, 35.024502, 24.987444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755711, 34.936241, 24.809475>,  <38.547401, 34.883286, 24.702694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755711, 34.936241, 24.809475>,  <39.102894, 35.024502, 24.987444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755711, 34.936241, 24.809475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417263, 0.161832, -0.894261,
		0.269327, -0.961832, -0.048392,
		-0.867960, -0.220656, -0.444923,
		38.495323, 34.870045, 24.675999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318214, 34.601974, 24.428886>,  <39.102894, 35.024502, 24.987444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318214, 34.601974, 24.428886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948647, 34.710999, 24.321491>,  <38.726906, 34.776413, 24.257055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948647, 34.710999, 24.321491>,  <39.318214, 34.601974, 24.428886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948647, 34.710999, 24.321491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336146, 0.243186, -0.909872,
		-0.182706, -0.930897, -0.316305,
		-0.923918, 0.272564, -0.268486,
		38.671471, 34.792767, 24.240946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193741, 34.336552, 23.717579>,  <39.318214, 34.601974, 24.428886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193741, 34.336552, 23.717579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926468, 34.630489, 23.764105>,  <38.766102, 34.806854, 23.792021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926468, 34.630489, 23.764105>,  <39.193741, 34.336552, 23.717579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926468, 34.630489, 23.764105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191747, 0.321148, -0.927414,
		-0.718861, -0.597381, -0.355491,
		-0.668185, 0.734846, 0.116315,
		38.726013, 34.850945, 23.799000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646763, 34.182899, 23.251585>,  <39.193741, 34.336552, 23.717579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646763, 34.182899, 23.251585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611519, 34.573582, 23.329853>,  <38.590374, 34.807991, 23.376814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611519, 34.573582, 23.329853>,  <38.646763, 34.182899, 23.251585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611519, 34.573582, 23.329853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010305, 0.195528, -0.980644,
		-0.996058, -0.088420, -0.007163,
		-0.088109, 0.976704, 0.195668,
		38.585087, 34.866592, 23.388554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211613, 34.464703, 22.775379>,  <38.646763, 34.182899, 23.251585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211613, 34.464703, 22.775379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398655, 34.800720, 22.885412>,  <38.510880, 35.002331, 22.951431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398655, 34.800720, 22.885412>,  <38.211613, 34.464703, 22.775379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398655, 34.800720, 22.885412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043273, 0.289074, -0.956328,
		-0.882876, 0.459090, 0.098822,
		0.467608, 0.840043, 0.275083,
		38.538937, 35.052734, 22.967937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906361, 34.903954, 22.401756>,  <38.211613, 34.464703, 22.775379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906361, 34.903954, 22.401756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239662, 35.100613, 22.502924>,  <38.439644, 35.218609, 22.563623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239662, 35.100613, 22.502924>,  <37.906361, 34.903954, 22.401756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239662, 35.100613, 22.502924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148363, 0.241840, -0.958907,
		-0.532612, 0.836537, 0.128571,
		0.833255, 0.491650, 0.252918,
		38.489639, 35.248108, 22.578800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812977, 35.641476, 22.123627>,  <37.906361, 34.903954, 22.401756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812977, 35.641476, 22.123627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203960, 35.576874, 22.178024>,  <38.438549, 35.538113, 22.210663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203960, 35.576874, 22.178024>,  <37.812977, 35.641476, 22.123627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203960, 35.576874, 22.178024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186593, 0.359365, -0.914352,
		0.098800, 0.919115, 0.381400,
		0.977457, -0.161505, 0.135995,
		38.497196, 35.528423, 22.218822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085705, 36.260597, 21.845070>,  <37.812977, 35.641476, 22.123627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085705, 36.260597, 21.845070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356373, 35.966293, 21.833914>,  <38.518772, 35.789711, 21.827221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.356373, 35.966293, 21.833914>,  <38.085705, 36.260597, 21.845070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356373, 35.966293, 21.833914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224896, 0.242607, -0.943697,
		0.701098, 0.632299, 0.329634,
		0.676671, -0.735758, -0.027890,
		38.559376, 35.745567, 21.825546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703426, 36.651688, 21.618088>,  <38.085705, 36.260597, 21.845070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703426, 36.651688, 21.618088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755306, 36.259819, 21.556879>,  <38.786434, 36.024696, 21.520155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755306, 36.259819, 21.556879>,  <38.703426, 36.651688, 21.618088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755306, 36.259819, 21.556879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225447, 0.179416, -0.957593,
		0.965584, 0.089697, 0.244134,
		0.129695, -0.979676, -0.153020,
		38.794216, 35.965916, 21.510973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338078, 36.546196, 21.228138>,  <38.703426, 36.651688, 21.618088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338078, 36.546196, 21.228138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166481, 36.190525, 21.164473>,  <39.063522, 35.977123, 21.126274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166481, 36.190525, 21.164473>,  <39.338078, 36.546196, 21.228138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166481, 36.190525, 21.164473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223796, 0.066086, -0.972393,
		0.875145, -0.452771, 0.170643,
		-0.428994, -0.889174, -0.159164,
		39.037785, 35.923771, 21.116724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795292, 36.199360, 20.827682>,  <39.338078, 36.546196, 21.228138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795292, 36.199360, 20.827682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446983, 36.010345, 20.773323>,  <39.237999, 35.896938, 20.740707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446983, 36.010345, 20.773323>,  <39.795292, 36.199360, 20.827682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446983, 36.010345, 20.773323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287114, -0.264288, -0.920716,
		0.399155, -0.840751, 0.365806,
		-0.870770, -0.472536, -0.135900,
		39.185753, 35.868584, 20.732553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997917, 35.617832, 20.396961>,  <39.795292, 36.199360, 20.827682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997917, 35.617832, 20.396961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608528, 35.686279, 20.336216>,  <39.374893, 35.727348, 20.299768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608528, 35.686279, 20.336216>,  <39.997917, 35.617832, 20.396961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608528, 35.686279, 20.336216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112971, -0.217688, -0.969458,
		-0.198937, -0.960903, 0.192585,
		-0.973479, 0.171105, -0.151860,
		39.316486, 35.737614, 20.290657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774101, 35.009285, 20.016756>,  <39.997917, 35.617832, 20.396961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774101, 35.009285, 20.016756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504974, 35.300961, 19.966799>,  <39.343498, 35.475964, 19.936825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504974, 35.300961, 19.966799>,  <39.774101, 35.009285, 20.016756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504974, 35.300961, 19.966799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013426, -0.156757, -0.987546,
		-0.739683, -0.666119, 0.095679,
		-0.672821, 0.729187, -0.124894,
		39.303127, 35.519718, 19.929331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368526, 34.737980, 19.474831>,  <39.774101, 35.009285, 20.016756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368526, 34.737980, 19.474831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295689, 35.131214, 19.482635>,  <39.251987, 35.367157, 19.487318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295689, 35.131214, 19.482635>,  <39.368526, 34.737980, 19.474831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295689, 35.131214, 19.482635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130421, -0.004480, -0.991448,
		-0.974593, -0.183082, 0.129031,
		-0.182094, 0.983087, 0.019512,
		39.241062, 35.426140, 19.488489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800991, 34.792763, 19.165506>,  <39.368526, 34.737980, 19.474831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800991, 34.792763, 19.165506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946468, 35.163837, 19.131727>,  <39.033752, 35.386482, 19.111460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946468, 35.163837, 19.131727>,  <38.800991, 34.792763, 19.165506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946468, 35.163837, 19.131727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245260, 0.007906, -0.969425,
		-0.898653, 0.373281, 0.230399,
		0.363689, 0.927685, -0.084446,
		39.055576, 35.442142, 19.106394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313622, 35.187588, 18.729658>,  <38.800991, 34.792763, 19.165506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313622, 35.187588, 18.729658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694996, 35.308186, 18.732944>,  <38.923820, 35.380543, 18.734917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694996, 35.308186, 18.732944>,  <38.313622, 35.187588, 18.729658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694996, 35.308186, 18.732944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001194, 0.023470, -0.999724,
		-0.301600, 0.953181, 0.022017,
		0.953434, 0.301491, 0.008216,
		38.981026, 35.398632, 18.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200142, 35.745342, 18.298906>,  <38.313622, 35.187588, 18.729658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200142, 35.745342, 18.298906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584370, 35.634987, 18.312679>,  <38.814907, 35.568775, 18.320944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584370, 35.634987, 18.312679>,  <38.200142, 35.745342, 18.298906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584370, 35.634987, 18.312679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063664, 0.097708, -0.993177,
		0.270640, 0.956211, 0.111419,
		0.960573, -0.275887, 0.034433,
		38.872543, 35.552219, 18.323009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578541, 36.243687, 17.942204>,  <38.200142, 35.745342, 18.298906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578541, 36.243687, 17.942204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803711, 35.913086, 17.940910>,  <38.938812, 35.714725, 17.940134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803711, 35.913086, 17.940910>,  <38.578541, 36.243687, 17.942204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803711, 35.913086, 17.940910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233165, 0.162558, -0.958754,
		0.792940, 0.538948, 0.284219,
		0.562921, -0.826505, -0.003234,
		38.972588, 35.665134, 17.939939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303738, 36.131714, 17.789562>,  <38.578541, 36.243687, 17.942204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303738, 36.131714, 17.789562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576790, 36.286457, 17.541578>,  <39.740623, 36.379303, 17.392788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576790, 36.286457, 17.541578>,  <39.303738, 36.131714, 17.789562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576790, 36.286457, 17.541578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411465, 0.904591, 0.111411,
		0.603910, 0.179039, 0.776684,
		0.682634, 0.386860, -0.619960,
		39.781578, 36.402515, 17.355591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693413, 36.701897, 18.139647>,  <39.303738, 36.131714, 17.789562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693413, 36.701897, 18.139647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693596, 36.752018, 17.742800>,  <39.693707, 36.782089, 17.504692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693596, 36.752018, 17.742800>,  <39.693413, 36.701897, 18.139647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693596, 36.752018, 17.742800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392261, 0.912626, 0.115084,
		0.919854, 0.389116, 0.049569,
		0.000457, 0.125304, -0.992118,
		39.693733, 36.789608, 17.445164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040749, 37.359642, 17.845182>,  <39.693413, 36.701897, 18.139647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040749, 37.359642, 17.845182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727306, 37.246037, 17.624166>,  <39.539242, 37.177872, 17.491558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727306, 37.246037, 17.624166>,  <40.040749, 37.359642, 17.845182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727306, 37.246037, 17.624166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482086, 0.838969, 0.252438,
		0.391865, 0.464182, -0.794340,
		-0.783604, -0.284018, -0.552539,
		39.492226, 37.160831, 17.458405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504829, 37.913841, 18.243534>,  <40.040749, 37.359642, 17.845182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504829, 37.913841, 18.243534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807171, 38.117153, 18.408619>,  <40.988575, 38.239140, 18.507669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807171, 38.117153, 18.408619>,  <40.504829, 37.913841, 18.243534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807171, 38.117153, 18.408619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403056, -0.135526, 0.905085,
		0.515974, -0.850458, 0.102429,
		0.755855, 0.508284, 0.412710,
		41.033928, 38.269638, 18.532433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805828, 37.543503, 18.778183>,  <40.504829, 37.913841, 18.243534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805828, 37.543503, 18.778183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830334, 37.936298, 18.849667>,  <40.845036, 38.171978, 18.892557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830334, 37.936298, 18.849667>,  <40.805828, 37.543503, 18.778183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830334, 37.936298, 18.849667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473578, -0.129010, 0.871252,
		0.878619, -0.138005, 0.457147,
		0.061260, 0.981993, 0.178707,
		40.848713, 38.230896, 18.903278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081387, 37.737373, 19.506948>,  <40.805828, 37.543503, 18.778183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081387, 37.737373, 19.506948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835442, 38.016323, 19.359648>,  <40.687874, 38.183693, 19.271267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835442, 38.016323, 19.359648>,  <41.081387, 37.737373, 19.506948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835442, 38.016323, 19.359648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580192, -0.083736, 0.810164,
		0.534151, 0.711799, 0.456097,
		-0.614866, 0.697374, -0.368252,
		40.650982, 38.225536, 19.249172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058037, 38.429947, 19.945078>,  <41.081387, 37.737373, 19.506948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058037, 38.429947, 19.945078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722050, 38.297020, 19.773485>,  <40.520458, 38.217262, 19.670530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722050, 38.297020, 19.773485>,  <41.058037, 38.429947, 19.945078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722050, 38.297020, 19.773485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459644, 0.015539, 0.887967,
		-0.288420, 0.943040, -0.165799,
		-0.839965, -0.332316, -0.428981,
		40.470058, 38.197327, 19.644791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429699, 38.868668, 20.021698>,  <41.058037, 38.429947, 19.945078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429699, 38.868668, 20.021698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337204, 38.480690, 19.991402>,  <40.281708, 38.247902, 19.973225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337204, 38.480690, 19.991402>,  <40.429699, 38.868668, 20.021698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337204, 38.480690, 19.991402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546994, 0.065236, 0.834590,
		-0.804566, 0.234418, -0.545639,
		-0.231238, -0.969944, -0.075739,
		40.267834, 38.189705, 19.968679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694309, 38.793972, 19.986464>,  <40.429699, 38.868668, 20.021698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694309, 38.793972, 19.986464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846680, 38.441994, 20.100018>,  <39.938103, 38.230808, 20.168150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846680, 38.441994, 20.100018>,  <39.694309, 38.793972, 19.986464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846680, 38.441994, 20.100018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466184, 0.082365, 0.880845,
		-0.798479, -0.467877, -0.378843,
		0.380924, -0.879947, 0.283884,
		39.960957, 38.178009, 20.185183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239334, 38.685978, 20.508753>,  <39.694309, 38.793972, 19.986464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239334, 38.685978, 20.508753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519997, 38.408958, 20.575762>,  <39.688393, 38.242748, 20.615967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519997, 38.408958, 20.575762>,  <39.239334, 38.685978, 20.508753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519997, 38.408958, 20.575762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264346, -0.034689, 0.963804,
		-0.661666, -0.720541, -0.207411,
		0.701655, -0.692544, 0.167520,
		39.730492, 38.201195, 20.626019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888725, 38.249882, 20.876875>,  <39.239334, 38.685978, 20.508753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888725, 38.249882, 20.876875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270180, 38.188103, 20.980198>,  <39.499054, 38.151035, 21.042192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270180, 38.188103, 20.980198>,  <38.888725, 38.249882, 20.876875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270180, 38.188103, 20.980198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278168, -0.124680, 0.952406,
		-0.114845, -0.980110, -0.161849,
		0.953642, -0.154400, 0.258316,
		39.556271, 38.141769, 21.057692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902885, 37.610703, 21.286560>,  <38.888725, 38.249882, 20.876875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902885, 37.610703, 21.286560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214504, 37.850071, 21.361368>,  <39.401478, 37.993690, 21.406252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214504, 37.850071, 21.361368>,  <38.902885, 37.610703, 21.286560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214504, 37.850071, 21.361368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184106, -0.066790, 0.980634,
		0.599321, -0.798394, 0.058140,
		0.779050, 0.598419, 0.187018,
		39.448219, 38.029598, 21.417473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190235, 37.251278, 21.840630>,  <38.902885, 37.610703, 21.286560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190235, 37.251278, 21.840630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365223, 37.610962, 21.838181>,  <39.470215, 37.826775, 21.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365223, 37.610962, 21.838181>,  <39.190235, 37.251278, 21.840630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365223, 37.610962, 21.838181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178512, 0.093515, 0.979484,
		0.881338, -0.427399, 0.201430,
		0.437468, 0.899214, -0.006122,
		39.496464, 37.880726, 21.836344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704777, 37.163803, 22.348701>,  <39.190235, 37.251278, 21.840630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704777, 37.163803, 22.348701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602451, 37.548695, 22.311434>,  <39.541058, 37.779629, 22.289074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602451, 37.548695, 22.311434>,  <39.704777, 37.163803, 22.348701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602451, 37.548695, 22.311434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082160, 0.074388, 0.993839,
		0.963228, 0.261893, 0.060026,
		-0.255815, 0.962226, -0.093170,
		39.525707, 37.837364, 22.283484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993263, 37.497196, 22.900507>,  <39.704777, 37.163803, 22.348701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993263, 37.497196, 22.900507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717335, 37.765236, 22.790880>,  <39.551777, 37.926060, 22.725103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717335, 37.765236, 22.790880>,  <39.993263, 37.497196, 22.900507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717335, 37.765236, 22.790880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186200, 0.201611, 0.961604,
		0.699626, 0.714366, -0.014303,
		-0.689821, 0.670100, -0.274067,
		39.510387, 37.966267, 22.708660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211395, 38.078167, 23.358957>,  <39.993263, 37.497196, 22.900507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211395, 38.078167, 23.358957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845139, 38.150330, 23.215263>,  <39.625385, 38.193626, 23.129047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845139, 38.150330, 23.215263>,  <40.211395, 38.078167, 23.358957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845139, 38.150330, 23.215263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365893, -0.003905, 0.930649,
		0.166494, 0.983584, 0.069586,
		-0.915643, 0.180408, -0.359236,
		39.570446, 38.204453, 23.107492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804783, 38.374039, 23.894337>,  <40.211395, 38.078167, 23.358957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804783, 38.374039, 23.894337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491737, 38.302483, 23.655836>,  <39.303909, 38.259548, 23.512735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491737, 38.302483, 23.655836>,  <39.804783, 38.374039, 23.894337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491737, 38.302483, 23.655836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603072, -0.019610, 0.797445,
		-0.154346, 0.983674, -0.092536,
		-0.782612, -0.178888, -0.596253,
		39.256954, 38.248817, 23.476959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264626, 38.891560, 24.091173>,  <39.804783, 38.374039, 23.894337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264626, 38.891560, 24.091173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075218, 38.579170, 23.928268>,  <38.961575, 38.391735, 23.830524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075218, 38.579170, 23.928268>,  <39.264626, 38.891560, 24.091173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075218, 38.579170, 23.928268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445728, -0.186339, 0.875560,
		-0.759678, 0.596119, -0.259868,
		-0.473514, -0.780974, -0.407264,
		38.933163, 38.344879, 23.806089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502087, 38.928036, 24.347950>,  <39.264626, 38.891560, 24.091173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502087, 38.928036, 24.347950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600746, 38.559319, 24.228310>,  <38.659943, 38.338089, 24.156525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600746, 38.559319, 24.228310>,  <38.502087, 38.928036, 24.347950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600746, 38.559319, 24.228310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453016, -0.382511, 0.805271,
		-0.856702, -0.063123, -0.511934,
		0.246652, -0.921792, -0.299102,
		38.674740, 38.282780, 24.138578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986652, 38.562824, 24.456242>,  <38.502087, 38.928036, 24.347950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986652, 38.562824, 24.456242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259724, 38.270584, 24.450998>,  <38.423565, 38.095242, 24.447853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259724, 38.270584, 24.450998>,  <37.986652, 38.562824, 24.456242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259724, 38.270584, 24.450998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407337, -0.395387, 0.823253,
		-0.606653, -0.556677, -0.567523,
		0.682677, -0.730602, -0.013107,
		38.464527, 38.051403, 24.447065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662651, 37.987053, 24.802965>,  <37.986652, 38.562824, 24.456242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662651, 37.987053, 24.802965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040062, 37.855236, 24.789299>,  <38.266506, 37.776146, 24.781099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040062, 37.855236, 24.789299>,  <37.662651, 37.987053, 24.802965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040062, 37.855236, 24.789299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177273, -0.589283, 0.788238,
		-0.279890, -0.737664, -0.614421,
		0.943523, -0.329541, -0.034167,
		38.323120, 37.756374, 24.779049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640484, 37.314648, 24.727917>,  <37.662651, 37.987053, 24.802965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640484, 37.314648, 24.727917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998928, 37.398689, 24.884300>,  <38.213993, 37.449116, 24.978130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998928, 37.398689, 24.884300>,  <37.640484, 37.314648, 24.727917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998928, 37.398689, 24.884300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190001, -0.614472, 0.765718,
		0.401113, -0.760448, -0.510713,
		0.896107, 0.210103, 0.390958,
		38.267761, 37.461720, 25.001587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898659, 36.705288, 24.912525>,  <37.640484, 37.314648, 24.727917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898659, 36.705288, 24.912525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127838, 36.934605, 25.146811>,  <38.265347, 37.072197, 25.287382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127838, 36.934605, 25.146811>,  <37.898659, 36.705288, 24.912525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127838, 36.934605, 25.146811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286220, -0.529691, 0.798439,
		0.767988, -0.625110, -0.139398,
		0.572950, 0.573294, 0.585716,
		38.299725, 37.106594, 25.322525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261696, 36.311882, 25.419353>,  <37.898659, 36.705288, 24.912525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261696, 36.311882, 25.419353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309258, 36.680046, 25.568325>,  <38.337795, 36.900944, 25.657707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309258, 36.680046, 25.568325>,  <38.261696, 36.311882, 25.419353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309258, 36.680046, 25.568325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169188, -0.350821, 0.921032,
		0.978385, -0.172525, 0.114008,
		0.118904, 0.920413, 0.372427,
		38.344929, 36.956169, 25.680054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536922, 36.172550, 26.112387>,  <38.261696, 36.311882, 25.419353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536922, 36.172550, 26.112387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412804, 36.552776, 26.107464>,  <38.338333, 36.780910, 26.104509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412804, 36.552776, 26.107464>,  <38.536922, 36.172550, 26.112387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412804, 36.552776, 26.107464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275763, -0.077613, 0.958087,
		0.909766, 0.300681, 0.286212,
		-0.310293, 0.950561, -0.012307,
		38.319717, 36.837944, 26.103771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756824, 36.547886, 26.743639>,  <38.536922, 36.172550, 26.112387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756824, 36.547886, 26.743639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434406, 36.743431, 26.610195>,  <38.240955, 36.860760, 26.530128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434406, 36.743431, 26.610195>,  <38.756824, 36.547886, 26.743639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434406, 36.743431, 26.610195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364357, 0.034323, 0.930627,
		0.466403, 0.871683, 0.150456,
		-0.806047, 0.488867, -0.333612,
		38.192593, 36.890091, 26.510111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470093, 36.960415, 27.269726>,  <38.756824, 36.547886, 26.743639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470093, 36.960415, 27.269726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144184, 36.945831, 27.038275>,  <37.948639, 36.937080, 26.899405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144184, 36.945831, 27.038275>,  <38.470093, 36.960415, 27.269726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144184, 36.945831, 27.038275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579765, 0.057491, 0.812753,
		0.003633, 0.997680, -0.067980,
		-0.814776, -0.036459, -0.578629,
		37.899750, 36.934895, 26.864687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996780, 37.563477, 27.361532>,  <38.470093, 36.960415, 27.269726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996780, 37.563477, 27.361532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777786, 37.251736, 27.239634>,  <37.646389, 37.064690, 27.166494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777786, 37.251736, 27.239634>,  <37.996780, 37.563477, 27.361532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777786, 37.251736, 27.239634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620802, 0.134067, 0.772419,
		-0.561131, 0.612073, -0.557224,
		-0.547482, -0.779354, -0.304747,
		37.613541, 37.017929, 27.148209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351315, 37.836781, 27.410975>,  <37.996780, 37.563477, 27.361532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351315, 37.836781, 27.410975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302303, 37.439873, 27.418783>,  <37.272896, 37.201729, 27.423470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302303, 37.439873, 27.418783>,  <37.351315, 37.836781, 27.410975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302303, 37.439873, 27.418783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633793, 0.093371, 0.767847,
		-0.763736, 0.081711, -0.640336,
		-0.122530, -0.992273, 0.019523,
		37.265545, 37.142189, 27.424641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605103, 37.705215, 27.581350>,  <37.351315, 37.836781, 27.410975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605103, 37.705215, 27.581350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778969, 37.355316, 27.667023>,  <36.883289, 37.145374, 27.718426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778969, 37.355316, 27.667023>,  <36.605103, 37.705215, 27.581350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778969, 37.355316, 27.667023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634199, -0.128457, 0.762424,
		-0.639419, -0.467235, -0.610603,
		0.434667, -0.874752, 0.214182,
		36.909370, 37.092892, 27.731277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004120, 37.204308, 27.652634>,  <36.605103, 37.705215, 27.581350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004120, 37.204308, 27.652634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300575, 37.027359, 27.854631>,  <36.478447, 36.921188, 27.975830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300575, 37.027359, 27.854631>,  <36.004120, 37.204308, 27.652634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300575, 37.027359, 27.854631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649567, -0.282451, 0.705892,
		-0.169630, -0.851193, -0.496686,
		0.741140, -0.442371, 0.504995,
		36.522919, 36.894650, 28.006130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725426, 36.608437, 27.881897>,  <36.004120, 37.204308, 27.652634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725426, 36.608437, 27.881897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054653, 36.618767, 28.108839>,  <36.252190, 36.624966, 28.245005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054653, 36.618767, 28.108839>,  <35.725426, 36.608437, 27.881897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054653, 36.618767, 28.108839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517541, -0.377321, 0.767972,
		0.233907, -0.925722, -0.297196,
		0.823067, 0.025823, 0.567357,
		36.301575, 36.626514, 28.279047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751472, 35.924667, 28.314043>,  <35.725426, 36.608437, 27.881897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751472, 35.924667, 28.314043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965034, 36.199417, 28.511280>,  <36.093174, 36.364269, 28.629623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.965034, 36.199417, 28.511280>,  <35.751472, 35.924667, 28.314043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965034, 36.199417, 28.511280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366280, -0.337729, 0.867052,
		0.762090, -0.643536, 0.071273,
		0.533908, 0.686877, 0.493094,
		36.125206, 36.405479, 28.659208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867714, 35.603600, 28.888834>,  <35.751472, 35.924667, 28.314043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867714, 35.603600, 28.888834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976631, 35.976147, 28.985500>,  <36.041981, 36.199677, 29.043501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976631, 35.976147, 28.985500>,  <35.867714, 35.603600, 28.888834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976631, 35.976147, 28.985500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075861, -0.229596, 0.970325,
		0.959219, -0.282548, 0.008137,
		0.272296, 0.931371, 0.241667,
		36.058319, 36.255558, 29.058001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162029, 35.446453, 29.510836>,  <35.867714, 35.603600, 28.888834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162029, 35.446453, 29.510836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024792, 35.822155, 29.507120>,  <35.942451, 36.047577, 29.504890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024792, 35.822155, 29.507120>,  <36.162029, 35.446453, 29.510836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024792, 35.822155, 29.507120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290102, -0.096550, 0.952113,
		0.893381, 0.329356, 0.305606,
		-0.343091, 0.939256, -0.009291,
		35.921864, 36.103931, 29.504333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506149, 35.680542, 30.072712>,  <36.162029, 35.446453, 29.510836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506149, 35.680542, 30.072712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215122, 35.937527, 29.976473>,  <36.040504, 36.091717, 29.918730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215122, 35.937527, 29.976473>,  <36.506149, 35.680542, 30.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215122, 35.937527, 29.976473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298611, 0.019170, 0.954182,
		0.617638, 0.766078, 0.177898,
		-0.727568, 0.642461, -0.240599,
		35.996853, 36.130264, 29.904293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342194, 36.185612, 30.699656>,  <36.506149, 35.680542, 30.072712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342194, 36.185612, 30.699656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004322, 36.252861, 30.496382>,  <35.801598, 36.293213, 30.374418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004322, 36.252861, 30.496382>,  <36.342194, 36.185612, 30.699656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004322, 36.252861, 30.496382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520353, -0.035328, 0.853220,
		0.125496, 0.985132, 0.117326,
		-0.844680, 0.168126, -0.508183,
		35.750919, 36.303299, 30.343927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036083, 36.795601, 30.961874>,  <36.342194, 36.185612, 30.699656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036083, 36.795601, 30.961874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773430, 36.544331, 30.794916>,  <35.615837, 36.393566, 30.694742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773430, 36.544331, 30.794916>,  <36.036083, 36.795601, 30.961874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773430, 36.544331, 30.794916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392996, -0.187372, 0.900248,
		-0.643724, 0.755171, -0.123836,
		-0.656638, -0.628179, -0.417395,
		35.576439, 36.355877, 30.669697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510166, 36.909561, 31.354855>,  <36.036083, 36.795601, 30.961874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510166, 36.909561, 31.354855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377155, 36.586693, 31.159754>,  <35.297348, 36.392971, 31.042694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377155, 36.586693, 31.159754>,  <35.510166, 36.909561, 31.354855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377155, 36.586693, 31.159754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454305, -0.316123, 0.832871,
		-0.826458, 0.498541, -0.261581,
		-0.332529, -0.807170, -0.487751,
		35.277397, 36.344543, 31.013428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876438, 36.770397, 31.613939>,  <35.510166, 36.909561, 31.354855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876438, 36.770397, 31.613939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027718, 36.435863, 31.455193>,  <35.118484, 36.235142, 31.359943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027718, 36.435863, 31.455193>,  <34.876438, 36.770397, 31.613939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027718, 36.435863, 31.455193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507514, -0.545862, 0.666681,
		-0.774207, -0.050720, -0.630897,
		0.378197, -0.836339, -0.396869,
		35.141178, 36.184963, 31.336132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336430, 36.518566, 31.272947>,  <34.876438, 36.770397, 31.613939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336430, 36.518566, 31.272947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598740, 36.229362, 31.359856>,  <34.756126, 36.055840, 31.412001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598740, 36.229362, 31.359856>,  <34.336430, 36.518566, 31.272947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598740, 36.229362, 31.359856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632703, -0.369329, 0.680649,
		-0.411878, -0.583818, -0.699652,
		0.655777, -0.723016, 0.217265,
		34.795475, 36.012459, 31.425035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975723, 35.825272, 31.386314>,  <34.336430, 36.518566, 31.272947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975723, 35.825272, 31.386314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309589, 35.759315, 31.596514>,  <34.509911, 35.719742, 31.722633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309589, 35.759315, 31.596514>,  <33.975723, 35.825272, 31.386314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309589, 35.759315, 31.596514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481479, -0.681737, 0.550829,
		0.267422, -0.712772, -0.648414,
		0.834664, -0.164894, 0.525496,
		34.559990, 35.709846, 31.754162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878403, 35.048916, 31.575762>,  <33.975723, 35.825272, 31.386314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878403, 35.048916, 31.575762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210476, 35.159576, 31.769365>,  <34.409718, 35.225971, 31.885527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210476, 35.159576, 31.769365>,  <33.878403, 35.048916, 31.575762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210476, 35.159576, 31.769365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360128, -0.396614, 0.844396,
		0.425568, -0.875306, -0.229631,
		0.830181, 0.276652, 0.484008,
		34.459530, 35.242573, 31.914568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132965, 34.480625, 31.924301>,  <33.878403, 35.048916, 31.575762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132965, 34.480625, 31.924301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273479, 34.802155, 32.116329>,  <34.357788, 34.995071, 32.231544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273479, 34.802155, 32.116329>,  <34.132965, 34.480625, 31.924301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273479, 34.802155, 32.116329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213957, -0.430258, 0.876984,
		0.911494, -0.410785, 0.020841,
		0.351285, 0.803824, 0.480068,
		34.378864, 35.043301, 32.260349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681362, 34.190407, 32.247894>,  <34.132965, 34.480625, 31.924301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681362, 34.190407, 32.247894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501152, 34.497833, 32.429592>,  <34.393028, 34.682289, 32.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501152, 34.497833, 32.429592>,  <34.681362, 34.190407, 32.247894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501152, 34.497833, 32.429592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172197, -0.574059, 0.800503,
		0.876001, 0.282426, 0.390971,
		-0.450523, 0.768565, 0.454243,
		34.365993, 34.728401, 32.565865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932888, 34.162750, 32.990303>,  <34.681362, 34.190407, 32.247894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932888, 34.162750, 32.990303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588932, 34.364883, 32.961395>,  <34.382557, 34.486164, 32.944050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588932, 34.364883, 32.961395>,  <34.932888, 34.162750, 32.990303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588932, 34.364883, 32.961395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395701, -0.570395, 0.719771,
		0.322504, 0.647521, 0.690440,
		-0.859891, 0.505337, -0.072270,
		34.330963, 34.516483, 32.939713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997845, 34.325497, 33.674690>,  <34.932888, 34.162750, 32.990303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997845, 34.325497, 33.674690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628017, 34.396595, 33.539886>,  <34.406120, 34.439255, 33.459003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628017, 34.396595, 33.539886>,  <34.997845, 34.325497, 33.674690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628017, 34.396595, 33.539886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354316, -0.726350, 0.588962,
		-0.140103, 0.663945, 0.734539,
		-0.924571, 0.177744, -0.337010,
		34.350647, 34.449917, 33.438782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687420, 34.572693, 33.695213>,  <34.997845, 34.325497, 33.674690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687420, 34.572693, 33.695213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029652, 34.643284, 33.889881>,  <36.234989, 34.685638, 34.006683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029652, 34.643284, 33.889881>,  <35.687420, 34.572693, 33.695213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029652, 34.643284, 33.889881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490339, 0.025199, -0.871167,
		-0.166001, 0.983983, -0.064972,
		0.855577, 0.176473, 0.486668,
		36.286324, 34.696224, 34.035881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927090, 35.089203, 33.336639>,  <35.687420, 34.572693, 33.695213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927090, 35.089203, 33.336639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230762, 34.921799, 33.536037>,  <36.412964, 34.821358, 33.655674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230762, 34.921799, 33.536037>,  <35.927090, 35.089203, 33.336639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230762, 34.921799, 33.536037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624991, 0.254869, -0.737854,
		0.181749, 0.871717, 0.455057,
		0.759180, -0.418511, 0.498493,
		36.458515, 34.796246, 33.685585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409050, 35.534428, 33.179680>,  <35.927090, 35.089203, 33.336639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409050, 35.534428, 33.179680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605968, 35.218571, 33.326160>,  <36.724121, 35.029057, 33.414051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605968, 35.218571, 33.326160>,  <36.409050, 35.534428, 33.179680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605968, 35.218571, 33.326160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722767, 0.136409, -0.677496,
		0.485027, 0.598210, 0.637882,
		0.492298, -0.789644, 0.366204,
		36.753658, 34.981678, 33.436020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081829, 35.708881, 33.422707>,  <36.409050, 35.534428, 33.179680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081829, 35.708881, 33.422707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119759, 35.317951, 33.346981>,  <37.142517, 35.083393, 33.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119759, 35.317951, 33.346981>,  <37.081829, 35.708881, 33.422707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119759, 35.317951, 33.346981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725224, 0.198093, -0.659400,
		0.681952, -0.074772, 0.727565,
		0.094820, -0.977327, -0.189317,
		37.148205, 35.024754, 33.290188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765621, 35.624142, 33.323399>,  <37.081829, 35.708881, 33.422707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765621, 35.624142, 33.323399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594021, 35.307243, 33.149818>,  <37.491062, 35.117104, 33.045670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594021, 35.307243, 33.149818>,  <37.765621, 35.624142, 33.323399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594021, 35.307243, 33.149818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605607, 0.104190, -0.788913,
		0.670225, -0.601243, 0.435092,
		-0.428996, -0.792245, -0.433948,
		37.465321, 35.069569, 33.019634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359188, 35.241249, 33.139496>,  <37.765621, 35.624142, 33.323399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359188, 35.241249, 33.139496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070751, 35.067684, 32.923443>,  <37.897690, 34.963543, 32.793812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070751, 35.067684, 32.923443>,  <38.359188, 35.241249, 33.139496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070751, 35.067684, 32.923443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536414, 0.143751, -0.831622,
		0.438497, -0.889412, 0.129100,
		-0.721096, -0.433915, -0.540128,
		37.854424, 34.937511, 32.761406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689552, 34.757496, 32.706081>,  <38.359188, 35.241249, 33.139496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689552, 34.757496, 32.706081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337814, 34.871311, 32.553352>,  <38.126770, 34.939602, 32.461716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337814, 34.871311, 32.553352>,  <38.689552, 34.757496, 32.706081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337814, 34.871311, 32.553352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436079, 0.159089, -0.885735,
		-0.191282, -0.945372, -0.263976,
		-0.879345, 0.284540, -0.381826,
		38.074013, 34.956673, 32.438805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666122, 34.371113, 32.132164>,  <38.689552, 34.757496, 32.706081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666122, 34.371113, 32.132164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396786, 34.656590, 32.054951>,  <38.235184, 34.827873, 32.008621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396786, 34.656590, 32.054951>,  <38.666122, 34.371113, 32.132164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396786, 34.656590, 32.054951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427841, 0.163200, -0.888998,
		-0.602965, -0.681185, -0.415234,
		-0.673339, 0.713689, -0.193035,
		38.194782, 34.870697, 31.997040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365959, 34.267147, 31.406618>,  <38.666122, 34.371113, 32.132164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365959, 34.267147, 31.406618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290390, 34.651939, 31.485518>,  <38.245049, 34.882812, 31.532858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290390, 34.651939, 31.485518>,  <38.365959, 34.267147, 31.406618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290390, 34.651939, 31.485518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472254, 0.265117, -0.840648,
		-0.860979, -0.065663, -0.504384,
		-0.188920, 0.961978, 0.197250,
		38.233715, 34.940533, 31.544693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066006, 34.570408, 30.722961>,  <38.365959, 34.267147, 31.406618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066006, 34.570408, 30.722961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228374, 34.855019, 30.952379>,  <38.325798, 35.025784, 31.090031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228374, 34.855019, 30.952379>,  <38.066006, 34.570408, 30.722961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228374, 34.855019, 30.952379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408505, 0.420126, -0.810320,
		-0.817525, 0.563226, -0.120122,
		0.405927, 0.711527, 0.573544,
		38.350151, 35.068478, 31.124443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085175, 35.108467, 30.262310>,  <38.066006, 34.570408, 30.722961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085175, 35.108467, 30.262310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293983, 35.255959, 30.569952>,  <38.419270, 35.344456, 30.754538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293983, 35.255959, 30.569952>,  <38.085175, 35.108467, 30.262310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293983, 35.255959, 30.569952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384295, 0.703330, -0.598034,
		-0.761449, 0.607754, 0.225456,
		0.522027, 0.368731, 0.769106,
		38.450592, 35.366577, 30.800684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015255, 35.836571, 30.223022>,  <38.085175, 35.108467, 30.262310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015255, 35.836571, 30.223022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357967, 35.765152, 30.416534>,  <38.563595, 35.722301, 30.532640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357967, 35.765152, 30.416534>,  <38.015255, 35.836571, 30.223022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357967, 35.765152, 30.416534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464416, 0.674932, -0.573398,
		-0.224139, 0.715952, 0.661191,
		0.856784, -0.178547, 0.483778,
		38.615002, 35.711586, 30.561668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288754, 36.515415, 30.459656>,  <38.015255, 35.836571, 30.223022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288754, 36.515415, 30.459656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601830, 36.266705, 30.448471>,  <38.789677, 36.117477, 30.441761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601830, 36.266705, 30.448471>,  <38.288754, 36.515415, 30.459656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601830, 36.266705, 30.448471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499738, 0.654578, -0.567265,
		0.371017, 0.430020, 0.823061,
		0.782693, -0.621780, -0.027962,
		38.836636, 36.080170, 30.440083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785870, 36.941761, 30.549812>,  <38.288754, 36.515415, 30.459656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785870, 36.941761, 30.549812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965080, 36.622559, 30.388586>,  <39.072609, 36.431038, 30.291849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965080, 36.622559, 30.388586>,  <38.785870, 36.941761, 30.549812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965080, 36.622559, 30.388586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429098, 0.587468, -0.686117,
		0.784311, 0.134446, 0.605624,
		0.448030, -0.798001, -0.403067,
		39.099491, 36.383160, 30.267666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583946, 37.087654, 30.554136>,  <38.785870, 36.941761, 30.549812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583946, 37.087654, 30.554136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513004, 36.805389, 30.279737>,  <39.470440, 36.636032, 30.115099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513004, 36.805389, 30.279737>,  <39.583946, 37.087654, 30.554136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513004, 36.805389, 30.279737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651855, 0.437989, -0.619072,
		0.737313, -0.556965, 0.382308,
		-0.177355, -0.705659, -0.685996,
		39.459797, 36.593693, 30.073938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209183, 37.033405, 30.221630>,  <39.583946, 37.087654, 30.554136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209183, 37.033405, 30.221630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979275, 36.833153, 29.962708>,  <39.841331, 36.713001, 29.807354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979275, 36.833153, 29.962708>,  <40.209183, 37.033405, 30.221630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979275, 36.833153, 29.962708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427642, 0.490656, -0.759196,
		0.697687, -0.713176, -0.067919,
		-0.574766, -0.500637, -0.647308,
		39.806847, 36.682961, 29.768515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644577, 36.665665, 29.583576>,  <40.209183, 37.033405, 30.221630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644577, 36.665665, 29.583576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274380, 36.680164, 29.432766>,  <40.052261, 36.688862, 29.342279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274380, 36.680164, 29.432766>,  <40.644577, 36.665665, 29.583576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274380, 36.680164, 29.432766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377373, 0.173509, -0.909662,
		0.032445, -0.984165, -0.174260,
		-0.925493, 0.036247, -0.377027,
		39.996731, 36.691040, 29.319658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695679, 36.403961, 28.995577>,  <40.644577, 36.665665, 29.583576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695679, 36.403961, 28.995577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325569, 36.532616, 28.915150>,  <40.103504, 36.609806, 28.866894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325569, 36.532616, 28.915150>,  <40.695679, 36.403961, 28.995577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325569, 36.532616, 28.915150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259986, 0.151782, -0.953609,
		-0.276193, -0.934620, -0.224059,
		-0.925270, 0.321632, -0.201067,
		40.047989, 36.629105, 28.854830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484768, 36.117523, 28.350420>,  <40.695679, 36.403961, 28.995577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484768, 36.117523, 28.350420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277870, 36.453228, 28.417465>,  <40.153732, 36.654652, 28.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.277870, 36.453228, 28.417465>,  <40.484768, 36.117523, 28.350420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277870, 36.453228, 28.417465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150141, 0.281793, -0.947655,
		-0.842563, -0.465006, -0.271765,
		-0.517247, 0.839263, 0.167612,
		40.122696, 36.705006, 28.467749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041561, 36.069965, 27.875994>,  <40.484768, 36.117523, 28.350420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041561, 36.069965, 27.875994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057590, 36.452869, 27.990566>,  <40.067207, 36.682613, 28.059309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057590, 36.452869, 27.990566>,  <40.041561, 36.069965, 27.875994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057590, 36.452869, 27.990566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227838, 0.270354, -0.935413,
		-0.972874, 0.102744, -0.207267,
		0.040073, 0.957263, 0.286430,
		40.069611, 36.740047, 28.076496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708149, 36.517067, 27.276812>,  <40.041561, 36.069965, 27.875994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708149, 36.517067, 27.276812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950958, 36.745483, 27.497879>,  <40.096645, 36.882534, 27.630520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950958, 36.745483, 27.497879>,  <39.708149, 36.517067, 27.276812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950958, 36.745483, 27.497879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309026, 0.471099, -0.826177,
		-0.732139, 0.672296, 0.109502,
		0.607023, 0.571037, 0.552666,
		40.133064, 36.916794, 27.663679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510895, 37.180660, 27.098190>,  <39.708149, 36.517067, 27.276812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510895, 37.180660, 27.098190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884552, 37.214077, 27.236988>,  <40.108746, 37.234127, 27.320267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884552, 37.214077, 27.236988>,  <39.510895, 37.180660, 27.098190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884552, 37.214077, 27.236988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245952, 0.553837, -0.795470,
		-0.258636, 0.828423, 0.496812,
		0.934139, 0.083546, 0.346995,
		40.164795, 37.239140, 27.341087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703156, 37.848888, 26.924986>,  <39.510895, 37.180660, 27.098190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703156, 37.848888, 26.924986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046234, 37.649063, 26.973633>,  <40.252083, 37.529167, 27.002821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046234, 37.649063, 26.973633>,  <39.703156, 37.848888, 26.924986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046234, 37.649063, 26.973633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396660, 0.492422, -0.774714,
		0.327132, 0.712711, 0.620506,
		0.857698, -0.499564, 0.121617,
		40.303543, 37.499195, 27.010118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142456, 38.361870, 26.790113>,  <39.703156, 37.848888, 26.924986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142456, 38.361870, 26.790113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340748, 38.014816, 26.774847>,  <40.459724, 37.806583, 26.765688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340748, 38.014816, 26.774847>,  <40.142456, 38.361870, 26.790113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340748, 38.014816, 26.774847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374776, 0.253357, -0.891826,
		0.783451, 0.427801, 0.450766,
		0.495729, -0.867638, -0.038164,
		40.489468, 37.754524, 26.763397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771935, 38.529011, 26.541065>,  <40.142456, 38.361870, 26.790113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771935, 38.529011, 26.541065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717056, 38.139164, 26.470295>,  <40.684128, 37.905258, 26.427832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717056, 38.139164, 26.470295>,  <40.771935, 38.529011, 26.541065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717056, 38.139164, 26.470295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197495, 0.148115, -0.969050,
		0.970656, -0.167893, 0.172160,
		-0.137197, -0.974615, -0.176927,
		40.675896, 37.846779, 26.417217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417858, 38.235775, 26.207125>,  <40.771935, 38.529011, 26.541065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417858, 38.235775, 26.207125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106163, 37.997272, 26.129906>,  <40.919147, 37.854172, 26.083574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106163, 37.997272, 26.129906>,  <41.417858, 38.235775, 26.207125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106163, 37.997272, 26.129906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267386, -0.037699, -0.962852,
		0.566830, -0.801908, 0.188807,
		-0.779236, -0.596257, -0.193050,
		40.872391, 37.818394, 26.071991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584602, 37.614433, 25.929121>,  <41.417858, 38.235775, 26.207125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584602, 37.614433, 25.929121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212536, 37.679008, 25.797226>,  <40.989296, 37.717754, 25.718088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212536, 37.679008, 25.797226>,  <41.584602, 37.614433, 25.929121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212536, 37.679008, 25.797226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332679, -0.009256, -0.942995,
		-0.155285, -0.986839, -0.045097,
		-0.930167, 0.161436, -0.329738,
		40.933487, 37.727440, 25.698305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312065, 36.939991, 25.573610>,  <41.584602, 37.614433, 25.929121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312065, 36.939991, 25.573610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147671, 37.262432, 25.403296>,  <41.049034, 37.455894, 25.301105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147671, 37.262432, 25.403296>,  <41.312065, 36.939991, 25.573610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147671, 37.262432, 25.403296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390449, -0.266410, -0.881235,
		-0.823798, -0.528420, -0.205252,
		-0.410981, 0.806100, -0.425789,
		41.024376, 37.504261, 25.275558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219151, 36.718388, 24.878469>,  <41.312065, 36.939991, 25.573610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219151, 36.718388, 24.878469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151402, 37.111294, 24.846285>,  <41.110752, 37.347038, 24.826975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151402, 37.111294, 24.846285>,  <41.219151, 36.718388, 24.878469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151402, 37.111294, 24.846285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384051, -0.009406, -0.923264,
		-0.907645, -0.187274, -0.375646,
		-0.169370, 0.982263, -0.080460,
		41.100590, 37.405972, 24.822147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970116, 36.867008, 24.272505>,  <41.219151, 36.718388, 24.878469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970116, 36.867008, 24.272505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110058, 37.231724, 24.358524>,  <41.194023, 37.450554, 24.410135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110058, 37.231724, 24.358524>,  <40.970116, 36.867008, 24.272505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110058, 37.231724, 24.358524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339174, 0.090698, -0.936341,
		-0.873248, 0.400523, -0.277523,
		0.349855, 0.911787, 0.215049,
		41.215015, 37.505260, 24.423038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855762, 37.170876, 23.684923>,  <40.970116, 36.867008, 24.272505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855762, 37.170876, 23.684923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118755, 37.400898, 23.879663>,  <41.276550, 37.538910, 23.996508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118755, 37.400898, 23.879663>,  <40.855762, 37.170876, 23.684923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118755, 37.400898, 23.879663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557256, 0.063773, -0.827888,
		-0.507130, 0.815624, -0.278524,
		0.657483, 0.575057, 0.486852,
		41.316002, 37.573414, 24.025719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859943, 37.815281, 23.359076>,  <40.855762, 37.170876, 23.684923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859943, 37.815281, 23.359076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205315, 37.730350, 23.542120>,  <41.412537, 37.679394, 23.651947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205315, 37.730350, 23.542120>,  <40.859943, 37.815281, 23.359076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205315, 37.730350, 23.542120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493942, 0.171477, -0.852418,
		0.102518, 0.962037, 0.252934,
		0.863430, -0.212323, 0.457611,
		41.464344, 37.666653, 23.679403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266304, 38.351612, 23.125578>,  <40.859943, 37.815281, 23.359076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266304, 38.351612, 23.125578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538692, 38.090778, 23.258879>,  <41.702126, 37.934277, 23.338860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538692, 38.090778, 23.258879>,  <41.266304, 38.351612, 23.125578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538692, 38.090778, 23.258879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607115, 0.248241, -0.754843,
		0.409497, 0.716351, 0.564937,
		0.680973, -0.652087, 0.333253,
		41.742985, 37.895153, 23.358854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819637, 38.671497, 22.822296>,  <41.266304, 38.351612, 23.125578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819637, 38.671497, 22.822296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949917, 38.309689, 22.932392>,  <42.028084, 38.092602, 22.998449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949917, 38.309689, 22.932392>,  <41.819637, 38.671497, 22.822296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949917, 38.309689, 22.932392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444311, -0.110542, -0.889027,
		0.834572, 0.411845, 0.365887,
		0.325695, -0.904525, 0.275242,
		42.047626, 38.038330, 23.014965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505222, 38.675858, 22.573633>,  <41.819637, 38.671497, 22.822296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505222, 38.675858, 22.573633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377792, 38.298653, 22.612072>,  <42.301334, 38.072330, 22.635136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377792, 38.298653, 22.612072>,  <42.505222, 38.675858, 22.573633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377792, 38.298653, 22.612072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254735, -0.182820, -0.949572,
		0.913029, -0.278027, 0.298460,
		-0.318571, -0.943015, 0.096097,
		42.282223, 38.015747, 22.640902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153061, 38.159389, 22.357264>,  <42.505222, 38.675858, 22.573633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153061, 38.159389, 22.357264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810841, 37.956299, 22.316751>,  <42.605511, 37.834446, 22.292444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810841, 37.956299, 22.316751>,  <43.153061, 38.159389, 22.357264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810841, 37.956299, 22.316751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315988, -0.357122, -0.878985,
		0.410112, -0.784016, 0.465969,
		-0.855546, -0.507723, -0.101280,
		42.554176, 37.803982, 22.286367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362888, 37.458427, 22.172018>,  <43.153061, 38.159389, 22.357264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362888, 37.458427, 22.172018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980358, 37.500443, 22.062901>,  <42.750839, 37.525654, 21.997431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980358, 37.500443, 22.062901>,  <43.362888, 37.458427, 22.172018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980358, 37.500443, 22.062901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219147, -0.359971, -0.906860,
		-0.193456, -0.927031, 0.321229,
		-0.956321, 0.105041, -0.272794,
		42.693462, 37.531956, 21.981062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125439, 36.765770, 21.955164>,  <43.362888, 37.458427, 22.172018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125439, 36.765770, 21.955164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868690, 37.006382, 21.764940>,  <42.714642, 37.150749, 21.650806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.868690, 37.006382, 21.764940>,  <43.125439, 36.765770, 21.955164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868690, 37.006382, 21.764940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237118, -0.434082, -0.869107,
		-0.729226, -0.670622, 0.135994,
		-0.641875, 0.601529, -0.475561,
		42.676128, 37.186840, 21.622272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592777, 36.257710, 21.703819>,  <43.125439, 36.765770, 21.955164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592777, 36.257710, 21.703819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791119, 35.913273, 21.658834>,  <42.910126, 35.706612, 21.631844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791119, 35.913273, 21.658834>,  <42.592777, 36.257710, 21.703819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791119, 35.913273, 21.658834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337033, -0.310180, 0.888930,
		-0.800334, -0.402878, -0.444021,
		0.495857, -0.861091, -0.112464,
		42.939877, 35.654945, 21.625095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018711, 35.815907, 21.932688>,  <42.592777, 36.257710, 21.703819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018711, 35.815907, 21.932688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380264, 35.645100, 21.942839>,  <42.597198, 35.542614, 21.948929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380264, 35.645100, 21.942839>,  <42.018711, 35.815907, 21.932688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380264, 35.645100, 21.942839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256652, -0.493894, 0.830782,
		-0.342225, -0.757446, -0.556019,
		0.903887, -0.427018, 0.025377,
		42.651432, 35.516994, 21.950451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890572, 35.104805, 22.048632>,  <42.018711, 35.815907, 21.932688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890572, 35.104805, 22.048632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266949, 35.165676, 22.169607>,  <42.492775, 35.202198, 22.242193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266949, 35.165676, 22.169607>,  <41.890572, 35.104805, 22.048632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266949, 35.165676, 22.169607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169181, -0.562438, 0.809347,
		0.293264, -0.812716, -0.503477,
		0.940943, 0.152174, 0.302439,
		42.549232, 35.211327, 22.260338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147655, 34.422615, 22.102188>,  <41.890572, 35.104805, 22.048632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147655, 34.422615, 22.102188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365429, 34.653091, 22.346025>,  <42.496094, 34.791378, 22.492327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365429, 34.653091, 22.346025>,  <42.147655, 34.422615, 22.102188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365429, 34.653091, 22.346025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072811, -0.691533, 0.718666,
		0.835639, -0.435649, -0.334539,
		0.544431, 0.576187, 0.609592,
		42.528759, 34.825947, 22.528904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519123, 34.030804, 22.493713>,  <42.147655, 34.422615, 22.102188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519123, 34.030804, 22.493713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530396, 34.361603, 22.718311>,  <42.537159, 34.560081, 22.853071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530396, 34.361603, 22.718311>,  <42.519123, 34.030804, 22.493713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530396, 34.361603, 22.718311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018930, -0.561178, 0.827479,
		0.999424, -0.033948, -0.000160,
		0.028181, 0.826999, 0.561497,
		42.538849, 34.609703, 22.886761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928116, 33.955616, 23.156235>,  <42.519123, 34.030804, 22.493713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928116, 33.955616, 23.156235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742390, 34.299114, 23.242928>,  <42.630955, 34.505211, 23.294943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742390, 34.299114, 23.242928>,  <42.928116, 33.955616, 23.156235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742390, 34.299114, 23.242928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254750, -0.363864, 0.895939,
		0.848241, 0.360786, 0.387712,
		-0.464316, 0.858741, 0.216734,
		42.603096, 34.556736, 23.307947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184399, 34.176880, 23.858301>,  <42.928116, 33.955616, 23.156235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184399, 34.176880, 23.858301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819275, 34.320385, 23.780264>,  <42.600201, 34.406487, 23.733442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819275, 34.320385, 23.780264>,  <43.184399, 34.176880, 23.858301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819275, 34.320385, 23.780264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342797, -0.413498, 0.843511,
		0.221951, 0.836845, 0.500429,
		-0.912813, 0.358763, -0.195092,
		42.545429, 34.428013, 23.721737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978359, 34.448757, 24.500538>,  <43.184399, 34.176880, 23.858301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978359, 34.448757, 24.500538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630016, 34.404755, 24.308910>,  <42.421009, 34.378353, 24.193933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630016, 34.404755, 24.308910>,  <42.978359, 34.448757, 24.500538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630016, 34.404755, 24.308910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442757, -0.247754, 0.861733,
		-0.213486, 0.962558, 0.167053,
		-0.870856, -0.110004, -0.479071,
		42.368759, 34.371754, 24.165190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530376, 34.926258, 24.737318>,  <42.978359, 34.448757, 24.500538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530376, 34.926258, 24.737318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305042, 34.637352, 24.576826>,  <42.169842, 34.464008, 24.480532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305042, 34.637352, 24.576826>,  <42.530376, 34.926258, 24.737318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305042, 34.637352, 24.576826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496454, -0.092277, 0.863145,
		-0.660442, 0.685435, -0.306587,
		-0.563339, -0.722263, -0.401231,
		42.136040, 34.420673, 24.456457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913887, 35.144962, 24.836599>,  <42.530376, 34.926258, 24.737318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913887, 35.144962, 24.836599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883934, 34.749180, 24.787022>,  <41.865963, 34.511711, 24.757275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883934, 34.749180, 24.787022>,  <41.913887, 35.144962, 24.836599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883934, 34.749180, 24.787022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472989, -0.074176, 0.877940,
		-0.877880, 0.124370, -0.462449,
		-0.074887, -0.989460, -0.123943,
		41.861469, 34.452343, 24.749838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200230, 35.017998, 25.027798>,  <41.913887, 35.144962, 24.836599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200230, 35.017998, 25.027798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394901, 34.669052, 25.046253>,  <41.511703, 34.459686, 25.057327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394901, 34.669052, 25.046253>,  <41.200230, 35.017998, 25.027798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394901, 34.669052, 25.046253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279070, -0.105203, 0.954491,
		-0.827809, -0.477403, -0.294650,
		0.486674, -0.872364, 0.046141,
		41.540905, 34.407345, 25.060095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764442, 34.673698, 25.385750>,  <41.200230, 35.017998, 25.027798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764442, 34.673698, 25.385750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102947, 34.461727, 25.407755>,  <41.306049, 34.334545, 25.420958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102947, 34.461727, 25.407755>,  <40.764442, 34.673698, 25.385750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102947, 34.461727, 25.407755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278389, -0.351787, 0.893725,
		-0.454252, -0.771639, -0.445228,
		0.846259, -0.529924, 0.055016,
		41.356823, 34.302750, 25.424259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629116, 33.971870, 25.557713>,  <40.764442, 34.673698, 25.385750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629116, 33.971870, 25.557713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995491, 34.077431, 25.678650>,  <41.215317, 34.140766, 25.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995491, 34.077431, 25.678650>,  <40.629116, 33.971870, 25.557713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995491, 34.077431, 25.678650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228078, -0.277574, 0.933238,
		0.330207, -0.923746, -0.194051,
		0.915939, 0.263903, 0.302343,
		41.270271, 34.156601, 25.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753220, 33.431633, 26.059471>,  <40.629116, 33.971870, 25.557713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753220, 33.431633, 26.059471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052311, 33.691681, 26.113497>,  <41.231766, 33.847710, 26.145912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052311, 33.691681, 26.113497>,  <40.753220, 33.431633, 26.059471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052311, 33.691681, 26.113497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132873, -0.345797, 0.928854,
		0.650571, -0.676587, -0.344947,
		0.747732, 0.650119, 0.135066,
		41.276630, 33.886715, 26.154016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384838, 33.129284, 26.348967>,  <40.753220, 33.431633, 26.059471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384838, 33.129284, 26.348967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386623, 33.512974, 26.462011>,  <41.387695, 33.743187, 26.529839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386623, 33.512974, 26.462011>,  <41.384838, 33.129284, 26.348967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386623, 33.512974, 26.462011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090494, -0.281066, 0.955412,
		0.995887, -0.029837, 0.085550,
		0.004461, 0.959224, 0.282610,
		41.387962, 33.800739, 26.546795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965488, 33.190807, 26.832108>,  <41.384838, 33.129284, 26.348967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965488, 33.190807, 26.832108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708649, 33.489433, 26.901802>,  <41.554546, 33.668610, 26.943619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708649, 33.489433, 26.901802>,  <41.965488, 33.190807, 26.832108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708649, 33.489433, 26.901802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123542, -0.123543, 0.984619,
		0.756603, 0.653747, -0.012905,
		-0.642097, 0.746561, 0.174238,
		41.516018, 33.713402, 26.954073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100319, 33.393440, 27.512581>,  <41.965488, 33.190807, 26.832108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100319, 33.393440, 27.512581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757645, 33.589977, 27.449766>,  <41.552040, 33.707901, 27.412077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757645, 33.589977, 27.449766>,  <42.100319, 33.393440, 27.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757645, 33.589977, 27.449766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113068, 0.118165, 0.986536,
		0.503288, 0.862911, -0.045676,
		-0.856690, 0.491347, -0.157039,
		41.500637, 33.737381, 27.402655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138100, 34.035332, 27.821739>,  <42.100319, 33.393440, 27.512581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138100, 34.035332, 27.821739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741585, 33.985836, 27.803722>,  <41.503674, 33.956139, 27.792913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741585, 33.985836, 27.803722>,  <42.138100, 34.035332, 27.821739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741585, 33.985836, 27.803722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074354, 0.243670, 0.967004,
		-0.108682, 0.961932, -0.250749,
		-0.991292, -0.123740, -0.045041,
		41.444199, 33.948715, 27.790211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753414, 34.652496, 28.125048>,  <42.138100, 34.035332, 27.821739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753414, 34.652496, 28.125048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472851, 34.369247, 28.157513>,  <41.304512, 34.199299, 28.176992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472851, 34.369247, 28.157513>,  <41.753414, 34.652496, 28.125048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472851, 34.369247, 28.157513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284108, 0.382199, 0.879321,
		-0.653689, 0.593704, -0.469261,
		-0.701408, -0.708124, 0.081163,
		41.262428, 34.156811, 28.181862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223186, 34.950699, 28.349903>,  <41.753414, 34.652496, 28.125048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223186, 34.950699, 28.349903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112881, 34.576027, 28.436235>,  <41.046700, 34.351223, 28.488035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112881, 34.576027, 28.436235>,  <41.223186, 34.950699, 28.349903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112881, 34.576027, 28.436235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231944, 0.282745, 0.930730,
		-0.932822, 0.206599, -0.295228,
		-0.275762, -0.936681, 0.215831,
		41.030151, 34.295021, 28.500984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615257, 35.030029, 28.798063>,  <41.223186, 34.950699, 28.349903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615257, 35.030029, 28.798063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762436, 34.665562, 28.872236>,  <40.850742, 34.446880, 28.916740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762436, 34.665562, 28.872236>,  <40.615257, 35.030029, 28.798063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762436, 34.665562, 28.872236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084372, 0.165885, 0.982529,
		-0.926013, -0.377159, -0.015841,
		0.367942, -0.911171, 0.185433,
		40.872818, 34.392212, 28.927866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162277, 34.659363, 29.186661>,  <40.615257, 35.030029, 28.798063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162277, 34.659363, 29.186661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502876, 34.457600, 29.243969>,  <40.707233, 34.336540, 29.278353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.502876, 34.457600, 29.243969>,  <40.162277, 34.659363, 29.186661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502876, 34.457600, 29.243969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219004, -0.093849, 0.971200,
		-0.476438, -0.858348, -0.190380,
		0.851495, -0.504411, 0.143269,
		40.758324, 34.306278, 29.286949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906235, 34.124928, 29.613626>,  <40.162277, 34.659363, 29.186661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906235, 34.124928, 29.613626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304649, 34.140297, 29.645725>,  <40.543697, 34.149517, 29.664984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304649, 34.140297, 29.645725>,  <39.906235, 34.124928, 29.613626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304649, 34.140297, 29.645725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064853, -0.303891, 0.950497,
		0.060907, -0.951932, -0.300194,
		0.996035, 0.038424, 0.080245,
		40.603458, 34.151825, 29.669798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018963, 33.707779, 30.072371>,  <39.906235, 34.124928, 29.613626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018963, 33.707779, 30.072371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368076, 33.902798, 30.081732>,  <40.577545, 34.019810, 30.087349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368076, 33.902798, 30.081732>,  <40.018963, 33.707779, 30.072371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368076, 33.902798, 30.081732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006802, -0.060088, 0.998170,
		0.488062, -0.871026, -0.055760,
		0.872783, 0.487548, 0.023402,
		40.629910, 34.049061, 30.088753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471912, 33.301327, 30.365543>,  <40.018963, 33.707779, 30.072371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471912, 33.301327, 30.365543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610424, 33.667652, 30.446907>,  <40.693531, 33.887447, 30.495726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610424, 33.667652, 30.446907>,  <40.471912, 33.301327, 30.365543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610424, 33.667652, 30.446907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024995, -0.225750, 0.973865,
		0.937800, -0.332142, -0.101062,
		0.346276, 0.915816, 0.203407,
		40.714306, 33.942398, 30.507929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164143, 33.232899, 30.851864>,  <40.471912, 33.301327, 30.365543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164143, 33.232899, 30.851864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997444, 33.594227, 30.892540>,  <40.897427, 33.811024, 30.916945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997444, 33.594227, 30.892540>,  <41.164143, 33.232899, 30.851864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997444, 33.594227, 30.892540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006934, -0.108703, 0.994050,
		0.908996, 0.414972, 0.039038,
		-0.416747, 0.903317, 0.101688,
		40.872421, 33.865223, 30.923046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531132, 33.502098, 31.392061>,  <41.164143, 33.232899, 30.851864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531132, 33.502098, 31.392061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188847, 33.704960, 31.350985>,  <40.983475, 33.826679, 31.326338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188847, 33.704960, 31.350985>,  <41.531132, 33.502098, 31.392061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188847, 33.704960, 31.350985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126899, -0.013283, 0.991827,
		0.501649, 0.861751, 0.075724,
		-0.855713, 0.507158, -0.102692,
		40.932133, 33.857109, 31.320177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456215, 34.028225, 32.030109>,  <41.531132, 33.502098, 31.392061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456215, 34.028225, 32.030109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082516, 33.963741, 31.902864>,  <40.858295, 33.925049, 31.826517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082516, 33.963741, 31.902864>,  <41.456215, 34.028225, 32.030109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082516, 33.963741, 31.902864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306393, -0.093650, 0.947287,
		-0.182505, 0.982466, 0.038098,
		-0.934246, -0.161212, -0.318113,
		40.802242, 33.915379, 31.807430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012611, 34.383617, 32.481270>,  <41.456215, 34.028225, 32.030109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012611, 34.383617, 32.481270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785683, 34.099548, 32.314510>,  <40.649525, 33.929108, 32.214455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.785683, 34.099548, 32.314510>,  <41.012611, 34.383617, 32.481270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785683, 34.099548, 32.314510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315484, -0.280197, 0.906620,
		-0.760669, 0.645869, -0.065086,
		-0.567320, -0.710171, -0.416899,
		40.615486, 33.886497, 32.189442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520206, 34.326221, 32.978596>,  <41.012611, 34.383617, 32.481270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520206, 34.326221, 32.978596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397900, 34.020752, 32.751156>,  <40.324516, 33.837471, 32.614693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397900, 34.020752, 32.751156>,  <40.520206, 34.326221, 32.978596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397900, 34.020752, 32.751156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419743, -0.427910, 0.800443,
		-0.854588, 0.483416, -0.189706,
		-0.305770, -0.763677, -0.568597,
		40.306168, 33.791649, 32.580578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718731, 34.175026, 33.066521>,  <40.520206, 34.326221, 32.978596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718731, 34.175026, 33.066521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942051, 33.864765, 32.948761>,  <40.076042, 33.678608, 32.878105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942051, 33.864765, 32.948761>,  <39.718731, 34.175026, 33.066521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942051, 33.864765, 32.948761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355241, -0.544171, 0.760054,
		-0.749740, -0.319753, -0.579352,
		0.558296, -0.775652, -0.294397,
		40.109539, 33.632069, 32.860443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380421, 33.599289, 33.437153>,  <39.718731, 34.175026, 33.066521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380421, 33.599289, 33.437153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706306, 33.422512, 33.286995>,  <39.901840, 33.316444, 33.196899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706306, 33.422512, 33.286995>,  <39.380421, 33.599289, 33.437153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706306, 33.422512, 33.286995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082742, -0.729367, 0.679101,
		-0.573922, -0.522216, -0.630797,
		0.814719, -0.441944, -0.375390,
		39.950722, 33.289928, 33.174377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165634, 32.903519, 33.280678>,  <39.380421, 33.599289, 33.437153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165634, 32.903519, 33.280678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561241, 32.911926, 33.339188>,  <39.798607, 32.916973, 33.374294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561241, 32.911926, 33.339188>,  <39.165634, 32.903519, 33.280678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561241, 32.911926, 33.339188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107315, -0.578308, 0.808729,
		0.101591, -0.815547, -0.569703,
		0.989021, 0.021022, 0.146271,
		39.857948, 32.918232, 33.383068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250263, 32.183807, 33.376472>,  <39.165634, 32.903519, 33.280678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250263, 32.183807, 33.376472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576637, 32.368477, 33.515675>,  <39.772461, 32.479279, 33.599197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576637, 32.368477, 33.515675>,  <39.250263, 32.183807, 33.376472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576637, 32.368477, 33.515675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005128, -0.607694, 0.794155,
		0.578125, -0.646192, -0.498204,
		0.815932, 0.461676, 0.348009,
		39.821419, 32.506981, 33.620079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723289, 31.711185, 33.560116>,  <39.250263, 32.183807, 33.376472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723289, 31.711185, 33.560116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791912, 32.039913, 33.777439>,  <39.833088, 32.237148, 33.907833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791912, 32.039913, 33.777439>,  <39.723289, 31.711185, 33.560116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791912, 32.039913, 33.777439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024562, -0.547742, 0.836286,
		0.984867, -0.156819, -0.073786,
		0.171561, 0.821819, 0.543305,
		39.843380, 32.286457, 33.940430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194462, 31.396059, 34.076157>,  <39.723289, 31.711185, 33.560116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194462, 31.396059, 34.076157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084450, 31.752125, 34.221462>,  <40.018440, 31.965765, 34.308647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084450, 31.752125, 34.221462>,  <40.194462, 31.396059, 34.076157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084450, 31.752125, 34.221462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206283, -0.314403, 0.926606,
		0.939044, 0.329784, -0.097155,
		-0.275034, 0.890165, 0.363267,
		40.001938, 32.019173, 34.330441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720940, 31.719509, 34.549400>,  <40.194462, 31.396059, 34.076157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720940, 31.719509, 34.549400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354023, 31.828009, 34.666023>,  <40.133873, 31.893108, 34.735996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354023, 31.828009, 34.666023>,  <40.720940, 31.719509, 34.549400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354023, 31.828009, 34.666023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089330, -0.573331, 0.814440,
		0.388072, 0.773122, 0.501680,
		-0.917290, 0.271246, 0.291556,
		40.078835, 31.909382, 34.753490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666142, 31.509703, 35.219536>,  <40.720940, 31.719509, 34.549400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666142, 31.509703, 35.219536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305138, 31.681864, 35.225525>,  <40.088535, 31.785160, 35.229118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305138, 31.681864, 35.225525>,  <40.666142, 31.509703, 35.219536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305138, 31.681864, 35.225525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194131, -0.437616, 0.877955,
		0.384427, 0.789459, 0.478509,
		-0.902513, 0.430403, 0.014973,
		40.034386, 31.810986, 35.230019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582249, 32.065357, 35.774868>,  <40.666142, 31.509703, 35.219536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582249, 32.065357, 35.774868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225464, 31.917727, 35.670414>,  <40.011395, 31.829149, 35.607742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225464, 31.917727, 35.670414>,  <40.582249, 32.065357, 35.774868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225464, 31.917727, 35.670414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096633, -0.408608, 0.907580,
		-0.441667, 0.834759, 0.328797,
		-0.891960, -0.369076, -0.261134,
		39.957874, 31.807003, 35.592075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216579, 32.275646, 36.268387>,  <40.582249, 32.065357, 35.774868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216579, 32.275646, 36.268387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021530, 31.972717, 36.094635>,  <39.904499, 31.790960, 35.990383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021530, 31.972717, 36.094635>,  <40.216579, 32.275646, 36.268387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021530, 31.972717, 36.094635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088732, -0.451980, 0.887604,
		-0.868532, 0.471362, 0.153199,
		-0.487625, -0.757319, -0.434384,
		39.875244, 31.745522, 35.964321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750298, 32.012474, 36.789074>,  <40.216579, 32.275646, 36.268387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750298, 32.012474, 36.789074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747288, 31.706686, 36.531231>,  <39.745483, 31.523212, 36.376526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747288, 31.706686, 36.531231>,  <39.750298, 32.012474, 36.789074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747288, 31.706686, 36.531231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288203, -0.615618, 0.733453,
		-0.957540, 0.191298, -0.215692,
		-0.007524, -0.764474, -0.644611,
		39.745029, 31.477345, 36.337849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107277, 31.546497, 36.980751>,  <39.750298, 32.012474, 36.789074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107277, 31.546497, 36.980751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341022, 31.315693, 36.752514>,  <39.481270, 31.177210, 36.615570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341022, 31.315693, 36.752514>,  <39.107277, 31.546497, 36.980751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341022, 31.315693, 36.752514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005851, -0.706121, 0.708067,
		-0.811470, -0.410430, -0.416008,
		0.584364, -0.577009, -0.570595,
		39.516331, 31.142590, 36.581337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755527, 30.880960, 36.829021>,  <39.107277, 31.546497, 36.980751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755527, 30.880960, 36.829021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154842, 30.858110, 36.824032>,  <39.394432, 30.844400, 36.821037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154842, 30.858110, 36.824032>,  <38.755527, 30.880960, 36.829021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154842, 30.858110, 36.824032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038793, -0.806700, 0.589687,
		-0.043748, -0.588195, -0.807535,
		0.998289, -0.057124, -0.012473,
		39.454330, 30.840973, 36.820290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865585, 30.251438, 36.648758>,  <38.755527, 30.880960, 36.829021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865585, 30.251438, 36.648758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189518, 30.361029, 36.856262>,  <39.383877, 30.426783, 36.980766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189518, 30.361029, 36.856262>,  <38.865585, 30.251438, 36.648758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189518, 30.361029, 36.856262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062515, -0.838918, 0.540656,
		0.583324, -0.470270, -0.662253,
		0.809830, 0.273977, 0.518760,
		39.432468, 30.443222, 37.011890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236980, 29.609846, 36.793308>,  <38.865585, 30.251438, 36.648758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236980, 29.609846, 36.793308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366295, 29.886959, 37.051159>,  <39.443886, 30.053226, 37.205868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366295, 29.886959, 37.051159>,  <39.236980, 29.609846, 36.793308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366295, 29.886959, 37.051159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025142, -0.674674, 0.737688,
		0.945966, -0.254693, -0.200697,
		0.323289, 0.692782, 0.644622,
		39.463280, 30.094793, 37.244545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576519, 29.211390, 37.365871>,  <39.236980, 29.609846, 36.793308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576519, 29.211390, 37.365871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557655, 29.583679, 37.510941>,  <39.546337, 29.807053, 37.597980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557655, 29.583679, 37.510941>,  <39.576519, 29.211390, 37.365871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557655, 29.583679, 37.510941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064517, -0.359480, 0.930920,
		0.996801, 0.067303, -0.043094,
		-0.047163, 0.930722, 0.362672,
		39.543507, 29.862896, 37.619743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116295, 29.340366, 37.853867>,  <39.576519, 29.211390, 37.365871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116295, 29.340366, 37.853867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829033, 29.602652, 37.947071>,  <39.656673, 29.760023, 38.002995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829033, 29.602652, 37.947071>,  <40.116295, 29.340366, 37.853867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829033, 29.602652, 37.947071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108816, -0.436536, 0.893082,
		0.687320, 0.616019, 0.384853,
		-0.718158, 0.655711, 0.233007,
		39.613586, 29.799364, 38.016972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222805, 29.465837, 38.629028>,  <40.116295, 29.340366, 37.853867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222805, 29.465837, 38.629028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854874, 29.535475, 38.488400>,  <39.634113, 29.577257, 38.404022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854874, 29.535475, 38.488400>,  <40.222805, 29.465837, 38.629028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854874, 29.535475, 38.488400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392000, -0.372082, 0.841363,
		0.015661, 0.911727, 0.410497,
		-0.919832, 0.174092, -0.351570,
		39.578922, 29.587702, 38.382927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895866, 29.775101, 39.185978>,  <40.222805, 29.465837, 38.629028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895866, 29.775101, 39.185978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617485, 29.639053, 38.933006>,  <39.450455, 29.557425, 38.781223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617485, 29.639053, 38.933006>,  <39.895866, 29.775101, 39.185978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617485, 29.639053, 38.933006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343894, -0.615286, 0.709337,
		-0.630383, 0.711156, 0.311248,
		-0.695956, -0.340118, -0.632428,
		39.408699, 29.537018, 38.743279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470547, 29.403048, 39.574062>,  <39.895866, 29.775101, 39.185978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470547, 29.403048, 39.574062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265266, 29.317415, 39.241608>,  <39.142097, 29.266035, 39.042133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265266, 29.317415, 39.241608>,  <39.470547, 29.403048, 39.574062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265266, 29.317415, 39.241608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331411, -0.843855, 0.421991,
		-0.791701, 0.492015, 0.362119,
		-0.513202, -0.214080, -0.831140,
		39.111305, 29.253191, 38.992264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744297, 29.237118, 39.771637>,  <39.470547, 29.403048, 39.574062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744297, 29.237118, 39.771637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831757, 29.054335, 39.426758>,  <38.884232, 28.944664, 39.219830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831757, 29.054335, 39.426758>,  <38.744297, 29.237118, 39.771637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831757, 29.054335, 39.426758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423247, -0.840546, 0.338149,
		-0.879235, 0.290986, -0.377191,
		0.218650, -0.456957, -0.862196,
		38.897350, 28.917248, 39.168098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084476, 29.000620, 39.520458>,  <38.744297, 29.237118, 39.771637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084476, 29.000620, 39.520458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373508, 28.798849, 39.331383>,  <38.546928, 28.677786, 39.217937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373508, 28.798849, 39.331383>,  <38.084476, 29.000620, 39.520458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373508, 28.798849, 39.331383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274680, -0.836986, 0.473293,
		-0.634376, -0.212153, -0.743343,
		0.722578, -0.504427, -0.472689,
		38.590282, 28.647520, 39.189575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774990, 28.442871, 39.200455>,  <38.084476, 29.000620, 39.520458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774990, 28.442871, 39.200455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153458, 28.322094, 39.247108>,  <38.380539, 28.249628, 39.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.153458, 28.322094, 39.247108>,  <37.774990, 28.442871, 39.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153458, 28.322094, 39.247108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323389, -0.866379, 0.380536,
		-0.013848, -0.397768, -0.917381,
		0.946164, -0.301941, 0.116636,
		38.437305, 28.231512, 39.282101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654320, 27.770844, 38.949123>,  <37.774990, 28.442871, 39.200455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654320, 27.770844, 38.949123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997448, 27.811563, 39.150631>,  <38.203323, 27.835995, 39.271538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997448, 27.811563, 39.150631>,  <37.654320, 27.770844, 38.949123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997448, 27.811563, 39.150631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141552, -0.895483, 0.421988,
		0.494078, -0.433299, -0.753751,
		0.857817, 0.101800, 0.503772,
		38.254791, 27.842104, 39.301762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197887, 27.269886, 38.775848>,  <37.654320, 27.770844, 38.949123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197887, 27.269886, 38.775848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197659, 27.391933, 39.156773>,  <38.197521, 27.465162, 39.385326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197659, 27.391933, 39.156773>,  <38.197887, 27.269886, 38.775848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197659, 27.391933, 39.156773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103006, -0.947267, 0.303438,
		0.994681, -0.097919, 0.031973,
		-0.000575, 0.305118, 0.952314,
		38.197487, 27.483469, 39.442467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615967, 26.878984, 39.191288>,  <38.197887, 27.269886, 38.775848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615967, 26.878984, 39.191288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425961, 27.021828, 39.512993>,  <38.311954, 27.107533, 39.706017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425961, 27.021828, 39.512993>,  <38.615967, 26.878984, 39.191288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425961, 27.021828, 39.512993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060300, -0.898597, 0.434611,
		0.877906, 0.254945, 0.405319,
		-0.475020, 0.357107, 0.804257,
		38.283455, 27.128960, 39.754269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057938, 26.728067, 39.753788>,  <38.615967, 26.878984, 39.191288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057938, 26.728067, 39.753788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668663, 26.738722, 39.845169>,  <38.435097, 26.745113, 39.899998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668663, 26.738722, 39.845169>,  <39.057938, 26.728067, 39.753788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668663, 26.738722, 39.845169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039557, -0.959088, 0.280331,
		0.226570, 0.281852, 0.932323,
		-0.973191, 0.026635, 0.228450,
		38.376705, 26.746712, 39.913704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025299, 26.373825, 40.319073>,  <39.057938, 26.728067, 39.753788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025299, 26.373825, 40.319073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647278, 26.385216, 40.188805>,  <38.420464, 26.392050, 40.110641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647278, 26.385216, 40.188805>,  <39.025299, 26.373825, 40.319073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647278, 26.385216, 40.188805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111161, -0.964833, 0.238203,
		-0.307436, 0.261317, 0.914984,
		-0.945054, 0.028479, -0.325673,
		38.363762, 26.393759, 40.091103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608852, 25.957861, 40.817379>,  <39.025299, 26.373825, 40.319073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608852, 25.957861, 40.817379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402451, 25.972837, 40.475071>,  <38.278610, 25.981823, 40.269688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402451, 25.972837, 40.475071>,  <38.608852, 25.957861, 40.817379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402451, 25.972837, 40.475071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045478, -0.998833, -0.016280,
		-0.855381, 0.030518, 0.517101,
		-0.516000, 0.037442, -0.855770,
		38.247650, 25.984070, 40.218342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183826, 25.315769, 40.885292>,  <38.608852, 25.957861, 40.817379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183826, 25.315769, 40.885292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198860, 25.470615, 40.516785>,  <38.207882, 25.563522, 40.295681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198860, 25.470615, 40.516785>,  <38.183826, 25.315769, 40.885292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198860, 25.470615, 40.516785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057842, -0.921213, -0.384733,
		-0.997618, -0.038828, -0.057014,
		0.037583, 0.387115, -0.921265,
		38.210136, 25.586750, 40.240406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880100, 24.881754, 40.479107>,  <38.183826, 25.315769, 40.885292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880100, 24.881754, 40.479107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104980, 25.057737, 40.199001>,  <38.239906, 25.163328, 40.030937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104980, 25.057737, 40.199001>,  <37.880100, 24.881754, 40.479107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104980, 25.057737, 40.199001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288437, -0.897892, -0.332557,
		-0.775072, -0.015019, -0.631694,
		0.562198, 0.439960, -0.700263,
		38.273640, 25.189726, 39.988922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238903, 24.369970, 40.205540>,  <37.880100, 24.881754, 40.479107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238903, 24.369970, 40.205540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301075, 24.653154, 39.929966>,  <38.338379, 24.823065, 39.764622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301075, 24.653154, 39.929966>,  <38.238903, 24.369970, 40.205540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301075, 24.653154, 39.929966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344962, -0.692408, -0.633698,
		-0.925657, -0.139159, -0.351843,
		0.155434, 0.707959, -0.688937,
		38.347706, 24.865541, 39.723286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324722, 24.147816, 39.527309>,  <38.238903, 24.369970, 40.205540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324722, 24.147816, 39.527309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479641, 24.486582, 39.673042>,  <38.572590, 24.689842, 39.760483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479641, 24.486582, 39.673042>,  <38.324722, 24.147816, 39.527309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479641, 24.486582, 39.673042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829608, -0.147750, -0.538443,
		-0.402187, 0.510787, -0.759831,
		0.387295, 0.846916, 0.364330,
		38.595829, 24.740656, 39.782341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661449, 24.562263, 38.995533>,  <38.324722, 24.147816, 39.527309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661449, 24.562263, 38.995533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833344, 24.710049, 39.325096>,  <38.936481, 24.798719, 39.522835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833344, 24.710049, 39.325096>,  <38.661449, 24.562263, 38.995533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833344, 24.710049, 39.325096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880535, 0.030595, -0.472993,
		-0.199960, 0.928742, -0.312175,
		0.429737, 0.369461, 0.823908,
		38.962265, 24.820887, 39.572269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711506, 25.239141, 39.170731>,  <38.661449, 24.562263, 38.995533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711506, 25.239141, 39.170731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386860, 25.240696, 39.404400>,  <38.192070, 25.241629, 39.544601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386860, 25.240696, 39.404400>,  <38.711506, 25.239141, 39.170731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386860, 25.240696, 39.404400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100475, 0.986005, 0.133034,
		-0.575485, 0.166668, -0.800649,
		-0.811617, 0.003886, 0.584177,
		38.143375, 25.241861, 39.579655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140110, 25.785395, 38.945538>,  <38.711506, 25.239141, 39.170731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140110, 25.785395, 38.945538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055397, 25.704205, 39.327942>,  <38.004570, 25.655491, 39.557384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055397, 25.704205, 39.327942>,  <38.140110, 25.785395, 38.945538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055397, 25.704205, 39.327942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043085, 0.979183, 0.198353,
		-0.976367, 0.000818, -0.216117,
		-0.211781, -0.202977, 0.956007,
		37.991863, 25.643312, 39.614742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536938, 26.145620, 39.128517>,  <38.140110, 25.785395, 38.945538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536938, 26.145620, 39.128517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719349, 26.077551, 39.477936>,  <37.828796, 26.036709, 39.687588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719349, 26.077551, 39.477936>,  <37.536938, 26.145620, 39.128517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719349, 26.077551, 39.477936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128052, 0.958788, 0.253630,
		-0.880705, -0.227522, 0.415442,
		0.456028, -0.170175, 0.873544,
		37.856155, 26.026499, 39.739998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133747, 26.483490, 39.618935>,  <37.536938, 26.145620, 39.128517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133747, 26.483490, 39.618935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511070, 26.454632, 39.748531>,  <37.737465, 26.437317, 39.826290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511070, 26.454632, 39.748531>,  <37.133747, 26.483490, 39.618935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511070, 26.454632, 39.748531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029338, 0.954151, 0.297883,
		-0.330630, -0.290500, 0.897938,
		0.943304, -0.072145, 0.323994,
		37.794060, 26.432989, 39.845730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080452, 26.895859, 40.169819>,  <37.133747, 26.483490, 39.618935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080452, 26.895859, 40.169819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463966, 26.852320, 40.064835>,  <37.694073, 26.826197, 40.001842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463966, 26.852320, 40.064835>,  <37.080452, 26.895859, 40.169819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463966, 26.852320, 40.064835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151726, 0.977122, 0.149038,
		0.240235, -0.182718, 0.953363,
		0.958784, -0.108845, -0.262462,
		37.751602, 26.819666, 39.986095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390266, 27.453247, 40.566467>,  <37.080452, 26.895859, 40.169819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390266, 27.453247, 40.566467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673653, 27.364141, 40.298603>,  <37.843685, 27.310678, 40.137886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673653, 27.364141, 40.298603>,  <37.390266, 27.453247, 40.566467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673653, 27.364141, 40.298603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300385, 0.953818, 0.000504,
		0.638623, -0.201514, 0.742666,
		0.708470, -0.222764, -0.669661,
		37.886192, 27.297312, 40.097706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149185, 27.720999, 40.747829>,  <37.390266, 27.453247, 40.566467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149185, 27.720999, 40.747829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151615, 27.672760, 40.350758>,  <38.153072, 27.643818, 40.112514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151615, 27.672760, 40.350758>,  <38.149185, 27.720999, 40.747829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151615, 27.672760, 40.350758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408337, 0.906464, -0.107624,
		0.912811, -0.404696, 0.054747,
		0.006071, -0.120596, -0.992683,
		38.153435, 27.636581, 40.052952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851501, 28.084513, 40.398354>,  <38.149185, 27.720999, 40.747829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851501, 28.084513, 40.398354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719051, 27.832006, 40.117825>,  <38.639580, 27.680504, 39.949505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719051, 27.832006, 40.117825>,  <38.851501, 28.084513, 40.398354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719051, 27.832006, 40.117825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247583, 0.659090, -0.710143,
		0.910525, -0.408785, -0.061954,
		-0.331129, -0.631264, -0.701326,
		38.619713, 27.642628, 39.907425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409199, 28.016237, 40.007416>,  <38.851501, 28.084513, 40.398354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409199, 28.016237, 40.007416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088070, 27.925587, 39.786831>,  <38.895393, 27.871197, 39.654480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088070, 27.925587, 39.786831>,  <39.409199, 28.016237, 40.007416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088070, 27.925587, 39.786831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347642, 0.573498, -0.741785,
		0.484369, -0.787237, -0.381635,
		-0.802827, -0.226625, -0.551461,
		38.847221, 27.857599, 39.621391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626572, 27.817822, 39.388351>,  <39.409199, 28.016237, 40.007416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626572, 27.817822, 39.388351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254856, 27.960541, 39.350147>,  <39.031826, 28.046173, 39.327225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254856, 27.960541, 39.350147>,  <39.626572, 27.817822, 39.388351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254856, 27.960541, 39.350147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324084, 0.663589, -0.674255,
		-0.177194, -0.657529, -0.732296,
		-0.929286, 0.356799, -0.095511,
		38.976070, 28.067581, 39.321495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407562, 27.772890, 38.686100>,  <39.626572, 27.817822, 39.388351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407562, 27.772890, 38.686100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185154, 28.059122, 38.855232>,  <39.051708, 28.230862, 38.956711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185154, 28.059122, 38.855232>,  <39.407562, 27.772890, 38.686100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185154, 28.059122, 38.855232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326263, 0.655791, -0.680802,
		-0.764456, -0.240587, -0.598101,
		-0.556021, 0.715581, 0.422828,
		39.018349, 28.273796, 38.982082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189468, 28.194193, 38.083542>,  <39.407562, 27.772890, 38.686100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189468, 28.194193, 38.083542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098434, 28.417763, 38.402493>,  <39.043812, 28.551905, 38.593861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098434, 28.417763, 38.402493>,  <39.189468, 28.194193, 38.083542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098434, 28.417763, 38.402493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134647, 0.829060, -0.542706,
		-0.964403, -0.016149, -0.263941,
		-0.227587, 0.558926, 0.797374,
		39.030159, 28.585442, 38.641705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656109, 28.746328, 37.939201>,  <39.189468, 28.194193, 38.083542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656109, 28.746328, 37.939201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888367, 28.882099, 38.235214>,  <39.027721, 28.963562, 38.412823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888367, 28.882099, 38.235214>,  <38.656109, 28.746328, 37.939201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888367, 28.882099, 38.235214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108679, 0.868503, -0.483623,
		-0.806873, 0.361238, 0.467400,
		0.580641, 0.339426, 0.740031,
		39.062557, 28.983927, 38.457222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354717, 29.294359, 38.128590>,  <38.656109, 28.746328, 37.939201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354717, 29.294359, 38.128590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740669, 29.340466, 38.223015>,  <38.972240, 29.368130, 38.279671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740669, 29.340466, 38.223015>,  <38.354717, 29.294359, 38.128590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740669, 29.340466, 38.223015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020149, 0.863474, -0.503991,
		-0.261926, 0.491046, 0.830824,
		0.964877, 0.115268, 0.236060,
		39.030132, 29.375046, 38.293835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355850, 29.909363, 38.062057>,  <38.354717, 29.294359, 38.128590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355850, 29.909363, 38.062057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736439, 29.803009, 38.124043>,  <38.964790, 29.739197, 38.161232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736439, 29.803009, 38.124043>,  <38.355850, 29.909363, 38.062057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736439, 29.803009, 38.124043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307737, 0.818013, -0.485954,
		0.002447, 0.510058, 0.860137,
		0.951468, -0.265885, 0.154962,
		39.021881, 29.723244, 38.170532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654133, 30.575085, 38.261166>,  <38.355850, 29.909363, 38.062057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654133, 30.575085, 38.261166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968277, 30.338671, 38.187538>,  <39.156765, 30.196821, 38.143364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968277, 30.338671, 38.187538>,  <38.654133, 30.575085, 38.261166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968277, 30.338671, 38.187538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419484, 0.726787, -0.543888,
		0.455233, 0.349937, 0.818722,
		0.785364, -0.591037, -0.184065,
		39.203888, 30.161360, 38.132320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204884, 31.030123, 37.974983>,  <38.654133, 30.575085, 38.261166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204884, 31.030123, 37.974983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367138, 30.671072, 37.906025>,  <39.464493, 30.455641, 37.864651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367138, 30.671072, 37.906025>,  <39.204884, 31.030123, 37.974983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367138, 30.671072, 37.906025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529243, 0.384434, -0.756381,
		0.745224, 0.215579, 0.631005,
		0.405640, -0.897628, -0.172396,
		39.488831, 30.401783, 37.854305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977036, 31.005480, 37.978443>,  <39.204884, 31.030123, 37.974983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977036, 31.005480, 37.978443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782063, 30.745323, 37.745411>,  <39.665077, 30.589230, 37.605591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782063, 30.745323, 37.745411>,  <39.977036, 31.005480, 37.978443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782063, 30.745323, 37.745411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286854, 0.510900, -0.810368,
		0.824696, -0.562117, -0.062463,
		-0.487433, -0.650390, -0.582582,
		39.635834, 30.550207, 37.570637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543488, 30.672832, 37.470821>,  <39.977036, 31.005480, 37.978443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543488, 30.672832, 37.470821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172520, 30.640017, 37.324856>,  <39.949940, 30.620327, 37.237278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172520, 30.640017, 37.324856>,  <40.543488, 30.672832, 37.470821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172520, 30.640017, 37.324856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320907, 0.326629, -0.889006,
		0.192126, -0.941585, -0.276595,
		-0.927419, -0.082040, -0.364915,
		39.894295, 30.615404, 37.215382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702309, 30.629011, 36.766869>,  <40.543488, 30.672832, 37.470821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702309, 30.629011, 36.766869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310532, 30.707361, 36.786186>,  <40.075466, 30.754372, 36.797779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310532, 30.707361, 36.786186>,  <40.702309, 30.629011, 36.766869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310532, 30.707361, 36.786186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045244, 0.446572, -0.893603,
		-0.196605, -0.873044, -0.446252,
		-0.979438, 0.195878, 0.048298,
		40.016701, 30.766125, 36.800674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427784, 30.409630, 36.064991>,  <40.702309, 30.629011, 36.766869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427784, 30.409630, 36.064991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149120, 30.635656, 36.241791>,  <39.981922, 30.771273, 36.347870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149120, 30.635656, 36.241791>,  <40.427784, 30.409630, 36.064991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149120, 30.635656, 36.241791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171145, 0.467418, -0.867311,
		-0.696688, -0.679868, -0.228923,
		-0.696660, 0.565066, 0.442001,
		39.940121, 30.805176, 36.374390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805515, 30.397289, 35.675426>,  <40.427784, 30.409630, 36.064991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805515, 30.397289, 35.675426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794109, 30.740292, 35.880901>,  <39.787266, 30.946093, 36.004185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794109, 30.740292, 35.880901>,  <39.805515, 30.397289, 35.675426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794109, 30.740292, 35.880901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177937, 0.501334, -0.846760,
		-0.983629, -0.115545, 0.138288,
		-0.028511, 0.857504, 0.513687,
		39.785557, 30.997543, 36.035007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697556, 29.720743, 35.860443>,  <39.805515, 30.397289, 35.675426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697556, 29.720743, 35.860443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561863, 29.344748, 35.875084>,  <39.480446, 29.119150, 35.883869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561863, 29.344748, 35.875084>,  <39.697556, 29.720743, 35.860443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561863, 29.344748, 35.875084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115460, -0.080220, -0.990068,
		0.933589, -0.331639, 0.135745,
		-0.339234, -0.939990, 0.036601,
		39.460094, 29.062750, 35.886063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106781, 29.340803, 35.394695>,  <39.697556, 29.720743, 35.860443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106781, 29.340803, 35.394695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768360, 29.133917, 35.446350>,  <39.565308, 29.009785, 35.477345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768360, 29.133917, 35.446350>,  <40.106781, 29.340803, 35.394695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768360, 29.133917, 35.446350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052475, -0.160272, -0.985677,
		0.530506, -0.840714, 0.108458,
		-0.846055, -0.517216, 0.129142,
		39.514542, 28.978752, 35.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212105, 28.721857, 35.024315>,  <40.106781, 29.340803, 35.394695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212105, 28.721857, 35.024315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829819, 28.838528, 35.039993>,  <39.600449, 28.908531, 35.049400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829819, 28.838528, 35.039993>,  <40.212105, 28.721857, 35.024315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829819, 28.838528, 35.039993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022509, 0.060360, -0.997923,
		-0.293438, -0.954610, -0.051121,
		-0.955713, 0.291678, 0.039199,
		39.543106, 28.926031, 35.051754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901920, 28.923824, 35.153027>,  <40.212105, 28.721857, 35.024315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901920, 28.923824, 35.153027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262829, 28.919659, 35.325439>,  <41.479374, 28.917158, 35.428886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262829, 28.919659, 35.325439>,  <40.901920, 28.923824, 35.153027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262829, 28.919659, 35.325439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033163, 0.998423, -0.045293,
		-0.429883, 0.055161, 0.901198,
		0.902275, -0.010416, 0.431035,
		41.533512, 28.916534, 35.454750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886646, 29.397808, 35.698967>,  <40.901920, 28.923824, 35.153027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886646, 29.397808, 35.698967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276188, 29.359751, 35.616451>,  <41.509914, 29.336916, 35.566940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276188, 29.359751, 35.616451>,  <40.886646, 29.397808, 35.698967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276188, 29.359751, 35.616451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118788, 0.987308, 0.105416,
		0.193645, -0.127164, 0.972795,
		0.973854, -0.095143, -0.206293,
		41.568344, 29.331207, 35.554562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243366, 29.759298, 36.266968>,  <40.886646, 29.397808, 35.698967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243366, 29.759298, 36.266968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465008, 29.768793, 35.934124>,  <41.597992, 29.774490, 35.734417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465008, 29.768793, 35.934124>,  <41.243366, 29.759298, 36.266968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465008, 29.768793, 35.934124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108265, 0.989049, 0.100308,
		0.825375, -0.145669, 0.545469,
		0.554107, 0.023736, -0.832107,
		41.631241, 29.775913, 35.684490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806938, 30.049053, 36.507500>,  <41.243366, 29.759298, 36.266968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806938, 30.049053, 36.507500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753071, 30.103996, 36.114971>,  <41.720749, 30.136961, 35.879452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753071, 30.103996, 36.114971>,  <41.806938, 30.049053, 36.507500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753071, 30.103996, 36.114971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079757, 0.988635, 0.127434,
		0.987675, -0.061106, -0.144096,
		-0.134671, 0.137356, -0.981324,
		41.712669, 30.145203, 35.820576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331844, 30.439732, 36.283276>,  <41.806938, 30.049053, 36.507500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331844, 30.439732, 36.283276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990948, 30.485243, 36.079025>,  <41.786411, 30.512548, 35.956474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990948, 30.485243, 36.079025>,  <42.331844, 30.439732, 36.283276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990948, 30.485243, 36.079025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050652, 0.953532, 0.297004,
		0.520689, 0.278984, -0.806877,
		-0.852243, 0.113777, -0.510624,
		41.735275, 30.519377, 35.925838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290268, 31.237520, 36.552116>,  <42.331844, 30.439732, 36.283276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290268, 31.237520, 36.552116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406330, 31.592926, 36.694302>,  <42.475967, 31.806170, 36.779613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406330, 31.592926, 36.694302>,  <42.290268, 31.237520, 36.552116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406330, 31.592926, 36.694302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726417, 0.037321, -0.686241,
		-0.623000, 0.457332, -0.634601,
		0.290156, 0.888513, 0.355465,
		42.493378, 31.859480, 36.800941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279846, 31.719625, 35.965328>,  <42.290268, 31.237520, 36.552116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279846, 31.719625, 35.965328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535152, 31.806744, 36.260674>,  <42.688335, 31.859015, 36.437881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535152, 31.806744, 36.260674>,  <42.279846, 31.719625, 35.965328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535152, 31.806744, 36.260674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678424, 0.294150, -0.673214,
		-0.363813, 0.930613, 0.039987,
		0.638264, 0.217796, 0.738366,
		42.726631, 31.872082, 36.482182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557224, 32.258076, 35.569115>,  <42.279846, 31.719625, 35.965328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557224, 32.258076, 35.569115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773651, 32.097919, 35.864937>,  <42.903507, 32.001827, 36.042431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773651, 32.097919, 35.864937>,  <42.557224, 32.258076, 35.569115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773651, 32.097919, 35.864937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826144, 0.417507, -0.378384,
		-0.157268, 0.815707, 0.556677,
		0.541067, -0.400388, 0.739552,
		42.935970, 31.977802, 36.086803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927940, 32.893200, 35.411896>,  <42.557224, 32.258076, 35.569115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927940, 32.893200, 35.411896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248898, 32.654575, 35.418579>,  <43.441471, 32.511402, 35.422588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248898, 32.654575, 35.418579>,  <42.927940, 32.893200, 35.411896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248898, 32.654575, 35.418579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224809, 0.276207, -0.934436,
		0.552833, 0.753542, 0.355739,
		0.802394, -0.596560, 0.016706,
		43.489616, 32.475609, 35.423592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701012, 33.166172, 35.230637>,  <42.927940, 32.893200, 35.411896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701012, 33.166172, 35.230637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685188, 32.787945, 35.101429>,  <43.675694, 32.561008, 35.023903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.685188, 32.787945, 35.101429>,  <43.701012, 33.166172, 35.230637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685188, 32.787945, 35.101429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468563, 0.267969, -0.841808,
		0.882544, -0.184658, 0.432456,
		-0.039562, -0.945566, -0.323018,
		43.673321, 32.504276, 35.004524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919827, 33.590820, 34.703743>,  <43.701012, 33.166172, 35.230637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919827, 33.590820, 34.703743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166683, 33.728661, 34.986694>,  <44.314796, 33.811367, 35.156464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166683, 33.728661, 34.986694>,  <43.919827, 33.590820, 34.703743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166683, 33.728661, 34.986694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414906, 0.621343, -0.664670,
		-0.668573, 0.703690, 0.240477,
		0.617141, 0.344605, 0.707378,
		44.351826, 33.832043, 35.198910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113541, 34.167885, 34.477547>,  <43.919827, 33.590820, 34.703743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113541, 34.167885, 34.477547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343288, 34.167454, 34.804985>,  <44.481136, 34.167194, 35.001450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.343288, 34.167454, 34.804985>,  <44.113541, 34.167885, 34.477547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343288, 34.167454, 34.804985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673735, 0.568610, -0.471979,
		-0.464952, 0.822607, 0.327319,
		0.574369, -0.001078, 0.818595,
		44.515598, 34.167130, 35.050564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386185, 34.902222, 34.442421>,  <44.113541, 34.167885, 34.477547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386185, 34.902222, 34.442421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573212, 34.647423, 34.687572>,  <44.685429, 34.494545, 34.834663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573212, 34.647423, 34.687572>,  <44.386185, 34.902222, 34.442421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573212, 34.647423, 34.687572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842679, 0.530600, -0.091403,
		-0.266970, 0.559197, 0.784873,
		0.467566, -0.636994, 0.612878,
		44.713482, 34.456326, 34.871437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694954, 35.136864, 35.061729>,  <44.386185, 34.902222, 34.442421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694954, 35.136864, 35.061729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922638, 34.831497, 34.939613>,  <45.059246, 34.648277, 34.866344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922638, 34.831497, 34.939613>,  <44.694954, 35.136864, 35.061729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922638, 34.831497, 34.939613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800133, 0.599770, -0.007970,
		0.189186, -0.239733, 0.952227,
		0.569207, -0.763416, -0.305286,
		45.093399, 34.602474, 34.848026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.275227, 35.134132, 35.542889>,  <44.694954, 35.136864, 35.061729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.275227, 35.134132, 35.542889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350403, 34.984516, 35.179623>,  <45.395508, 34.894745, 34.961662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350403, 34.984516, 35.179623>,  <45.275227, 35.134132, 35.542889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350403, 34.984516, 35.179623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819282, 0.569685, -0.065092,
		0.541717, -0.731812, 0.413513,
		0.187937, -0.374045, -0.908168,
		45.406784, 34.872303, 34.907173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944496, 35.276314, 35.308521>,  <45.275227, 35.134132, 35.542889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944496, 35.276314, 35.308521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813347, 35.171799, 34.945374>,  <45.734657, 35.109089, 34.727486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813347, 35.171799, 34.945374>,  <45.944496, 35.276314, 35.308521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813347, 35.171799, 34.945374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707848, 0.568491, -0.419249,
		0.625661, -0.780094, -0.001440,
		-0.327872, -0.261288, -0.907870,
		45.714985, 35.093410, 34.673012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539524, 35.063194, 34.810501>,  <45.944496, 35.276314, 35.308521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539524, 35.063194, 34.810501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216526, 35.216160, 34.630848>,  <46.022728, 35.307941, 34.523056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216526, 35.216160, 34.630848>,  <46.539524, 35.063194, 34.810501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216526, 35.216160, 34.630848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588363, 0.576716, -0.566769,
		0.042278, -0.721912, -0.690692,
		-0.807491, 0.382416, -0.449129,
		45.974277, 35.330883, 34.496109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252937, 35.106274, 35.040329>,  <46.539524, 35.063194, 34.810501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252937, 35.106274, 35.040329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643200, 35.182186, 34.996357>,  <47.877357, 35.227734, 34.969975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.643200, 35.182186, 34.996357>,  <47.252937, 35.106274, 35.040329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.643200, 35.182186, 34.996357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111514, -0.860864, -0.496465,
		-0.188852, 0.472120, -0.861068,
		0.975653, 0.189779, -0.109928,
		47.935898, 35.239120, 34.963379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.456043, 30.626625, 25.103325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124893, 30.841719, 25.039482>,  <38.926205, 30.970774, 25.001177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124893, 30.841719, 25.039482>,  <39.456043, 30.626625, 25.103325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124893, 30.841719, 25.039482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305930, -0.194366, 0.932003,
		0.470146, 0.820406, 0.325418,
		-0.827870, 0.537732, -0.159607,
		38.876534, 31.003038, 24.991600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540432, 31.110592, 25.605833>,  <39.456043, 30.626625, 25.103325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540432, 31.110592, 25.605833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164280, 31.051430, 25.483315>,  <38.938591, 31.015932, 25.409803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164280, 31.051430, 25.483315>,  <39.540432, 31.110592, 25.605833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164280, 31.051430, 25.483315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315991, 0.046648, 0.947615,
		-0.125868, 0.987901, -0.090603,
		-0.940376, -0.147904, -0.306297,
		38.882168, 31.007059, 25.391426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178364, 31.432161, 26.083147>,  <39.540432, 31.110592, 25.605833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178364, 31.432161, 26.083147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888458, 31.211477, 25.918060>,  <38.714516, 31.079067, 25.819008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888458, 31.211477, 25.918060>,  <39.178364, 31.432161, 26.083147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888458, 31.211477, 25.918060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440553, -0.089481, 0.893256,
		-0.529748, 0.829223, -0.178205,
		-0.724762, -0.551709, -0.412718,
		38.671028, 31.045965, 25.794245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648426, 31.681498, 26.358011>,  <39.178364, 31.432161, 26.083147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648426, 31.681498, 26.358011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510052, 31.337275, 26.208469>,  <38.427029, 31.130741, 26.118744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510052, 31.337275, 26.208469>,  <38.648426, 31.681498, 26.358011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510052, 31.337275, 26.208469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461602, -0.190800, 0.866325,
		-0.816854, 0.472266, -0.331231,
		-0.345937, -0.860558, -0.373855,
		38.406269, 31.079107, 26.096313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908287, 31.702824, 26.371401>,  <38.648426, 31.681498, 26.358011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908287, 31.702824, 26.371401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023914, 31.321203, 26.402954>,  <38.093288, 31.092230, 26.421886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023914, 31.321203, 26.402954>,  <37.908287, 31.702824, 26.371401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023914, 31.321203, 26.402954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587775, -0.111839, 0.801256,
		-0.755619, -0.277982, -0.593098,
		0.289067, -0.954054, 0.078884,
		38.110634, 31.034986, 26.426619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346172, 31.302839, 26.713902>,  <37.908287, 31.702824, 26.371401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346172, 31.302839, 26.713902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660221, 31.058105, 26.752350>,  <37.848652, 30.911266, 26.775419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660221, 31.058105, 26.752350>,  <37.346172, 31.302839, 26.713902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660221, 31.058105, 26.752350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283112, -0.216516, 0.934328,
		-0.550841, -0.760777, -0.343210,
		0.785125, -0.611833, 0.096119,
		37.895760, 30.874556, 26.781185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123348, 30.564917, 26.982225>,  <37.346172, 31.302839, 26.713902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123348, 30.564917, 26.982225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511318, 30.614967, 27.065741>,  <37.744099, 30.644997, 27.115849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.511318, 30.614967, 27.065741>,  <37.123348, 30.564917, 26.982225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511318, 30.614967, 27.065741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180891, -0.203415, 0.962237,
		0.162871, -0.971064, -0.174663,
		0.969924, 0.125126, 0.208787,
		37.802296, 30.652504, 27.128376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238434, 29.992464, 27.457659>,  <37.123348, 30.564917, 26.982225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238434, 29.992464, 27.457659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518482, 30.274162, 27.504759>,  <37.686512, 30.443182, 27.533020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.518482, 30.274162, 27.504759>,  <37.238434, 29.992464, 27.457659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518482, 30.274162, 27.504759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004997, -0.169742, 0.985476,
		0.714005, -0.689366, -0.122359,
		0.700123, 0.704245, 0.117752,
		37.728519, 30.485435, 27.540085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718777, 29.687691, 27.892015>,  <37.238434, 29.992464, 27.457659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718777, 29.687691, 27.892015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842339, 30.066381, 27.928431>,  <37.916473, 30.293596, 27.950279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842339, 30.066381, 27.928431>,  <37.718777, 29.687691, 27.892015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842339, 30.066381, 27.928431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004921, -0.097308, 0.995242,
		0.951081, -0.306983, -0.034717,
		0.308901, 0.946727, 0.091038,
		37.935009, 30.350399, 27.955742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183762, 29.615784, 28.492418>,  <37.718777, 29.687691, 27.892015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183762, 29.615784, 28.492418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087154, 30.003361, 28.471186>,  <38.029190, 30.235907, 28.458447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.087154, 30.003361, 28.471186>,  <38.183762, 29.615784, 28.492418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087154, 30.003361, 28.471186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092353, 0.077405, 0.992713,
		0.965991, 0.234860, -0.108180,
		-0.241522, 0.968943, -0.053082,
		38.014698, 30.294043, 28.455261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691265, 29.933861, 28.892155>,  <38.183762, 29.615784, 28.492418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691265, 29.933861, 28.892155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376141, 30.179626, 28.874960>,  <38.187065, 30.327085, 28.864643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376141, 30.179626, 28.874960>,  <38.691265, 29.933861, 28.892155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376141, 30.179626, 28.874960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148799, 0.257593, 0.954728,
		0.597671, 0.745749, -0.294359,
		-0.787812, 0.614414, -0.042989,
		38.139797, 30.363951, 28.862062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961647, 30.399857, 29.322235>,  <38.691265, 29.933861, 28.892155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961647, 30.399857, 29.322235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.563492, 30.435484, 29.307945>,  <38.324600, 30.456861, 29.299372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.563492, 30.435484, 29.307945>,  <38.961647, 30.399857, 29.322235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563492, 30.435484, 29.307945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030622, 0.057998, 0.997847,
		0.090950, 0.994336, -0.055002,
		-0.995385, 0.089070, -0.035724,
		38.264877, 30.462204, 29.297228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672680, 30.962715, 29.796732>,  <38.961647, 30.399857, 29.322235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672680, 30.962715, 29.796732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352909, 30.728479, 29.743052>,  <38.161049, 30.587938, 29.710844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352909, 30.728479, 29.743052>,  <38.672680, 30.962715, 29.796732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352909, 30.728479, 29.743052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194082, 0.040328, 0.980156,
		-0.568556, 0.809605, -0.145891,
		-0.799422, -0.585589, -0.134201,
		38.113083, 30.552803, 29.702791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118439, 31.266764, 30.215843>,  <38.672680, 30.962715, 29.796732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118439, 31.266764, 30.215843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998768, 30.893612, 30.135616>,  <37.926964, 30.669722, 30.087481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998768, 30.893612, 30.135616>,  <38.118439, 31.266764, 30.215843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998768, 30.893612, 30.135616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408656, -0.064674, 0.910394,
		-0.862259, 0.354337, -0.361877,
		-0.299182, -0.932879, -0.200567,
		37.909012, 30.613749, 30.075445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399151, 31.158339, 30.447104>,  <38.118439, 31.266764, 30.215843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399151, 31.158339, 30.447104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529385, 30.780958, 30.422134>,  <37.607525, 30.554529, 30.407152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529385, 30.780958, 30.422134>,  <37.399151, 31.158339, 30.447104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529385, 30.780958, 30.422134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544196, -0.240969, 0.803607,
		-0.773206, -0.227669, -0.591878,
		0.325581, -0.943451, -0.062422,
		37.627060, 30.497923, 30.403408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860069, 30.724524, 30.662447>,  <37.399151, 31.158339, 30.447104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860069, 30.724524, 30.662447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197098, 30.511515, 30.694691>,  <37.399315, 30.383709, 30.714037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197098, 30.511515, 30.694691>,  <36.860069, 30.724524, 30.662447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197098, 30.511515, 30.694691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317041, -0.369400, 0.873515,
		-0.435387, -0.761555, -0.480076,
		0.842570, -0.532521, 0.080612,
		37.449867, 30.351757, 30.718874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549648, 30.084362, 30.824984>,  <36.860069, 30.724524, 30.662447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549648, 30.084362, 30.824984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929581, 30.062555, 30.948174>,  <37.157539, 30.049471, 31.022087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929581, 30.062555, 30.948174>,  <36.549648, 30.084362, 30.824984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929581, 30.062555, 30.948174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312761, -0.165807, 0.935248,
		0.000082, -0.984650, -0.174538,
		0.949832, -0.054512, 0.307973,
		37.214531, 30.046202, 31.040565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581902, 29.465284, 31.294657>,  <36.549648, 30.084362, 30.824984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581902, 29.465284, 31.294657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872375, 29.723547, 31.389132>,  <37.046658, 29.878506, 31.445816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872375, 29.723547, 31.389132>,  <36.581902, 29.465284, 31.294657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872375, 29.723547, 31.389132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306414, -0.003582, 0.951892,
		0.615443, -0.763618, 0.195237,
		0.726183, 0.645658, 0.236188,
		37.090229, 29.917244, 31.459988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872086, 29.169466, 31.887791>,  <36.581902, 29.465284, 31.294657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872086, 29.169466, 31.887791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980347, 29.553452, 31.858898>,  <37.045303, 29.783844, 31.841562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980347, 29.553452, 31.858898>,  <36.872086, 29.169466, 31.887791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980347, 29.553452, 31.858898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237164, 0.139208, 0.961444,
		0.933007, -0.243082, 0.265346,
		0.270648, 0.959965, -0.072231,
		37.061543, 29.841440, 31.837229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058815, 29.188339, 32.516300>,  <36.872086, 29.169466, 31.887791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058815, 29.188339, 32.516300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042942, 29.573648, 32.410072>,  <37.033421, 29.804834, 32.346336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042942, 29.573648, 32.410072>,  <37.058815, 29.188339, 32.516300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042942, 29.573648, 32.410072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056467, 0.263197, 0.963088,
		0.997616, 0.053209, 0.043951,
		-0.039678, 0.963274, -0.265574,
		37.031040, 29.862631, 32.330399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529980, 29.495558, 32.888050>,  <37.058815, 29.188339, 32.516300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529980, 29.495558, 32.888050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293728, 29.801762, 32.785950>,  <37.151978, 29.985483, 32.724689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293728, 29.801762, 32.785950>,  <37.529980, 29.495558, 32.888050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293728, 29.801762, 32.785950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120241, 0.396277, 0.910224,
		0.797936, 0.506912, -0.326097,
		-0.590628, 0.765510, -0.255252,
		37.116539, 30.031414, 32.709373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912083, 30.185366, 32.970604>,  <37.529980, 29.495558, 32.888050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912083, 30.185366, 32.970604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522457, 30.267298, 33.009071>,  <37.288681, 30.316456, 33.032154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.522457, 30.267298, 33.009071>,  <37.912083, 30.185366, 32.970604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522457, 30.267298, 33.009071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204971, 0.618601, 0.758498,
		0.095869, 0.758537, -0.644539,
		-0.974062, 0.204828, 0.096173,
		37.230240, 30.328747, 33.037922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361080, 30.378738, 33.552677>,  <37.912083, 30.185366, 32.970604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361080, 30.378738, 33.552677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595482, 30.125881, 33.755459>,  <38.736122, 29.974167, 33.877129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595482, 30.125881, 33.755459>,  <38.361080, 30.378738, 33.552677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595482, 30.125881, 33.755459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642123, -0.019334, -0.766358,
		0.494248, 0.774611, 0.394583,
		0.586001, -0.632142, 0.506952,
		38.771282, 29.936239, 33.907543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048672, 30.589476, 33.351067>,  <38.361080, 30.378738, 33.552677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048672, 30.589476, 33.351067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067451, 30.210501, 33.477661>,  <39.078720, 29.983116, 33.553616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067451, 30.210501, 33.477661>,  <39.048672, 30.589476, 33.351067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067451, 30.210501, 33.477661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569528, -0.234897, -0.787694,
		0.820630, 0.217229, 0.528562,
		0.046952, -0.947436, 0.316482,
		39.081535, 29.926270, 33.572605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780968, 30.412313, 33.322514>,  <39.048672, 30.589476, 33.351067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780968, 30.412313, 33.322514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598324, 30.056801, 33.306652>,  <39.488739, 29.843493, 33.297134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.598324, 30.056801, 33.306652>,  <39.780968, 30.412313, 33.322514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598324, 30.056801, 33.306652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516140, -0.228336, -0.825507,
		0.724642, -0.397401, 0.562997,
		-0.456610, -0.888783, -0.039652,
		39.461342, 29.790167, 33.294758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382923, 29.961246, 33.373737>,  <39.780968, 30.412313, 33.322514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382923, 29.961246, 33.373737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068562, 29.801636, 33.184788>,  <39.879944, 29.705870, 33.071419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068562, 29.801636, 33.184788>,  <40.382923, 29.961246, 33.373737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068562, 29.801636, 33.184788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563519, -0.147677, -0.812796,
		0.254569, -0.904969, 0.340918,
		-0.785901, -0.399027, -0.472374,
		39.832790, 29.681929, 33.043076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614944, 29.384560, 33.042267>,  <40.382923, 29.961246, 33.373737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614944, 29.384560, 33.042267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280960, 29.494938, 32.851814>,  <40.080570, 29.561165, 32.737541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280960, 29.494938, 32.851814>,  <40.614944, 29.384560, 33.042267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280960, 29.494938, 32.851814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493879, -0.005919, -0.869511,
		-0.242756, -0.961155, -0.131341,
		-0.834957, 0.275945, -0.476131,
		40.030472, 29.577721, 32.708977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634361, 29.175928, 32.373081>,  <40.614944, 29.384560, 33.042267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634361, 29.175928, 32.373081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312206, 29.408003, 32.324539>,  <40.118912, 29.547249, 32.295414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.312206, 29.408003, 32.324539>,  <40.634361, 29.175928, 32.373081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312206, 29.408003, 32.324539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267774, 0.173472, -0.947737,
		-0.528814, -0.795794, -0.295072,
		-0.805390, 0.580189, -0.121358,
		40.070591, 29.582060, 32.288132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177483, 28.840834, 31.822233>,  <40.634361, 29.175928, 32.373081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177483, 28.840834, 31.822233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121899, 29.236094, 31.848305>,  <40.088551, 29.473249, 31.863947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.121899, 29.236094, 31.848305>,  <40.177483, 28.840834, 31.822233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121899, 29.236094, 31.848305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263683, 0.100361, -0.959374,
		-0.954548, -0.116126, -0.274505,
		-0.138958, 0.988151, 0.065179,
		40.080212, 29.532539, 31.867859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098133, 29.059082, 31.129667>,  <40.177483, 28.840834, 31.822233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098133, 29.059082, 31.129667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.130817, 29.424471, 31.289114>,  <40.150429, 29.643703, 31.384781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.130817, 29.424471, 31.289114>,  <40.098133, 29.059082, 31.129667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130817, 29.424471, 31.289114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246898, 0.368933, -0.896063,
		-0.965590, 0.171639, -0.195387,
		0.081715, 0.913470, 0.398616,
		40.155331, 29.698511, 31.408699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717026, 29.482994, 30.695192>,  <40.098133, 29.059082, 31.129667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717026, 29.482994, 30.695192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983974, 29.710962, 30.886948>,  <40.144142, 29.847742, 31.002001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983974, 29.710962, 30.886948>,  <39.717026, 29.482994, 30.695192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983974, 29.710962, 30.886948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247071, 0.437814, -0.864450,
		-0.702549, 0.695349, 0.151373,
		0.667368, 0.569919, 0.479387,
		40.184185, 29.881939, 31.030764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712238, 30.023964, 30.301136>,  <39.717026, 29.482994, 30.695192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712238, 30.023964, 30.301136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053028, 30.077862, 30.503515>,  <40.257504, 30.110201, 30.624943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053028, 30.077862, 30.503515>,  <39.712238, 30.023964, 30.301136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053028, 30.077862, 30.503515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363823, 0.542559, -0.757141,
		-0.376528, 0.829140, 0.413223,
		0.851974, 0.134745, 0.505949,
		40.308620, 30.118286, 30.655300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871204, 30.711359, 30.292982>,  <39.712238, 30.023964, 30.301136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871204, 30.711359, 30.292982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231270, 30.567204, 30.390816>,  <40.447311, 30.480709, 30.449516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.231270, 30.567204, 30.390816>,  <39.871204, 30.711359, 30.292982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231270, 30.567204, 30.390816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425477, 0.607558, -0.670703,
		0.093117, 0.707808, 0.700241,
		0.900166, -0.360390, 0.244582,
		40.501320, 30.459087, 30.464190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365196, 31.350430, 30.325769>,  <39.871204, 30.711359, 30.292982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365196, 31.350430, 30.325769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.581715, 31.021946, 30.253534>,  <40.711624, 30.824856, 30.210194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.581715, 31.021946, 30.253534>,  <40.365196, 31.350430, 30.325769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581715, 31.021946, 30.253534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411651, 0.446098, -0.794695,
		0.733172, 0.355826, 0.579523,
		0.541297, -0.821209, -0.180590,
		40.744102, 30.775583, 30.199358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013039, 31.574617, 30.022251>,  <40.365196, 31.350430, 30.325769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013039, 31.574617, 30.022251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.990562, 31.182432, 29.946844>,  <40.977077, 30.947121, 29.901600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.990562, 31.182432, 29.946844>,  <41.013039, 31.574617, 30.022251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990562, 31.182432, 29.946844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362346, 0.155919, -0.918909,
		0.930348, -0.119940, 0.346505,
		-0.056187, -0.980461, -0.188519,
		40.973705, 30.888294, 29.890287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585430, 31.477457, 29.847670>,  <41.013039, 31.574617, 30.022251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585430, 31.477457, 29.847670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368004, 31.198446, 29.660910>,  <41.237549, 31.031040, 29.548855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368004, 31.198446, 29.660910>,  <41.585430, 31.477457, 29.847670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368004, 31.198446, 29.660910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444797, 0.232358, -0.864966,
		0.711825, -0.677838, 0.183957,
		-0.543563, -0.697528, -0.466898,
		41.204933, 30.989187, 29.520840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010098, 31.123045, 29.302895>,  <41.585430, 31.477457, 29.847670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010098, 31.123045, 29.302895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.646500, 31.029465, 29.164913>,  <41.428341, 30.973316, 29.082125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.646500, 31.029465, 29.164913>,  <42.010098, 31.123045, 29.302895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646500, 31.029465, 29.164913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340091, 0.062152, -0.938336,
		0.240964, -0.970260, 0.023069,
		-0.908997, -0.233951, -0.344953,
		41.373802, 30.959280, 29.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219833, 30.747200, 28.750143>,  <42.010098, 31.123045, 29.302895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219833, 30.747200, 28.750143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.836620, 30.846273, 28.692419>,  <41.606693, 30.905718, 28.657785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.836620, 30.846273, 28.692419>,  <42.219833, 30.747200, 28.750143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836620, 30.846273, 28.692419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168958, 0.081220, -0.982271,
		-0.231570, -0.965431, -0.119659,
		-0.958034, 0.247682, -0.144309,
		41.549210, 30.920578, 28.649126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040478, 30.362814, 28.216816>,  <42.219833, 30.747200, 28.750143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040478, 30.362814, 28.216816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.760429, 30.647888, 28.234295>,  <41.592400, 30.818933, 28.244783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.760429, 30.647888, 28.234295>,  <42.040478, 30.362814, 28.216816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760429, 30.647888, 28.234295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023172, 0.038492, -0.998990,
		-0.713649, -0.700426, -0.010435,
		-0.700120, 0.712687, 0.043700,
		41.550392, 30.861694, 28.247404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709732, 30.257809, 27.561890>,  <42.040478, 30.362814, 28.216816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709732, 30.257809, 27.561890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560856, 30.609554, 27.680681>,  <41.471531, 30.820602, 27.751957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560856, 30.609554, 27.680681>,  <41.709732, 30.257809, 27.561890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560856, 30.609554, 27.680681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015161, 0.314163, -0.949248,
		-0.928034, -0.357801, -0.103596,
		-0.372188, 0.879363, 0.296979,
		41.449200, 30.873363, 27.769775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.076130, 30.375736, 27.149858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148628, 30.744228, 27.287544>,  <41.192127, 30.965324, 27.370155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.148628, 30.744228, 27.287544>,  <41.076130, 30.375736, 27.149858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148628, 30.744228, 27.287544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095699, 0.364869, -0.926127,
		-0.978771, 0.134915, 0.154292,
		0.181245, 0.921232, 0.344212,
		41.203003, 31.020597, 27.390808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527695, 30.763927, 26.839258>,  <41.076130, 30.375736, 27.149858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527695, 30.763927, 26.839258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827293, 31.013208, 26.929258>,  <41.007053, 31.162777, 26.983257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.827293, 31.013208, 26.929258>,  <40.527695, 30.763927, 26.839258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827293, 31.013208, 26.929258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075538, 0.257053, -0.963440,
		-0.658255, 0.738609, 0.145457,
		0.748996, 0.623202, 0.224999,
		41.051991, 31.200169, 26.996758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355553, 31.355223, 26.500294>,  <40.527695, 30.763927, 26.839258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355553, 31.355223, 26.500294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748089, 31.401033, 26.562082>,  <40.983608, 31.428520, 26.599155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748089, 31.401033, 26.562082>,  <40.355553, 31.355223, 26.500294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748089, 31.401033, 26.562082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111775, 0.313918, -0.942848,
		-0.156472, 0.942518, 0.295258,
		0.981337, 0.114527, 0.154469,
		41.042492, 31.435392, 26.608423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461411, 31.978115, 26.197918>,  <40.355553, 31.355223, 26.500294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461411, 31.978115, 26.197918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810604, 31.784784, 26.224150>,  <41.020119, 31.668787, 26.239889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.810604, 31.784784, 26.224150>,  <40.461411, 31.978115, 26.197918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810604, 31.784784, 26.224150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257903, 0.343284, -0.903129,
		0.413993, 0.805328, 0.424331,
		0.872981, -0.483325, 0.065579,
		41.072498, 31.639788, 26.243824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950848, 32.427635, 25.857216>,  <40.461411, 31.978115, 26.197918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950848, 32.427635, 25.857216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.125195, 32.067677, 25.862856>,  <41.229801, 31.851700, 25.866240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.125195, 32.067677, 25.862856>,  <40.950848, 32.427635, 25.857216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125195, 32.067677, 25.862856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433295, 0.196082, -0.879663,
		0.788844, 0.389527, 0.475388,
		0.435868, -0.899900, 0.014102,
		41.255955, 31.797707, 25.867086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622833, 32.547737, 25.502005>,  <40.950848, 32.427635, 25.857216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622833, 32.547737, 25.502005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.584919, 32.149635, 25.510750>,  <41.562168, 31.910774, 25.515997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.584919, 32.149635, 25.510750>,  <41.622833, 32.547737, 25.502005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584919, 32.149635, 25.510750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414943, -0.059464, -0.907902,
		0.904896, -0.076985, 0.418612,
		-0.094788, -0.995257, 0.021864,
		41.556484, 31.851059, 25.517309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179176, 32.310112, 25.213732>,  <41.622833, 32.547737, 25.502005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179176, 32.310112, 25.213732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924728, 32.005100, 25.166588>,  <41.772060, 31.822092, 25.138302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924728, 32.005100, 25.166588>,  <42.179176, 32.310112, 25.213732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924728, 32.005100, 25.166588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418858, -0.212984, -0.882721,
		0.648000, -0.610888, 0.454876,
		-0.636124, -0.762532, -0.117862,
		41.733891, 31.776340, 25.131229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562077, 31.773819, 24.973455>,  <42.179176, 32.310112, 25.213732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562077, 31.773819, 24.973455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185162, 31.703846, 24.859272>,  <41.959011, 31.661861, 24.790762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.185162, 31.703846, 24.859272>,  <42.562077, 31.773819, 24.973455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185162, 31.703846, 24.859272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312358, -0.152452, -0.937652,
		0.120508, -0.972706, 0.198296,
		-0.942290, -0.174934, -0.285461,
		41.902473, 31.651365, 24.773634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645847, 31.240141, 24.553484>,  <42.562077, 31.773819, 24.973455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.645847, 31.240141, 24.553484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.299244, 31.410131, 24.448751>,  <42.091282, 31.512127, 24.385912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.299244, 31.410131, 24.448751>,  <42.645847, 31.240141, 24.553484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299244, 31.410131, 24.448751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291180, 0.004299, -0.956659,
		-0.405433, -0.905194, -0.127470,
		-0.866509, 0.424978, -0.261831,
		42.039291, 31.537624, 24.370203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503159, 30.935656, 23.922178>,  <42.645847, 31.240141, 24.553484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503159, 30.935656, 23.922178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.250462, 31.245468, 23.909492>,  <42.098843, 31.431355, 23.901880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.250462, 31.245468, 23.909492>,  <42.503159, 30.935656, 23.922178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250462, 31.245468, 23.909492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268368, 0.180145, -0.946323,
		-0.727242, -0.606343, -0.321664,
		-0.631742, 0.774530, -0.031714,
		42.060940, 31.477827, 23.899979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982697, 30.796043, 23.417416>,  <42.503159, 30.935656, 23.922178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982697, 30.796043, 23.417416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.013851, 31.191822, 23.466295>,  <42.032543, 31.429289, 23.495623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.013851, 31.191822, 23.466295>,  <41.982697, 30.796043, 23.417416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013851, 31.191822, 23.466295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088603, 0.115219, -0.989381,
		-0.993018, 0.087884, -0.078694,
		0.077884, 0.989445, 0.122201,
		42.037216, 31.488655, 23.502956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521374, 31.169579, 22.971752>,  <41.982697, 30.796043, 23.417416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521374, 31.169579, 22.971752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810699, 31.438044, 23.036692>,  <41.984295, 31.599123, 23.075655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.810699, 31.438044, 23.036692>,  <41.521374, 31.169579, 22.971752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810699, 31.438044, 23.036692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138538, 0.089277, -0.986325,
		-0.676480, 0.735913, -0.028406,
		0.723313, 0.671164, 0.162347,
		42.027695, 31.639393, 23.085396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341812, 31.784933, 22.548258>,  <41.521374, 31.169579, 22.971752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341812, 31.784933, 22.548258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722092, 31.860004, 22.647015>,  <41.950260, 31.905046, 22.706268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722092, 31.860004, 22.647015>,  <41.341812, 31.784933, 22.548258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722092, 31.860004, 22.647015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154809, 0.402628, -0.902178,
		-0.268722, 0.895918, 0.353723,
		0.950696, 0.187676, 0.246891,
		42.007301, 31.916307, 22.721083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544132, 32.421013, 22.153252>,  <41.341812, 31.784933, 22.548258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544132, 32.421013, 22.153252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905285, 32.289433, 22.263954>,  <42.121979, 32.210484, 22.330376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905285, 32.289433, 22.263954>,  <41.544132, 32.421013, 22.153252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905285, 32.289433, 22.263954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404519, 0.432254, -0.805929,
		0.145480, 0.839613, 0.523341,
		0.902884, -0.328948, 0.276755,
		42.176151, 32.190746, 22.346981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919243, 32.990868, 22.082434>,  <41.544132, 32.421013, 22.153252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919243, 32.990868, 22.082434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.163647, 32.674404, 22.071598>,  <42.310287, 32.484528, 22.065096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.163647, 32.674404, 22.071598>,  <41.919243, 32.990868, 22.082434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163647, 32.674404, 22.071598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400385, 0.338374, -0.851584,
		0.682906, 0.509479, 0.523518,
		0.611009, -0.791160, -0.027090,
		42.346951, 32.437057, 22.063471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577187, 33.237640, 21.894335>,  <41.919243, 32.990868, 22.082434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577187, 33.237640, 21.894335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.631378, 32.850159, 21.811148>,  <42.663891, 32.617668, 21.761234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.631378, 32.850159, 21.811148>,  <42.577187, 33.237640, 21.894335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631378, 32.850159, 21.811148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534625, 0.248197, -0.807821,
		0.834160, -0.001747, 0.551520,
		0.135475, -0.968708, -0.207970,
		42.672020, 32.559547, 21.748756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254166, 33.180420, 21.748201>,  <42.577187, 33.237640, 21.894335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254166, 33.180420, 21.748201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.066307, 32.875004, 21.570921>,  <42.953590, 32.691753, 21.464552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.066307, 32.875004, 21.570921>,  <43.254166, 33.180420, 21.748201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066307, 32.875004, 21.570921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551040, 0.138698, -0.822872,
		0.689771, -0.630683, 0.355604,
		-0.469650, -0.763545, -0.443202,
		42.925411, 32.645939, 21.437960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778503, 32.857990, 21.520130>,  <43.254166, 33.180420, 21.748201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778503, 32.857990, 21.520130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.450932, 32.741203, 21.322500>,  <43.254387, 32.671131, 21.203922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.450932, 32.741203, 21.322500>,  <43.778503, 32.857990, 21.520130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450932, 32.741203, 21.322500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522969, -0.025107, -0.851982,
		0.236343, -0.956100, 0.173248,
		-0.818929, -0.291963, -0.494077,
		43.205254, 32.653614, 21.174276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023026, 32.352291, 21.057037>,  <43.778503, 32.857990, 21.520130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023026, 32.352291, 21.057037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.675297, 32.470707, 20.898729>,  <43.466660, 32.541756, 20.803743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.675297, 32.470707, 20.898729>,  <44.023026, 32.352291, 21.057037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675297, 32.470707, 20.898729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447852, 0.133125, -0.884142,
		-0.209054, -0.945853, -0.248311,
		-0.869324, 0.296040, -0.395772,
		43.414501, 32.559517, 20.779997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934532, 32.045471, 20.385244>,  <44.023026, 32.352291, 21.057037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934532, 32.045471, 20.385244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.695827, 32.366360, 20.378180>,  <43.552605, 32.558895, 20.373941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.695827, 32.366360, 20.378180>,  <43.934532, 32.045471, 20.385244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695827, 32.366360, 20.378180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433268, 0.303619, -0.848584,
		-0.675394, -0.514052, -0.528766,
		-0.596759, 0.802226, -0.017660,
		43.516800, 32.607029, 20.372881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759525, 32.054855, 19.734093>,  <43.934532, 32.045471, 20.385244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759525, 32.054855, 19.734093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.650921, 32.427483, 19.830805>,  <43.585758, 32.651058, 19.888832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.650921, 32.427483, 19.830805>,  <43.759525, 32.054855, 19.734093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.650921, 32.427483, 19.830805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378888, 0.334391, -0.862917,
		-0.884717, -0.142686, -0.443753,
		-0.271513, 0.931570, 0.241780,
		43.569466, 32.706955, 19.903339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297668, 32.317566, 19.069675>,  <43.759525, 32.054855, 19.734093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297668, 32.317566, 19.069675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.449341, 32.630394, 19.267500>,  <43.540344, 32.818092, 19.386194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.449341, 32.630394, 19.267500>,  <43.297668, 32.317566, 19.069675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449341, 32.630394, 19.267500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382909, 0.353947, -0.853289,
		-0.842379, 0.512923, -0.165252,
		0.379181, 0.782069, 0.494560,
		43.563095, 32.865013, 19.415869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122662, 33.008671, 18.803022>,  <43.297668, 32.317566, 19.069675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122662, 33.008671, 18.803022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487679, 33.010231, 18.966606>,  <43.706688, 33.011169, 19.064756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.487679, 33.010231, 18.966606>,  <43.122662, 33.008671, 18.803022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487679, 33.010231, 18.966606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408528, 0.038075, -0.911951,
		-0.019130, 0.999267, 0.033151,
		0.912545, 0.003903, 0.408957,
		43.761440, 33.011402, 19.089293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369457, 32.809708, 18.574942>,  <43.122662, 33.008671, 18.803022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369457, 32.809708, 18.574942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178085, 33.008709, 18.285501>,  <42.063263, 33.128109, 18.111837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178085, 33.008709, 18.285501>,  <42.369457, 32.809708, 18.574942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178085, 33.008709, 18.285501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402757, 0.607921, 0.684265,
		0.780315, 0.618807, -0.090475,
		-0.478430, 0.497503, -0.723599,
		42.034557, 33.157959, 18.068422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454220, 33.427399, 18.815998>,  <42.369457, 32.809708, 18.574942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454220, 33.427399, 18.815998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.129787, 33.426323, 18.582027>,  <41.935127, 33.425678, 18.441645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.129787, 33.426323, 18.582027>,  <42.454220, 33.427399, 18.815998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129787, 33.426323, 18.582027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509964, 0.493051, 0.704867,
		0.286504, 0.869996, -0.401276,
		-0.811081, -0.002689, -0.584928,
		41.886463, 33.425518, 18.406549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219849, 33.988140, 18.913694>,  <42.454220, 33.427399, 18.815998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219849, 33.988140, 18.913694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906265, 33.769661, 18.795660>,  <41.718113, 33.638573, 18.724840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.906265, 33.769661, 18.795660>,  <42.219849, 33.988140, 18.913694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906265, 33.769661, 18.795660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573594, 0.455451, 0.680849,
		-0.237480, 0.703018, -0.670350,
		-0.783960, -0.546196, -0.295086,
		41.671078, 33.605801, 18.707134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561447, 34.431705, 18.749586>,  <42.219849, 33.988140, 18.913694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561447, 34.431705, 18.749586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413853, 34.066071, 18.816860>,  <41.325294, 33.846687, 18.857225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.413853, 34.066071, 18.816860>,  <41.561447, 34.431705, 18.749586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413853, 34.066071, 18.816860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690960, 0.390811, 0.608145,
		-0.621629, 0.108188, -0.775805,
		-0.368987, -0.914091, 0.168186,
		41.303158, 33.791843, 18.867315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811794, 34.507687, 18.781187>,  <41.561447, 34.431705, 18.749586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811794, 34.507687, 18.781187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895580, 34.170330, 18.979103>,  <40.945854, 33.967918, 19.097853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.895580, 34.170330, 18.979103>,  <40.811794, 34.507687, 18.781187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895580, 34.170330, 18.979103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746595, 0.188821, 0.637920,
		-0.631441, -0.503032, -0.590119,
		0.209468, -0.843389, 0.494791,
		40.958420, 33.917313, 19.127541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203121, 34.296124, 18.945093>,  <40.811794, 34.507687, 18.781187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203121, 34.296124, 18.945093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417812, 34.076099, 19.201017>,  <40.546627, 33.944084, 19.354572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.417812, 34.076099, 19.201017>,  <40.203121, 34.296124, 18.945093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417812, 34.076099, 19.201017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742001, 0.053297, 0.668276,
		-0.401691, -0.833424, -0.379538,
		0.536729, -0.550058, 0.639811,
		40.578831, 33.911083, 19.392962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750660, 33.778328, 19.416271>,  <40.203121, 34.296124, 18.945093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750660, 33.778328, 19.416271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095470, 33.817959, 19.615103>,  <40.302357, 33.841736, 19.734402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.095470, 33.817959, 19.615103>,  <39.750660, 33.778328, 19.416271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095470, 33.817959, 19.615103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492896, -0.064741, 0.867676,
		0.118151, -0.992971, -0.006973,
		0.862029, 0.099080, 0.497080,
		40.354080, 33.847683, 19.764227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627022, 33.275307, 19.905153>,  <39.750660, 33.778328, 19.416271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627022, 33.275307, 19.905153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944630, 33.469326, 20.051718>,  <40.135193, 33.585739, 20.139656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.944630, 33.469326, 20.051718>,  <39.627022, 33.275307, 19.905153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944630, 33.469326, 20.051718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227341, -0.322077, 0.919012,
		0.563780, -0.813014, -0.145464,
		0.794020, 0.485051, 0.366412,
		40.182835, 33.614841, 20.161642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069866, 32.850529, 20.278894>,  <39.627022, 33.275307, 19.905153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069866, 32.850529, 20.278894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157600, 33.206486, 20.438885>,  <40.210239, 33.420059, 20.534878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.157600, 33.206486, 20.438885>,  <40.069866, 32.850529, 20.278894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157600, 33.206486, 20.438885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167859, -0.369425, 0.913974,
		0.961101, -0.267607, 0.068349,
		0.219336, 0.889894, 0.399975,
		40.223400, 33.473454, 20.558878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432102, 32.684235, 20.789497>,  <40.069866, 32.850529, 20.278894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432102, 32.684235, 20.789497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322655, 33.050961, 20.905825>,  <40.256985, 33.270996, 20.975620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322655, 33.050961, 20.905825>,  <40.432102, 32.684235, 20.789497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322655, 33.050961, 20.905825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090699, -0.325601, 0.941147,
		0.957552, 0.231141, 0.172246,
		-0.273621, 0.916819, 0.290816,
		40.240570, 33.326008, 20.993069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993534, 32.877884, 21.279831>,  <40.432102, 32.684235, 20.789497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993534, 32.877884, 21.279831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.657299, 33.078011, 21.362873>,  <40.455559, 33.198086, 21.412699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.657299, 33.078011, 21.362873>,  <40.993534, 32.877884, 21.279831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657299, 33.078011, 21.362873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031161, -0.337967, 0.940642,
		0.540783, 0.797158, 0.268500,
		-0.840585, 0.500317, 0.207607,
		40.405125, 33.228104, 21.425156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162853, 33.106491, 21.891813>,  <40.993534, 32.877884, 21.279831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162853, 33.106491, 21.891813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767220, 33.165207, 21.886677>,  <40.529839, 33.200436, 21.883595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.767220, 33.165207, 21.886677>,  <41.162853, 33.106491, 21.891813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767220, 33.165207, 21.886677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056853, -0.299778, 0.952313,
		0.135938, 0.942649, 0.304851,
		-0.989085, 0.146788, -0.012841,
		40.470493, 33.209244, 21.882824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959557, 33.182781, 22.596506>,  <41.162853, 33.106491, 21.891813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959557, 33.182781, 22.596506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.595581, 33.108860, 22.447989>,  <40.377197, 33.064507, 22.358877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.595581, 33.108860, 22.447989>,  <40.959557, 33.182781, 22.596506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595581, 33.108860, 22.447989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258445, -0.447519, 0.856115,
		-0.324376, 0.874971, 0.359452,
		-0.909938, -0.184805, -0.371296,
		40.322601, 33.053417, 22.336599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482777, 33.295258, 23.181093>,  <40.959557, 33.182781, 22.596506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482777, 33.295258, 23.181093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.291241, 33.063950, 22.916878>,  <40.176319, 32.925163, 22.758348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.291241, 33.063950, 22.916878>,  <40.482777, 33.295258, 23.181093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291241, 33.063950, 22.916878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397854, -0.527767, 0.750449,
		-0.782575, 0.622144, 0.022648,
		-0.478840, -0.578272, -0.660540,
		40.147587, 32.890469, 22.718716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863174, 33.307602, 23.405056>,  <40.482777, 33.295258, 23.181093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863174, 33.307602, 23.405056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887463, 32.978943, 23.178356>,  <39.902035, 32.781746, 23.042337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.887463, 32.978943, 23.178356>,  <39.863174, 33.307602, 23.405056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887463, 32.978943, 23.178356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490467, -0.519080, 0.699999,
		-0.869342, 0.235470, -0.434509,
		0.060716, -0.821651, -0.566748,
		39.905678, 32.732449, 23.008331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049297, 33.106155, 23.375586>,  <39.863174, 33.307602, 23.405056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049297, 33.106155, 23.375586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278992, 32.795582, 23.271740>,  <39.416809, 32.609238, 23.209433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278992, 32.795582, 23.271740>,  <39.049297, 33.106155, 23.375586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278992, 32.795582, 23.271740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470737, -0.572589, 0.671229,
		-0.669819, -0.263234, -0.694299,
		0.574238, -0.776434, -0.259617,
		39.451263, 32.562653, 23.193855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569080, 32.448074, 23.192064>,  <39.049297, 33.106155, 23.375586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569080, 32.448074, 23.192064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931011, 32.286438, 23.245726>,  <39.148170, 32.189457, 23.277922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.931011, 32.286438, 23.245726>,  <38.569080, 32.448074, 23.192064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931011, 32.286438, 23.245726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378518, -0.619152, 0.688022,
		-0.194963, -0.673321, -0.713182,
		0.904828, -0.404092, 0.134152,
		39.202461, 32.165211, 23.285971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529495, 31.699778, 23.102037>,  <38.569080, 32.448074, 23.192064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529495, 31.699778, 23.102037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864437, 31.742174, 23.316551>,  <39.065403, 31.767612, 23.445259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864437, 31.742174, 23.316551>,  <38.529495, 31.699778, 23.102037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864437, 31.742174, 23.316551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377104, -0.598229, 0.707046,
		0.395761, -0.794285, -0.460961,
		0.837356, 0.105991, 0.536284,
		39.115643, 31.773972, 23.477436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701889, 31.022598, 23.341154>,  <38.529495, 31.699778, 23.102037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701889, 31.022598, 23.341154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888771, 31.264612, 23.599039>,  <39.000900, 31.409821, 23.753771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.888771, 31.264612, 23.599039>,  <38.701889, 31.022598, 23.341154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888771, 31.264612, 23.599039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295476, -0.580419, 0.758820,
		0.833315, -0.545021, -0.092401,
		0.467204, 0.605034, 0.644713,
		39.028931, 31.446123, 23.792454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974049, 30.561758, 23.793818>,  <38.701889, 31.022598, 23.341154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974049, 30.561758, 23.793818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.993118, 30.896082, 24.012596>,  <39.004562, 31.096676, 24.143864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.993118, 30.896082, 24.012596>,  <38.974049, 30.561758, 23.793818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993118, 30.896082, 24.012596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369860, -0.493875, 0.786950,
		0.927863, -0.239813, 0.285586,
		0.047677, 0.835809, 0.546946,
		39.007420, 31.146824, 24.176680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240105, 30.407082, 24.452414>,  <38.974049, 30.561758, 23.793818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240105, 30.407082, 24.452414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031967, 30.745436, 24.499271>,  <38.907085, 30.948448, 24.527386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031967, 30.745436, 24.499271>,  <39.240105, 30.407082, 24.452414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031967, 30.745436, 24.499271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436934, -0.381581, 0.814546,
		0.733712, 0.372659, 0.568149,
		-0.520342, 0.845885, 0.117143,
		38.875866, 30.999201, 24.534414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.325111, 29.639841, 30.000484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147667, 29.990311, 30.075880>,  <41.041199, 30.200592, 30.121117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.147667, 29.990311, 30.075880>,  <41.325111, 29.639841, 30.000484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147667, 29.990311, 30.075880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255243, -0.325119, 0.910576,
		0.859104, 0.355833, 0.367864,
		-0.443612, 0.876174, 0.188487,
		41.014584, 30.253162, 30.132425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587494, 29.837145, 30.620623>,  <41.325111, 29.639841, 30.000484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587494, 29.837145, 30.620623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244495, 30.037008, 30.571552>,  <41.038696, 30.156925, 30.542110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.244495, 30.037008, 30.571552>,  <41.587494, 29.837145, 30.620623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244495, 30.037008, 30.571552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304922, -0.301496, 0.903395,
		0.414401, 0.812062, 0.410887,
		-0.857493, 0.499657, -0.122675,
		40.987247, 30.186905, 30.534750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471279, 30.196756, 31.246916>,  <41.587494, 29.837145, 30.620623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471279, 30.196756, 31.246916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106438, 30.176212, 31.084225>,  <40.887531, 30.163885, 30.986610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106438, 30.176212, 31.084225>,  <41.471279, 30.196756, 31.246916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106438, 30.176212, 31.084225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373247, -0.306329, 0.875699,
		-0.169569, 0.950539, 0.260234,
		-0.912104, -0.051360, -0.406730,
		40.832806, 30.160805, 30.962206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069904, 30.598871, 31.663876>,  <41.471279, 30.196756, 31.246916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069904, 30.598871, 31.663876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807583, 30.371168, 31.465536>,  <40.650188, 30.234547, 31.346533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807583, 30.371168, 31.465536>,  <41.069904, 30.598871, 31.663876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807583, 30.371168, 31.465536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540816, -0.104007, 0.834686,
		-0.526721, 0.815556, -0.239654,
		-0.655807, -0.569256, -0.495848,
		40.610840, 30.200392, 31.316782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390606, 30.823601, 31.913223>,  <41.069904, 30.598871, 31.663876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390606, 30.823601, 31.913223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311390, 30.458824, 31.769476>,  <40.263863, 30.239958, 31.683228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311390, 30.458824, 31.769476>,  <40.390606, 30.823601, 31.913223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311390, 30.458824, 31.769476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593216, -0.180356, 0.784580,
		-0.780304, 0.368560, -0.505260,
		-0.198038, -0.911940, -0.359369,
		40.251980, 30.185242, 31.661665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645191, 30.759853, 31.985748>,  <40.390606, 30.823601, 31.913223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645191, 30.759853, 31.985748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799061, 30.391899, 31.955177>,  <39.891380, 30.171127, 31.936834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799061, 30.391899, 31.955177>,  <39.645191, 30.759853, 31.985748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799061, 30.391899, 31.955177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617552, -0.318012, 0.719373,
		-0.686046, -0.229522, -0.690406,
		0.384669, -0.919885, -0.076429,
		39.914463, 30.115934, 31.932249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119911, 30.447884, 32.323212>,  <39.645191, 30.759853, 31.985748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119911, 30.447884, 32.323212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.419388, 30.185648, 32.283878>,  <39.599072, 30.028307, 32.260277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.419388, 30.185648, 32.283878>,  <39.119911, 30.447884, 32.323212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419388, 30.185648, 32.283878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275864, -0.442992, 0.853028,
		-0.602799, -0.611524, -0.512516,
		0.748688, -0.655589, -0.098338,
		39.643993, 29.988972, 32.254375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783878, 29.778816, 32.264824>,  <39.119911, 30.447884, 32.323212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783878, 29.778816, 32.264824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156296, 29.712208, 32.394703>,  <39.379745, 29.672243, 32.472630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156296, 29.712208, 32.394703>,  <38.783878, 29.778816, 32.264824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156296, 29.712208, 32.394703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364770, -0.449274, 0.815534,
		0.010074, -0.877737, -0.479036,
		0.931043, -0.166523, 0.324698,
		39.435608, 29.662251, 32.492111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772133, 29.125259, 32.451847>,  <38.783878, 29.778816, 32.264824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772133, 29.125259, 32.451847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092720, 29.265106, 32.645924>,  <39.285072, 29.349014, 32.762367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.092720, 29.265106, 32.645924>,  <38.772133, 29.125259, 32.451847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092720, 29.265106, 32.645924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380228, -0.328307, 0.864662,
		0.461593, -0.877486, -0.130194,
		0.801472, 0.349619, 0.485189,
		39.333160, 29.369991, 32.791481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967911, 28.613396, 33.097588>,  <38.772133, 29.125259, 32.451847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967911, 28.613396, 33.097588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.094292, 28.988476, 33.155403>,  <39.170120, 29.213524, 33.190090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.094292, 28.988476, 33.155403>,  <38.967911, 28.613396, 33.097588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094292, 28.988476, 33.155403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342176, -0.029467, 0.939174,
		0.884924, -0.346189, 0.311549,
		0.315951, 0.937702, 0.144534,
		39.189075, 29.269787, 33.198765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209152, 28.670538, 33.736389>,  <38.967911, 28.613396, 33.097588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209152, 28.670538, 33.736389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167545, 29.067244, 33.706509>,  <39.142582, 29.305267, 33.688580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167545, 29.067244, 33.706509>,  <39.209152, 28.670538, 33.736389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167545, 29.067244, 33.706509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088896, 0.065538, 0.993882,
		0.990594, 0.110025, 0.081347,
		-0.104021, 0.991766, -0.074703,
		39.136337, 29.364773, 33.684097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605762, 28.949938, 34.292271>,  <39.209152, 28.670538, 33.736389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605762, 28.949938, 34.292271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.330753, 29.218912, 34.182625>,  <39.165749, 29.380297, 34.116837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.330753, 29.218912, 34.182625>,  <39.605762, 28.949938, 34.292271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330753, 29.218912, 34.182625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311464, 0.067922, 0.947828,
		0.655970, 0.737034, 0.162741,
		-0.687527, 0.672435, -0.274114,
		39.124496, 29.420643, 34.100391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615398, 29.491720, 34.807228>,  <39.605762, 28.949938, 34.292271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615398, 29.491720, 34.807228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275307, 29.483128, 34.596840>,  <39.071251, 29.477972, 34.470608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.275307, 29.483128, 34.596840>,  <39.615398, 29.491720, 34.807228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275307, 29.483128, 34.596840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519535, 0.195234, 0.831846,
		0.084817, 0.980522, -0.177155,
		-0.850229, -0.021484, -0.525974,
		39.020237, 29.476683, 34.439049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312157, 30.165632, 34.713413>,  <39.615398, 29.491720, 34.807228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312157, 30.165632, 34.713413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004833, 29.910700, 34.689705>,  <38.820438, 29.757740, 34.675480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004833, 29.910700, 34.689705>,  <39.312157, 30.165632, 34.713413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004833, 29.910700, 34.689705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318728, 0.300638, 0.898904,
		-0.555082, 0.709525, -0.434118,
		-0.768307, -0.637331, -0.059267,
		38.774342, 29.719500, 34.671925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296638, 30.796541, 35.281677>,  <39.312157, 30.165632, 34.713413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296638, 30.796541, 35.281677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474380, 31.080271, 35.500549>,  <39.581024, 31.250509, 35.631874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.474380, 31.080271, 35.500549>,  <39.296638, 30.796541, 35.281677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474380, 31.080271, 35.500549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167480, 0.665800, -0.727090,
		-0.880057, 0.231444, 0.414649,
		0.444354, 0.709326, 0.547180,
		39.607685, 31.293068, 35.664703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798721, 31.376808, 35.366261>,  <39.296638, 30.796541, 35.281677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798721, 31.376808, 35.366261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183754, 31.481215, 35.395393>,  <39.414772, 31.543859, 35.412872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183754, 31.481215, 35.395393>,  <38.798721, 31.376808, 35.366261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183754, 31.481215, 35.395393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126234, 0.669726, -0.731800,
		-0.239792, 0.695224, 0.677616,
		0.962582, 0.261018, 0.072834,
		39.472530, 31.559521, 35.417244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791687, 32.018135, 35.105701>,  <38.798721, 31.376808, 35.366261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791687, 32.018135, 35.105701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184956, 31.953648, 35.140068>,  <39.420918, 31.914955, 35.160686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184956, 31.953648, 35.140068>,  <38.791687, 32.018135, 35.105701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184956, 31.953648, 35.140068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160879, 0.541303, -0.825293,
		0.086548, 0.825227, 0.558131,
		0.983172, -0.161219, 0.085913,
		39.479908, 31.905281, 35.165840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013214, 32.570774, 34.886524>,  <38.791687, 32.018135, 35.105701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013214, 32.570774, 34.886524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339630, 32.339909, 34.874149>,  <39.535480, 32.201389, 34.866726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339630, 32.339909, 34.874149>,  <39.013214, 32.570774, 34.886524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339630, 32.339909, 34.874149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239865, 0.386870, -0.890391,
		0.525868, 0.719177, 0.454144,
		0.816044, -0.577162, -0.030937,
		39.584442, 32.166759, 34.864868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469692, 33.104076, 34.737652>,  <39.013214, 32.570774, 34.886524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469692, 33.104076, 34.737652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632694, 32.759224, 34.617199>,  <39.730495, 32.552315, 34.544930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632694, 32.759224, 34.617199>,  <39.469692, 33.104076, 34.737652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632694, 32.759224, 34.617199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306687, 0.439798, -0.844109,
		0.860166, 0.251622, 0.443621,
		0.407501, -0.862127, -0.301130,
		39.754944, 32.500587, 34.526859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178932, 33.182220, 34.727253>,  <39.469692, 33.104076, 34.737652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178932, 33.182220, 34.727253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108425, 32.895321, 34.457588>,  <40.066120, 32.723183, 34.295792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.108425, 32.895321, 34.457588>,  <40.178932, 33.182220, 34.727253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108425, 32.895321, 34.457588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351849, 0.593725, -0.723667,
		0.919311, -0.364760, 0.147708,
		-0.176267, -0.717246, -0.674158,
		40.055546, 32.680149, 34.255341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784229, 33.242702, 34.195538>,  <40.178932, 33.182220, 34.727253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784229, 33.242702, 34.195538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513477, 33.003250, 34.024204>,  <40.351025, 32.859577, 33.921406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.513477, 33.003250, 34.024204>,  <40.784229, 33.242702, 34.195538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513477, 33.003250, 34.024204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170291, 0.438768, -0.882317,
		0.716122, -0.670166, -0.195053,
		-0.676882, -0.598632, -0.428335,
		40.310413, 32.823662, 33.895702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140793, 32.847195, 33.615490>,  <40.784229, 33.242702, 34.195538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140793, 32.847195, 33.615490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747852, 32.890102, 33.554199>,  <40.512089, 32.915848, 33.517426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.747852, 32.890102, 33.554199>,  <41.140793, 32.847195, 33.615490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747852, 32.890102, 33.554199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183585, 0.396182, -0.899631,
		-0.035797, -0.911884, -0.408883,
		-0.982352, 0.107269, -0.153227,
		40.453148, 32.922283, 33.508232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056808, 32.594608, 32.959610>,  <41.140793, 32.847195, 33.615490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056808, 32.594608, 32.959610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733295, 32.824722, 33.008472>,  <40.539188, 32.962791, 33.037788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.733295, 32.824722, 33.008472>,  <41.056808, 32.594608, 32.959610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733295, 32.824722, 33.008472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219354, 0.487791, -0.844952,
		-0.545676, -0.656584, -0.520707,
		-0.808778, 0.575289, 0.122152,
		40.490662, 32.997311, 33.045116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762283, 32.633144, 32.300804>,  <41.056808, 32.594608, 32.959610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762283, 32.633144, 32.300804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585510, 32.940212, 32.486443>,  <40.479446, 33.124454, 32.597824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.585510, 32.940212, 32.486443>,  <40.762283, 32.633144, 32.300804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585510, 32.940212, 32.486443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050294, 0.495338, -0.867243,
		-0.895638, -0.406602, -0.180295,
		-0.441930, 0.767669, 0.464093,
		40.452930, 33.170513, 32.625671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174255, 32.641552, 31.925621>,  <40.762283, 32.633144, 32.300804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174255, 32.641552, 31.925621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.219475, 32.994038, 32.109222>,  <40.246605, 33.205528, 32.219383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.219475, 32.994038, 32.109222>,  <40.174255, 32.641552, 31.925621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219475, 32.994038, 32.109222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125988, 0.470949, -0.873117,
		-0.985569, 0.040874, 0.164262,
		0.113046, 0.881213, 0.459004,
		40.253387, 33.258400, 32.246925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673283, 33.074276, 31.619444>,  <40.174255, 32.641552, 31.925621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673283, 33.074276, 31.619444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948460, 33.321026, 31.772392>,  <40.113564, 33.469074, 31.864161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948460, 33.321026, 31.772392>,  <39.673283, 33.074276, 31.619444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948460, 33.321026, 31.772392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053777, 0.482076, -0.874478,
		-0.723773, 0.622150, 0.298466,
		0.687939, 0.616873, 0.382371,
		40.154842, 33.506088, 31.887104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615509, 33.710358, 31.305920>,  <39.673283, 33.074276, 31.619444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615509, 33.710358, 31.305920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975845, 33.780125, 31.464947>,  <40.192047, 33.821983, 31.560364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.975845, 33.780125, 31.464947>,  <39.615509, 33.710358, 31.305920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975845, 33.780125, 31.464947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247657, 0.545687, -0.800557,
		-0.356578, 0.819637, 0.448383,
		0.900843, 0.174416, 0.397569,
		40.246098, 33.832451, 31.584217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801800, 34.493111, 31.230305>,  <39.615509, 33.710358, 31.305920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801800, 34.493111, 31.230305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147930, 34.294750, 31.259430>,  <40.355606, 34.175735, 31.276905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147930, 34.294750, 31.259430>,  <39.801800, 34.493111, 31.230305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147930, 34.294750, 31.259430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323531, 0.441679, -0.836808,
		0.382811, 0.747667, 0.542633,
		0.865323, -0.495897, 0.072814,
		40.407528, 34.145981, 31.281275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635857, 35.231163, 31.192167>,  <39.801800, 34.493111, 31.230305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635857, 35.231163, 31.192167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334503, 35.440914, 31.033455>,  <39.153690, 35.566765, 30.938227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334503, 35.440914, 31.033455>,  <39.635857, 35.231163, 31.192167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334503, 35.440914, 31.033455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606901, -0.322184, 0.726546,
		0.253150, 0.788175, 0.560976,
		-0.753383, 0.524382, -0.396783,
		39.108490, 35.598228, 30.914419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359982, 35.676182, 31.663008>,  <39.635857, 35.231163, 31.192167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359982, 35.676182, 31.663008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079769, 35.578175, 31.394911>,  <38.911644, 35.519371, 31.234053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079769, 35.578175, 31.394911>,  <39.359982, 35.676182, 31.663008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079769, 35.578175, 31.394911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636501, -0.210167, 0.742089,
		-0.322687, 0.946466, -0.008724,
		-0.700529, -0.245015, -0.670244,
		38.869610, 35.504669, 31.193838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734974, 36.120373, 31.770363>,  <39.359982, 35.676182, 31.663008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734974, 36.120373, 31.770363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623257, 35.783684, 31.585541>,  <38.556225, 35.581669, 31.474648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.623257, 35.783684, 31.585541>,  <38.734974, 36.120373, 31.770363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623257, 35.783684, 31.585541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708915, -0.143806, 0.690478,
		-0.647638, 0.520405, -0.556546,
		-0.279294, -0.841724, -0.462057,
		38.539467, 35.531166, 31.446924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953396, 36.114151, 31.948072>,  <38.734974, 36.120373, 31.770363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953396, 36.114151, 31.948072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.042286, 35.749371, 31.810108>,  <38.095619, 35.530502, 31.727329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.042286, 35.749371, 31.810108>,  <37.953396, 36.114151, 31.948072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042286, 35.749371, 31.810108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665162, -0.400454, 0.630236,
		-0.712864, 0.089365, -0.695586,
		0.222229, -0.911949, -0.344911,
		38.108955, 35.475784, 31.706635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337421, 35.855484, 31.858379>,  <37.953396, 36.114151, 31.948072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337421, 35.855484, 31.858379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594597, 35.550423, 31.886646>,  <37.748901, 35.367386, 31.903606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594597, 35.550423, 31.886646>,  <37.337421, 35.855484, 31.858379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594597, 35.550423, 31.886646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546731, -0.392376, 0.739680,
		-0.536389, -0.514205, -0.669239,
		0.642940, -0.762650, 0.070666,
		37.787479, 35.321629, 31.907846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902416, 35.207146, 31.889923>,  <37.337421, 35.855484, 31.858379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902416, 35.207146, 31.889923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259106, 35.115829, 32.046238>,  <37.473118, 35.061039, 32.140026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259106, 35.115829, 32.046238>,  <36.902416, 35.207146, 31.889923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259106, 35.115829, 32.046238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450436, -0.363665, 0.815387,
		-0.044031, -0.903123, -0.427119,
		0.891722, -0.228292, 0.390787,
		37.526623, 35.047340, 32.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965839, 34.462551, 32.001892>,  <36.902416, 35.207146, 31.889923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965839, 34.462551, 32.001892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252697, 34.597408, 32.245872>,  <37.424812, 34.678322, 32.392262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.252697, 34.597408, 32.245872>,  <36.965839, 34.462551, 32.001892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252697, 34.597408, 32.245872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513067, -0.336917, 0.789461,
		0.471665, -0.879102, -0.068640,
		0.717143, 0.337144, 0.609950,
		37.467838, 34.698551, 32.428856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960979, 34.032112, 32.469257>,  <36.965839, 34.462551, 32.001892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960979, 34.032112, 32.469257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135094, 34.346924, 32.644123>,  <37.239563, 34.535812, 32.749043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.135094, 34.346924, 32.644123>,  <36.960979, 34.032112, 32.469257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135094, 34.346924, 32.644123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548096, -0.153564, 0.822198,
		0.714225, -0.597499, 0.364522,
		0.435285, 0.787028, 0.437166,
		37.265678, 34.583031, 32.775272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295685, 33.749874, 33.127365>,  <36.960979, 34.032112, 32.469257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295685, 33.749874, 33.127365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.231350, 34.142494, 33.168736>,  <37.192749, 34.378067, 33.193558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.231350, 34.142494, 33.168736>,  <37.295685, 33.749874, 33.127365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231350, 34.142494, 33.168736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326612, -0.151817, 0.932886,
		0.931373, 0.116266, 0.345003,
		-0.160840, 0.981546, 0.103425,
		37.183098, 34.436958, 33.199764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493629, 33.989529, 33.741627>,  <37.295685, 33.749874, 33.127365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493629, 33.989529, 33.741627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254322, 34.297714, 33.653576>,  <37.110737, 34.482624, 33.600746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254322, 34.297714, 33.653576>,  <37.493629, 33.989529, 33.741627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254322, 34.297714, 33.653576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270675, 0.064249, 0.960524,
		0.754193, 0.634237, 0.170108,
		-0.598271, 0.770465, -0.220128,
		37.074841, 34.528854, 33.587536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575970, 34.471523, 34.266846>,  <37.493629, 33.989529, 33.741627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575970, 34.471523, 34.266846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238983, 34.593166, 34.088959>,  <37.036793, 34.666153, 33.982227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238983, 34.593166, 34.088959>,  <37.575970, 34.471523, 34.266846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238983, 34.593166, 34.088959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389650, 0.226115, 0.892773,
		0.372053, 0.925415, -0.072000,
		-0.842466, 0.304104, -0.444715,
		36.986244, 34.684399, 33.955544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397327, 35.098824, 34.620934>,  <37.575970, 34.471523, 34.266846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397327, 35.098824, 34.620934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.056484, 34.970242, 34.455727>,  <36.851978, 34.893093, 34.356602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.056484, 34.970242, 34.455727>,  <37.397327, 35.098824, 34.620934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056484, 34.970242, 34.455727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454831, 0.064403, 0.888246,
		-0.258931, 0.944733, -0.201086,
		-0.852105, -0.321454, -0.413018,
		36.800854, 34.873806, 34.331821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.918720, 37.785854, 28.294834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677994, 37.526550, 28.108257>,  <40.533558, 37.370968, 27.996311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677994, 37.526550, 28.108257>,  <40.918720, 37.785854, 28.294834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677994, 37.526550, 28.108257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449804, -0.207470, 0.868696,
		-0.659917, 0.732605, -0.166732,
		-0.601819, -0.648263, -0.466442,
		40.497448, 37.332069, 27.968325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349972, 37.889015, 28.684752>,  <40.918720, 37.785854, 28.294834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349972, 37.889015, 28.684752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259586, 37.566456, 28.466150>,  <40.205353, 37.372921, 28.334990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259586, 37.566456, 28.466150>,  <40.349972, 37.889015, 28.684752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259586, 37.566456, 28.466150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629516, -0.307250, 0.713657,
		-0.743403, 0.505293, -0.438212,
		-0.225965, -0.806397, -0.546501,
		40.191795, 37.324535, 28.302200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578815, 37.864185, 28.599218>,  <40.349972, 37.889015, 28.684752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578815, 37.864185, 28.599218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753128, 37.504822, 28.577492>,  <39.857716, 37.289204, 28.564455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753128, 37.504822, 28.577492>,  <39.578815, 37.864185, 28.599218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753128, 37.504822, 28.577492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608350, -0.338490, 0.717869,
		-0.663326, -0.279793, -0.694056,
		0.435785, -0.898410, -0.054317,
		39.883865, 37.235298, 28.561197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995907, 37.396339, 28.697128>,  <39.578815, 37.864185, 28.599218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995907, 37.396339, 28.697128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315464, 37.163433, 28.757429>,  <39.507198, 37.023689, 28.793610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315464, 37.163433, 28.757429>,  <38.995907, 37.396339, 28.697128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315464, 37.163433, 28.757429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468368, -0.445000, 0.763287,
		-0.377354, -0.680395, -0.628225,
		0.798896, -0.582270, 0.150753,
		39.555134, 36.988750, 28.802654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740074, 36.791122, 28.980143>,  <38.995907, 37.396339, 28.697128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740074, 36.791122, 28.980143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125954, 36.770260, 29.083403>,  <39.357479, 36.757744, 29.145359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125954, 36.770260, 29.083403>,  <38.740074, 36.791122, 28.980143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125954, 36.770260, 29.083403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249428, -0.495596, 0.831967,
		0.084548, -0.866986, -0.491108,
		0.964695, -0.052155, 0.258152,
		39.415363, 36.754612, 29.160849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968712, 36.104301, 29.002174>,  <38.740074, 36.791122, 28.980143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968712, 36.104301, 29.002174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222477, 36.299580, 29.241901>,  <39.374737, 36.416744, 29.385738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222477, 36.299580, 29.241901>,  <38.968712, 36.104301, 29.002174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222477, 36.299580, 29.241901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216832, -0.631803, 0.744183,
		0.741957, -0.602073, -0.294970,
		0.634416, 0.488193, 0.599319,
		39.412804, 36.446037, 29.421698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466171, 35.588516, 29.274086>,  <38.968712, 36.104301, 29.002174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466171, 35.588516, 29.274086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452343, 35.898659, 29.526318>,  <39.444046, 36.084743, 29.677656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452343, 35.898659, 29.526318>,  <39.466171, 35.588516, 29.274086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452343, 35.898659, 29.526318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288116, -0.611900, 0.736592,
		0.956971, -0.156214, 0.244548,
		-0.034573, 0.775356, 0.630578,
		39.441971, 36.131264, 29.715490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752522, 35.350266, 29.829741>,  <39.466171, 35.588516, 29.274086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752522, 35.350266, 29.829741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560425, 35.667213, 29.980215>,  <39.445168, 35.857384, 30.070499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560425, 35.667213, 29.980215>,  <39.752522, 35.350266, 29.829741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560425, 35.667213, 29.980215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275908, -0.543573, 0.792719,
		0.832614, 0.276901, 0.479667,
		-0.480239, 0.792373, 0.376187,
		39.416351, 35.904926, 30.093071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903595, 35.311699, 30.524534>,  <39.752522, 35.350266, 29.829741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903595, 35.311699, 30.524534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581669, 35.545300, 30.482170>,  <39.388512, 35.685459, 30.456751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581669, 35.545300, 30.482170>,  <39.903595, 35.311699, 30.524534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581669, 35.545300, 30.482170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450886, -0.485541, 0.748967,
		0.385974, 0.650533, 0.654088,
		-0.804814, 0.584001, -0.105910,
		39.340225, 35.720501, 30.450397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345169, 35.043900, 31.029926>,  <39.903595, 35.311699, 30.524534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345169, 35.043900, 31.029926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510788, 34.682343, 30.986952>,  <40.610161, 34.465408, 30.961166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510788, 34.682343, 30.986952>,  <40.345169, 35.043900, 31.029926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510788, 34.682343, 30.986952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267773, 0.233759, -0.934695,
		0.869977, 0.358240, 0.338826,
		0.414049, -0.903892, -0.107438,
		40.635002, 34.411175, 30.954720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993557, 35.181137, 30.780685>,  <40.345169, 35.043900, 31.029926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993557, 35.181137, 30.780685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920380, 34.797668, 30.693531>,  <40.876472, 34.567585, 30.641239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920380, 34.797668, 30.693531>,  <40.993557, 35.181137, 30.780685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920380, 34.797668, 30.693531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446336, 0.116477, -0.887253,
		0.875965, -0.259570, 0.406582,
		-0.182946, -0.958674, -0.217886,
		40.865498, 34.510067, 30.628166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594604, 34.862293, 30.369078>,  <40.993557, 35.181137, 30.780685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594604, 34.862293, 30.369078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302963, 34.610130, 30.262505>,  <41.127979, 34.458832, 30.198561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302963, 34.610130, 30.262505>,  <41.594604, 34.862293, 30.369078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302963, 34.610130, 30.262505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359289, -0.021228, -0.932985,
		0.582507, -0.775972, 0.241977,
		-0.729107, -0.630410, -0.266433,
		41.084232, 34.421009, 30.182575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883251, 34.362988, 29.797060>,  <41.594604, 34.862293, 30.369078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883251, 34.362988, 29.797060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495186, 34.271133, 29.765930>,  <41.262348, 34.216019, 29.747252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495186, 34.271133, 29.765930>,  <41.883251, 34.362988, 29.797060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495186, 34.271133, 29.765930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128352, -0.214079, -0.968347,
		0.205711, -0.949440, 0.237166,
		-0.970159, -0.229640, -0.077824,
		41.204140, 34.202240, 29.742582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943905, 33.755249, 29.414152>,  <41.883251, 34.362988, 29.797060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943905, 33.755249, 29.414152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569557, 33.893753, 29.388102>,  <41.344948, 33.976856, 29.372471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569557, 33.893753, 29.388102>,  <41.943905, 33.755249, 29.414152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569557, 33.893753, 29.388102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039419, -0.286588, -0.957242,
		-0.350123, -0.893291, 0.281860,
		-0.935874, 0.346264, -0.065128,
		41.288795, 33.997631, 29.368563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493946, 33.254982, 29.024296>,  <41.943905, 33.755249, 29.414152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493946, 33.254982, 29.024296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275257, 33.588993, 28.999582>,  <41.144043, 33.789402, 28.984755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275257, 33.588993, 28.999582>,  <41.493946, 33.254982, 29.024296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275257, 33.588993, 28.999582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222824, -0.216225, -0.950577,
		-0.807119, -0.505937, 0.304280,
		-0.546724, 0.835030, -0.061784,
		41.111240, 33.839500, 28.981047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768398, 33.113537, 28.827732>,  <41.493946, 33.254982, 29.024296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768398, 33.113537, 28.827732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851887, 33.490124, 28.721851>,  <40.901981, 33.716076, 28.658323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851887, 33.490124, 28.721851>,  <40.768398, 33.113537, 28.827732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851887, 33.490124, 28.721851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211161, -0.220894, -0.952164,
		-0.954907, 0.254631, 0.152697,
		0.208721, 0.941472, -0.264701,
		40.914501, 33.772564, 28.642441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339462, 33.198505, 28.175430>,  <40.768398, 33.113537, 28.827732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339462, 33.198505, 28.175430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610622, 33.492531, 28.179836>,  <40.773319, 33.668945, 28.182480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610622, 33.492531, 28.179836>,  <40.339462, 33.198505, 28.175430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610622, 33.492531, 28.179836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002207, 0.012949, -0.999914,
		-0.735147, 0.677870, 0.007156,
		0.677904, 0.735068, 0.011015,
		40.813995, 33.713051, 28.183140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170631, 33.611897, 27.658260>,  <40.339462, 33.198505, 28.175430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170631, 33.611897, 27.658260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554638, 33.720642, 27.684958>,  <40.785042, 33.785889, 27.700975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554638, 33.720642, 27.684958>,  <40.170631, 33.611897, 27.658260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554638, 33.720642, 27.684958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043758, 0.089751, -0.995002,
		-0.276498, 0.958140, 0.074266,
		0.960018, 0.271867, 0.066742,
		40.842644, 33.802200, 27.704981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309582, 34.165001, 27.201050>,  <40.170631, 33.611897, 27.658260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309582, 34.165001, 27.201050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683281, 34.041412, 27.272293>,  <40.907501, 33.967258, 27.315039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683281, 34.041412, 27.272293>,  <40.309582, 34.165001, 27.201050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683281, 34.041412, 27.272293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248879, 0.207144, -0.946124,
		0.255429, 0.928240, 0.270419,
		0.934246, -0.308969, 0.178108,
		40.963554, 33.948723, 27.325726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769524, 34.745296, 27.098478>,  <40.309582, 34.165001, 27.201050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769524, 34.745296, 27.098478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006840, 34.423588, 27.084864>,  <41.149227, 34.230564, 27.076694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006840, 34.423588, 27.084864>,  <40.769524, 34.745296, 27.098478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006840, 34.423588, 27.084864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324806, 0.277857, -0.904045,
		0.736553, 0.525304, 0.426081,
		0.593288, -0.804270, -0.034035,
		41.184826, 34.182308, 27.074654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505951, 35.062077, 26.833179>,  <40.769524, 34.745296, 27.098478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505951, 35.062077, 26.833179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467484, 34.671005, 26.758461>,  <41.444401, 34.436363, 26.713629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467484, 34.671005, 26.758461>,  <41.505951, 35.062077, 26.833179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467484, 34.671005, 26.758461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366760, 0.139656, -0.919773,
		0.925331, -0.156967, 0.345142,
		-0.096173, -0.977680, -0.186797,
		41.438633, 34.377701, 26.702421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133179, 34.811733, 26.499752>,  <41.505951, 35.062077, 26.833179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133179, 34.811733, 26.499752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866409, 34.537979, 26.381882>,  <41.706348, 34.373726, 26.311159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866409, 34.537979, 26.381882>,  <42.133179, 34.811733, 26.499752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866409, 34.537979, 26.381882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434767, -0.036240, -0.899814,
		0.605141, -0.728218, 0.321717,
		-0.666920, -0.684386, -0.294675,
		41.666332, 34.332664, 26.293480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492687, 34.218651, 26.081408>,  <42.133179, 34.811733, 26.499752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492687, 34.218651, 26.081408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104084, 34.207310, 25.987282>,  <41.870922, 34.200504, 25.930807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104084, 34.207310, 25.987282>,  <42.492687, 34.218651, 26.081408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104084, 34.207310, 25.987282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236752, -0.162868, -0.957822,
		-0.011171, -0.986241, 0.164939,
		-0.971506, -0.028350, -0.235314,
		41.812634, 34.198807, 25.916687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.356564, 34.564873, 24.134827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710106, 34.651402, 24.300718>,  <37.922234, 34.703320, 24.400253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710106, 34.651402, 24.300718>,  <37.356564, 34.564873, 24.134827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710106, 34.651402, 24.300718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211920, -0.605229, 0.767325,
		0.416996, -0.766096, -0.489093,
		0.883857, 0.216323, 0.414729,
		37.975262, 34.716297, 24.425137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727444, 33.904621, 24.387453>,  <37.356564, 34.564873, 24.134827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727444, 33.904621, 24.387453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883003, 34.206226, 24.599197>,  <37.976337, 34.387192, 24.726244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883003, 34.206226, 24.599197>,  <37.727444, 33.904621, 24.387453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883003, 34.206226, 24.599197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144361, -0.517618, 0.843345,
		0.909902, -0.404391, -0.092448,
		0.388894, 0.754016, 0.529360,
		37.999672, 34.432430, 24.758005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113880, 33.594543, 24.839521>,  <37.727444, 33.904621, 24.387453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113880, 33.594543, 24.839521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078869, 33.952400, 25.014771>,  <38.057861, 34.167114, 25.119919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078869, 33.952400, 25.014771>,  <38.113880, 33.594543, 24.839521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078869, 33.952400, 25.014771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036183, -0.442373, 0.896101,
		0.995505, 0.062582, 0.071091,
		-0.087528, 0.894645, 0.438120,
		38.052608, 34.220795, 25.146206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524406, 33.594154, 25.399363>,  <38.113880, 33.594543, 24.839521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524406, 33.594154, 25.399363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267998, 33.889820, 25.482044>,  <38.114151, 34.067219, 25.531654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267998, 33.889820, 25.482044>,  <38.524406, 33.594154, 25.399363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267998, 33.889820, 25.482044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055891, -0.313556, 0.947923,
		0.765484, 0.596087, 0.242310,
		-0.641022, 0.739164, 0.206706,
		38.075691, 34.111568, 25.544056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853985, 33.862411, 26.030333>,  <38.524406, 33.594154, 25.399363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853985, 33.862411, 26.030333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479202, 34.000565, 26.009068>,  <38.254333, 34.083454, 25.996309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.479202, 34.000565, 26.009068>,  <38.853985, 33.862411, 26.030333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479202, 34.000565, 26.009068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191944, -0.381536, 0.904205,
		0.292012, 0.857405, 0.423776,
		-0.936956, 0.345380, -0.053161,
		38.198116, 34.104179, 25.993120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589779, 34.251366, 26.661358>,  <38.853985, 33.862411, 26.030333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589779, 34.251366, 26.661358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249493, 34.144913, 26.480047>,  <38.045322, 34.081039, 26.371262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.249493, 34.144913, 26.480047>,  <38.589779, 34.251366, 26.661358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249493, 34.144913, 26.480047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371938, -0.304557, 0.876873,
		-0.371412, 0.914559, 0.160106,
		-0.850714, -0.266132, -0.453276,
		37.994278, 34.065075, 26.344065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093964, 34.590260, 27.044075>,  <38.589779, 34.251366, 26.661358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093964, 34.590260, 27.044075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895416, 34.290161, 26.869377>,  <37.776287, 34.110100, 26.764559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.895416, 34.290161, 26.869377>,  <38.093964, 34.590260, 27.044075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895416, 34.290161, 26.869377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518483, -0.147303, 0.842305,
		-0.696272, 0.644538, -0.315874,
		-0.496368, -0.750249, -0.436745,
		37.746506, 34.065086, 26.738354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530304, 34.487865, 27.450052>,  <38.093964, 34.590260, 27.044075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530304, 34.487865, 27.450052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481041, 34.156815, 27.231014>,  <37.451485, 33.958183, 27.099592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.481041, 34.156815, 27.231014>,  <37.530304, 34.487865, 27.450052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481041, 34.156815, 27.231014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625094, -0.363877, 0.690544,
		-0.770773, 0.427341, -0.472534,
		-0.123154, -0.827631, -0.547595,
		37.444096, 33.908524, 27.066736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874321, 34.366573, 27.254915>,  <37.530304, 34.487865, 27.450052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874321, 34.366573, 27.254915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033321, 33.999969, 27.237036>,  <37.128723, 33.780006, 27.226309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033321, 33.999969, 27.237036>,  <36.874321, 34.366573, 27.254915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033321, 33.999969, 27.237036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636475, -0.310480, 0.706046,
		-0.660977, -0.252205, -0.706754,
		0.397502, -0.916512, -0.044698,
		37.152573, 33.725018, 27.223627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292912, 33.870815, 27.184141>,  <36.874321, 34.366573, 27.254915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292912, 33.870815, 27.184141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595795, 33.654800, 27.331110>,  <36.777523, 33.525192, 27.419291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595795, 33.654800, 27.331110>,  <36.292912, 33.870815, 27.184141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595795, 33.654800, 27.331110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611889, -0.389667, 0.688296,
		-0.228531, -0.746005, -0.625500,
		0.757209, -0.540033, 0.367421,
		36.822956, 33.492790, 27.441336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032097, 33.187664, 27.297934>,  <36.292912, 33.870815, 27.184141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032097, 33.187664, 27.297934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.372807, 33.143948, 27.502888>,  <36.577232, 33.117718, 27.625860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.372807, 33.143948, 27.502888>,  <36.032097, 33.187664, 27.297934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372807, 33.143948, 27.502888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465510, -0.606602, 0.644464,
		0.240380, -0.787457, -0.567563,
		0.851773, -0.109290, 0.512384,
		36.628338, 33.111160, 27.656603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148075, 32.437981, 27.407557>,  <36.032097, 33.187664, 27.297934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148075, 32.437981, 27.407557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369019, 32.619961, 27.686960>,  <36.501587, 32.729149, 27.854603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.369019, 32.619961, 27.686960>,  <36.148075, 32.437981, 27.407557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369019, 32.619961, 27.686960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447895, -0.544736, 0.708980,
		0.703054, -0.704473, -0.097122,
		0.552362, 0.454951, 0.698509,
		36.534729, 32.756447, 27.896513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389729, 31.819868, 27.795811>,  <36.148075, 32.437981, 27.407557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389729, 31.819868, 27.795811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409931, 32.156162, 28.011444>,  <36.422050, 32.357941, 28.140823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.409931, 32.156162, 28.011444>,  <36.389729, 31.819868, 27.795811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409931, 32.156162, 28.011444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482110, -0.452194, 0.750394,
		0.874654, -0.297795, 0.382490,
		0.050503, 0.840737, 0.539083,
		36.425083, 32.408382, 28.173168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752205, 31.661747, 28.430721>,  <36.389729, 31.819868, 27.795811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752205, 31.661747, 28.430721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559090, 31.990681, 28.551174>,  <36.443222, 32.188042, 28.623446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.559090, 31.990681, 28.551174>,  <36.752205, 31.661747, 28.430721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559090, 31.990681, 28.551174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337129, -0.491883, 0.802743,
		0.808246, 0.286034, 0.514707,
		-0.482787, 0.822336, 0.301132,
		36.414253, 32.237381, 28.641514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550045, 31.484173, 28.413748>,  <36.752205, 31.661747, 28.430721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550045, 31.484173, 28.413748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705311, 31.115696, 28.424570>,  <37.798470, 30.894609, 28.431063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705311, 31.115696, 28.424570>,  <37.550045, 31.484173, 28.413748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705311, 31.115696, 28.424570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159130, 0.038079, -0.986523,
		0.907748, 0.387239, 0.161370,
		0.388165, -0.921193, 0.027055,
		37.821762, 30.839338, 28.432686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141354, 31.625450, 27.988834>,  <37.550045, 31.484173, 28.413748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141354, 31.625450, 27.988834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083378, 31.229675, 27.987452>,  <38.048592, 30.992210, 27.986622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083378, 31.229675, 27.987452>,  <38.141354, 31.625450, 27.988834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083378, 31.229675, 27.987452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117321, -0.013717, -0.992999,
		0.982461, -0.144326, 0.118070,
		-0.144935, -0.989435, -0.003456,
		38.039898, 30.932844, 27.986414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669594, 31.361542, 27.686190>,  <38.141354, 31.625450, 27.988834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669594, 31.361542, 27.686190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377998, 31.092030, 27.637857>,  <38.203041, 30.930323, 27.608858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377998, 31.092030, 27.637857>,  <38.669594, 31.361542, 27.686190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377998, 31.092030, 27.637857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201097, -0.042069, -0.978668,
		0.654325, -0.737732, 0.166163,
		-0.728985, -0.673782, -0.120829,
		38.159302, 30.889894, 27.601608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009308, 30.740540, 27.338743>,  <38.669594, 31.361542, 27.686190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009308, 30.740540, 27.338743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616268, 30.685303, 27.289068>,  <38.380444, 30.652161, 27.259262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.616268, 30.685303, 27.289068>,  <39.009308, 30.740540, 27.338743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616268, 30.685303, 27.289068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135598, -0.076507, -0.987805,
		0.126906, -0.987460, 0.093901,
		-0.982603, -0.138091, -0.124189,
		38.321487, 30.643875, 27.251812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919525, 30.124155, 26.902349>,  <39.009308, 30.740540, 27.338743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919525, 30.124155, 26.902349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600098, 30.363268, 26.874216>,  <38.408443, 30.506735, 26.857336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.600098, 30.363268, 26.874216>,  <38.919525, 30.124155, 26.902349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600098, 30.363268, 26.874216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138221, 0.068399, -0.988037,
		-0.585821, -0.798735, -0.137247,
		-0.798567, 0.597783, -0.070332,
		38.360527, 30.542603, 26.853117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549477, 29.827778, 26.370531>,  <38.919525, 30.124155, 26.902349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549477, 29.827778, 26.370531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402351, 30.198708, 26.398203>,  <38.314075, 30.421265, 26.414806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402351, 30.198708, 26.398203>,  <38.549477, 29.827778, 26.370531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402351, 30.198708, 26.398203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004843, 0.076305, -0.997073,
		-0.929889, -0.366398, -0.032556,
		-0.367809, 0.927324, 0.069181,
		38.292007, 30.476906, 26.418957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149403, 29.831285, 25.819906>,  <38.549477, 29.827778, 26.370531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149403, 29.831285, 25.819906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.215469, 30.218609, 25.894844>,  <38.255108, 30.451002, 25.939806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.215469, 30.218609, 25.894844>,  <38.149403, 29.831285, 25.819906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215469, 30.218609, 25.894844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070424, 0.201048, -0.977047,
		-0.983748, 0.148182, 0.101399,
		0.165167, 0.968309, 0.187345,
		38.265018, 30.509102, 25.951048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737438, 30.279350, 25.350182>,  <38.149403, 29.831285, 25.819906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737438, 30.279350, 25.350182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026852, 30.521465, 25.482922>,  <38.200500, 30.666735, 25.562565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.026852, 30.521465, 25.482922>,  <37.737438, 30.279350, 25.350182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026852, 30.521465, 25.482922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029196, 0.453478, -0.890789,
		-0.689671, 0.654206, 0.310435,
		0.723534, 0.605288, 0.331850,
		38.243912, 30.703053, 25.582478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607849, 31.005230, 25.176022>,  <37.737438, 30.279350, 25.350182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607849, 31.005230, 25.176022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001495, 30.949623, 25.220190>,  <38.237682, 30.916258, 25.246691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.001495, 30.949623, 25.220190>,  <37.607849, 31.005230, 25.176022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001495, 30.949623, 25.220190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148093, 0.299789, -0.942441,
		0.097914, 0.943822, 0.315614,
		0.984114, -0.139019, 0.110420,
		38.296730, 30.907917, 25.253317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740765, 31.593857, 24.807890>,  <37.607849, 31.005230, 25.176022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740765, 31.593857, 24.807890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092579, 31.416296, 24.876436>,  <38.303669, 31.309759, 24.917564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.092579, 31.416296, 24.876436>,  <37.740765, 31.593857, 24.807890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092579, 31.416296, 24.876436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401357, 0.498639, -0.768291,
		0.255597, 0.744519, 0.616735,
		0.879535, -0.443904, 0.171367,
		38.356438, 31.283125, 24.927847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258736, 32.121696, 24.642307>,  <37.740765, 31.593857, 24.807890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258736, 32.121696, 24.642307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461227, 31.777143, 24.625570>,  <38.582722, 31.570412, 24.615528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461227, 31.777143, 24.625570>,  <38.258736, 32.121696, 24.642307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461227, 31.777143, 24.625570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630398, 0.402713, -0.663642,
		0.588502, 0.309575, 0.746879,
		0.506225, -0.861386, -0.041842,
		38.613094, 31.518728, 24.613018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026325, 32.280697, 24.775404>,  <38.258736, 32.121696, 24.642307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026325, 32.280697, 24.775404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.996937, 31.938772, 24.569920>,  <38.979305, 31.733618, 24.446629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.996937, 31.938772, 24.569920>,  <39.026325, 32.280697, 24.775404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996937, 31.938772, 24.569920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719749, 0.311107, -0.620623,
		0.690335, -0.415340, 0.592393,
		-0.073472, -0.854813, -0.513709,
		38.974895, 31.682329, 24.415808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677643, 32.249710, 24.584200>,  <39.026325, 32.280697, 24.775404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677643, 32.249710, 24.584200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.501698, 31.978010, 24.349207>,  <39.396130, 31.814989, 24.208212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.501698, 31.978010, 24.349207>,  <39.677643, 32.249710, 24.584200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501698, 31.978010, 24.349207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551165, 0.312294, -0.773750,
		0.709038, -0.664146, 0.237013,
		-0.439866, -0.679251, -0.587482,
		39.369740, 31.774235, 24.172962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178463, 31.860609, 24.237106>,  <39.677643, 32.249710, 24.584200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178463, 31.860609, 24.237106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844749, 31.874704, 24.017025>,  <39.644520, 31.883162, 23.884975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.844749, 31.874704, 24.017025>,  <40.178463, 31.860609, 24.237106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844749, 31.874704, 24.017025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506498, 0.443176, -0.739632,
		0.217772, -0.895742, -0.387585,
		-0.834287, 0.035240, -0.550203,
		39.594463, 31.885277, 23.851965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665802, 31.430214, 24.436506>,  <40.178463, 31.860609, 24.237106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665802, 31.430214, 24.436506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.052322, 31.479950, 24.526657>,  <41.284237, 31.509792, 24.580748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.052322, 31.479950, 24.526657>,  <40.665802, 31.430214, 24.436506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052322, 31.479950, 24.526657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196496, -0.209242, 0.957918,
		0.166267, -0.969926, -0.177759,
		0.966304, 0.124342, 0.225376,
		41.342213, 31.517252, 24.594271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836086, 30.888611, 24.863108>,  <40.665802, 31.430214, 24.436506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836086, 30.888611, 24.863108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.129311, 31.148746, 24.942781>,  <41.305244, 31.304829, 24.990585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.129311, 31.148746, 24.942781>,  <40.836086, 30.888611, 24.863108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129311, 31.148746, 24.942781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089831, -0.197713, 0.976135,
		0.674202, -0.733462, -0.086516,
		0.733063, 0.650340, 0.199186,
		41.349228, 31.343849, 25.002537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223278, 30.587128, 25.425709>,  <40.836086, 30.888611, 24.863108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223278, 30.587128, 25.425709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.328709, 30.972746, 25.439217>,  <41.391968, 31.204117, 25.447321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.328709, 30.972746, 25.439217>,  <41.223278, 30.587128, 25.425709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328709, 30.972746, 25.439217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024965, -0.028180, 0.999291,
		0.964316, -0.264233, 0.016640,
		0.263576, 0.964047, 0.033771,
		41.407780, 31.261961, 25.449348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883553, 30.646652, 25.734261>,  <41.223278, 30.587128, 25.425709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883553, 30.646652, 25.734261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.677612, 30.985689, 25.785662>,  <41.554047, 31.189112, 25.816504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.677612, 30.985689, 25.785662>,  <41.883553, 30.646652, 25.734261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677612, 30.985689, 25.785662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080670, -0.101331, 0.991577,
		0.853473, 0.520885, -0.016204,
		-0.514855, 0.847591, 0.128504,
		41.523155, 31.239967, 25.824213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241009, 31.023016, 26.207891>,  <41.883553, 30.646652, 25.734261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241009, 31.023016, 26.207891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.882778, 31.199459, 26.231089>,  <41.667839, 31.305325, 26.245007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.882778, 31.199459, 26.231089>,  <42.241009, 31.023016, 26.207891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882778, 31.199459, 26.231089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000766, -0.128819, 0.991668,
		0.444904, 0.888160, 0.115029,
		-0.895578, 0.441109, 0.057993,
		41.614105, 31.331791, 26.248486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274429, 31.513182, 26.587820>,  <42.241009, 31.023016, 26.207891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274429, 31.513182, 26.587820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.878685, 31.459452, 26.610188>,  <41.641239, 31.427214, 26.623608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.878685, 31.459452, 26.610188>,  <42.274429, 31.513182, 26.587820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878685, 31.459452, 26.610188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083042, -0.205704, 0.975085,
		-0.119475, 0.969352, 0.214669,
		-0.989358, -0.134325, 0.055920,
		41.581879, 31.419153, 26.626965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148266, 31.858036, 27.127121>,  <42.274429, 31.513182, 26.587820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148266, 31.858036, 27.127121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.809113, 31.648561, 27.094027>,  <41.605621, 31.522877, 27.074171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.809113, 31.648561, 27.094027>,  <42.148266, 31.858036, 27.127121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809113, 31.648561, 27.094027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035055, -0.100334, 0.994336,
		-0.529020, 0.845983, 0.066714,
		-0.847885, -0.523685, -0.082734,
		41.554749, 31.491455, 27.069206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607914, 32.204525, 27.604370>,  <42.148266, 31.858036, 27.127121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607914, 32.204525, 27.604370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.484627, 31.829540, 27.539673>,  <41.410656, 31.604548, 27.500854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.484627, 31.829540, 27.539673>,  <41.607914, 32.204525, 27.604370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484627, 31.829540, 27.539673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141677, -0.122893, 0.982255,
		-0.940708, 0.325660, -0.094940,
		-0.308214, -0.937466, -0.161745,
		41.392162, 31.548300, 27.491150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126194, 32.091633, 28.145485>,  <41.607914, 32.204525, 27.604370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126194, 32.091633, 28.145485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.215759, 31.719891, 28.028072>,  <41.269497, 31.496845, 27.957624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.215759, 31.719891, 28.028072>,  <41.126194, 32.091633, 28.145485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215759, 31.719891, 28.028072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346526, -0.357414, 0.867280,
		-0.910924, -0.092480, -0.402076,
		0.223913, -0.929356, -0.293530,
		41.282932, 31.441084, 27.940014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588158, 31.763458, 28.192467>,  <41.126194, 32.091633, 28.145485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588158, 31.763458, 28.192467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.871361, 31.481558, 28.210567>,  <41.041283, 31.312418, 28.221428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.871361, 31.481558, 28.210567>,  <40.588158, 31.763458, 28.192467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871361, 31.481558, 28.210567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355810, -0.300640, 0.884881,
		-0.610017, -0.642606, -0.463614,
		0.708010, -0.704751, 0.045250,
		41.083763, 31.270132, 28.224142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347832, 31.216200, 28.372278>,  <40.588158, 31.763458, 28.192467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347832, 31.216200, 28.372278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.720509, 31.107136, 28.468283>,  <40.944115, 31.041697, 28.525885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.720509, 31.107136, 28.468283>,  <40.347832, 31.216200, 28.372278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720509, 31.107136, 28.468283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319437, -0.300431, 0.898722,
		-0.172939, -0.914001, -0.367007,
		0.931693, -0.272660, 0.240009,
		41.000015, 31.025337, 28.540285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178417, 30.731236, 28.753729>,  <40.347832, 31.216200, 28.372278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178417, 30.731236, 28.753729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.567421, 30.769077, 28.838840>,  <40.800823, 30.791782, 28.889908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.567421, 30.769077, 28.838840>,  <40.178417, 30.731236, 28.753729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567421, 30.769077, 28.838840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124504, -0.560923, 0.818452,
		0.196783, -0.822444, -0.533724,
		0.972510, 0.094607, 0.212778,
		40.859173, 30.797459, 28.902674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400768, 30.090517, 28.980011>,  <40.178417, 30.731236, 28.753729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400768, 30.090517, 28.980011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.656353, 30.359791, 29.128897>,  <40.809704, 30.521355, 29.218229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.656353, 30.359791, 29.128897>,  <40.400768, 30.090517, 28.980011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656353, 30.359791, 29.128897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008828, -0.477429, 0.878626,
		0.769185, -0.564697, -0.299118,
		0.638965, 0.673185, 0.372217,
		40.848042, 30.561747, 29.240562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860302, 29.706604, 29.449272>,  <40.400768, 30.090517, 28.980011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860302, 29.706604, 29.449272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884819, 30.078655, 29.594105>,  <40.899529, 30.301886, 29.681005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884819, 30.078655, 29.594105>,  <40.860302, 29.706604, 29.449272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884819, 30.078655, 29.594105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306243, -0.327744, 0.893756,
		0.949978, -0.165664, 0.264758,
		0.061290, 0.930129, 0.362083,
		40.903206, 30.357695, 29.702730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.393532, 33.535156, 25.594852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.065834, 33.754379, 25.527357>,  <41.869217, 33.885914, 25.486860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.065834, 33.754379, 25.527357>,  <42.393532, 33.535156, 25.594852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065834, 33.754379, 25.527357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112062, -0.135574, -0.984409,
		-0.562394, -0.825377, 0.049650,
		-0.819240, 0.548062, -0.168740,
		41.820061, 33.918797, 25.476736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036076, 33.160942, 25.006306>,  <42.393532, 33.535156, 25.594852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036076, 33.160942, 25.006306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866581, 33.522526, 25.029312>,  <41.764885, 33.739475, 25.043116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.866581, 33.522526, 25.029312>,  <42.036076, 33.160942, 25.006306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866581, 33.522526, 25.029312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206030, 0.158023, -0.965702,
		-0.882040, -0.397358, -0.253203,
		-0.423741, 0.903956, 0.057514,
		41.739460, 33.793713, 25.046566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455284, 33.288704, 24.447224>,  <42.036076, 33.160942, 25.006306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455284, 33.288704, 24.447224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614979, 33.645744, 24.531004>,  <41.710796, 33.859970, 24.581272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.614979, 33.645744, 24.531004>,  <41.455284, 33.288704, 24.447224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614979, 33.645744, 24.531004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038218, 0.212047, -0.976512,
		-0.916051, 0.397865, 0.050543,
		0.399237, 0.892603, 0.209452,
		41.734749, 33.913525, 24.593840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282871, 33.709888, 23.828815>,  <41.455284, 33.288704, 24.447224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282871, 33.709888, 23.828815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555660, 33.921734, 24.030577>,  <41.719334, 34.048840, 24.151632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555660, 33.921734, 24.030577>,  <41.282871, 33.709888, 23.828815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555660, 33.921734, 24.030577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255090, 0.474111, -0.842703,
		-0.685450, 0.703368, 0.188232,
		0.681973, 0.529615, 0.504401,
		41.760254, 34.080620, 24.181896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212902, 34.395760, 23.582666>,  <41.282871, 33.709888, 23.828815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212902, 34.395760, 23.582666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.578869, 34.365963, 23.741350>,  <41.798450, 34.348087, 23.836559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.578869, 34.365963, 23.741350>,  <41.212902, 34.395760, 23.582666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578869, 34.365963, 23.741350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358241, 0.602691, -0.713040,
		-0.185979, 0.794490, 0.578097,
		0.914918, -0.074487, 0.396707,
		41.853344, 34.343616, 23.860363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419094, 34.988613, 23.700920>,  <41.212902, 34.395760, 23.582666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419094, 34.988613, 23.700920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758492, 34.780540, 23.662004>,  <41.962132, 34.655697, 23.638655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.758492, 34.780540, 23.662004>,  <41.419094, 34.988613, 23.700920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758492, 34.780540, 23.662004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299527, 0.623619, -0.722068,
		0.436281, 0.583530, 0.684947,
		0.848494, -0.520185, -0.097291,
		42.013039, 34.624485, 23.632816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850220, 35.537209, 23.543661>,  <41.419094, 34.988613, 23.700920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850220, 35.537209, 23.543661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088707, 35.221333, 23.485804>,  <42.231800, 35.031807, 23.451090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.088707, 35.221333, 23.485804>,  <41.850220, 35.537209, 23.543661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088707, 35.221333, 23.485804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579099, 0.547814, -0.603776,
		0.556030, 0.276220, 0.783922,
		0.596218, -0.789685, -0.144642,
		42.267570, 34.984428, 23.442411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533302, 35.732815, 23.536266>,  <41.850220, 35.537209, 23.543661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533302, 35.732815, 23.536266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.539658, 35.384323, 23.340019>,  <42.543468, 35.175228, 23.222271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.539658, 35.384323, 23.340019>,  <42.533302, 35.732815, 23.536266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539658, 35.384323, 23.340019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476390, 0.438000, -0.762370,
		0.879090, -0.221616, 0.422003,
		0.015884, -0.871230, -0.490617,
		42.544422, 35.122955, 23.192835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264080, 35.576077, 23.280796>,  <42.533302, 35.732815, 23.536266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264080, 35.576077, 23.280796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.045841, 35.328400, 23.054903>,  <42.914898, 35.179794, 22.919367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.045841, 35.328400, 23.054903>,  <43.264080, 35.576077, 23.280796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045841, 35.328400, 23.054903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418617, 0.382411, -0.823724,
		0.726003, -0.685830, 0.050561,
		-0.545600, -0.619192, -0.564732,
		42.882160, 35.142643, 22.885483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738300, 35.227676, 22.698309>,  <43.264080, 35.576077, 23.280796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738300, 35.227676, 22.698309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.366653, 35.227356, 22.550392>,  <43.143665, 35.227161, 22.461643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.366653, 35.227356, 22.550392>,  <43.738300, 35.227676, 22.698309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366653, 35.227356, 22.550392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330087, 0.448984, -0.830334,
		0.166697, -0.893539, -0.416893,
		-0.929115, -0.000803, -0.369790,
		43.087917, 35.227116, 22.439455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821156, 34.950546, 22.100843>,  <43.738300, 35.227676, 22.698309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821156, 34.950546, 22.100843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462406, 35.120720, 22.052462>,  <43.247158, 35.222824, 22.023434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462406, 35.120720, 22.052462>,  <43.821156, 34.950546, 22.100843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462406, 35.120720, 22.052462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283538, 0.343153, -0.895462,
		-0.339454, -0.837409, -0.428390,
		-0.896871, 0.425433, -0.120952,
		43.193344, 35.248348, 22.016176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637760, 34.652798, 21.471270>,  <43.821156, 34.950546, 22.100843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637760, 34.652798, 21.471270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.421978, 34.980328, 21.549772>,  <43.292507, 35.176846, 21.596874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.421978, 34.980328, 21.549772>,  <43.637760, 34.652798, 21.471270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421978, 34.980328, 21.549772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299824, 0.404598, -0.863948,
		-0.786826, -0.407218, -0.463766,
		-0.539454, 0.818824, 0.196254,
		43.260143, 35.225975, 21.608648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303082, 34.940502, 20.904593>,  <43.637760, 34.652798, 21.471270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303082, 34.940502, 20.904593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.355225, 35.238159, 21.166662>,  <43.386509, 35.416756, 21.323904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.355225, 35.238159, 21.166662>,  <43.303082, 34.940502, 20.904593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355225, 35.238159, 21.166662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417992, 0.557969, -0.716905,
		-0.899049, 0.367312, -0.238312,
		0.130358, 0.744146, 0.655175,
		43.394333, 35.461403, 21.363214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911980, 34.584694, 20.604475>,  <43.303082, 34.940502, 20.904593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911980, 34.584694, 20.604475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.010136, 34.802528, 20.925278>,  <44.069027, 34.933228, 21.117760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.010136, 34.802528, 20.925278>,  <43.911980, 34.584694, 20.604475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010136, 34.802528, 20.925278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888936, -0.203650, 0.410268,
		0.386754, -0.813606, 0.434128,
		0.245386, 0.544585, 0.802006,
		44.083752, 34.965904, 21.165880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946152, 33.955910, 20.054535>,  <43.911980, 34.584694, 20.604475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946152, 33.955910, 20.054535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.816006, 33.629433, 19.863550>,  <43.737919, 33.433548, 19.748959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.816006, 33.629433, 19.863550>,  <43.946152, 33.955910, 20.054535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816006, 33.629433, 19.863550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532045, -0.259407, 0.806000,
		-0.781708, 0.516273, -0.349850,
		-0.325363, -0.816192, -0.477461,
		43.718395, 33.384575, 19.720312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218426, 33.955658, 20.184484>,  <43.946152, 33.955910, 20.054535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218426, 33.955658, 20.184484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315014, 33.578590, 20.092331>,  <43.372967, 33.352352, 20.037039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.315014, 33.578590, 20.092331>,  <43.218426, 33.955658, 20.184484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315014, 33.578590, 20.092331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409113, -0.314169, 0.856694,
		-0.879954, -0.112612, -0.461518,
		0.241469, -0.942664, -0.230384,
		43.387455, 33.295792, 20.023216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658428, 33.595566, 20.272972>,  <43.218426, 33.955658, 20.184484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658428, 33.595566, 20.272972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919586, 33.293335, 20.294247>,  <43.076283, 33.111996, 20.307011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919586, 33.293335, 20.294247>,  <42.658428, 33.595566, 20.272972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919586, 33.293335, 20.294247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615500, -0.488312, 0.618636,
		-0.441454, -0.436644, -0.783875,
		0.652900, -0.755575, 0.053187,
		43.115456, 33.066662, 20.310202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271862, 32.926880, 20.361149>,  <42.658428, 33.595566, 20.272972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271862, 32.926880, 20.361149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.632133, 32.807533, 20.487484>,  <42.848297, 32.735928, 20.563286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.632133, 32.807533, 20.487484>,  <42.271862, 32.926880, 20.361149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632133, 32.807533, 20.487484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421893, -0.426863, 0.799871,
		-0.103833, -0.853678, -0.510345,
		0.900680, -0.298364, 0.315838,
		42.902336, 32.718025, 20.582235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187946, 32.239243, 20.580471>,  <42.271862, 32.926880, 20.361149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187946, 32.239243, 20.580471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.519226, 32.362331, 20.767826>,  <42.717995, 32.436184, 20.880239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.519226, 32.362331, 20.767826>,  <42.187946, 32.239243, 20.580471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519226, 32.362331, 20.767826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280478, -0.495977, 0.821790,
		0.485192, -0.811981, -0.324460,
		0.828203, 0.307723, 0.468387,
		42.767689, 32.454647, 20.908342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476498, 31.621563, 20.816242>,  <42.187946, 32.239243, 20.580471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476498, 31.621563, 20.816242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.609371, 31.945450, 21.009741>,  <42.689095, 32.139782, 21.125841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.609371, 31.945450, 21.009741>,  <42.476498, 31.621563, 20.816242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609371, 31.945450, 21.009741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079829, -0.486895, 0.869805,
		0.939831, -0.327550, -0.097099,
		0.332182, 0.809718, 0.483748,
		42.709026, 32.188366, 21.154865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841747, 31.339478, 21.386978>,  <42.476498, 31.621563, 20.816242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841747, 31.339478, 21.386978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.796268, 31.721352, 21.496996>,  <42.768982, 31.950476, 21.563005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.796268, 31.721352, 21.496996>,  <42.841747, 31.339478, 21.386978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796268, 31.721352, 21.496996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055445, -0.282504, 0.957662,
		0.991967, 0.093636, 0.085053,
		-0.113700, 0.954685, 0.275043,
		42.762157, 32.007759, 21.579508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166874, 31.416906, 21.986891>,  <42.841747, 31.339478, 21.386978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166874, 31.416906, 21.986891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.952690, 31.754423, 22.001280>,  <42.824181, 31.956934, 22.009912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.952690, 31.754423, 22.001280>,  <43.166874, 31.416906, 21.986891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952690, 31.754423, 22.001280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173405, -0.151528, 0.973124,
		0.826565, 0.514835, 0.227456,
		-0.535464, 0.843792, 0.035972,
		42.792049, 32.007561, 22.012072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327740, 31.664465, 22.634571>,  <43.166874, 31.416906, 21.986891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327740, 31.664465, 22.634571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.984684, 31.844870, 22.535744>,  <42.778851, 31.953112, 22.476448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.984684, 31.844870, 22.535744>,  <43.327740, 31.664465, 22.634571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984684, 31.844870, 22.535744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285886, -0.018792, 0.958079,
		0.427462, 0.892320, 0.145054,
		-0.857639, 0.451012, -0.247069,
		42.727394, 31.980173, 22.461622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251396, 32.093960, 23.102472>,  <43.327740, 31.664465, 22.634571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251396, 32.093960, 23.102472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.875805, 32.057568, 22.969784>,  <42.650448, 32.035732, 22.890171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.875805, 32.057568, 22.969784>,  <43.251396, 32.093960, 23.102472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875805, 32.057568, 22.969784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299759, -0.256552, 0.918872,
		-0.168704, 0.962239, 0.213625,
		-0.938980, -0.090982, -0.331721,
		42.594112, 32.030273, 22.870268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794891, 32.522884, 23.513264>,  <43.251396, 32.093960, 23.102472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794891, 32.522884, 23.513264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.577885, 32.222206, 23.363260>,  <42.447681, 32.041798, 23.273258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.577885, 32.222206, 23.363260>,  <42.794891, 32.522884, 23.513264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577885, 32.222206, 23.363260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442011, -0.124187, 0.888371,
		-0.714356, 0.647713, -0.264884,
		-0.542515, -0.751695, -0.375010,
		42.415131, 31.996698, 23.250757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121464, 32.784805, 23.698870>,  <42.794891, 32.522884, 23.513264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121464, 32.784805, 23.698870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.076233, 32.391842, 23.639427>,  <42.049095, 32.156063, 23.603762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.076233, 32.391842, 23.639427>,  <42.121464, 32.784805, 23.698870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076233, 32.391842, 23.639427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608347, -0.049795, 0.792107,
		-0.785574, 0.179976, -0.592015,
		-0.113081, -0.982410, -0.148606,
		42.042309, 32.097118, 23.594845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353275, 32.553459, 23.862738>,  <42.121464, 32.784805, 23.698870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353275, 32.553459, 23.862738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568680, 32.217407, 23.888615>,  <41.697922, 32.015774, 23.904140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568680, 32.217407, 23.888615>,  <41.353275, 32.553459, 23.862738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568680, 32.217407, 23.888615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497926, -0.255344, 0.828776,
		-0.679762, -0.478516, -0.555829,
		0.538509, -0.840133, 0.064693,
		41.730232, 31.965368, 23.908022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860950, 32.031799, 23.989468>,  <41.353275, 32.553459, 23.862738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860950, 32.031799, 23.989468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213165, 31.892645, 24.118233>,  <41.424496, 31.809151, 24.195492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213165, 31.892645, 24.118233>,  <40.860950, 32.031799, 23.989468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213165, 31.892645, 24.118233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436894, -0.332377, 0.835852,
		-0.183786, -0.876641, -0.444661,
		0.880537, -0.347888, 0.321913,
		41.477325, 31.788279, 24.214808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305004, 31.549002, 23.597198>,  <40.860950, 32.031799, 23.989468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305004, 31.549002, 23.597198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.977474, 31.756811, 23.499527>,  <39.780956, 31.881496, 23.440924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.977474, 31.756811, 23.499527>,  <40.305004, 31.549002, 23.597198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977474, 31.756811, 23.499527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401325, 0.213942, -0.890599,
		-0.410445, -0.827240, -0.383678,
		-0.818824, 0.519522, -0.244181,
		39.731827, 31.912668, 23.426273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223625, 31.550817, 22.825638>,  <40.305004, 31.549002, 23.597198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223625, 31.550817, 22.825638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981476, 31.850124, 22.934172>,  <39.836185, 32.029709, 22.999292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981476, 31.850124, 22.934172>,  <40.223625, 31.550817, 22.825638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981476, 31.850124, 22.934172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243750, 0.498803, -0.831734,
		-0.757700, -0.437372, -0.484352,
		-0.605373, 0.748265, 0.271334,
		39.799862, 32.074604, 23.015572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854622, 31.743963, 22.233257>,  <40.223625, 31.550817, 22.825638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854622, 31.743963, 22.233257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826054, 32.070930, 22.461897>,  <39.808910, 32.267113, 22.599081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.826054, 32.070930, 22.461897>,  <39.854622, 31.743963, 22.233257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826054, 32.070930, 22.461897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207646, 0.572691, -0.793038,
		-0.975593, 0.062048, -0.210638,
		-0.071424, 0.817420, 0.571597,
		39.804626, 32.316158, 22.633375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561848, 32.189335, 21.804899>,  <39.854622, 31.743963, 22.233257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561848, 32.189335, 21.804899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.715725, 32.407761, 22.102577>,  <39.808052, 32.538815, 22.281183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.715725, 32.407761, 22.102577>,  <39.561848, 32.189335, 21.804899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715725, 32.407761, 22.102577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265703, 0.706603, -0.655831,
		-0.883974, 0.450030, 0.126737,
		0.384696, 0.546063, 0.744193,
		39.831135, 32.571579, 22.325836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148842, 32.781269, 21.890656>,  <39.561848, 32.189335, 21.804899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148842, 32.781269, 21.890656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.521492, 32.849712, 22.018906>,  <39.745083, 32.890778, 22.095856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.521492, 32.849712, 22.018906>,  <39.148842, 32.781269, 21.890656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521492, 32.849712, 22.018906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102295, 0.723092, -0.683135,
		-0.348734, 0.669222, 0.656145,
		0.931622, 0.171112, 0.320625,
		39.800980, 32.901047, 22.115093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159248, 33.477497, 22.000986>,  <39.148842, 32.781269, 21.890656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159248, 33.477497, 22.000986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550858, 33.402679, 21.968651>,  <39.785824, 33.357788, 21.949249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.550858, 33.402679, 21.968651>,  <39.159248, 33.477497, 22.000986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550858, 33.402679, 21.968651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049858, 0.604562, -0.794996,
		0.197568, 0.774287, 0.601204,
		0.979021, -0.187040, -0.080838,
		39.844563, 33.346569, 21.944399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389065, 34.117077, 21.637354>,  <39.159248, 33.477497, 22.000986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389065, 34.117077, 21.637354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693958, 33.863609, 21.584494>,  <39.876896, 33.711529, 21.552778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693958, 33.863609, 21.584494>,  <39.389065, 34.117077, 21.637354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693958, 33.863609, 21.584494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173738, 0.396939, -0.901251,
		0.623549, 0.664005, 0.412653,
		0.762234, -0.633668, -0.132148,
		39.922630, 33.673508, 21.544849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562393, 34.851501, 21.843922>,  <39.389065, 34.117077, 21.637354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562393, 34.851501, 21.843922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266850, 35.120964, 21.837326>,  <39.089523, 35.282642, 21.833368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266850, 35.120964, 21.837326>,  <39.562393, 34.851501, 21.843922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266850, 35.120964, 21.837326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052231, -0.032860, 0.998094,
		0.671830, 0.738315, 0.059465,
		-0.738861, 0.673656, -0.016487,
		39.045193, 35.323059, 21.832380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779106, 35.306252, 22.307894>,  <39.562393, 34.851501, 21.843922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779106, 35.306252, 22.307894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381706, 35.344017, 22.282433>,  <39.143269, 35.366676, 22.267157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381706, 35.344017, 22.282433>,  <39.779106, 35.306252, 22.307894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381706, 35.344017, 22.282433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060735, 0.033446, 0.997593,
		0.096315, 0.994971, -0.027494,
		-0.993496, 0.094414, -0.063651,
		39.083656, 35.372341, 22.263338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584705, 35.896675, 22.756311>,  <39.779106, 35.306252, 22.307894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584705, 35.896675, 22.756311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.259415, 35.666016, 22.724966>,  <39.064240, 35.527622, 22.706160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.259415, 35.666016, 22.724966>,  <39.584705, 35.896675, 22.756311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259415, 35.666016, 22.724966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156058, 0.086371, 0.983964,
		-0.560630, 0.812416, -0.160229,
		-0.813228, -0.576645, -0.078362,
		39.015446, 35.493023, 22.701458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091442, 36.231522, 23.169493>,  <39.584705, 35.896675, 22.756311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091442, 36.231522, 23.169493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945625, 35.863686, 23.110884>,  <38.858135, 35.642986, 23.075718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.945625, 35.863686, 23.110884>,  <39.091442, 36.231522, 23.169493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945625, 35.863686, 23.110884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231797, -0.062783, 0.970736,
		-0.901875, 0.387838, -0.190270,
		-0.364543, -0.919587, -0.146522,
		38.836262, 35.587811, 23.066927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624889, 36.148998, 23.829084>,  <39.091442, 36.231522, 23.169493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624889, 36.148998, 23.829084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578953, 35.779110, 23.683918>,  <38.551392, 35.557178, 23.596819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578953, 35.779110, 23.683918>,  <38.624889, 36.148998, 23.829084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578953, 35.779110, 23.683918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382141, -0.296095, 0.875383,
		-0.916940, 0.239217, -0.319368,
		-0.114844, -0.924718, -0.362916,
		38.544498, 35.501694, 23.575043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976219, 35.884579, 24.135691>,  <38.624889, 36.148998, 23.829084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976219, 35.884579, 24.135691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155617, 35.549179, 24.011904>,  <38.263256, 35.347939, 23.937632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.155617, 35.549179, 24.011904>,  <37.976219, 35.884579, 24.135691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155617, 35.549179, 24.011904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291762, -0.464627, 0.836061,
		-0.844823, -0.284679, -0.453025,
		0.448497, -0.838499, -0.309469,
		38.290165, 35.297630, 23.919064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515293, 35.273849, 24.040087>,  <37.976219, 35.884579, 24.135691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515293, 35.273849, 24.040087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.881752, 35.124390, 24.098129>,  <38.101627, 35.034714, 24.132954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.881752, 35.124390, 24.098129>,  <37.515293, 35.273849, 24.040087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881752, 35.124390, 24.098129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316007, -0.450573, 0.834940,
		-0.246592, -0.810785, -0.530867,
		0.916150, -0.373647, 0.145106,
		38.156597, 35.012295, 24.141661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.690071, 37.949703, 21.148785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990894, 37.730499, 21.295259>,  <42.171387, 37.598976, 21.383144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.990894, 37.730499, 21.295259>,  <41.690071, 37.949703, 21.148785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990894, 37.730499, 21.295259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299377, 0.210939, 0.930526,
		-0.587184, -0.809435, -0.005424,
		0.752056, -0.548013, 0.366187,
		42.216511, 37.566093, 21.405115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483017, 37.379784, 21.610601>,  <41.690071, 37.949703, 21.148785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483017, 37.379784, 21.610601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.851212, 37.475853, 21.733906>,  <42.072128, 37.533493, 21.807888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.851212, 37.475853, 21.733906>,  <41.483017, 37.379784, 21.610601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851212, 37.475853, 21.733906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354317, 0.180231, 0.917593,
		0.164802, -0.953857, 0.250991,
		0.920488, 0.240152, 0.308265,
		42.127357, 37.547905, 21.826384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428860, 37.115921, 22.204304>,  <41.483017, 37.379784, 21.610601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428860, 37.115921, 22.204304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.756187, 37.343910, 22.233910>,  <41.952583, 37.480705, 22.251673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.756187, 37.343910, 22.233910>,  <41.428860, 37.115921, 22.204304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756187, 37.343910, 22.233910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186552, 0.141593, 0.972188,
		0.543642, -0.809371, 0.222199,
		0.818322, 0.569974, 0.074014,
		42.001686, 37.514904, 22.256113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872620, 36.770706, 22.740814>,  <41.428860, 37.115921, 22.204304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872620, 36.770706, 22.740814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979923, 37.155304, 22.716906>,  <42.044304, 37.386063, 22.702560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979923, 37.155304, 22.716906>,  <41.872620, 36.770706, 22.740814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979923, 37.155304, 22.716906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201540, 0.116686, 0.972505,
		0.942029, -0.248838, 0.225081,
		0.268260, 0.961491, -0.059771,
		42.060402, 37.443752, 22.698975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432060, 36.817390, 23.183092>,  <41.872620, 36.770706, 22.740814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432060, 36.817390, 23.183092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.299732, 37.193253, 23.148214>,  <42.220333, 37.418770, 23.127289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.299732, 37.193253, 23.148214>,  <42.432060, 36.817390, 23.183092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299732, 37.193253, 23.148214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055179, 0.072976, 0.995806,
		0.942078, 0.334248, 0.027707,
		-0.330824, 0.939656, -0.087193,
		42.200485, 37.475151, 23.122057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712147, 37.103447, 23.738121>,  <42.432060, 36.817390, 23.183092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712147, 37.103447, 23.738121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.404858, 37.331562, 23.621769>,  <42.220486, 37.468430, 23.551958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.404858, 37.331562, 23.621769>,  <42.712147, 37.103447, 23.738121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404858, 37.331562, 23.621769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324600, 0.044646, 0.944797,
		0.551791, 0.820232, 0.150817,
		-0.768220, 0.570286, -0.290882,
		42.174393, 37.502647, 23.534504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673889, 37.699856, 24.192066>,  <42.712147, 37.103447, 23.738121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673889, 37.699856, 24.192066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.312466, 37.674175, 24.022615>,  <42.095612, 37.658768, 23.920946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.312466, 37.674175, 24.022615>,  <42.673889, 37.699856, 24.192066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312466, 37.674175, 24.022615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427282, 0.208354, 0.879784,
		0.031782, 0.975944, -0.215692,
		-0.903560, -0.064200, -0.423625,
		42.041397, 37.654915, 23.895529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275208, 38.267746, 24.632532>,  <42.673889, 37.699856, 24.192066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275208, 38.267746, 24.632532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.978172, 38.053059, 24.472286>,  <41.799950, 37.924244, 24.376139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.978172, 38.053059, 24.472286>,  <42.275208, 38.267746, 24.632532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978172, 38.053059, 24.472286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585863, 0.230707, 0.776877,
		-0.324541, 0.811607, -0.485765,
		-0.742588, -0.536720, -0.400617,
		41.755394, 37.892044, 24.352100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680424, 38.669937, 24.782385>,  <42.275208, 38.267746, 24.632532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680424, 38.669937, 24.782385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546043, 38.305283, 24.687687>,  <41.465416, 38.086491, 24.630869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.546043, 38.305283, 24.687687>,  <41.680424, 38.669937, 24.782385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546043, 38.305283, 24.687687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692943, 0.068985, 0.717685,
		-0.637938, 0.405160, -0.654890,
		-0.335955, -0.911639, -0.236745,
		41.445255, 38.031792, 24.616663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981781, 38.668354, 24.648470>,  <41.680424, 38.669937, 24.782385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981781, 38.668354, 24.648470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.041016, 38.287628, 24.755882>,  <41.076557, 38.059193, 24.820330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.041016, 38.287628, 24.755882>,  <40.981781, 38.668354, 24.648470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041016, 38.287628, 24.755882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634380, 0.116880, 0.764134,
		-0.758704, -0.283512, -0.586506,
		0.148090, -0.951819, 0.268532,
		41.085442, 38.002083, 24.836441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319054, 38.452229, 24.765795>,  <40.981781, 38.668354, 24.648470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319054, 38.452229, 24.765795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.562817, 38.197250, 24.954386>,  <40.709072, 38.044262, 25.067541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.562817, 38.197250, 24.954386>,  <40.319054, 38.452229, 24.765795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562817, 38.197250, 24.954386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496852, 0.156381, 0.853630,
		-0.617872, -0.754459, -0.221416,
		0.609403, -0.637445, 0.471478,
		40.745636, 38.006016, 25.095829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828896, 38.162312, 25.212578>,  <40.319054, 38.452229, 24.765795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828896, 38.162312, 25.212578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179848, 38.055462, 25.372000>,  <40.390419, 37.991352, 25.467653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179848, 38.055462, 25.372000>,  <39.828896, 38.162312, 25.212578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179848, 38.055462, 25.372000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405595, 0.030812, 0.913533,
		-0.256307, -0.963169, -0.081310,
		0.877382, -0.267124, 0.398554,
		40.443062, 37.975327, 25.491566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568859, 37.532673, 24.914623>,  <39.828896, 38.162312, 25.212578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568859, 37.532673, 24.914623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.173965, 37.560360, 24.857243>,  <38.937031, 37.576973, 24.822815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.173965, 37.560360, 24.857243>,  <39.568859, 37.532673, 24.914623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173965, 37.560360, 24.857243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156777, 0.263274, -0.951897,
		-0.028125, -0.962235, -0.270765,
		-0.987234, 0.069222, -0.143451,
		38.877796, 37.581127, 24.814207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358402, 37.102589, 24.376293>,  <39.568859, 37.532673, 24.914623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358402, 37.102589, 24.376293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103317, 37.409134, 24.407291>,  <38.950264, 37.593060, 24.425890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103317, 37.409134, 24.407291>,  <39.358402, 37.102589, 24.376293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103317, 37.409134, 24.407291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150803, 0.222880, -0.963111,
		-0.755366, -0.602504, -0.257704,
		-0.637715, 0.766364, 0.077496,
		38.912003, 37.639042, 24.430540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949600, 37.019176, 23.758976>,  <39.358402, 37.102589, 24.376293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949600, 37.019176, 23.758976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.842625, 37.387928, 23.871130>,  <38.778439, 37.609177, 23.938423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.842625, 37.387928, 23.871130>,  <38.949600, 37.019176, 23.758976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842625, 37.387928, 23.871130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170398, 0.331648, -0.927887,
		-0.948387, -0.200380, -0.245783,
		-0.267443, 0.921877, 0.280386,
		38.762390, 37.664490, 23.955246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525539, 37.254032, 23.262884>,  <38.949600, 37.019176, 23.758976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525539, 37.254032, 23.262884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658527, 37.585014, 23.443892>,  <38.738319, 37.783604, 23.552496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.658527, 37.585014, 23.443892>,  <38.525539, 37.254032, 23.262884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658527, 37.585014, 23.443892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350918, 0.336824, -0.873731,
		-0.875397, 0.449287, -0.178386,
		0.332472, 0.827460, 0.452518,
		38.758270, 37.833252, 23.579647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294834, 37.821838, 22.771753>,  <38.525539, 37.254032, 23.262884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294834, 37.821838, 22.771753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597248, 37.961887, 22.992960>,  <38.778694, 38.045918, 23.125683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597248, 37.961887, 22.992960>,  <38.294834, 37.821838, 22.771753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597248, 37.961887, 22.992960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476674, 0.284482, -0.831777,
		-0.448549, 0.892459, 0.048182,
		0.756033, 0.350125, 0.553015,
		38.824059, 38.066925, 23.158865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391193, 38.471439, 22.639503>,  <38.294834, 37.821838, 22.771753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391193, 38.471439, 22.639503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.749355, 38.359116, 22.777718>,  <38.964252, 38.291721, 22.860645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.749355, 38.359116, 22.777718>,  <38.391193, 38.471439, 22.639503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749355, 38.359116, 22.777718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430654, 0.349145, -0.832247,
		0.113057, 0.894006, 0.433557,
		0.895408, -0.280805, 0.345534,
		39.017979, 38.274876, 22.881378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809006, 38.921329, 22.309771>,  <38.391193, 38.471439, 22.639503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809006, 38.921329, 22.309771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058052, 38.634327, 22.434694>,  <39.207478, 38.462124, 22.509649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.058052, 38.634327, 22.434694>,  <38.809006, 38.921329, 22.309771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058052, 38.634327, 22.434694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416447, -0.034084, -0.908521,
		0.662516, 0.695716, 0.277583,
		0.622612, -0.717508, 0.312310,
		39.244835, 38.419075, 22.528387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405380, 39.119686, 22.032690>,  <38.809006, 38.921329, 22.309771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405380, 39.119686, 22.032690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.459740, 38.734299, 22.124996>,  <39.492355, 38.503067, 22.180380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.459740, 38.734299, 22.124996>,  <39.405380, 39.119686, 22.032690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459740, 38.734299, 22.124996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567517, -0.115218, -0.815260,
		0.812069, 0.241756, 0.531129,
		0.135898, -0.963472, 0.230766,
		39.500507, 38.445255, 22.194225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160809, 38.995590, 21.954947>,  <39.405380, 39.119686, 22.032690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160809, 38.995590, 21.954947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.949245, 38.658611, 21.913881>,  <39.822308, 38.456425, 21.889242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.949245, 38.658611, 21.913881>,  <40.160809, 38.995590, 21.954947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949245, 38.658611, 21.913881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532329, -0.235103, -0.813236,
		0.660971, -0.484778, 0.572807,
		-0.528907, -0.842447, -0.102665,
		39.790573, 38.405876, 21.883081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586548, 38.733234, 21.548613>,  <40.160809, 38.995590, 21.954947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586548, 38.733234, 21.548613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269108, 38.490490, 21.531111>,  <40.078644, 38.344845, 21.520609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.269108, 38.490490, 21.531111>,  <40.586548, 38.733234, 21.548613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269108, 38.490490, 21.531111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413084, -0.484606, -0.771051,
		0.446715, -0.629984, 0.635269,
		-0.793605, -0.606859, -0.043756,
		40.031025, 38.308434, 21.517984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851288, 37.998917, 21.370789>,  <40.586548, 38.733234, 21.548613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851288, 37.998917, 21.370789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465221, 38.013500, 21.267155>,  <40.233582, 38.022251, 21.204975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.465221, 38.013500, 21.267155>,  <40.851288, 37.998917, 21.370789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465221, 38.013500, 21.267155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229549, -0.357144, -0.905404,
		-0.125541, -0.933337, 0.336334,
		-0.965167, 0.036461, -0.259083,
		40.175671, 38.024437, 21.189430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659824, 37.438179, 20.946512>,  <40.851288, 37.998917, 21.370789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659824, 37.438179, 20.946512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330818, 37.645115, 20.852001>,  <40.133415, 37.769276, 20.795296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330818, 37.645115, 20.852001>,  <40.659824, 37.438179, 20.946512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330818, 37.645115, 20.852001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129991, -0.233437, -0.963644,
		-0.553685, -0.823328, 0.124757,
		-0.822518, 0.517338, -0.236275,
		40.084064, 37.800316, 20.781118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289146, 36.968868, 20.461605>,  <40.659824, 37.438179, 20.946512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289146, 36.968868, 20.461605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.189941, 37.349434, 20.388615>,  <40.130417, 37.577774, 20.344820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.189941, 37.349434, 20.388615>,  <40.289146, 36.968868, 20.461605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189941, 37.349434, 20.388615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249453, -0.119289, -0.961012,
		-0.936089, -0.283862, -0.207749,
		-0.248012, 0.951416, -0.182475,
		40.115540, 37.634857, 20.333872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913937, 36.884800, 19.870193>,  <40.289146, 36.968868, 20.461605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913937, 36.884800, 19.870193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036396, 37.264744, 19.895639>,  <40.109871, 37.492710, 19.910906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036396, 37.264744, 19.895639>,  <39.913937, 36.884800, 19.870193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036396, 37.264744, 19.895639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068052, 0.044814, -0.996675,
		-0.949548, 0.309460, -0.050920,
		0.306149, 0.949856, 0.063613,
		40.128242, 37.549702, 19.914722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673191, 36.487633, 19.211367>,  <39.913937, 36.884800, 19.870193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673191, 36.487633, 19.211367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389626, 36.214500, 19.140730>,  <39.219486, 36.050621, 19.098349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389626, 36.214500, 19.140730>,  <39.673191, 36.487633, 19.211367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389626, 36.214500, 19.140730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181483, -0.065343, 0.981221,
		-0.681547, 0.727648, -0.077600,
		-0.708913, -0.682831, -0.176590,
		39.176952, 36.009651, 19.087753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938744, 36.679836, 19.459198>,  <39.673191, 36.487633, 19.211367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938744, 36.679836, 19.459198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998993, 36.284485, 19.467403>,  <39.035145, 36.047276, 19.472326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998993, 36.284485, 19.467403>,  <38.938744, 36.679836, 19.459198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998993, 36.284485, 19.467403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239887, -0.016412, 0.970662,
		-0.959045, -0.151127, -0.239571,
		0.150625, -0.988378, 0.020514,
		39.044182, 35.987972, 19.473558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364132, 36.436916, 19.789419>,  <38.938744, 36.679836, 19.459198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364132, 36.436916, 19.789419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657070, 36.168087, 19.833220>,  <38.832832, 36.006790, 19.859501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657070, 36.168087, 19.833220>,  <38.364132, 36.436916, 19.789419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657070, 36.168087, 19.833220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186477, -0.043282, 0.981505,
		-0.654903, -0.739219, -0.157024,
		0.732344, -0.672072, 0.109502,
		38.876774, 35.966465, 19.866070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072498, 36.033710, 20.210438>,  <38.364132, 36.436916, 19.789419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072498, 36.033710, 20.210438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457169, 35.924686, 20.222420>,  <38.687969, 35.859272, 20.229609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.457169, 35.924686, 20.222420>,  <38.072498, 36.033710, 20.210438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457169, 35.924686, 20.222420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057475, -0.093555, 0.993954,
		-0.268114, -0.957578, -0.105635,
		0.961671, -0.272565, 0.029954,
		38.745670, 35.842918, 20.231405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067303, 35.321941, 20.495049>,  <38.072498, 36.033710, 20.210438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067303, 35.321941, 20.495049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419300, 35.502037, 20.555571>,  <38.630497, 35.610096, 20.591885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.419300, 35.502037, 20.555571>,  <38.067303, 35.321941, 20.495049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419300, 35.502037, 20.555571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130734, -0.076659, 0.988449,
		0.456641, -0.889610, -0.008598,
		0.879993, 0.450242, 0.151307,
		38.683296, 35.637108, 20.600964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485737, 34.788956, 20.875048>,  <38.067303, 35.321941, 20.495049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485737, 34.788956, 20.875048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657551, 35.144573, 20.938421>,  <38.760639, 35.357944, 20.976446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.657551, 35.144573, 20.938421>,  <38.485737, 34.788956, 20.875048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657551, 35.144573, 20.938421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021181, -0.185314, 0.982451,
		0.902801, -0.418643, -0.098430,
		0.429537, 0.889043, 0.158435,
		38.786411, 35.411285, 20.985952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092136, 34.708134, 21.245718>,  <38.485737, 34.788956, 20.875048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092136, 34.708134, 21.245718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994160, 35.090958, 21.307751>,  <38.935375, 35.320652, 21.344971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.994160, 35.090958, 21.307751>,  <39.092136, 34.708134, 21.245718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994160, 35.090958, 21.307751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095319, -0.135409, 0.986194,
		0.964842, 0.256339, -0.058059,
		-0.244938, 0.957055, 0.155082,
		38.920677, 35.378075, 21.354275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827801, 34.539097, 21.162395>,  <39.092136, 34.708134, 21.245718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827801, 34.539097, 21.162395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976685, 34.168568, 21.139156>,  <40.066017, 33.946251, 21.125212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976685, 34.168568, 21.139156>,  <39.827801, 34.539097, 21.162395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976685, 34.168568, 21.139156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432503, 0.228491, -0.872200,
		0.821218, 0.299517, 0.485686,
		0.372213, -0.926327, -0.058099,
		40.088348, 33.890671, 21.121727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518364, 34.595932, 21.043909>,  <39.827801, 34.539097, 21.162395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518364, 34.595932, 21.043909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408142, 34.244064, 20.888861>,  <40.342007, 34.032944, 20.795832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.408142, 34.244064, 20.888861>,  <40.518364, 34.595932, 21.043909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408142, 34.244064, 20.888861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486179, 0.220323, -0.845628,
		0.829275, -0.421471, 0.366966,
		-0.275557, -0.879670, -0.387619,
		40.325474, 33.980164, 20.772575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065834, 34.430801, 20.662054>,  <40.518364, 34.595932, 21.043909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065834, 34.430801, 20.662054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.816795, 34.147167, 20.529646>,  <40.667374, 33.976986, 20.450201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.816795, 34.147167, 20.529646>,  <41.065834, 34.430801, 20.662054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816795, 34.147167, 20.529646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521870, -0.061019, -0.850840,
		0.583117, -0.702480, 0.408039,
		-0.622596, -0.709083, -0.331022,
		40.630016, 33.934441, 20.430340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429939, 33.903549, 20.421442>,  <41.065834, 34.430801, 20.662054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429939, 33.903549, 20.421442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.093319, 33.874561, 20.207325>,  <40.891346, 33.857170, 20.078856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.093319, 33.874561, 20.207325>,  <41.429939, 33.903549, 20.421442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093319, 33.874561, 20.207325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535645, -0.240017, -0.809615,
		-0.069805, -0.968060, 0.240806,
		-0.841553, -0.072471, -0.535291,
		40.840855, 33.852821, 20.046738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423573, 33.242611, 20.104534>,  <41.429939, 33.903549, 20.421442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423573, 33.242611, 20.104534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150082, 33.429031, 19.879919>,  <40.985989, 33.540882, 19.745150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150082, 33.429031, 19.879919>,  <41.423573, 33.242611, 20.104534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150082, 33.429031, 19.879919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570727, -0.138013, -0.809458,
		-0.454746, -0.873929, -0.171623,
		-0.683722, 0.466048, -0.561536,
		40.944965, 33.568844, 19.711458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142536, 32.683304, 19.592438>,  <41.423573, 33.242611, 20.104534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142536, 32.683304, 19.592438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.095039, 33.059772, 19.465891>,  <41.066544, 33.285656, 19.389963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.095039, 33.059772, 19.465891>,  <41.142536, 32.683304, 19.592438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095039, 33.059772, 19.465891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472850, -0.226574, -0.851515,
		-0.873106, -0.250701, -0.418132,
		-0.118737, 0.941176, -0.316367,
		41.059418, 33.342125, 19.370981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843071, 32.559639, 19.034975>,  <41.142536, 32.683304, 19.592438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843071, 32.559639, 19.034975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.983418, 32.930286, 18.980894>,  <41.067623, 33.152676, 18.948444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.983418, 32.930286, 18.980894>,  <40.843071, 32.559639, 19.034975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983418, 32.930286, 18.980894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433337, -0.288655, -0.853754,
		-0.830129, 0.240961, -0.502815,
		0.350862, 0.926615, -0.135204,
		41.088676, 33.208271, 18.940332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683228, 32.813103, 18.390991>,  <40.843071, 32.559639, 19.034975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683228, 32.813103, 18.390991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988125, 33.043785, 18.508566>,  <41.171062, 33.182194, 18.579111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.988125, 33.043785, 18.508566>,  <40.683228, 32.813103, 18.390991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988125, 33.043785, 18.508566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431647, -0.114479, -0.894749,
		-0.482360, 0.808889, -0.336195,
		0.762240, 0.576708, 0.293935,
		41.216797, 33.216797, 18.596746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786888, 33.209980, 17.889692>,  <40.683228, 32.813103, 18.390991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786888, 33.209980, 17.889692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150066, 33.247219, 18.053135>,  <41.367973, 33.269562, 18.151201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.150066, 33.247219, 18.053135>,  <40.786888, 33.209980, 17.889692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150066, 33.247219, 18.053135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411798, -0.017254, -0.911112,
		-0.077774, 0.995507, -0.054004,
		0.907950, 0.093100, 0.408606,
		41.422451, 33.275150, 18.175716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.000309, 30.580734, 32.856674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388229, 30.523066, 32.935368>,  <36.620979, 30.488464, 32.982582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388229, 30.523066, 32.935368>,  <36.000309, 30.580734, 32.856674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388229, 30.523066, 32.935368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179918, -0.121729, -0.976121,
		0.164679, 0.982037, -0.092113,
		0.969799, -0.144174, 0.196732,
		36.679169, 30.479813, 32.994389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290119, 30.907089, 32.358147>,  <36.000309, 30.580734, 32.856674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290119, 30.907089, 32.358147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.577339, 30.661058, 32.488430>,  <36.749672, 30.513439, 32.566601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.577339, 30.661058, 32.488430>,  <36.290119, 30.907089, 32.358147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577339, 30.661058, 32.488430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191274, -0.275557, -0.942063,
		0.669191, 0.738748, -0.080216,
		0.718051, -0.615077, 0.325704,
		36.792755, 30.476536, 32.586140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715786, 31.052443, 31.880663>,  <36.290119, 30.907089, 32.358147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715786, 31.052443, 31.880663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851376, 30.701971, 32.017723>,  <36.932728, 30.491688, 32.099960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851376, 30.701971, 32.017723>,  <36.715786, 31.052443, 31.880663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851376, 30.701971, 32.017723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343486, -0.223813, -0.912100,
		0.875850, 0.426874, 0.225087,
		0.338974, -0.876177, 0.342652,
		36.953068, 30.439117, 32.120518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426582, 31.073162, 31.726271>,  <36.715786, 31.052443, 31.880663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426582, 31.073162, 31.726271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321651, 30.690132, 31.773996>,  <37.258694, 30.460314, 31.802631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321651, 30.690132, 31.773996>,  <37.426582, 31.073162, 31.726271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321651, 30.690132, 31.773996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652465, -0.267111, -0.709183,
		0.710966, -0.108191, 0.694854,
		-0.262331, -0.957573, 0.119316,
		37.242950, 30.402861, 31.809792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054676, 30.800623, 31.759573>,  <37.426582, 31.073162, 31.726271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054676, 30.800623, 31.759573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779297, 30.529211, 31.657091>,  <37.614071, 30.366364, 31.595602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.779297, 30.529211, 31.657091>,  <38.054676, 30.800623, 31.759573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779297, 30.529211, 31.657091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492716, -0.178318, -0.851724,
		0.532233, -0.712603, 0.457084,
		-0.688447, -0.678528, -0.256204,
		37.572762, 30.325653, 31.580231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393940, 30.232450, 31.477581>,  <38.054676, 30.800623, 31.759573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393940, 30.232450, 31.477581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020763, 30.164532, 31.350588>,  <37.796860, 30.123779, 31.274393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.020763, 30.164532, 31.350588>,  <38.393940, 30.232450, 31.477581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020763, 30.164532, 31.350588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348172, -0.200977, -0.915634,
		0.091668, -0.964767, 0.246618,
		-0.932938, -0.169799, -0.317482,
		37.740883, 30.113592, 31.255342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461754, 29.629145, 31.003216>,  <38.393940, 30.232450, 31.477581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461754, 29.629145, 31.003216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.130627, 29.829082, 30.901337>,  <37.931950, 29.949045, 30.840208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.130627, 29.829082, 30.901337>,  <38.461754, 29.629145, 31.003216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130627, 29.829082, 30.901337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333749, 0.073879, -0.939762,
		-0.450917, -0.862960, -0.227981,
		-0.827820, 0.499843, -0.254699,
		37.882282, 29.979034, 30.824926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234932, 29.356264, 30.346807>,  <38.461754, 29.629145, 31.003216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234932, 29.356264, 30.346807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021542, 29.694101, 30.364956>,  <37.893505, 29.896805, 30.375845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.021542, 29.694101, 30.364956>,  <38.234932, 29.356264, 30.346807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021542, 29.694101, 30.364956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189498, 0.171627, -0.966765,
		-0.824312, -0.507152, -0.251609,
		-0.533479, 0.844595, 0.045370,
		37.861496, 29.947479, 30.378567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747498, 29.302235, 29.803522>,  <38.234932, 29.356264, 30.346807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747498, 29.302235, 29.803522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787075, 29.688873, 29.898094>,  <37.810822, 29.920856, 29.954838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787075, 29.688873, 29.898094>,  <37.747498, 29.302235, 29.803522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787075, 29.688873, 29.898094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072028, 0.230018, -0.970517,
		-0.992482, 0.113060, -0.046862,
		0.098948, 0.966597, 0.236432,
		37.816761, 29.978853, 29.969025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169090, 29.694977, 29.499823>,  <37.747498, 29.302235, 29.803522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169090, 29.694977, 29.499823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479893, 29.938271, 29.564713>,  <37.666374, 30.084248, 29.603647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479893, 29.938271, 29.564713>,  <37.169090, 29.694977, 29.499823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479893, 29.938271, 29.564713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070831, 0.340544, -0.937557,
		-0.625500, 0.716993, 0.307685,
		0.777002, 0.608236, 0.162225,
		37.712994, 30.120741, 29.613380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926693, 30.368727, 29.147375>,  <37.169090, 29.694977, 29.499823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926693, 30.368727, 29.147375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321888, 30.391462, 29.204847>,  <37.559006, 30.405104, 29.239330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.321888, 30.391462, 29.204847>,  <36.926693, 30.368727, 29.147375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321888, 30.391462, 29.204847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121291, 0.290812, -0.949061,
		-0.095727, 0.955090, 0.280425,
		0.987990, 0.056837, 0.143682,
		37.618286, 30.408514, 29.247952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060722, 31.097252, 28.980301>,  <36.926693, 30.368727, 29.147375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060722, 31.097252, 28.980301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384285, 30.871326, 28.914991>,  <37.578423, 30.735771, 28.875805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384285, 30.871326, 28.914991>,  <37.060722, 31.097252, 28.980301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384285, 30.871326, 28.914991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080757, 0.381810, -0.920706,
		0.582366, 0.731579, 0.354460,
		0.808906, -0.564813, -0.163273,
		37.626957, 30.701883, 28.866009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765148, 31.768631, 29.341555>,  <37.060722, 31.097252, 28.980301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765148, 31.768631, 29.341555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467461, 31.978615, 29.176361>,  <36.288849, 32.104607, 29.077246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467461, 31.978615, 29.176361>,  <36.765148, 31.768631, 29.341555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467461, 31.978615, 29.176361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619211, -0.310423, 0.721260,
		0.250434, 0.792498, 0.556084,
		-0.744218, 0.524961, -0.412983,
		36.244194, 32.136105, 29.052465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609688, 32.212730, 29.854927>,  <36.765148, 31.768631, 29.341555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609688, 32.212730, 29.854927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289272, 32.160587, 29.621231>,  <36.097023, 32.129299, 29.481012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.289272, 32.160587, 29.621231>,  <36.609688, 32.212730, 29.854927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289272, 32.160587, 29.621231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571132, -0.125867, 0.811151,
		-0.179279, 0.983445, 0.026372,
		-0.801042, -0.130360, -0.584242,
		36.048962, 32.121479, 29.445959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114197, 32.774075, 30.018854>,  <36.609688, 32.212730, 29.854927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114197, 32.774075, 30.018854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890728, 32.490326, 29.846958>,  <35.756645, 32.320076, 29.743820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890728, 32.490326, 29.846958>,  <36.114197, 32.774075, 30.018854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890728, 32.490326, 29.846958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674968, 0.087762, 0.732609,
		-0.481976, 0.699351, -0.527833,
		-0.558675, -0.709370, -0.429741,
		35.723125, 32.277515, 29.718037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441887, 32.984047, 30.214661>,  <36.114197, 32.774075, 30.018854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441887, 32.984047, 30.214661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375557, 32.604359, 30.107714>,  <35.335758, 32.376545, 30.043545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375557, 32.604359, 30.107714>,  <35.441887, 32.984047, 30.214661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375557, 32.604359, 30.107714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647205, -0.099810, 0.755754,
		-0.744062, 0.298366, -0.597788,
		-0.165826, -0.949219, -0.267369,
		35.325809, 32.319592, 30.027504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606144, 32.898785, 30.133657>,  <35.441887, 32.984047, 30.214661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606144, 32.898785, 30.133657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760235, 32.532276, 30.177565>,  <34.852692, 32.312370, 30.203909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760235, 32.532276, 30.177565>,  <34.606144, 32.898785, 30.133657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760235, 32.532276, 30.177565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709231, -0.217863, 0.670468,
		-0.590414, -0.336136, -0.733773,
		0.385231, -0.916269, 0.109769,
		34.875805, 32.257397, 30.210495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051994, 32.482536, 30.207514>,  <34.606144, 32.898785, 30.133657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051994, 32.482536, 30.207514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363605, 32.283058, 30.359528>,  <34.550571, 32.163372, 30.450737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363605, 32.283058, 30.359528>,  <34.051994, 32.482536, 30.207514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363605, 32.283058, 30.359528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588194, -0.371357, 0.718416,
		-0.217139, -0.783199, -0.582623,
		0.779024, -0.498692, 0.380037,
		34.597313, 32.133450, 30.473539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759964, 31.870667, 30.364918>,  <34.051994, 32.482536, 30.207514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759964, 31.870667, 30.364918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087490, 31.875721, 30.594486>,  <34.284004, 31.878754, 30.732227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087490, 31.875721, 30.594486>,  <33.759964, 31.870667, 30.364918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087490, 31.875721, 30.594486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524371, -0.390414, 0.756712,
		0.233630, -0.920552, -0.313049,
		0.818812, 0.012637, 0.573923,
		34.333134, 31.879513, 30.766663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864483, 31.251431, 30.648268>,  <33.759964, 31.870667, 30.364918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864483, 31.251431, 30.648268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087936, 31.475821, 30.892637>,  <34.222008, 31.610455, 31.039259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087936, 31.475821, 30.892637>,  <33.864483, 31.251431, 30.648268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087936, 31.475821, 30.892637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447903, -0.415899, 0.791461,
		0.698074, -0.715776, 0.018926,
		0.558638, 0.560975, 0.610926,
		34.255527, 31.644114, 31.075914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065220, 30.777262, 31.282160>,  <33.864483, 31.251431, 30.648268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065220, 30.777262, 31.282160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135262, 31.150530, 31.407719>,  <34.177288, 31.374491, 31.483053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135262, 31.150530, 31.407719>,  <34.065220, 30.777262, 31.282160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135262, 31.150530, 31.407719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568331, -0.164535, 0.806181,
		0.803951, -0.319566, 0.501538,
		0.175108, 0.933170, 0.313898,
		34.187794, 31.430481, 31.501888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244106, 30.695230, 32.002960>,  <34.065220, 30.777262, 31.282160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244106, 30.695230, 32.002960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102917, 31.061863, 31.927818>,  <34.018204, 31.281843, 31.882734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102917, 31.061863, 31.927818>,  <34.244106, 30.695230, 32.002960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102917, 31.061863, 31.927818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655164, -0.098794, 0.748999,
		0.667962, 0.387448, 0.635383,
		-0.352970, 0.916583, -0.187851,
		33.997025, 31.336838, 31.871464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300320, 31.039755, 32.642448>,  <34.244106, 30.695230, 32.002960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300320, 31.039755, 32.642448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038788, 31.271833, 32.448177>,  <33.881870, 31.411079, 32.331615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.038788, 31.271833, 32.448177>,  <34.300320, 31.039755, 32.642448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038788, 31.271833, 32.448177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542889, 0.087388, 0.835246,
		0.527047, 0.809776, 0.257844,
		-0.653829, 0.580195, -0.485676,
		33.842640, 31.445892, 32.302475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196671, 31.650032, 32.998070>,  <34.300320, 31.039755, 32.642448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196671, 31.650032, 32.998070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870529, 31.608288, 32.770279>,  <33.674843, 31.583241, 32.633606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870529, 31.608288, 32.770279>,  <34.196671, 31.650032, 32.998070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870529, 31.608288, 32.770279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578858, 0.128725, 0.805204,
		-0.010727, 0.986173, -0.165368,
		-0.815358, -0.104362, -0.569474,
		33.625923, 31.576979, 32.599438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790531, 32.199036, 33.221180>,  <34.196671, 31.650032, 32.998070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790531, 32.199036, 33.221180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533562, 31.954239, 33.036678>,  <33.379379, 31.807362, 32.925976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533562, 31.954239, 33.036678>,  <33.790531, 32.199036, 33.221180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533562, 31.954239, 33.036678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731581, 0.310524, 0.606931,
		-0.228203, 0.727356, -0.647207,
		-0.642428, -0.611988, -0.461257,
		33.340832, 31.770643, 32.898300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229637, 32.550346, 33.402493>,  <33.790531, 32.199036, 33.221180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229637, 32.550346, 33.402493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137863, 32.174606, 33.300522>,  <33.082798, 31.949163, 33.239342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137863, 32.174606, 33.300522>,  <33.229637, 32.550346, 33.402493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137863, 32.174606, 33.300522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858332, 0.071772, 0.508051,
		-0.458940, 0.335375, -0.822738,
		-0.229437, -0.939347, -0.254925,
		33.069031, 31.892803, 33.224045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643936, 33.298241, 33.195766>,  <33.229637, 32.550346, 33.402493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643936, 33.298241, 33.195766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646626, 33.556049, 33.501587>,  <33.648239, 33.710735, 33.685081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.646626, 33.556049, 33.501587>,  <33.643936, 33.298241, 33.195766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646626, 33.556049, 33.501587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013780, 0.764440, -0.644547,
		-0.999882, 0.014872, -0.003738,
		0.006728, 0.644523, 0.764555,
		33.648643, 33.749405, 33.730953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194923, 33.920982, 33.055843>,  <33.643936, 33.298241, 33.195766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194923, 33.920982, 33.055843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475349, 34.040257, 33.314945>,  <33.643604, 34.111820, 33.470406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475349, 34.040257, 33.314945>,  <33.194923, 33.920982, 33.055843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475349, 34.040257, 33.314945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149266, 0.826888, -0.542195,
		-0.697296, 0.476804, 0.535197,
		0.701069, 0.298183, 0.647757,
		33.685669, 34.129711, 33.509274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129883, 34.642456, 33.074398>,  <33.194923, 33.920982, 33.055843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129883, 34.642456, 33.074398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500870, 34.559048, 33.198547>,  <33.723461, 34.509003, 33.273037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500870, 34.559048, 33.198547>,  <33.129883, 34.642456, 33.074398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500870, 34.559048, 33.198547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324709, 0.860738, -0.392039,
		-0.185401, 0.464383, 0.866011,
		0.927465, -0.208517, 0.310371,
		33.779110, 34.496494, 33.291660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342361, 35.323967, 33.207531>,  <33.129883, 34.642456, 33.074398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342361, 35.323967, 33.207531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662025, 35.096573, 33.129387>,  <33.853825, 34.960136, 33.082500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662025, 35.096573, 33.129387>,  <33.342361, 35.323967, 33.207531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662025, 35.096573, 33.129387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407077, 0.750946, -0.519969,
		0.442300, 0.336012, 0.831544,
		0.799161, -0.568485, -0.195361,
		33.901775, 34.926029, 33.070778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938736, 35.756721, 33.219997>,  <33.342361, 35.323967, 33.207531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938736, 35.756721, 33.219997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058552, 35.439564, 33.007732>,  <34.130444, 35.249271, 32.880375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058552, 35.439564, 33.007732>,  <33.938736, 35.756721, 33.219997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058552, 35.439564, 33.007732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473758, 0.606393, -0.638624,
		0.828146, -0.060109, 0.557279,
		0.299543, -0.792890, -0.530659,
		34.148415, 35.201698, 32.848534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626381, 36.020702, 33.004574>,  <33.938736, 35.756721, 33.219997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626381, 36.020702, 33.004574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570992, 35.718002, 32.749027>,  <34.537758, 35.536381, 32.595699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570992, 35.718002, 32.749027>,  <34.626381, 36.020702, 33.004574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570992, 35.718002, 32.749027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635152, 0.427092, -0.643565,
		0.759873, -0.494898, 0.421509,
		-0.138476, -0.756749, -0.638870,
		34.529449, 35.490978, 32.557365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254223, 35.874592, 32.711895>,  <34.626381, 36.020702, 33.004574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254223, 35.874592, 32.711895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029564, 35.673218, 32.449261>,  <34.894768, 35.552395, 32.291679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.029564, 35.673218, 32.449261>,  <35.254223, 35.874592, 32.711895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029564, 35.673218, 32.449261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547049, 0.369402, -0.751185,
		0.620717, -0.781086, 0.067930,
		-0.561647, -0.503435, -0.656587,
		34.861069, 35.522186, 32.252285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731113, 35.453369, 32.277466>,  <35.254223, 35.874592, 32.711895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731113, 35.453369, 32.277466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387627, 35.517155, 32.082664>,  <35.181534, 35.555428, 31.965782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.387627, 35.517155, 32.082664>,  <35.731113, 35.453369, 32.277466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387627, 35.517155, 32.082664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510019, 0.358396, -0.781942,
		0.049848, -0.919849, -0.389091,
		-0.858718, 0.159466, -0.487007,
		35.130013, 35.564995, 31.936562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591267, 35.018059, 31.559736>,  <35.731113, 35.453369, 32.277466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591267, 35.018059, 31.559736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344959, 35.333096, 31.550577>,  <35.197174, 35.522118, 31.545082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344959, 35.333096, 31.550577>,  <35.591267, 35.018059, 31.559736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344959, 35.333096, 31.550577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516412, 0.381460, -0.766685,
		-0.595102, -0.483926, -0.641615,
		-0.615770, 0.787593, -0.022898,
		35.160229, 35.569374, 31.543707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322918, 34.981277, 30.899925>,  <35.591267, 35.018059, 31.559736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322918, 34.981277, 30.899925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285130, 35.350437, 31.049232>,  <35.262455, 35.571934, 31.138817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285130, 35.350437, 31.049232>,  <35.322918, 34.981277, 30.899925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285130, 35.350437, 31.049232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213739, 0.385004, -0.897824,
		-0.972312, -0.005037, -0.233633,
		-0.094472, 0.922901, 0.373268,
		35.256786, 35.627308, 31.161213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862255, 35.231052, 30.494429>,  <35.322918, 34.981277, 30.899925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862255, 35.231052, 30.494429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005821, 35.565220, 30.660925>,  <35.091961, 35.765720, 30.760822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005821, 35.565220, 30.660925>,  <34.862255, 35.231052, 30.494429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005821, 35.565220, 30.660925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003908, 0.444604, -0.895719,
		-0.933362, 0.323114, 0.156311,
		0.358916, 0.835419, 0.416239,
		35.113495, 35.815845, 30.785797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668507, 35.644733, 30.015545>,  <34.862255, 35.231052, 30.494429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668507, 35.644733, 30.015545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936138, 35.857327, 30.223341>,  <35.096718, 35.984882, 30.348019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936138, 35.857327, 30.223341>,  <34.668507, 35.644733, 30.015545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936138, 35.857327, 30.223341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371596, 0.366111, -0.853158,
		-0.643626, 0.763867, 0.047461,
		0.669076, 0.531478, 0.519489,
		35.136860, 36.016769, 30.379187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559193, 36.328285, 29.827539>,  <34.668507, 35.644733, 30.015545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559193, 36.328285, 29.827539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927181, 36.333031, 29.984264>,  <35.147972, 36.335876, 30.078300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927181, 36.333031, 29.984264>,  <34.559193, 36.328285, 29.827539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927181, 36.333031, 29.984264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375240, 0.262447, -0.888997,
		-0.113376, 0.964873, 0.236992,
		0.919968, 0.011862, 0.391814,
		35.203171, 36.336590, 30.101809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890999, 36.882580, 29.475643>,  <34.559193, 36.328285, 29.827539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890999, 36.882580, 29.475643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198563, 36.666969, 29.613182>,  <35.383099, 36.537601, 29.695705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.198563, 36.666969, 29.613182>,  <34.890999, 36.882580, 29.475643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198563, 36.666969, 29.613182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553472, 0.291927, -0.780030,
		0.320080, 0.790080, 0.522802,
		0.768907, -0.539029, 0.343847,
		35.429234, 36.505260, 29.716335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480331, 37.291065, 29.483465>,  <34.890999, 36.882580, 29.475643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480331, 37.291065, 29.483465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612469, 36.913677, 29.472631>,  <35.691750, 36.687244, 29.466131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612469, 36.913677, 29.472631>,  <35.480331, 37.291065, 29.483465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612469, 36.913677, 29.472631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547322, 0.214855, -0.808873,
		0.768969, 0.252381, 0.587359,
		0.330341, -0.943473, -0.027083,
		35.711571, 36.630634, 29.464506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203663, 37.425507, 29.444954>,  <35.480331, 37.291065, 29.483465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203663, 37.425507, 29.444954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117474, 37.055645, 29.319359>,  <36.065762, 36.833729, 29.244001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117474, 37.055645, 29.319359>,  <36.203663, 37.425507, 29.444954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117474, 37.055645, 29.319359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640736, 0.108773, -0.760017,
		0.736906, -0.364943, 0.569021,
		-0.215468, -0.924654, -0.313988,
		36.052834, 36.778248, 29.225163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890190, 37.226070, 29.344975>,  <36.203663, 37.425507, 29.444954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890190, 37.226070, 29.344975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643093, 36.993137, 29.133585>,  <36.494835, 36.853378, 29.006750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.643093, 36.993137, 29.133585>,  <36.890190, 37.226070, 29.344975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643093, 36.993137, 29.133585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621859, 0.049605, -0.781556,
		0.481341, -0.811435, 0.331487,
		-0.617739, -0.582333, -0.528475,
		36.457771, 36.818436, 28.975042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342503, 36.729084, 29.121626>,  <36.890190, 37.226070, 29.344975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342503, 36.729084, 29.121626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036781, 36.710545, 28.864349>,  <36.853348, 36.699421, 28.709984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.036781, 36.710545, 28.864349>,  <37.342503, 36.729084, 29.121626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036781, 36.710545, 28.864349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644483, -0.020782, -0.764336,
		0.022062, -0.998709, 0.045757,
		-0.764300, -0.046352, -0.643193,
		36.807491, 36.696640, 28.671392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459270, 36.210312, 28.579346>,  <37.342503, 36.729084, 29.121626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459270, 36.210312, 28.579346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183041, 36.431366, 28.392715>,  <37.017303, 36.563999, 28.280737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.183041, 36.431366, 28.392715>,  <37.459270, 36.210312, 28.579346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183041, 36.431366, 28.392715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582165, 0.041937, -0.811988,
		-0.429169, -0.832365, -0.350687,
		-0.690578, 0.552638, -0.466576,
		36.975868, 36.597157, 28.252743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375885, 35.915794, 27.915632>,  <37.459270, 36.210312, 28.579346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375885, 35.915794, 27.915632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234085, 36.286358, 27.864872>,  <37.149006, 36.508694, 27.834415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234085, 36.286358, 27.864872>,  <37.375885, 35.915794, 27.915632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234085, 36.286358, 27.864872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332662, -0.001885, -0.943044,
		-0.873880, -0.376526, -0.307511,
		-0.354501, 0.926404, -0.126903,
		37.127735, 36.564278, 27.826801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127190, 35.839970, 27.312246>,  <37.375885, 35.915794, 27.915632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127190, 35.839970, 27.312246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172962, 36.233158, 27.369751>,  <37.200428, 36.469070, 27.404253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.172962, 36.233158, 27.369751>,  <37.127190, 35.839970, 27.312246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172962, 36.233158, 27.369751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463412, 0.075183, -0.882948,
		-0.878723, 0.167660, -0.446919,
		0.114435, 0.982974, 0.143760,
		37.207294, 36.528049, 27.412880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917076, 36.135887, 26.605240>,  <37.127190, 35.839970, 27.312246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917076, 36.135887, 26.605240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142132, 36.408794, 26.791981>,  <37.277164, 36.572540, 26.904026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.142132, 36.408794, 26.791981>,  <36.917076, 36.135887, 26.605240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142132, 36.408794, 26.791981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569172, 0.089875, -0.817292,
		-0.599570, 0.725557, -0.337760,
		0.562636, 0.682268, 0.466853,
		37.310921, 36.613476, 26.932037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896004, 36.691593, 26.101276>,  <36.917076, 36.135887, 26.605240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896004, 36.691593, 26.101276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200695, 36.762070, 26.350670>,  <37.383511, 36.804356, 26.500305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200695, 36.762070, 26.350670>,  <36.896004, 36.691593, 26.101276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200695, 36.762070, 26.350670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563454, 0.294897, -0.771723,
		-0.319836, 0.939144, 0.125353,
		0.761725, 0.176194, 0.623483,
		37.429211, 36.814926, 26.537714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207569, 37.348637, 25.902517>,  <36.896004, 36.691593, 26.101276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207569, 37.348637, 25.902517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509460, 37.197971, 26.117371>,  <37.690594, 37.107571, 26.246283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509460, 37.197971, 26.117371>,  <37.207569, 37.348637, 25.902517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509460, 37.197971, 26.117371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654194, 0.493481, -0.573154,
		-0.049178, 0.783964, 0.618856,
		0.754726, -0.376666, 0.537133,
		37.735878, 37.084972, 26.278511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620632, 37.947037, 26.110640>,  <37.207569, 37.348637, 25.902517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620632, 37.947037, 26.110640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.850422, 37.619972, 26.125690>,  <37.988297, 37.423733, 26.134722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.850422, 37.619972, 26.125690>,  <37.620632, 37.947037, 26.110640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850422, 37.619972, 26.125690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623733, 0.407534, -0.666988,
		0.530033, 0.406638, 0.744118,
		0.574476, -0.817657, 0.037627,
		38.022766, 37.374676, 26.136978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308578, 38.153820, 26.171190>,  <37.620632, 37.947037, 26.110640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308578, 38.153820, 26.171190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344822, 37.785580, 26.019251>,  <38.366570, 37.564636, 25.928087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344822, 37.785580, 26.019251>,  <38.308578, 38.153820, 26.171190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344822, 37.785580, 26.019251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384332, 0.384194, -0.839455,
		0.918738, -0.069927, 0.388627,
		0.090607, -0.920601, -0.379849,
		38.372005, 37.509399, 25.905296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931950, 38.112934, 25.815317>,  <38.308578, 38.153820, 26.171190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931950, 38.112934, 25.815317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755329, 37.782738, 25.674692>,  <38.649357, 37.584621, 25.590317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755329, 37.782738, 25.674692>,  <38.931950, 38.112934, 25.815317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755329, 37.782738, 25.674692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456295, 0.130779, -0.880166,
		0.772545, -0.549057, 0.318921,
		-0.441554, -0.825490, -0.351564,
		38.622864, 37.535091, 25.569223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416779, 37.633644, 25.598906>,  <38.931950, 38.112934, 25.815317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416779, 37.633644, 25.598906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.064808, 37.601749, 25.411554>,  <38.853626, 37.582611, 25.299143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.064808, 37.601749, 25.411554>,  <39.416779, 37.633644, 25.598906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064808, 37.601749, 25.411554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430826, 0.281722, -0.857334,
		0.200312, -0.956177, -0.213542,
		-0.879923, -0.079735, -0.468379,
		38.800831, 37.577827, 25.271040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864639, 37.051121, 25.777567>,  <39.416779, 37.633644, 25.598906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864639, 37.051121, 25.777567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.199345, 37.257511, 25.850891>,  <40.400169, 37.381344, 25.894886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.199345, 37.257511, 25.850891>,  <39.864639, 37.051121, 25.777567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199345, 37.257511, 25.850891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139755, -0.524927, 0.839595,
		0.529432, -0.676923, -0.511348,
		0.836762, 0.515972, 0.183310,
		40.450375, 37.412304, 25.905884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494698, 36.561119, 26.112028>,  <39.864639, 37.051121, 25.777567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494698, 36.561119, 26.112028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569511, 36.944725, 26.197180>,  <40.614399, 37.174889, 26.248270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569511, 36.944725, 26.197180>,  <40.494698, 36.561119, 26.112028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569511, 36.944725, 26.197180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014562, -0.213971, 0.976731,
		0.982245, -0.185784, -0.026055,
		0.187036, 0.959010, 0.212878,
		40.625622, 37.232430, 26.261044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024979, 36.566330, 26.672781>,  <40.494698, 36.561119, 26.112028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024979, 36.566330, 26.672781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.857094, 36.928822, 26.693144>,  <40.756363, 37.146317, 26.705362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.857094, 36.928822, 26.693144>,  <41.024979, 36.566330, 26.672781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857094, 36.928822, 26.693144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000266, -0.056210, 0.998419,
		0.907658, 0.419034, 0.023833,
		-0.419711, 0.906229, 0.050907,
		40.731182, 37.200691, 26.708416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403294, 36.819912, 27.346909>,  <41.024979, 36.566330, 26.672781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403294, 36.819912, 27.346909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.085072, 37.043713, 27.253906>,  <40.894138, 37.177994, 27.198105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.085072, 37.043713, 27.253906>,  <41.403294, 36.819912, 27.346909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085072, 37.043713, 27.253906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370607, -0.145788, 0.917276,
		0.479317, 0.815910, 0.323336,
		-0.795553, 0.559497, -0.232504,
		40.846405, 37.211563, 27.184155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280945, 37.174698, 27.994404>,  <41.403294, 36.819912, 27.346909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280945, 37.174698, 27.994404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.949787, 37.196095, 27.771074>,  <40.751091, 37.208931, 27.637077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.949787, 37.196095, 27.771074>,  <41.280945, 37.174698, 27.994404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949787, 37.196095, 27.771074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557988, 0.022379, 0.829547,
		0.056869, 0.998317, 0.011320,
		-0.827898, 0.053491, -0.558322,
		40.701416, 37.212143, 27.603579>
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
