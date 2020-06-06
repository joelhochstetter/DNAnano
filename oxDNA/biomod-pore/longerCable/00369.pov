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
	<24.342752, 35.313293, 34.824326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381960, 34.927727, 34.923325>,  <24.405485, 34.696384, 34.982723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381960, 34.927727, 34.923325>,  <24.342752, 35.313293, 34.824326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381960, 34.927727, 34.923325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946209, -0.013212, 0.323287,
		-0.308353, -0.265868, -0.913363,
		0.098019, -0.963919, 0.247493,
		24.411366, 34.638550, 34.997574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513115, 34.756741, 34.374969>,  <24.342752, 35.313293, 34.824326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513115, 34.756741, 34.374969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683464, 34.395180, 34.390987>,  <24.785673, 34.178246, 34.400597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683464, 34.395180, 34.390987>,  <24.513115, 34.756741, 34.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683464, 34.395180, 34.390987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608823, 0.253547, -0.751697,
		0.669304, 0.344505, 0.658292,
		0.425871, -0.903897, 0.040042,
		24.811226, 34.124012, 34.403000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118706, 34.830498, 34.452766>,  <24.513115, 34.756741, 34.374969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118706, 34.830498, 34.452766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101379, 34.471451, 34.277309>,  <25.090982, 34.256023, 34.172035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101379, 34.471451, 34.277309>,  <25.118706, 34.830498, 34.452766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101379, 34.471451, 34.277309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762931, 0.253747, -0.594600,
		0.645027, -0.360410, 0.673829,
		-0.043318, -0.897618, -0.438641,
		25.088385, 34.202164, 34.145718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773304, 34.657959, 34.422813>,  <25.118706, 34.830498, 34.452766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773304, 34.657959, 34.422813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582972, 34.432690, 34.152576>,  <25.468771, 34.297527, 33.990437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582972, 34.432690, 34.152576>,  <25.773304, 34.657959, 34.422813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582972, 34.432690, 34.152576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619701, 0.330407, -0.711900,
		0.624143, -0.757407, 0.191781,
		-0.475832, -0.563174, -0.675587,
		25.440222, 34.263737, 33.949902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287117, 34.251587, 34.028572>,  <25.773304, 34.657959, 34.422813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287117, 34.251587, 34.028572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953056, 34.263668, 33.808895>,  <25.752621, 34.270916, 33.677090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953056, 34.263668, 33.808895>,  <26.287117, 34.251587, 34.028572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953056, 34.263668, 33.808895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549386, 0.093706, -0.830298,
		0.026385, -0.995142, -0.094851,
		-0.835152, 0.030202, -0.549190,
		25.702511, 34.272728, 33.644138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439573, 33.832577, 33.536884>,  <26.287117, 34.251587, 34.028572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439573, 33.832577, 33.536884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146231, 34.052734, 33.377258>,  <25.970224, 34.184830, 33.281483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146231, 34.052734, 33.377258>,  <26.439573, 33.832577, 33.536884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146231, 34.052734, 33.377258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511501, 0.060035, -0.857183,
		-0.447830, -0.832744, -0.325554,
		-0.733358, 0.550394, -0.399064,
		25.926224, 34.217854, 33.257538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366936, 33.538338, 33.018497>,  <26.439573, 33.832577, 33.536884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366936, 33.538338, 33.018497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238142, 33.916138, 32.992432>,  <26.160866, 34.142818, 32.976791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238142, 33.916138, 32.992432>,  <26.366936, 33.538338, 33.018497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238142, 33.916138, 32.992432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464761, 0.097719, -0.880028,
		-0.824818, -0.313640, -0.470430,
		-0.321982, 0.944500, -0.065167,
		26.141548, 34.199490, 32.972881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861881, 33.664700, 32.427078>,  <26.366936, 33.538338, 33.018497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861881, 33.664700, 32.427078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106707, 33.960106, 32.540199>,  <26.253601, 34.137348, 32.608070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106707, 33.960106, 32.540199>,  <25.861881, 33.664700, 32.427078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106707, 33.960106, 32.540199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505185, -0.090011, -0.858304,
		-0.608413, 0.668205, -0.428178,
		0.612064, 0.738512, 0.282803,
		26.290325, 34.181660, 32.625042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883135, 34.205936, 31.912561>,  <25.861881, 33.664700, 32.427078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883135, 34.205936, 31.912561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206659, 34.285351, 32.133980>,  <26.400774, 34.333000, 32.266830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206659, 34.285351, 32.133980>,  <25.883135, 34.205936, 31.912561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206659, 34.285351, 32.133980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510160, 0.231334, -0.828385,
		-0.292514, 0.952402, 0.085822,
		0.808809, 0.198531, 0.553546,
		26.449303, 34.344910, 32.300045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210047, 34.958363, 31.719341>,  <25.883135, 34.205936, 31.912561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210047, 34.958363, 31.719341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508606, 34.758762, 31.895473>,  <26.687742, 34.639004, 32.001152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508606, 34.758762, 31.895473>,  <26.210047, 34.958363, 31.719341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508606, 34.758762, 31.895473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610310, 0.249423, -0.751871,
		0.265352, 0.829934, 0.490711,
		0.746398, -0.498996, 0.440332,
		26.732525, 34.609062, 32.027573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694935, 35.425930, 31.690746>,  <26.210047, 34.958363, 31.719341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694935, 35.425930, 31.690746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859468, 35.062668, 31.721888>,  <26.958189, 34.844711, 31.740572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859468, 35.062668, 31.721888>,  <26.694935, 35.425930, 31.690746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859468, 35.062668, 31.721888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700094, 0.260088, -0.664998,
		0.583672, 0.328041, 0.742776,
		0.411333, -0.908154, 0.077854,
		26.982868, 34.790222, 31.745243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347870, 35.499561, 31.635765>,  <26.694935, 35.425930, 31.690746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347870, 35.499561, 31.635765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286890, 35.119415, 31.527275>,  <27.250301, 34.891327, 31.462181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286890, 35.119415, 31.527275>,  <27.347870, 35.499561, 31.635765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286890, 35.119415, 31.527275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604318, 0.127513, -0.786473,
		0.782022, -0.283804, 0.554884,
		-0.152450, -0.950366, -0.271226,
		27.241156, 34.834305, 31.445908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783327, 35.742596, 31.001154>,  <27.347870, 35.499561, 31.635765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783327, 35.742596, 31.001154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482893, 35.480824, 30.966305>,  <27.302633, 35.323761, 30.945396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482893, 35.480824, 30.966305>,  <27.783327, 35.742596, 31.001154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482893, 35.480824, 30.966305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543883, 0.538532, 0.643564,
		-0.374252, 0.530755, -0.760418,
		-0.751084, -0.654434, -0.087122,
		27.257568, 35.284492, 30.940168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930992, 35.096077, 30.657152>,  <27.783327, 35.742596, 31.001154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930992, 35.096077, 30.657152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045137, 34.789177, 30.886896>,  <28.113625, 34.605038, 31.024742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.045137, 34.789177, 30.886896>,  <27.930992, 35.096077, 30.657152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045137, 34.789177, 30.886896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895288, 0.000502, 0.445488,
		-0.342091, -0.641342, -0.686771,
		0.285365, -0.767255, 0.574358,
		28.130747, 34.559002, 31.059204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393911, 34.536186, 30.788498>,  <27.930992, 35.096077, 30.657152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393911, 34.536186, 30.788498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645800, 34.544361, 31.099119>,  <27.796932, 34.549267, 31.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645800, 34.544361, 31.099119>,  <27.393911, 34.536186, 30.788498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645800, 34.544361, 31.099119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771257, -0.102991, 0.628137,
		0.092817, -0.994472, -0.049091,
		0.629720, 0.020440, 0.776553,
		27.834715, 34.550491, 31.332085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350531, 33.904797, 31.211403>,  <27.393911, 34.536186, 30.788498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350531, 33.904797, 31.211403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444340, 34.233402, 31.419292>,  <27.500626, 34.430565, 31.544025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444340, 34.233402, 31.419292>,  <27.350531, 33.904797, 31.211403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444340, 34.233402, 31.419292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757476, -0.180657, 0.627370,
		0.609285, -0.540812, 0.579909,
		0.234525, 0.821514, 0.519724,
		27.514698, 34.479855, 31.575211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600557, 33.703938, 31.915258>,  <27.350531, 33.904797, 31.211403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600557, 33.703938, 31.915258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427916, 34.063629, 31.886702>,  <27.324329, 34.279446, 31.869568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427916, 34.063629, 31.886702>,  <27.600557, 33.703938, 31.915258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427916, 34.063629, 31.886702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598581, -0.226294, 0.768435,
		0.674846, 0.374395, 0.635934,
		-0.431606, 0.899233, -0.071392,
		27.298433, 34.333401, 31.865284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674673, 33.976582, 32.611366>,  <27.600557, 33.703938, 31.915258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674673, 33.976582, 32.611366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381021, 34.152431, 32.404373>,  <27.204830, 34.257942, 32.280178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381021, 34.152431, 32.404373>,  <27.674673, 33.976582, 32.611366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381021, 34.152431, 32.404373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549834, 0.062290, 0.832948,
		0.398422, 0.896017, 0.195994,
		-0.734127, 0.439629, -0.517478,
		27.160784, 34.284321, 32.249130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530832, 34.598907, 32.936584>,  <27.674673, 33.976582, 32.611366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530832, 34.598907, 32.936584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194168, 34.507915, 32.740685>,  <26.992168, 34.453320, 32.623142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194168, 34.507915, 32.740685>,  <27.530832, 34.598907, 32.936584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194168, 34.507915, 32.740685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530798, 0.181753, 0.827780,
		-0.099290, 0.956670, -0.273721,
		-0.841662, -0.227481, -0.489752,
		26.941669, 34.439671, 32.593758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016829, 35.067875, 33.264954>,  <27.530832, 34.598907, 32.936584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016829, 35.067875, 33.264954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800858, 34.799717, 33.061367>,  <26.671274, 34.638821, 32.939213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800858, 34.799717, 33.061367>,  <27.016829, 35.067875, 33.264954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800858, 34.799717, 33.061367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718285, 0.051741, 0.693822,
		-0.438799, 0.740199, -0.509470,
		-0.539928, -0.670394, -0.508970,
		26.638880, 34.598598, 32.908676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832657, 34.992386, 32.414803>,  <27.016829, 35.067875, 33.264954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832657, 34.992386, 32.414803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517344, 34.798317, 32.263428>,  <26.328156, 34.681873, 32.172604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.517344, 34.798317, 32.263428>,  <26.832657, 34.992386, 32.414803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517344, 34.798317, 32.263428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438987, 0.012479, 0.898407,
		-0.431162, 0.874328, -0.222822,
		-0.788283, -0.485175, -0.378438,
		26.280859, 34.652763, 32.149895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108681, 35.269680, 32.580383>,  <26.832657, 34.992386, 32.414803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108681, 35.269680, 32.580383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062244, 34.877453, 32.517124>,  <26.034382, 34.642117, 32.479168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062244, 34.877453, 32.517124>,  <26.108681, 35.269680, 32.580383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062244, 34.877453, 32.517124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588355, -0.060389, 0.806344,
		-0.800225, 0.186655, -0.569912,
		-0.116092, -0.980568, -0.158144,
		26.027416, 34.583282, 32.469681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615919, 35.191555, 32.955894>,  <26.108681, 35.269680, 32.580383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615919, 35.191555, 32.955894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691900, 34.820099, 32.828426>,  <25.737488, 34.597225, 32.751945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691900, 34.820099, 32.828426>,  <25.615919, 35.191555, 32.955894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691900, 34.820099, 32.828426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675640, -0.359141, 0.643839,
		-0.712340, 0.093009, -0.695644,
		0.189951, -0.928637, -0.318671,
		25.748886, 34.541508, 32.732826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970770, 34.894283, 32.847702>,  <25.615919, 35.191555, 32.955894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970770, 34.894283, 32.847702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258390, 34.634212, 32.945877>,  <25.430962, 34.478172, 33.004784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258390, 34.634212, 32.945877>,  <24.970770, 34.894283, 32.847702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258390, 34.634212, 32.945877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517920, -0.265852, 0.813069,
		-0.463387, -0.711755, -0.527900,
		0.719049, -0.650175, 0.245440,
		25.474106, 34.439159, 33.019508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.637312, 34.309891, 32.909760>,  <24.970770, 34.894283, 32.847702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.637312, 34.309891, 32.909760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976273, 34.250320, 33.113617>,  <25.179649, 34.214581, 33.235931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976273, 34.250320, 33.113617>,  <24.637312, 34.309891, 32.909760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976273, 34.250320, 33.113617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520491, -0.422622, 0.741943,
		0.104896, -0.893987, -0.435642,
		0.847399, -0.148921, 0.509644,
		25.230492, 34.205643, 33.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664593, 33.626034, 33.109585>,  <24.637312, 34.309891, 32.909760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664593, 33.626034, 33.109585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914839, 33.812908, 33.359497>,  <25.064987, 33.925034, 33.509445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914839, 33.812908, 33.359497>,  <24.664593, 33.626034, 33.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914839, 33.812908, 33.359497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329715, -0.567477, 0.754492,
		0.707032, -0.678020, -0.200985,
		0.625615, 0.467182, 0.624777,
		25.102524, 33.953064, 33.546928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899424, 33.070820, 33.608181>,  <24.664593, 33.626034, 33.109585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899424, 33.070820, 33.608181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974669, 33.425751, 33.776592>,  <25.019815, 33.638710, 33.877640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.974669, 33.425751, 33.776592>,  <24.899424, 33.070820, 33.608181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974669, 33.425751, 33.776592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460705, -0.298868, 0.835720,
		0.867390, -0.351176, 0.352577,
		0.188111, 0.887329, 0.421024,
		25.031101, 33.691948, 33.902901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943602, 32.965786, 34.313213>,  <24.899424, 33.070820, 33.608181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943602, 32.965786, 34.313213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851561, 33.354797, 34.299103>,  <24.796335, 33.588203, 34.290638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.851561, 33.354797, 34.299103>,  <24.943602, 32.965786, 34.313213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.851561, 33.354797, 34.299103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432799, -0.069800, 0.898784,
		0.871629, 0.222080, 0.436970,
		-0.230103, 0.972527, -0.035276,
		24.782530, 33.646557, 34.288521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552622, 32.709919, 34.413368>,  <24.943602, 32.965786, 34.313213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552622, 32.709919, 34.413368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349108, 33.010899, 34.580677>,  <25.226999, 33.191486, 34.681061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349108, 33.010899, 34.580677>,  <25.552622, 32.709919, 34.413368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349108, 33.010899, 34.580677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855076, -0.498077, -0.144100,
		0.099903, -0.430970, 0.896819,
		-0.508788, 0.752452, 0.418272,
		25.196472, 33.236633, 34.706158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149170, 32.775101, 34.824509>,  <25.552622, 32.709919, 34.413368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149170, 32.775101, 34.824509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230404, 32.517590, 34.529400>,  <26.279144, 32.363083, 34.352337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230404, 32.517590, 34.529400>,  <26.149170, 32.775101, 34.824509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230404, 32.517590, 34.529400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497127, -0.581346, 0.644128,
		-0.843576, -0.497579, 0.201976,
		0.203087, -0.643779, -0.737770,
		26.291330, 32.324455, 34.308067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095470, 32.033672, 35.068504>,  <26.149170, 32.775101, 34.824509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095470, 32.033672, 35.068504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336098, 32.026165, 34.749065>,  <26.480474, 32.021660, 34.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336098, 32.026165, 34.749065>,  <26.095470, 32.033672, 35.068504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336098, 32.026165, 34.749065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494134, -0.776764, 0.390473,
		-0.627651, -0.629512, -0.458005,
		0.601570, -0.018765, -0.798600,
		26.516569, 32.020535, 34.509487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093647, 31.387436, 34.727131>,  <26.095470, 32.033672, 35.068504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093647, 31.387436, 34.727131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451483, 31.551878, 34.657040>,  <26.666183, 31.650543, 34.614986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451483, 31.551878, 34.657040>,  <26.093647, 31.387436, 34.727131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451483, 31.551878, 34.657040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442364, -0.758939, 0.477835,
		0.063455, -0.504979, -0.860796,
		0.894588, 0.411106, -0.175226,
		26.719860, 31.675209, 34.604473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553400, 30.834568, 34.471291>,  <26.093647, 31.387436, 34.727131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553400, 30.834568, 34.471291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798893, 31.113266, 34.619820>,  <26.946188, 31.280485, 34.708939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798893, 31.113266, 34.619820>,  <26.553400, 30.834568, 34.471291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798893, 31.113266, 34.619820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352816, -0.662781, 0.660487,
		0.706296, -0.274354, -0.652592,
		0.613732, 0.696744, 0.371323,
		26.983013, 31.322289, 34.731216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175364, 30.511724, 34.543907>,  <26.553400, 30.834568, 34.471291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175364, 30.511724, 34.543907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212528, 30.794294, 34.824574>,  <27.234827, 30.963837, 34.992973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212528, 30.794294, 34.824574>,  <27.175364, 30.511724, 34.543907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212528, 30.794294, 34.824574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446810, -0.659352, 0.604661,
		0.889791, 0.257332, -0.376898,
		0.092910, 0.706424, 0.701664,
		27.240400, 31.006222, 35.035072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851389, 30.608984, 34.762589>,  <27.175364, 30.511724, 34.543907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851389, 30.608984, 34.762589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619696, 30.727598, 35.066315>,  <27.480680, 30.798767, 35.248550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619696, 30.727598, 35.066315>,  <27.851389, 30.608984, 34.762589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619696, 30.727598, 35.066315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566084, -0.523921, 0.636439,
		0.586547, 0.798482, 0.135608,
		-0.579233, 0.296536, 0.759312,
		27.445925, 30.816559, 35.294109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421597, 30.357327, 35.178638>,  <27.851389, 30.608984, 34.762589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421597, 30.357327, 35.178638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636642, 30.599401, 34.943790>,  <28.765671, 30.744646, 34.802879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636642, 30.599401, 34.943790>,  <28.421597, 30.357327, 35.178638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636642, 30.599401, 34.943790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428046, -0.404031, -0.808415,
		-0.726460, 0.685934, 0.041835,
		0.537617, 0.605189, -0.587124,
		28.797928, 30.780958, 34.767654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535986, 31.104340, 35.065804>,  <28.421597, 30.357327, 35.178638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535986, 31.104340, 35.065804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265675, 31.042442, 35.354076>,  <28.103487, 31.005304, 35.527039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265675, 31.042442, 35.354076>,  <28.535986, 31.104340, 35.065804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265675, 31.042442, 35.354076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640972, -0.606151, 0.470888,
		0.363974, 0.780151, 0.508809,
		-0.675779, -0.154741, 0.720679,
		28.062941, 30.996019, 35.570278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772417, 31.463079, 35.757675>,  <28.535986, 31.104340, 35.065804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772417, 31.463079, 35.757675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524035, 31.167025, 35.860909>,  <28.375004, 30.989391, 35.922848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524035, 31.167025, 35.860909>,  <28.772417, 31.463079, 35.757675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524035, 31.167025, 35.860909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713579, -0.397520, 0.576874,
		-0.324371, 0.542380, 0.774989,
		-0.620958, -0.740137, 0.258087,
		28.337748, 30.944984, 35.938335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727428, 31.296648, 36.450764>,  <28.772417, 31.463079, 35.757675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727428, 31.296648, 36.450764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612396, 30.937565, 36.317249>,  <28.543377, 30.722115, 36.237141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612396, 30.937565, 36.317249>,  <28.727428, 31.296648, 36.450764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612396, 30.937565, 36.317249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460548, -0.435189, 0.773632,
		-0.839757, 0.068757, 0.538591,
		-0.287582, -0.897710, -0.333787,
		28.526121, 30.668251, 36.217113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317039, 30.955671, 36.965256>,  <28.727428, 31.296648, 36.450764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317039, 30.955671, 36.965256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533848, 30.711994, 36.733707>,  <28.663933, 30.565788, 36.594776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533848, 30.711994, 36.733707>,  <28.317039, 30.955671, 36.965256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533848, 30.711994, 36.733707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338451, -0.472255, 0.813896,
		-0.769196, -0.637070, -0.049791,
		0.542022, -0.609194, -0.578874,
		28.696455, 30.529236, 36.560043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066463, 30.312023, 36.992126>,  <28.317039, 30.955671, 36.965256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066463, 30.312023, 36.992126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457216, 30.283979, 36.911346>,  <28.691668, 30.267153, 36.862877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457216, 30.283979, 36.911346>,  <28.066463, 30.312023, 36.992126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457216, 30.283979, 36.911346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099834, -0.685735, 0.720972,
		-0.189034, -0.724466, -0.662883,
		0.976882, -0.070110, -0.201953,
		28.750280, 30.262947, 36.850761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116730, 29.642683, 37.044643>,  <28.066463, 30.312023, 36.992126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116730, 29.642683, 37.044643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501822, 29.743250, 37.084518>,  <28.732878, 29.803589, 37.108444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501822, 29.743250, 37.084518>,  <28.116730, 29.642683, 37.044643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501822, 29.743250, 37.084518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148676, -0.799875, 0.581460,
		0.225927, -0.544969, -0.807444,
		0.962732, 0.251415, 0.099690,
		28.790642, 29.818674, 37.114426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382027, 29.814837, 37.054916>,  <28.116730, 29.642683, 37.044643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382027, 29.814837, 37.054916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183535, 29.855021, 37.399860>,  <27.064440, 29.879131, 37.606827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183535, 29.855021, 37.399860>,  <27.382027, 29.814837, 37.054916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183535, 29.855021, 37.399860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238247, 0.939394, -0.246532,
		-0.834861, -0.327791, -0.442222,
		-0.496232, 0.100462, 0.862358,
		27.034664, 29.885159, 37.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434687, 30.090593, 36.336094>,  <27.382027, 29.814837, 37.054916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434687, 30.090593, 36.336094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709473, 30.362246, 36.232662>,  <27.874344, 30.525236, 36.170605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709473, 30.362246, 36.232662>,  <27.434687, 30.090593, 36.336094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709473, 30.362246, 36.232662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677031, 0.468850, -0.567282,
		-0.264024, 0.564767, 0.781875,
		0.686964, 0.679130, -0.258577,
		27.915562, 30.565985, 36.155090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055296, 30.725134, 36.399517>,  <27.434687, 30.090593, 36.336094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055296, 30.725134, 36.399517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365122, 30.783388, 36.153316>,  <27.551018, 30.818340, 36.005596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365122, 30.783388, 36.153316>,  <27.055296, 30.725134, 36.399517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365122, 30.783388, 36.153316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575440, 0.566165, -0.590191,
		0.262519, 0.811324, 0.522337,
		0.774566, 0.145637, -0.615498,
		27.597492, 30.827080, 35.968666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042894, 31.381392, 36.187710>,  <27.055296, 30.725134, 36.399517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042894, 31.381392, 36.187710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267603, 31.244513, 35.886429>,  <27.402428, 31.162386, 35.705662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267603, 31.244513, 35.886429>,  <27.042894, 31.381392, 36.187710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267603, 31.244513, 35.886429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342218, 0.732775, -0.588157,
		0.753194, 0.588169, 0.294545,
		0.561770, -0.342198, -0.753203,
		27.436134, 31.141853, 35.660469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509991, 31.927830, 35.922401>,  <27.042894, 31.381392, 36.187710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509991, 31.927830, 35.922401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419970, 31.662615, 35.636818>,  <27.365957, 31.503487, 35.465469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419970, 31.662615, 35.636818>,  <27.509991, 31.927830, 35.922401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419970, 31.662615, 35.636818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175672, 0.748356, -0.639611,
		0.958378, -0.018526, -0.284898,
		-0.225055, -0.663038, -0.713954,
		27.352453, 31.463703, 35.422630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756170, 32.232891, 35.290157>,  <27.509991, 31.927830, 35.922401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756170, 32.232891, 35.290157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517242, 31.960386, 35.120884>,  <27.373886, 31.796883, 35.019321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517242, 31.960386, 35.120884>,  <27.756170, 32.232891, 35.290157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517242, 31.960386, 35.120884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286772, 0.674203, -0.680597,
		0.748980, -0.285176, -0.598083,
		-0.597319, -0.681267, -0.423185,
		27.338047, 31.756006, 34.993927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916193, 32.258625, 34.585659>,  <27.756170, 32.232891, 35.290157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916193, 32.258625, 34.585659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550659, 32.100498, 34.622818>,  <27.331339, 32.005623, 34.645115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550659, 32.100498, 34.622818>,  <27.916193, 32.258625, 34.585659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550659, 32.100498, 34.622818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313614, 0.541696, -0.779880,
		0.257979, -0.741815, -0.618997,
		-0.913834, -0.395319, 0.092897,
		27.276508, 31.981903, 34.650688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614611, 31.998756, 33.928200>,  <27.916193, 32.258625, 34.585659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614611, 31.998756, 33.928200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324125, 32.095127, 34.185749>,  <27.149834, 32.152950, 34.340279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324125, 32.095127, 34.185749>,  <27.614611, 31.998756, 33.928200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324125, 32.095127, 34.185749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387239, 0.630506, -0.672687,
		-0.568033, -0.737846, -0.364585,
		-0.726213, 0.240927, 0.643871,
		27.106262, 32.167404, 34.378910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361525, 31.624239, 33.892998>,  <27.614611, 31.998756, 33.928200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361525, 31.624239, 33.892998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665432, 31.703588, 34.140675>,  <28.847776, 31.751198, 34.289280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665432, 31.703588, 34.140675>,  <28.361525, 31.624239, 33.892998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665432, 31.703588, 34.140675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646097, -0.337061, -0.684798,
		0.072858, 0.920346, -0.384259,
		0.759770, 0.198375, 0.619190,
		28.893364, 31.763102, 34.326431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887245, 32.055626, 33.560566>,  <28.361525, 31.624239, 33.892998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887245, 32.055626, 33.560566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133678, 31.875217, 33.818874>,  <29.281538, 31.766972, 33.973858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133678, 31.875217, 33.818874>,  <28.887245, 32.055626, 33.560566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133678, 31.875217, 33.818874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402551, -0.524401, -0.750304,
		0.677048, 0.722205, -0.141513,
		0.616083, -0.451026, 0.645769,
		29.318502, 31.739910, 34.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626461, 32.078777, 33.271606>,  <28.887245, 32.055626, 33.560566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626461, 32.078777, 33.271606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519669, 31.779364, 33.514393>,  <29.455593, 31.599714, 33.660065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519669, 31.779364, 33.514393>,  <29.626461, 32.078777, 33.271606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519669, 31.779364, 33.514393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347320, -0.662242, -0.663930,
		0.898938, 0.033554, 0.436790,
		-0.266983, -0.748538, 0.606969,
		29.439573, 31.554802, 33.696484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078615, 32.653168, 33.425720>,  <29.626461, 32.078777, 33.271606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078615, 32.653168, 33.425720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025282, 32.612976, 33.820107>,  <29.993282, 32.588863, 34.056740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025282, 32.612976, 33.820107>,  <30.078615, 32.653168, 33.425720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025282, 32.612976, 33.820107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354667, 0.924125, 0.142137,
		-0.925437, 0.368641, -0.087581,
		-0.133334, -0.100477, 0.985965,
		29.985281, 32.582832, 34.115894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762085, 32.709286, 33.562489>,  <30.078615, 32.653168, 33.425720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762085, 32.709286, 33.562489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857960, 32.480476, 33.248714>,  <30.915485, 32.343189, 33.060452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857960, 32.480476, 33.248714>,  <30.762085, 32.709286, 33.562489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857960, 32.480476, 33.248714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845628, 0.519933, -0.120757,
		0.476929, -0.634397, 0.608341,
		0.239689, -0.572023, -0.784436,
		30.929867, 32.308868, 33.013382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518698, 32.727383, 33.645977>,  <30.762085, 32.709286, 33.562489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518698, 32.727383, 33.645977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421368, 32.583992, 33.285469>,  <31.362970, 32.497959, 33.069164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421368, 32.583992, 33.285469>,  <31.518698, 32.727383, 33.645977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421368, 32.583992, 33.285469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785876, 0.471756, -0.399808,
		0.568501, -0.805570, 0.166928,
		-0.243324, -0.358475, -0.901271,
		31.348370, 32.476448, 33.015087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148903, 32.609875, 33.299561>,  <31.518698, 32.727383, 33.645977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148903, 32.609875, 33.299561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870249, 32.644093, 33.014641>,  <31.703054, 32.664623, 32.843689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870249, 32.644093, 33.014641>,  <32.148903, 32.609875, 33.299561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870249, 32.644093, 33.014641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655073, 0.480685, -0.582942,
		0.292528, -0.872711, -0.390899,
		-0.696640, 0.085540, -0.712303,
		31.661257, 32.669754, 32.800949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410286, 32.371712, 32.587265>,  <32.148903, 32.609875, 33.299561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410286, 32.371712, 32.587265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111454, 32.637081, 32.570568>,  <31.932156, 32.796303, 32.560551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111454, 32.637081, 32.570568>,  <32.410286, 32.371712, 32.587265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111454, 32.637081, 32.570568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572810, 0.610628, -0.546828,
		-0.337291, -0.432433, -0.836204,
		-0.747076, 0.663426, -0.041742,
		31.887331, 32.836109, 32.558044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550724, 32.665981, 31.957581>,  <32.410286, 32.371712, 32.587265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550724, 32.665981, 31.957581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317863, 32.873127, 32.208313>,  <32.178146, 32.997414, 32.358753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317863, 32.873127, 32.208313>,  <32.550724, 32.665981, 31.957581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317863, 32.873127, 32.208313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334345, 0.855207, -0.396023,
		-0.741156, -0.020967, -0.671005,
		-0.582151, 0.517862, 0.626832,
		32.143219, 33.028484, 32.396362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718914, 33.288319, 31.860315>,  <32.550724, 32.665981, 31.957581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718914, 33.288319, 31.860315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427467, 33.376305, 32.119774>,  <32.252602, 33.429096, 32.275448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427467, 33.376305, 32.119774>,  <32.718914, 33.288319, 31.860315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427467, 33.376305, 32.119774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167608, 0.975496, -0.142533,
		-0.664102, 0.004867, -0.747626,
		-0.728613, 0.219965, 0.648644,
		32.208885, 33.442295, 32.314365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305660, 33.778130, 31.486816>,  <32.718914, 33.288319, 31.860315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305660, 33.778130, 31.486816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288567, 33.808891, 31.885265>,  <32.278313, 33.827347, 32.124336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288567, 33.808891, 31.885265>,  <32.305660, 33.778130, 31.486816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288567, 33.808891, 31.885265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011660, 0.996927, -0.077465,
		-0.999019, -0.014925, -0.041701,
		-0.042729, 0.076902, 0.996123,
		32.275749, 33.831963, 32.184101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312759, 34.483879, 31.726980>,  <32.305660, 33.778130, 31.486816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312759, 34.483879, 31.726980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558990, 34.571087, 31.424051>,  <32.706730, 34.623413, 31.242294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558990, 34.571087, 31.424051>,  <32.312759, 34.483879, 31.726980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558990, 34.571087, 31.424051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235376, -0.866247, -0.440697,
		-0.752109, 0.449537, -0.481922,
		0.615573, 0.218019, -0.757322,
		32.743664, 34.636494, 31.196854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020779, 34.774128, 31.803972>,  <32.312759, 34.483879, 31.726980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020779, 34.774128, 31.803972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300972, 34.855846, 32.077492>,  <33.469090, 34.904877, 32.241604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300972, 34.855846, 32.077492>,  <33.020779, 34.774128, 31.803972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300972, 34.855846, 32.077492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701543, -0.372975, -0.607229,
		0.130983, 0.905070, -0.404589,
		0.700486, 0.204300, 0.683799,
		33.511116, 34.917137, 32.282631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539249, 35.131653, 31.522219>,  <33.020779, 34.774128, 31.803972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539249, 35.131653, 31.522219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716743, 34.895206, 31.791643>,  <33.823242, 34.753338, 31.953297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716743, 34.895206, 31.791643>,  <33.539249, 35.131653, 31.522219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716743, 34.895206, 31.791643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653973, -0.300290, -0.694367,
		0.612712, 0.748606, 0.253322,
		0.443737, -0.591113, 0.673560,
		33.849865, 34.717873, 31.993711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277683, 35.244736, 31.561104>,  <33.539249, 35.131653, 31.522219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277683, 35.244736, 31.561104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201550, 34.866142, 31.665371>,  <34.155869, 34.638988, 31.727932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201550, 34.866142, 31.665371>,  <34.277683, 35.244736, 31.561104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201550, 34.866142, 31.665371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677297, -0.318809, -0.663046,
		0.710664, 0.050351, 0.701728,
		-0.190332, -0.946480, 0.260669,
		34.144451, 34.582199, 31.743572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883259, 34.918667, 31.833958>,  <34.277683, 35.244736, 31.561104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883259, 34.918667, 31.833958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645386, 34.665146, 31.636110>,  <34.502663, 34.513035, 31.517403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645386, 34.665146, 31.636110>,  <34.883259, 34.918667, 31.833958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645386, 34.665146, 31.636110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725910, -0.158877, -0.669188,
		0.345547, -0.757006, 0.554562,
		-0.594687, -0.633798, -0.494619,
		34.466980, 34.475006, 31.487724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297581, 34.437252, 31.713139>,  <34.883259, 34.918667, 31.833958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297581, 34.437252, 31.713139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009640, 34.392757, 31.439075>,  <34.836876, 34.366058, 31.274637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009640, 34.392757, 31.439075>,  <35.297581, 34.437252, 31.713139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009640, 34.392757, 31.439075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693980, -0.135719, -0.707087,
		-0.014331, -0.984482, 0.174897,
		-0.719852, -0.111242, -0.685156,
		34.793686, 34.359386, 31.233528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148773, 33.765953, 31.421879>,  <35.297581, 34.437252, 31.713139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148773, 33.765953, 31.421879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092930, 34.051636, 31.147530>,  <35.059422, 34.223045, 30.982920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092930, 34.051636, 31.147530>,  <35.148773, 33.765953, 31.421879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092930, 34.051636, 31.147530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681235, -0.433409, -0.589978,
		-0.718628, -0.549609, -0.426032,
		-0.139611, 0.714203, -0.685874,
		35.051048, 34.265896, 30.941767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958794, 33.395515, 30.726814>,  <35.148773, 33.765953, 31.421879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958794, 33.395515, 30.726814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108318, 33.758560, 30.650393>,  <35.198032, 33.976387, 30.604540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108318, 33.758560, 30.650393>,  <34.958794, 33.395515, 30.726814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108318, 33.758560, 30.650393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537022, -0.379744, -0.753260,
		-0.756221, 0.178978, -0.629362,
		0.373813, 0.907613, -0.191055,
		35.220463, 34.030846, 30.593077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976746, 33.412575, 30.001947>,  <34.958794, 33.395515, 30.726814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976746, 33.412575, 30.001947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223785, 33.705315, 30.117163>,  <35.372009, 33.880959, 30.186291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223785, 33.705315, 30.117163>,  <34.976746, 33.412575, 30.001947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223785, 33.705315, 30.117163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658876, -0.281456, -0.697613,
		-0.429479, 0.620626, -0.656027,
		0.617600, 0.731851, 0.288036,
		35.409065, 33.924870, 30.203573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038704, 33.757141, 29.387676>,  <34.976746, 33.412575, 30.001947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038704, 33.757141, 29.387676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342922, 33.868992, 29.622070>,  <35.525452, 33.936104, 29.762707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342922, 33.868992, 29.622070>,  <35.038704, 33.757141, 29.387676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342922, 33.868992, 29.622070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622244, -0.056169, -0.780805,
		-0.185421, 0.958464, -0.216715,
		0.760547, 0.279627, 0.585984,
		35.571087, 33.952881, 29.797865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403801, 34.187984, 28.956650>,  <35.038704, 33.757141, 29.387676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403801, 34.187984, 28.956650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647766, 34.061562, 29.247337>,  <35.794144, 33.985710, 29.421749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647766, 34.061562, 29.247337>,  <35.403801, 34.187984, 28.956650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647766, 34.061562, 29.247337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744244, -0.086575, -0.662274,
		0.272230, 0.944782, 0.182419,
		0.609912, -0.316055, 0.726717,
		35.830738, 33.966743, 29.465353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085938, 34.600487, 28.995161>,  <35.403801, 34.187984, 28.956650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085938, 34.600487, 28.995161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133564, 34.232700, 29.145048>,  <36.162140, 34.012028, 29.234980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133564, 34.232700, 29.145048>,  <36.085938, 34.600487, 28.995161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133564, 34.232700, 29.145048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700126, -0.189855, -0.688315,
		0.704022, 0.344302, 0.621135,
		0.119062, -0.919463, 0.374717,
		36.169281, 33.956863, 29.257463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792206, 34.483383, 29.005934>,  <36.085938, 34.600487, 28.995161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792206, 34.483383, 29.005934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611996, 34.127487, 29.035275>,  <36.503868, 33.913948, 29.052879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611996, 34.127487, 29.035275>,  <36.792206, 34.483383, 29.005934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611996, 34.127487, 29.035275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570375, -0.350071, -0.743050,
		0.686802, -0.292928, 0.665204,
		-0.450529, -0.889744, 0.073351,
		36.476837, 33.860565, 29.057280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390594, 33.989582, 28.963991>,  <36.792206, 34.483383, 29.005934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390594, 33.989582, 28.963991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060966, 33.779945, 28.877975>,  <36.863190, 33.654163, 28.826366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060966, 33.779945, 28.877975>,  <37.390594, 33.989582, 28.963991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060966, 33.779945, 28.877975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477815, -0.439138, -0.760822,
		0.304306, -0.729719, 0.612297,
		-0.824069, -0.524088, -0.215039,
		36.813747, 33.622719, 28.813463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682682, 33.423843, 28.679518>,  <37.390594, 33.989582, 28.963991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682682, 33.423843, 28.679518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300137, 33.364563, 28.578793>,  <37.070610, 33.328995, 28.518358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300137, 33.364563, 28.578793>,  <37.682682, 33.423843, 28.679518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300137, 33.364563, 28.578793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291289, -0.416129, -0.861387,
		0.022872, -0.897147, 0.441139,
		-0.956362, -0.148201, -0.251811,
		37.013229, 33.320103, 28.503248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538006, 32.723759, 28.399883>,  <37.682682, 33.423843, 28.679518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538006, 32.723759, 28.399883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231499, 32.935242, 28.253839>,  <37.047596, 33.062130, 28.166214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231499, 32.935242, 28.253839>,  <37.538006, 32.723759, 28.399883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231499, 32.935242, 28.253839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241999, -0.288914, -0.926264,
		-0.595208, -0.798120, 0.093438,
		-0.766266, 0.528709, -0.365108,
		37.001617, 33.093853, 28.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191769, 32.323769, 27.897263>,  <37.538006, 32.723759, 28.399883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191769, 32.323769, 27.897263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077530, 32.690262, 27.784876>,  <37.008987, 32.910160, 27.717443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077530, 32.690262, 27.784876>,  <37.191769, 32.323769, 27.897263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077530, 32.690262, 27.784876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003572, -0.292160, -0.956363,
		-0.958342, -0.274141, 0.080168,
		-0.285600, 0.916236, -0.280968,
		36.991848, 32.965134, 27.700584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810776, 32.183300, 27.300173>,  <37.191769, 32.323769, 27.897263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810776, 32.183300, 27.300173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894150, 32.572651, 27.262049>,  <36.944176, 32.806263, 27.239174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894150, 32.572651, 27.262049>,  <36.810776, 32.183300, 27.300173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894150, 32.572651, 27.262049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024734, -0.092173, -0.995436,
		-0.977723, 0.209843, 0.004863,
		0.208437, 0.973381, -0.095310,
		36.956680, 32.864666, 27.233456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348446, 32.509506, 26.783821>,  <36.810776, 32.183300, 27.300173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348446, 32.509506, 26.783821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653770, 32.767754, 26.793074>,  <36.836967, 32.922703, 26.798624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653770, 32.767754, 26.793074>,  <36.348446, 32.509506, 26.783821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653770, 32.767754, 26.793074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051026, -0.024559, -0.998395,
		-0.644011, 0.763268, -0.051689,
		0.763313, 0.645615, 0.023130,
		36.882763, 32.961437, 26.800013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127056, 33.018894, 26.293192>,  <36.348446, 32.509506, 26.783821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127056, 33.018894, 26.293192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522488, 33.031136, 26.352205>,  <36.759747, 33.038483, 26.387613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522488, 33.031136, 26.352205>,  <36.127056, 33.018894, 26.293192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522488, 33.031136, 26.352205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128759, 0.336948, -0.932678,
		-0.078257, 0.941026, 0.329160,
		0.988583, 0.030606, 0.147534,
		36.819061, 33.040318, 26.396465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317574, 33.607895, 26.065807>,  <36.127056, 33.018894, 26.293192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317574, 33.607895, 26.065807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661057, 33.403999, 26.044691>,  <36.867146, 33.281662, 26.032021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661057, 33.403999, 26.044691>,  <36.317574, 33.607895, 26.065807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661057, 33.403999, 26.044691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198298, 0.425500, -0.882965,
		0.472542, 0.747742, 0.466461,
		0.858710, -0.509736, -0.052790,
		36.918671, 33.251080, 26.028854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875103, 34.150906, 25.830284>,  <36.317574, 33.607895, 26.065807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875103, 34.150906, 25.830284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012600, 33.786961, 25.737339>,  <37.095100, 33.568596, 25.681572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012600, 33.786961, 25.737339>,  <36.875103, 34.150906, 25.830284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012600, 33.786961, 25.737339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133404, 0.292245, -0.946993,
		0.929539, 0.294527, 0.221837,
		0.343746, -0.909861, -0.232362,
		37.115723, 33.514004, 25.667631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426491, 34.325924, 25.391575>,  <36.875103, 34.150906, 25.830284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426491, 34.325924, 25.391575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360390, 33.936516, 25.328386>,  <37.320728, 33.702873, 25.290472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360390, 33.936516, 25.328386>,  <37.426491, 34.325924, 25.391575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360390, 33.936516, 25.328386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383133, 0.084227, -0.919845,
		0.908791, -0.212532, 0.359068,
		-0.165254, -0.973517, -0.157972,
		37.310814, 33.644459, 25.280994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115715, 33.867222, 25.210154>,  <37.426491, 34.325924, 25.391575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115715, 33.867222, 25.210154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782066, 33.688126, 25.081301>,  <37.581875, 33.580669, 25.003990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782066, 33.688126, 25.081301>,  <38.115715, 33.867222, 25.210154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782066, 33.688126, 25.081301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329002, 0.064882, -0.942097,
		0.442714, -0.891807, 0.093188,
		-0.834123, -0.447739, -0.322131,
		37.531830, 33.553802, 24.984661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342072, 33.524048, 24.707005>,  <38.115715, 33.867222, 25.210154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342072, 33.524048, 24.707005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950329, 33.473469, 24.643929>,  <37.715282, 33.443119, 24.606083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950329, 33.473469, 24.643929>,  <38.342072, 33.524048, 24.707005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950329, 33.473469, 24.643929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154183, 0.037112, -0.987345,
		0.130703, -0.991278, -0.016849,
		-0.979359, -0.126452, -0.157689,
		37.656521, 33.435535, 24.596622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301300, 32.967472, 24.326534>,  <38.342072, 33.524048, 24.707005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301300, 32.967472, 24.326534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965729, 33.172283, 24.252756>,  <37.764385, 33.295170, 24.208490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965729, 33.172283, 24.252756>,  <38.301300, 32.967472, 24.326534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965729, 33.172283, 24.252756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145546, -0.115481, -0.982589,
		-0.524415, -0.851169, 0.022356,
		-0.838931, 0.512031, -0.184445,
		37.714050, 33.325893, 24.197422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143730, 32.814404, 23.719448>,  <38.301300, 32.967472, 24.326534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143730, 32.814404, 23.719448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849457, 33.085190, 23.728266>,  <37.672894, 33.247662, 23.733557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849457, 33.085190, 23.728266>,  <38.143730, 32.814404, 23.719448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849457, 33.085190, 23.728266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043876, 0.080111, -0.995820,
		-0.675900, -0.731644, -0.088639,
		-0.735686, 0.676964, 0.022046,
		37.628750, 33.288280, 23.734879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531059, 32.537468, 23.329441>,  <38.143730, 32.814404, 23.719448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531059, 32.537468, 23.329441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548233, 32.937092, 23.331644>,  <37.558537, 33.176868, 23.332966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548233, 32.937092, 23.331644>,  <37.531059, 32.537468, 23.329441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548233, 32.937092, 23.331644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016672, 0.006229, -0.999842,
		-0.998939, 0.042832, 0.016924,
		0.042931, 0.999063, 0.005508,
		37.561111, 33.236809, 23.333296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220978, 32.763512, 22.696577>,  <37.531059, 32.537468, 23.329441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220978, 32.763512, 22.696577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409172, 33.104034, 22.789454>,  <37.522091, 33.308350, 22.845179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409172, 33.104034, 22.789454>,  <37.220978, 32.763512, 22.696577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409172, 33.104034, 22.789454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049550, 0.237231, -0.970189,
		-0.881013, 0.467969, 0.069433,
		0.470490, 0.851308, 0.232192,
		37.550320, 33.359428, 22.859112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879776, 33.231602, 22.188904>,  <37.220978, 32.763512, 22.696577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879776, 33.231602, 22.188904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225231, 33.368847, 22.336637>,  <37.432503, 33.451195, 22.425278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225231, 33.368847, 22.336637>,  <36.879776, 33.231602, 22.188904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225231, 33.368847, 22.336637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337961, 0.149546, -0.929203,
		-0.374053, 0.927314, 0.013195,
		0.863636, 0.343112, 0.369334,
		37.484322, 33.471779, 22.447437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952972, 33.837208, 21.943420>,  <36.879776, 33.231602, 22.188904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952972, 33.837208, 21.943420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329674, 33.746193, 22.042473>,  <37.555695, 33.691586, 22.101904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329674, 33.746193, 22.042473>,  <36.952972, 33.837208, 21.943420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329674, 33.746193, 22.042473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300191, 0.236863, -0.924003,
		0.151588, 0.944523, 0.291371,
		0.941757, -0.227535, 0.247632,
		37.612202, 33.677933, 22.116762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330944, 34.472404, 21.852396>,  <36.952972, 33.837208, 21.943420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330944, 34.472404, 21.852396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584118, 34.162842, 21.843782>,  <37.736023, 33.977104, 21.838615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584118, 34.162842, 21.843782>,  <37.330944, 34.472404, 21.852396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584118, 34.162842, 21.843782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399664, 0.350427, -0.847036,
		0.663073, 0.527510, 0.531100,
		0.632932, -0.773908, -0.021532,
		37.773998, 33.930668, 21.837322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906178, 34.752197, 21.671783>,  <37.330944, 34.472404, 21.852396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906178, 34.752197, 21.671783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978153, 34.374763, 21.560591>,  <38.021339, 34.148304, 21.493876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978153, 34.374763, 21.560591>,  <37.906178, 34.752197, 21.671783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978153, 34.374763, 21.560591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413154, 0.328956, -0.849171,
		0.892707, 0.037948, 0.449036,
		0.179937, -0.943582, -0.277984,
		38.032135, 34.091690, 21.477196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587837, 34.734383, 21.348848>,  <37.906178, 34.752197, 21.671783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587837, 34.734383, 21.348848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416615, 34.394981, 21.224392>,  <38.313881, 34.191341, 21.149719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416615, 34.394981, 21.224392>,  <38.587837, 34.734383, 21.348848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416615, 34.394981, 21.224392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271743, 0.207503, -0.939733,
		0.861930, -0.486809, 0.141751,
		-0.428057, -0.848504, -0.311140,
		38.288197, 34.140430, 21.131050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111717, 34.287338, 21.003864>,  <38.587837, 34.734383, 21.348848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111717, 34.287338, 21.003864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744789, 34.190987, 20.877056>,  <38.524632, 34.133175, 20.800972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744789, 34.190987, 20.877056>,  <39.111717, 34.287338, 21.003864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744789, 34.190987, 20.877056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294298, 0.126072, -0.947362,
		0.268167, -0.962332, -0.044759,
		-0.917320, -0.240879, -0.317020,
		38.469593, 34.118725, 20.781950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221645, 33.661980, 20.558844>,  <39.111717, 34.287338, 21.003864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221645, 33.661980, 20.558844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874317, 33.836849, 20.465118>,  <38.665920, 33.941772, 20.408884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874317, 33.836849, 20.465118>,  <39.221645, 33.661980, 20.558844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874317, 33.836849, 20.465118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248650, -0.025092, -0.968268,
		-0.429183, -0.899026, -0.086916,
		-0.868318, 0.437176, -0.234312,
		38.613823, 33.968002, 20.394825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052330, 33.417030, 19.831976>,  <39.221645, 33.661980, 20.558844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052330, 33.417030, 19.831976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804016, 33.729771, 19.855080>,  <38.655029, 33.917416, 19.868942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804016, 33.729771, 19.855080>,  <39.052330, 33.417030, 19.831976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804016, 33.729771, 19.855080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270347, 0.282643, -0.920340,
		-0.735893, -0.555718, -0.386831,
		-0.620784, 0.781851, 0.057759,
		38.617783, 33.964325, 19.872408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774944, 33.505348, 19.212530>,  <39.052330, 33.417030, 19.831976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774944, 33.505348, 19.212530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717735, 33.860294, 19.387859>,  <38.683411, 34.073261, 19.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717735, 33.860294, 19.387859>,  <38.774944, 33.505348, 19.212530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717735, 33.860294, 19.387859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257661, 0.460987, -0.849177,
		-0.955592, -0.008511, -0.294571,
		-0.143021, 0.887366, 0.438322,
		38.674828, 34.126503, 19.519356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379471, 33.832390, 18.720192>,  <38.774944, 33.505348, 19.212530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379471, 33.832390, 18.720192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557869, 34.101261, 18.956589>,  <38.664909, 34.262585, 19.098427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557869, 34.101261, 18.956589>,  <38.379471, 33.832390, 18.720192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557869, 34.101261, 18.956589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129740, 0.604774, -0.785758,
		-0.885582, 0.427120, 0.182519,
		0.445996, 0.672174, 0.590991,
		38.691669, 34.302914, 19.133886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176083, 34.514561, 18.497814>,  <38.379471, 33.832390, 18.720192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176083, 34.514561, 18.497814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486916, 34.628220, 18.722458>,  <38.673416, 34.696415, 18.857244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486916, 34.628220, 18.722458>,  <38.176083, 34.514561, 18.497814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486916, 34.628220, 18.722458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354892, 0.539113, -0.763812,
		-0.519805, 0.792855, 0.318093,
		0.777080, 0.284145, 0.561611,
		38.720039, 34.713463, 18.890942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073677, 35.207428, 18.366533>,  <38.176083, 34.514561, 18.497814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073677, 35.207428, 18.366533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446461, 35.168545, 18.506252>,  <38.670132, 35.145214, 18.590084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446461, 35.168545, 18.506252>,  <38.073677, 35.207428, 18.366533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446461, 35.168545, 18.506252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262460, 0.845540, -0.464948,
		-0.250145, 0.524988, 0.813521,
		0.931956, -0.097212, 0.349296,
		38.726048, 35.139381, 18.611040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375431, 35.849709, 18.701138>,  <38.073677, 35.207428, 18.366533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375431, 35.849709, 18.701138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693405, 35.659981, 18.549820>,  <38.884190, 35.546146, 18.459030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693405, 35.659981, 18.549820>,  <38.375431, 35.849709, 18.701138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693405, 35.659981, 18.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201217, 0.794357, -0.573157,
		0.572356, 0.379503, 0.726902,
		0.794934, -0.474315, -0.378293,
		38.931885, 35.517685, 18.436333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769043, 36.422253, 18.493650>,  <38.375431, 35.849709, 18.701138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769043, 36.422253, 18.493650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964294, 36.107147, 18.343367>,  <39.081444, 35.918083, 18.253197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964294, 36.107147, 18.343367>,  <38.769043, 36.422253, 18.493650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964294, 36.107147, 18.343367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402963, 0.585266, -0.703622,
		0.774180, 0.192058, 0.603124,
		0.488124, -0.787767, -0.375709,
		39.110733, 35.870815, 18.230654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427063, 36.658501, 18.306213>,  <38.769043, 36.422253, 18.493650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427063, 36.658501, 18.306213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365582, 36.341145, 18.070618>,  <39.328693, 36.150730, 17.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365582, 36.341145, 18.070618>,  <39.427063, 36.658501, 18.306213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365582, 36.341145, 18.070618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355069, 0.511912, -0.782223,
		0.922119, -0.329358, 0.203028,
		-0.153699, -0.793391, -0.588988,
		39.319473, 36.103127, 17.893921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009556, 36.639702, 17.823505>,  <39.427063, 36.658501, 18.306213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009556, 36.639702, 17.823505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726418, 36.426559, 17.638025>,  <39.556534, 36.298672, 17.526737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726418, 36.426559, 17.638025>,  <40.009556, 36.639702, 17.823505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726418, 36.426559, 17.638025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215429, 0.462333, -0.860139,
		0.672716, -0.708739, -0.212466,
		-0.707844, -0.532858, -0.463702,
		39.514065, 36.266701, 17.498915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277901, 36.515194, 17.180998>,  <40.009556, 36.639702, 17.823505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277901, 36.515194, 17.180998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888351, 36.441345, 17.128101>,  <39.654621, 36.397038, 17.096363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888351, 36.441345, 17.128101>,  <40.277901, 36.515194, 17.180998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888351, 36.441345, 17.128101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060324, 0.351083, -0.934399,
		0.218938, -0.917963, -0.330773,
		-0.973872, -0.184622, -0.132241,
		39.596191, 36.385960, 17.088428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249805, 36.204075, 16.530203>,  <40.277901, 36.515194, 17.180998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249805, 36.204075, 16.530203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889233, 36.357685, 16.610140>,  <39.672890, 36.449852, 16.658102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889233, 36.357685, 16.610140>,  <40.249805, 36.204075, 16.530203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889233, 36.357685, 16.610140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068041, 0.330205, -0.941453,
		-0.427535, -0.862256, -0.271529,
		-0.901434, 0.384030, 0.199843,
		39.618801, 36.472893, 16.670094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786167, 36.083729, 15.941076>,  <40.249805, 36.204075, 16.530203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786167, 36.083729, 15.941076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591331, 36.379589, 16.126833>,  <39.474430, 36.557106, 16.238287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591331, 36.379589, 16.126833>,  <39.786167, 36.083729, 15.941076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591331, 36.379589, 16.126833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320779, 0.343052, -0.882846,
		-0.812308, -0.578992, 0.070167,
		-0.487090, 0.739651, 0.464392,
		39.445206, 36.601482, 16.266151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089031, 36.021759, 15.707858>,  <39.786167, 36.083729, 15.941076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089031, 36.021759, 15.707858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146202, 36.395206, 15.839265>,  <39.180504, 36.619274, 15.918109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146202, 36.395206, 15.839265>,  <39.089031, 36.021759, 15.707858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146202, 36.395206, 15.839265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293952, 0.356992, -0.886650,
		-0.945073, 0.030162, 0.325466,
		0.142932, 0.933620, 0.328517,
		39.189083, 36.675293, 15.937820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500103, 36.476944, 15.533642>,  <39.089031, 36.021759, 15.707858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500103, 36.476944, 15.533642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807095, 36.729912, 15.575629>,  <38.991291, 36.881691, 15.600821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807095, 36.729912, 15.575629>,  <38.500103, 36.476944, 15.533642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807095, 36.729912, 15.575629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333173, 0.533378, -0.777498,
		-0.547692, 0.561744, 0.620063,
		0.767483, 0.632418, 0.104969,
		39.037338, 36.919636, 15.607120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182007, 37.080544, 15.705581>,  <38.500103, 36.476944, 15.533642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182007, 37.080544, 15.705581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557068, 37.205288, 15.644197>,  <38.782104, 37.280136, 15.607366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557068, 37.205288, 15.644197>,  <38.182007, 37.080544, 15.705581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557068, 37.205288, 15.644197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347467, 0.852002, -0.391611,
		0.008621, 0.420518, 0.907244,
		0.937653, 0.311861, -0.153462,
		38.838364, 37.298847, 15.598158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358440, 37.795559, 16.001787>,  <38.182007, 37.080544, 15.705581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358440, 37.795559, 16.001787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564350, 37.689320, 15.675728>,  <38.687897, 37.625576, 15.480092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564350, 37.689320, 15.675728>,  <38.358440, 37.795559, 16.001787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564350, 37.689320, 15.675728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160767, 0.904032, -0.396081,
		0.842116, 0.334942, 0.422675,
		0.514776, -0.265594, -0.815148,
		38.718784, 37.609642, 15.431184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816441, 38.317600, 15.815381>,  <38.358440, 37.795559, 16.001787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816441, 38.317600, 15.815381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725368, 38.111702, 15.484757>,  <38.670727, 37.988163, 15.286384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725368, 38.111702, 15.484757>,  <38.816441, 38.317600, 15.815381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725368, 38.111702, 15.484757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303379, 0.844101, -0.442102,
		0.925269, 0.150104, -0.348347,
		-0.227679, -0.514744, -0.826559,
		38.657066, 37.957279, 15.236790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563225, 38.568180, 15.035230>,  <38.816441, 38.317600, 15.815381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563225, 38.568180, 15.035230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904423, 38.776913, 15.039211>,  <39.109142, 38.902153, 15.041600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904423, 38.776913, 15.039211>,  <38.563225, 38.568180, 15.035230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904423, 38.776913, 15.039211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521110, -0.852572, 0.039557,
		0.029129, -0.028555, -0.999168,
		0.852992, 0.521829, 0.009955,
		39.160320, 38.933460, 15.042197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108856, 38.259346, 14.549186>,  <38.563225, 38.568180, 15.035230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108856, 38.259346, 14.549186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264751, 38.444584, 14.867596>,  <39.358288, 38.555725, 15.058641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264751, 38.444584, 14.867596>,  <39.108856, 38.259346, 14.549186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264751, 38.444584, 14.867596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507649, -0.829219, 0.233856,
		0.768374, 0.312958, -0.558263,
		0.389735, 0.463090, 0.796024,
		39.381672, 38.583511, 15.106402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901894, 38.409863, 14.471612>,  <39.108856, 38.259346, 14.549186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901894, 38.409863, 14.471612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789387, 38.359135, 14.852098>,  <39.721882, 38.328697, 15.080389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789387, 38.359135, 14.852098>,  <39.901894, 38.409863, 14.471612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789387, 38.359135, 14.852098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747434, -0.650628, 0.134261,
		0.601859, 0.748732, 0.277790,
		-0.281263, -0.126823, 0.951213,
		39.705009, 38.321087, 15.137462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176079, 38.566212, 15.191946>,  <39.901894, 38.409863, 14.471612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176079, 38.566212, 15.191946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999416, 38.918953, 15.125877>,  <39.893421, 39.130596, 15.086236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999416, 38.918953, 15.125877>,  <40.176079, 38.566212, 15.191946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999416, 38.918953, 15.125877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160603, 0.103417, 0.981586,
		0.882695, 0.460046, 0.095954,
		-0.441652, 0.881852, -0.165170,
		39.866920, 39.183510, 15.076326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496326, 39.266621, 15.426980>,  <40.176079, 38.566212, 15.191946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496326, 39.266621, 15.426980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098461, 39.229614, 15.445292>,  <39.859741, 39.207413, 15.456279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098461, 39.229614, 15.445292>,  <40.496326, 39.266621, 15.426980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098461, 39.229614, 15.445292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038298, 0.081079, 0.995972,
		-0.095853, 0.992405, -0.077103,
		-0.994659, -0.092514, 0.045779,
		39.800064, 39.201859, 15.459025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246464, 39.760384, 15.942135>,  <40.496326, 39.266621, 15.426980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246464, 39.760384, 15.942135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990143, 39.455177, 15.908255>,  <39.836349, 39.272053, 15.887926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990143, 39.455177, 15.908255>,  <40.246464, 39.760384, 15.942135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990143, 39.455177, 15.908255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198324, 0.057946, 0.978422,
		-0.741644, 0.643777, -0.188456,
		-0.640806, -0.763016, -0.084701,
		39.797901, 39.226273, 15.882844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658302, 39.865746, 16.355497>,  <40.246464, 39.760384, 15.942135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658302, 39.865746, 16.355497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645901, 39.466244, 16.339895>,  <39.638462, 39.226543, 16.330534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645901, 39.466244, 16.339895>,  <39.658302, 39.865746, 16.355497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645901, 39.466244, 16.339895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259451, -0.029646, 0.965301,
		-0.965259, 0.040047, -0.258210,
		-0.031002, -0.998758, -0.039006,
		39.636600, 39.166615, 16.328194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971302, 39.536915, 16.552950>,  <39.658302, 39.865746, 16.355497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971302, 39.536915, 16.552950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253647, 39.263706, 16.628042>,  <39.423054, 39.099781, 16.673098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253647, 39.263706, 16.628042>,  <38.971302, 39.536915, 16.552950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253647, 39.263706, 16.628042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368991, -0.128319, 0.920532,
		-0.604653, -0.719039, -0.342604,
		0.705861, -0.683020, 0.187731,
		39.465405, 39.058800, 16.684362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586372, 38.979874, 16.796680>,  <38.971302, 39.536915, 16.552950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586372, 38.979874, 16.796680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964558, 38.924419, 16.914587>,  <39.191467, 38.891148, 16.985331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964558, 38.924419, 16.914587>,  <38.586372, 38.979874, 16.796680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964558, 38.924419, 16.914587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323014, -0.282243, 0.903327,
		-0.042033, -0.949274, -0.311629,
		0.945460, -0.138630, 0.294765,
		39.248196, 38.882832, 17.003017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625080, 38.287212, 17.072870>,  <38.586372, 38.979874, 16.796680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625080, 38.287212, 17.072870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914257, 38.496696, 17.253128>,  <39.087765, 38.622387, 17.361282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914257, 38.496696, 17.253128>,  <38.625080, 38.287212, 17.072870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914257, 38.496696, 17.253128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261161, -0.396717, 0.880006,
		0.639649, -0.753883, -0.150029,
		0.722941, 0.523713, 0.450644,
		39.131138, 38.653809, 17.388321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671158, 37.991512, 17.695118>,  <38.625080, 38.287212, 17.072870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671158, 37.991512, 17.695118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904999, 38.307213, 17.770288>,  <39.045303, 38.496635, 17.815392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904999, 38.307213, 17.770288>,  <38.671158, 37.991512, 17.695118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904999, 38.307213, 17.770288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111921, -0.150966, 0.982183,
		0.803562, -0.595221, 0.000079,
		0.584604, 0.789254, 0.187928,
		39.080379, 38.543987, 17.826666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171204, 37.771584, 18.220764>,  <38.671158, 37.991512, 17.695118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171204, 37.771584, 18.220764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155205, 38.171169, 18.212143>,  <39.145603, 38.410923, 18.206970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155205, 38.171169, 18.212143>,  <39.171204, 37.771584, 18.220764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155205, 38.171169, 18.212143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160407, 0.014871, 0.986939,
		0.986240, 0.042937, 0.159647,
		-0.040002, 0.998967, -0.021554,
		39.143204, 38.470860, 18.205677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698025, 38.119980, 18.651138>,  <39.171204, 37.771584, 18.220764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698025, 38.119980, 18.651138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415718, 38.402107, 18.624540>,  <39.246334, 38.571384, 18.608582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415718, 38.402107, 18.624540>,  <39.698025, 38.119980, 18.651138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415718, 38.402107, 18.624540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004859, 0.089041, 0.996016,
		0.708429, 0.703277, -0.059414,
		-0.705765, 0.705318, -0.066497,
		39.203987, 38.613701, 18.604591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793743, 38.550415, 19.205765>,  <39.698025, 38.119980, 18.651138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793743, 38.550415, 19.205765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425278, 38.658066, 19.093317>,  <39.204201, 38.722656, 19.025848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425278, 38.658066, 19.093317>,  <39.793743, 38.550415, 19.205765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425278, 38.658066, 19.093317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331546, -0.164394, 0.929006,
		0.203810, 0.948969, 0.240663,
		-0.921162, 0.269131, -0.281122,
		39.148930, 38.738804, 19.008980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583988, 38.789974, 19.841438>,  <39.793743, 38.550415, 19.205765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583988, 38.789974, 19.841438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270596, 38.732979, 19.599495>,  <39.082561, 38.698780, 19.454329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270596, 38.732979, 19.599495>,  <39.583988, 38.789974, 19.841438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270596, 38.732979, 19.599495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560672, -0.257625, 0.786941,
		-0.267959, 0.955680, 0.121953,
		-0.783482, -0.142493, -0.604857,
		39.035549, 38.690231, 19.418037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105362, 39.157612, 20.137190>,  <39.583988, 38.789974, 19.841438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105362, 39.157612, 20.137190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971592, 38.848331, 19.921667>,  <38.891331, 38.662762, 19.792355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971592, 38.848331, 19.921667>,  <39.105362, 39.157612, 20.137190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971592, 38.848331, 19.921667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598820, -0.267131, 0.755020,
		-0.727717, 0.575149, -0.373674,
		-0.334429, -0.773205, -0.538806,
		38.871262, 38.616371, 19.760025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312386, 39.204002, 20.126663>,  <39.105362, 39.157612, 20.137190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312386, 39.204002, 20.126663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418491, 38.825657, 20.051857>,  <38.482155, 38.598648, 20.006973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418491, 38.825657, 20.051857>,  <38.312386, 39.204002, 20.126663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418491, 38.825657, 20.051857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639389, -0.317747, 0.700156,
		-0.721677, -0.066150, -0.689062,
		0.265263, -0.945865, -0.187015,
		38.498070, 38.541897, 19.995752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709137, 38.906849, 20.132702>,  <38.312386, 39.204002, 20.126663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709137, 38.906849, 20.132702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973644, 38.609146, 20.170248>,  <38.132347, 38.430523, 20.192776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973644, 38.609146, 20.170248>,  <37.709137, 38.906849, 20.132702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973644, 38.609146, 20.170248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600252, -0.449919, 0.661265,
		-0.449919, -0.493614, -0.744257,
		-0.661265, 0.744257, -0.093866,
		38.172024, 38.385868, 20.198408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414776, 38.234928, 20.110983>,  <37.709137, 38.906849, 20.132702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414776, 38.234928, 20.110983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759949, 38.157784, 20.297812>,  <37.967052, 38.111496, 20.409908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759949, 38.157784, 20.297812>,  <37.414776, 38.234928, 20.110983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759949, 38.157784, 20.297812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481037, -0.596633, 0.642364,
		0.154781, -0.778994, -0.607628,
		0.862929, -0.192865, 0.467072,
		38.018826, 38.099922, 20.437933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299595, 37.665646, 20.345985>,  <37.414776, 38.234928, 20.110983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299595, 37.665646, 20.345985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623936, 37.759361, 20.560505>,  <37.818542, 37.815590, 20.689217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.623936, 37.759361, 20.560505>,  <37.299595, 37.665646, 20.345985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623936, 37.759361, 20.560505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269623, -0.663778, 0.697641,
		0.519437, -0.710286, -0.475057,
		0.810857, 0.234294, 0.536300,
		37.867191, 37.829651, 20.721395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408699, 37.100552, 20.708673>,  <37.299595, 37.665646, 20.345985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408699, 37.100552, 20.708673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644428, 37.345726, 20.919201>,  <37.785866, 37.492828, 21.045517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644428, 37.345726, 20.919201>,  <37.408699, 37.100552, 20.708673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644428, 37.345726, 20.919201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060230, -0.682988, 0.727942,
		0.805649, -0.397293, -0.439418,
		0.589323, 0.612932, 0.526319,
		37.821224, 37.529606, 21.077097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951935, 36.701984, 20.963255>,  <37.408699, 37.100552, 20.708673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951935, 36.701984, 20.963255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918152, 37.014656, 21.210430>,  <37.897884, 37.202259, 21.358736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918152, 37.014656, 21.210430>,  <37.951935, 36.701984, 20.963255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918152, 37.014656, 21.210430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118727, -0.623632, 0.772650,
		0.989329, -0.008113, 0.145475,
		-0.084454, 0.781676, 0.617940,
		37.892815, 37.249161, 21.395813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165562, 36.463036, 21.673563>,  <37.951935, 36.701984, 20.963255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165562, 36.463036, 21.673563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003483, 36.809418, 21.790821>,  <37.906235, 37.017246, 21.861176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003483, 36.809418, 21.790821>,  <38.165562, 36.463036, 21.673563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003483, 36.809418, 21.790821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224057, -0.404931, 0.886470,
		0.886347, 0.293517, 0.358102,
		-0.405201, 0.865955, 0.293145,
		37.881924, 37.069206, 21.878765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473125, 36.689045, 22.369209>,  <38.165562, 36.463036, 21.673563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473125, 36.689045, 22.369209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122066, 36.875484, 22.324514>,  <37.911430, 36.987347, 22.297697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122066, 36.875484, 22.324514>,  <38.473125, 36.689045, 22.369209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122066, 36.875484, 22.324514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288304, -0.327130, 0.899926,
		0.382899, 0.822034, 0.421483,
		-0.877650, 0.466096, -0.111738,
		37.858772, 37.015312, 22.290993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418549, 37.096764, 22.914135>,  <38.473125, 36.689045, 22.369209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418549, 37.096764, 22.914135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045876, 37.035160, 22.782528>,  <37.822273, 36.998199, 22.703564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045876, 37.035160, 22.782528>,  <38.418549, 37.096764, 22.914135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045876, 37.035160, 22.782528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234023, -0.438278, 0.867839,
		-0.277858, 0.885547, 0.372293,
		-0.931680, -0.154010, -0.329018,
		37.766373, 36.988956, 22.683823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026581, 37.353996, 23.430960>,  <38.418549, 37.096764, 22.914135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026581, 37.353996, 23.430960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764431, 37.132874, 23.225086>,  <37.607143, 37.000202, 23.101562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764431, 37.132874, 23.225086>,  <38.026581, 37.353996, 23.430960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764431, 37.132874, 23.225086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377372, -0.350623, 0.857119,
		-0.654278, 0.755957, 0.021175,
		-0.655370, -0.552804, -0.514682,
		37.567822, 36.967033, 23.070681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413349, 37.469086, 23.853367>,  <38.026581, 37.353996, 23.430960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413349, 37.469086, 23.853367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330536, 37.144363, 23.634968>,  <37.280849, 36.949532, 23.503929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330536, 37.144363, 23.634968>,  <37.413349, 37.469086, 23.853367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330536, 37.144363, 23.634968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629221, -0.316859, 0.709705,
		-0.749146, 0.490482, -0.445205,
		-0.207030, -0.811805, -0.545996,
		37.268425, 36.900822, 23.471169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656105, 37.346977, 23.718525>,  <37.413349, 37.469086, 23.853367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656105, 37.346977, 23.718525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806503, 36.978859, 23.675283>,  <36.896740, 36.757988, 23.649338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806503, 36.978859, 23.675283>,  <36.656105, 37.346977, 23.718525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806503, 36.978859, 23.675283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795051, -0.380324, 0.472491,
		-0.475946, -0.091705, -0.874680,
		0.375991, -0.920296, -0.108104,
		36.919300, 36.702770, 23.642853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110424, 37.044151, 23.499413>,  <36.656105, 37.346977, 23.718525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110424, 37.044151, 23.499413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341637, 36.763065, 23.665340>,  <36.480366, 36.594414, 23.764896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341637, 36.763065, 23.665340>,  <36.110424, 37.044151, 23.499413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341637, 36.763065, 23.665340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755379, -0.268496, 0.597756,
		-0.308676, -0.658865, -0.686015,
		0.578033, -0.702714, 0.414814,
		36.515045, 36.552254, 23.789785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740818, 36.418797, 23.565762>,  <36.110424, 37.044151, 23.499413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740818, 36.418797, 23.565762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041264, 36.379536, 23.826895>,  <36.221531, 36.355980, 23.983576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041264, 36.379536, 23.826895>,  <35.740818, 36.418797, 23.565762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041264, 36.379536, 23.826895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647241, -0.304263, 0.698930,
		0.130030, -0.947518, -0.292066,
		0.751113, -0.098155, 0.652835,
		36.266598, 36.350090, 24.022745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595863, 35.815647, 23.834585>,  <35.740818, 36.418797, 23.565762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595863, 35.815647, 23.834585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800400, 36.006226, 24.120672>,  <35.923122, 36.120571, 24.292324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800400, 36.006226, 24.120672>,  <35.595863, 35.815647, 23.834585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800400, 36.006226, 24.120672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732560, -0.193481, 0.652626,
		0.449321, -0.857651, 0.250090,
		0.511339, 0.476445, 0.715216,
		35.953800, 36.149158, 24.335238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693924, 35.271629, 24.449543>,  <35.595863, 35.815647, 23.834585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693924, 35.271629, 24.449543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742432, 35.644619, 24.585653>,  <35.771534, 35.868412, 24.667320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742432, 35.644619, 24.585653>,  <35.693924, 35.271629, 24.449543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742432, 35.644619, 24.585653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733711, -0.146683, 0.663440,
		0.668553, -0.330115, 0.666379,
		0.121265, 0.932474, 0.340275,
		35.778812, 35.924362, 24.687737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774284, 35.311485, 25.192251>,  <35.693924, 35.271629, 24.449543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774284, 35.311485, 25.192251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673328, 35.686947, 25.098246>,  <35.612755, 35.912224, 25.041842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673328, 35.686947, 25.098246>,  <35.774284, 35.311485, 25.192251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673328, 35.686947, 25.098246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603022, 0.037366, 0.796848,
		0.756745, 0.342835, 0.556597,
		-0.252389, 0.938652, -0.235014,
		35.597610, 35.968544, 25.027742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909782, 35.695091, 25.778711>,  <35.774284, 35.311485, 25.192251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909782, 35.695091, 25.778711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665848, 35.947678, 25.587151>,  <35.519485, 36.099232, 25.472214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665848, 35.947678, 25.587151>,  <35.909782, 35.695091, 25.778711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665848, 35.947678, 25.587151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452558, 0.218599, 0.864526,
		0.650608, 0.743951, 0.152466,
		-0.609836, 0.631467, -0.478904,
		35.482899, 36.137119, 25.443480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001297, 36.354427, 26.036591>,  <35.909782, 35.695091, 25.778711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001297, 36.354427, 26.036591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629860, 36.361504, 25.888321>,  <35.406998, 36.365749, 25.799360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629860, 36.361504, 25.888321>,  <36.001297, 36.354427, 26.036591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629860, 36.361504, 25.888321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362543, 0.169934, 0.916343,
		0.079203, 0.985297, -0.151385,
		-0.928595, 0.017693, -0.370672,
		35.351280, 36.366810, 25.777119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649555, 36.805550, 26.490456>,  <36.001297, 36.354427, 26.036591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649555, 36.805550, 26.490456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352585, 36.618523, 26.298548>,  <35.174400, 36.506306, 26.183403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352585, 36.618523, 26.298548>,  <35.649555, 36.805550, 26.490456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352585, 36.618523, 26.298548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588091, 0.111885, 0.801019,
		-0.320852, 0.876848, -0.358040,
		-0.742430, -0.467569, -0.479767,
		35.129856, 36.478252, 26.154617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060280, 37.235706, 26.534489>,  <35.649555, 36.805550, 26.490456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060280, 37.235706, 26.534489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915482, 36.873161, 26.447338>,  <34.828602, 36.655636, 26.395048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915482, 36.873161, 26.447338>,  <35.060280, 37.235706, 26.534489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915482, 36.873161, 26.447338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517341, 0.000905, 0.855779,
		-0.775448, 0.422501, -0.469226,
		-0.361992, -0.906362, -0.217875,
		34.806885, 36.601254, 26.381975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314407, 37.218067, 26.670704>,  <35.060280, 37.235706, 26.534489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314407, 37.218067, 26.670704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382313, 36.824032, 26.659504>,  <34.423054, 36.587612, 26.652784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382313, 36.824032, 26.659504>,  <34.314407, 37.218067, 26.670704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382313, 36.824032, 26.659504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568224, -0.121057, 0.813921,
		-0.805173, -0.122261, -0.580301,
		0.169761, -0.985088, -0.028000,
		34.433243, 36.528507, 26.651104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745155, 36.878456, 27.007853>,  <34.314407, 37.218067, 26.670704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745155, 36.878456, 27.007853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002190, 36.573589, 27.039289>,  <34.156410, 36.390667, 27.058151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002190, 36.573589, 27.039289>,  <33.745155, 36.878456, 27.007853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002190, 36.573589, 27.039289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296071, -0.152388, 0.942932,
		-0.706698, -0.629186, -0.323579,
		0.642589, -0.762170, 0.078591,
		34.194965, 36.344940, 27.062866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379749, 36.336388, 27.370092>,  <33.745155, 36.878456, 27.007853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379749, 36.336388, 27.370092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769577, 36.260448, 27.417704>,  <34.003475, 36.214886, 27.446270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769577, 36.260448, 27.417704>,  <33.379749, 36.336388, 27.370092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769577, 36.260448, 27.417704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153860, -0.180776, 0.971415,
		-0.162891, -0.965030, -0.205387,
		0.974574, -0.189836, 0.119033,
		34.061947, 36.203491, 27.453413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453835, 35.655327, 27.621510>,  <33.379749, 36.336388, 27.370092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453835, 35.655327, 27.621510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792221, 35.848396, 27.712173>,  <33.995251, 35.964237, 27.766571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792221, 35.848396, 27.712173>,  <33.453835, 35.655327, 27.621510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792221, 35.848396, 27.712173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076831, -0.310294, 0.947531,
		0.527679, -0.818990, -0.225413,
		0.845962, 0.482673, 0.226659,
		34.046009, 35.993198, 27.780170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788963, 35.158108, 28.030228>,  <33.453835, 35.655327, 27.621510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788963, 35.158108, 28.030228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957157, 35.506287, 28.132612>,  <34.058075, 35.715195, 28.194042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957157, 35.506287, 28.132612>,  <33.788963, 35.158108, 28.030228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957157, 35.506287, 28.132612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087525, -0.241880, 0.966350,
		0.903068, -0.428739, -0.025522,
		0.420486, 0.870446, 0.255960,
		34.083302, 35.767422, 28.209400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346554, 34.999500, 28.480246>,  <33.788963, 35.158108, 28.030228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346554, 34.999500, 28.480246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307903, 35.385395, 28.578184>,  <34.284714, 35.616932, 28.636948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307903, 35.385395, 28.578184>,  <34.346554, 34.999500, 28.480246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307903, 35.385395, 28.578184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126392, -0.232113, 0.964442,
		0.987263, 0.124138, -0.099506,
		-0.096627, 0.964735, 0.244846,
		34.278915, 35.674816, 28.651638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977013, 35.187176, 28.873867>,  <34.346554, 34.999500, 28.480246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977013, 35.187176, 28.873867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701000, 35.463070, 28.961622>,  <34.535393, 35.628605, 29.014277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701000, 35.463070, 28.961622>,  <34.977013, 35.187176, 28.873867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701000, 35.463070, 28.961622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254511, -0.052530, 0.965642,
		0.677558, 0.722158, -0.139297,
		-0.690029, 0.689731, 0.219389,
		34.493992, 35.669991, 29.027439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359421, 35.528034, 29.343811>,  <34.977013, 35.187176, 28.873867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359421, 35.528034, 29.343811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979958, 35.644642, 29.392906>,  <34.752281, 35.714607, 29.422363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979958, 35.644642, 29.392906>,  <35.359421, 35.528034, 29.343811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979958, 35.644642, 29.392906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112029, -0.053219, 0.992279,
		0.295801, 0.955083, 0.017828,
		-0.948658, 0.291520, 0.122739,
		34.695362, 35.732098, 29.429728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074421, 35.932697, 29.903046>,  <35.359421, 35.528034, 29.343811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074421, 35.932697, 29.903046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336929, 36.083462, 30.164503>,  <35.494434, 36.173920, 30.321377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336929, 36.083462, 30.164503>,  <35.074421, 35.932697, 29.903046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336929, 36.083462, 30.164503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401403, 0.559133, -0.725428,
		-0.638893, 0.738452, 0.215650,
		0.656271, 0.376909, 0.653643,
		35.533810, 36.196533, 30.360596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978035, 36.688419, 29.864046>,  <35.074421, 35.932697, 29.903046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978035, 36.688419, 29.864046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331947, 36.578556, 30.014637>,  <35.544292, 36.512638, 30.104992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331947, 36.578556, 30.014637>,  <34.978035, 36.688419, 29.864046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331947, 36.578556, 30.014637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460799, 0.636157, -0.618845,
		-0.069528, 0.721019, 0.689418,
		0.884777, -0.274656, 0.376476,
		35.597382, 36.496159, 30.127579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330799, 37.343414, 29.986782>,  <34.978035, 36.688419, 29.864046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330799, 37.343414, 29.986782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602119, 37.051140, 29.955801>,  <35.764912, 36.875774, 29.937212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602119, 37.051140, 29.955801>,  <35.330799, 37.343414, 29.986782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602119, 37.051140, 29.955801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495134, 0.532408, -0.686575,
		0.542909, 0.427356, 0.722922,
		0.678301, -0.730691, -0.077451,
		35.805611, 36.831932, 29.932566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982742, 37.687019, 29.791222>,  <35.330799, 37.343414, 29.986782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982742, 37.687019, 29.791222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086964, 37.308838, 29.713015>,  <36.149498, 37.081928, 29.666090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086964, 37.308838, 29.713015>,  <35.982742, 37.687019, 29.791222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086964, 37.308838, 29.713015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497274, 0.305007, -0.812213,
		0.827545, 0.114400, 0.549621,
		0.260555, -0.945454, -0.195519,
		36.165131, 37.025200, 29.654360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648491, 37.782951, 29.667723>,  <35.982742, 37.687019, 29.791222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648491, 37.782951, 29.667723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557449, 37.427994, 29.507360>,  <36.502823, 37.215019, 29.411142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557449, 37.427994, 29.507360>,  <36.648491, 37.782951, 29.667723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557449, 37.427994, 29.507360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610451, 0.190731, -0.768747,
		0.758647, -0.419705, 0.498299,
		-0.227606, -0.887395, -0.400907,
		36.489166, 37.161774, 29.387089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302982, 37.556259, 29.660234>,  <36.648491, 37.782951, 29.667723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302982, 37.556259, 29.660234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074375, 37.376606, 29.385529>,  <36.937210, 37.268814, 29.220705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074375, 37.376606, 29.385529>,  <37.302982, 37.556259, 29.660234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074375, 37.376606, 29.385529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652493, 0.258779, -0.712240,
		0.497610, -0.855169, 0.145158,
		-0.571521, -0.449132, -0.686763,
		36.902920, 37.241867, 29.179501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725307, 37.243053, 29.166332>,  <37.302982, 37.556259, 29.660234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725307, 37.243053, 29.166332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377628, 37.218472, 28.970079>,  <37.169022, 37.203724, 28.852327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377628, 37.218472, 28.970079>,  <37.725307, 37.243053, 29.166332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377628, 37.218472, 28.970079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471916, 0.193122, -0.860232,
		0.147610, -0.979249, -0.138864,
		-0.869199, -0.061447, -0.490630,
		37.116867, 37.200035, 28.822889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698154, 36.714645, 28.694159>,  <37.725307, 37.243053, 29.166332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698154, 36.714645, 28.694159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441620, 36.982883, 28.545034>,  <37.287701, 37.143826, 28.455561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441620, 36.982883, 28.545034>,  <37.698154, 36.714645, 28.694159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441620, 36.982883, 28.545034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479732, -0.028727, -0.876945,
		-0.598786, -0.741266, -0.303283,
		-0.641337, 0.670597, -0.372810,
		37.249218, 37.184063, 28.433191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681561, 36.503487, 28.073839>,  <37.698154, 36.714645, 28.694159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681561, 36.503487, 28.073839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517029, 36.866421, 28.039062>,  <37.418308, 37.084179, 28.018196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517029, 36.866421, 28.039062>,  <37.681561, 36.503487, 28.073839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517029, 36.866421, 28.039062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387085, 0.087530, -0.917880,
		-0.825211, -0.411205, -0.387217,
		-0.411330, 0.907331, -0.086940,
		37.393631, 37.138618, 28.012980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446697, 36.511265, 27.425335>,  <37.681561, 36.503487, 28.073839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446697, 36.511265, 27.425335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501396, 36.895210, 27.523279>,  <37.534218, 37.125580, 27.582047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501396, 36.895210, 27.523279>,  <37.446697, 36.511265, 27.425335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501396, 36.895210, 27.523279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290580, 0.197439, -0.936259,
		-0.947028, 0.199186, -0.251918,
		0.136751, 0.959866, 0.244860,
		37.542423, 37.183170, 27.596737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158894, 37.011364, 26.811317>,  <37.446697, 36.511265, 27.425335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158894, 37.011364, 26.811317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430927, 37.211197, 27.025942>,  <37.594147, 37.331097, 27.154716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430927, 37.211197, 27.025942>,  <37.158894, 37.011364, 26.811317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430927, 37.211197, 27.025942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435358, 0.313657, -0.843850,
		-0.589868, 0.807489, -0.004183,
		0.680087, 0.499581, 0.536563,
		37.634953, 37.361073, 27.186911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257843, 37.536858, 26.398592>,  <37.158894, 37.011364, 26.811317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257843, 37.536858, 26.398592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561199, 37.605156, 26.650208>,  <37.743214, 37.646133, 26.801176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561199, 37.605156, 26.650208>,  <37.257843, 37.536858, 26.398592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561199, 37.605156, 26.650208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484227, 0.498429, -0.719092,
		-0.436312, 0.849950, 0.295325,
		0.758391, 0.170744, 0.629039,
		37.788715, 37.656380, 26.838919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454781, 38.256088, 26.331163>,  <37.257843, 37.536858, 26.398592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454781, 38.256088, 26.331163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776649, 38.069183, 26.477686>,  <37.969769, 37.957043, 26.565599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776649, 38.069183, 26.477686>,  <37.454781, 38.256088, 26.331163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776649, 38.069183, 26.477686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590101, 0.561340, -0.580239,
		0.065499, 0.683057, 0.727422,
		0.804668, -0.467258, 0.366306,
		38.018051, 37.929005, 26.587578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801365, 38.795082, 26.377493>,  <37.454781, 38.256088, 26.331163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801365, 38.795082, 26.377493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033802, 38.469952, 26.393692>,  <38.173264, 38.274872, 26.403412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033802, 38.469952, 26.393692>,  <37.801365, 38.795082, 26.377493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033802, 38.469952, 26.393692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601306, 0.395280, -0.694395,
		0.548417, 0.427859, 0.718453,
		0.581094, -0.812829, 0.040496,
		38.208130, 38.226105, 26.405840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399422, 39.067085, 26.336176>,  <37.801365, 38.795082, 26.377493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399422, 39.067085, 26.336176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471870, 38.686115, 26.238138>,  <38.515339, 38.457531, 26.179316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471870, 38.686115, 26.238138>,  <38.399422, 39.067085, 26.336176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471870, 38.686115, 26.238138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563221, 0.304758, -0.768053,
		0.806211, 0.001071, 0.591627,
		0.181126, -0.952429, -0.245096,
		38.526207, 38.400387, 26.164610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083485, 39.012135, 26.224415>,  <38.399422, 39.067085, 26.336176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083485, 39.012135, 26.224415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928112, 38.710972, 26.011906>,  <38.834888, 38.530273, 25.884399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928112, 38.710972, 26.011906>,  <39.083485, 39.012135, 26.224415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928112, 38.710972, 26.011906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555947, 0.268313, -0.786722,
		0.734876, -0.600948, 0.314354,
		-0.388433, -0.752907, -0.531272,
		38.811581, 38.485100, 25.852524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625507, 38.671528, 25.915499>,  <39.083485, 39.012135, 26.224415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625507, 38.671528, 25.915499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318409, 38.541069, 25.694881>,  <39.134151, 38.462795, 25.562511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318409, 38.541069, 25.694881>,  <39.625507, 38.671528, 25.915499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318409, 38.541069, 25.694881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550857, 0.103727, -0.828129,
		0.327299, -0.939612, 0.100023,
		-0.767745, -0.326144, -0.551542,
		39.088085, 38.443226, 25.529419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898979, 38.193439, 25.329144>,  <39.625507, 38.671528, 25.915499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898979, 38.193439, 25.329144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538574, 38.331169, 25.223606>,  <39.322330, 38.413807, 25.160284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538574, 38.331169, 25.223606>,  <39.898979, 38.193439, 25.329144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538574, 38.331169, 25.223606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288922, 0.022667, -0.957084,
		-0.323567, -0.938577, -0.119906,
		-0.901015, 0.344325, -0.263842,
		39.268269, 38.434467, 25.144453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650833, 37.681164, 24.792536>,  <39.898979, 38.193439, 25.329144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650833, 37.681164, 24.792536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465000, 38.031586, 24.740862>,  <39.353500, 38.241840, 24.709858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465000, 38.031586, 24.740862>,  <39.650833, 37.681164, 24.792536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465000, 38.031586, 24.740862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223882, -0.024943, -0.974297,
		-0.856759, -0.481568, -0.184545,
		-0.464587, 0.876054, -0.129184,
		39.325623, 38.294403, 24.702106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981533, 37.532894, 24.324083>,  <39.650833, 37.681164, 24.792536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981533, 37.532894, 24.324083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070770, 37.922066, 24.299936>,  <39.124313, 38.155567, 24.285448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070770, 37.922066, 24.299936>,  <38.981533, 37.532894, 24.324083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070770, 37.922066, 24.299936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293201, -0.126036, -0.947707,
		-0.929657, 0.193728, -0.313380,
		0.223094, 0.972926, -0.060369,
		39.137699, 38.213943, 24.281826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721474, 37.773438, 23.744869>,  <38.981533, 37.532894, 24.324083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721474, 37.773438, 23.744869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014248, 38.039127, 23.805634>,  <39.189911, 38.198544, 23.842093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014248, 38.039127, 23.805634>,  <38.721474, 37.773438, 23.744869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014248, 38.039127, 23.805634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227113, -0.027623, -0.973477,
		-0.642413, 0.747021, -0.171073,
		0.731933, 0.664227, 0.151912,
		39.233829, 38.238396, 23.851208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781048, 38.307148, 23.244595>,  <38.721474, 37.773438, 23.744869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781048, 38.307148, 23.244595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151672, 38.260059, 23.387489>,  <39.374046, 38.231808, 23.473227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151672, 38.260059, 23.387489>,  <38.781048, 38.307148, 23.244595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151672, 38.260059, 23.387489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359180, -0.005011, -0.933255,
		0.111653, 0.993034, 0.037640,
		0.926565, -0.117721, 0.357237,
		39.429642, 38.224743, 23.494661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190655, 38.875732, 22.932293>,  <38.781048, 38.307148, 23.244595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190655, 38.875732, 22.932293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457546, 38.589207, 23.013971>,  <39.617683, 38.417290, 23.062979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457546, 38.589207, 23.013971>,  <39.190655, 38.875732, 22.932293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457546, 38.589207, 23.013971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530858, 0.265019, -0.804956,
		0.522484, 0.645493, 0.557090,
		0.667233, -0.716313, 0.204197,
		39.657715, 38.374313, 23.075230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881523, 39.217590, 22.709591>,  <39.190655, 38.875732, 22.932293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881523, 39.217590, 22.709591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967556, 38.829712, 22.755936>,  <40.019176, 38.596985, 22.783743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967556, 38.829712, 22.755936>,  <39.881523, 39.217590, 22.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967556, 38.829712, 22.755936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507748, 0.009689, -0.861451,
		0.834226, 0.244110, 0.494447,
		0.215079, -0.969699, 0.115864,
		40.032082, 38.538803, 22.790695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585342, 39.180641, 22.648397>,  <39.881523, 39.217590, 22.709591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585342, 39.180641, 22.648397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451252, 38.812294, 22.568777>,  <40.370796, 38.591286, 22.521006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451252, 38.812294, 22.568777>,  <40.585342, 39.180641, 22.648397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451252, 38.812294, 22.568777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306545, 0.093169, -0.947285,
		0.890872, -0.378573, 0.251056,
		-0.335226, -0.920870, -0.199051,
		40.350685, 38.536034, 22.509062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188549, 38.869198, 22.432550>,  <40.585342, 39.180641, 22.648397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188549, 38.869198, 22.432550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885033, 38.655090, 22.284103>,  <40.702923, 38.526627, 22.195036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885033, 38.655090, 22.284103>,  <41.188549, 38.869198, 22.432550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885033, 38.655090, 22.284103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428272, 0.019271, -0.903444,
		0.490738, -0.844461, 0.214618,
		-0.758788, -0.535270, -0.371116,
		40.657394, 38.494511, 22.172768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357197, 38.202888, 22.161243>,  <41.188549, 38.869198, 22.432550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357197, 38.202888, 22.161243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019016, 38.283070, 21.963240>,  <40.816109, 38.331177, 21.844437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019016, 38.283070, 21.963240>,  <41.357197, 38.202888, 22.161243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019016, 38.283070, 21.963240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507013, 0.010056, -0.861880,
		-0.167785, -0.979652, -0.110132,
		-0.845450, 0.200449, -0.495009,
		40.765381, 38.343204, 21.814737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407455, 37.835693, 21.554346>,  <41.357197, 38.202888, 22.161243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407455, 37.835693, 21.554346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112461, 38.086929, 21.455046>,  <40.935467, 38.237671, 21.395466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112461, 38.086929, 21.455046>,  <41.407455, 37.835693, 21.554346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112461, 38.086929, 21.455046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293518, -0.032972, -0.955385,
		-0.608250, -0.777444, -0.160039,
		-0.737482, 0.628087, -0.248249,
		40.891216, 38.275356, 21.380571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028694, 37.510479, 21.009687>,  <41.407455, 37.835693, 21.554346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028694, 37.510479, 21.009687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950790, 37.902267, 20.988924>,  <40.904049, 38.137341, 20.976465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950790, 37.902267, 20.988924>,  <41.028694, 37.510479, 21.009687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950790, 37.902267, 20.988924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256805, -0.000155, -0.966464,
		-0.946636, -0.201562, -0.251504,
		-0.194763, 0.979476, -0.051909,
		40.892361, 38.196110, 20.973351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734516, 37.583416, 20.397066>,  <41.028694, 37.510479, 21.009687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734516, 37.583416, 20.397066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835896, 37.961136, 20.481020>,  <40.896725, 38.187767, 20.531393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835896, 37.961136, 20.481020>,  <40.734516, 37.583416, 20.397066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835896, 37.961136, 20.481020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293390, 0.131713, -0.946876,
		-0.921783, 0.301566, -0.243666,
		0.253451, 0.944304, 0.209887,
		40.911930, 38.244427, 20.543985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596764, 38.145378, 19.783766>,  <40.734516, 37.583416, 20.397066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596764, 38.145378, 19.783766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858723, 38.361855, 19.994753>,  <41.015900, 38.491737, 20.121346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858723, 38.361855, 19.994753>,  <40.596764, 38.145378, 19.783766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858723, 38.361855, 19.994753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448309, 0.283680, -0.847670,
		-0.608380, 0.791608, -0.056837,
		0.654899, 0.541186, 0.527470,
		41.055191, 38.524212, 20.152994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574169, 38.822392, 19.548098>,  <40.596764, 38.145378, 19.783766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574169, 38.822392, 19.548098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924629, 38.811749, 19.740620>,  <41.134907, 38.805363, 19.856133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924629, 38.811749, 19.740620>,  <40.574169, 38.822392, 19.548098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924629, 38.811749, 19.740620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432266, 0.485243, -0.760056,
		-0.213326, 0.873974, 0.436647,
		0.876150, -0.026608, 0.481305,
		41.187473, 38.803764, 19.885012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916172, 39.421997, 19.478632>,  <40.574169, 38.822392, 19.548098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916172, 39.421997, 19.478632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219276, 39.176373, 19.566931>,  <41.401138, 39.028996, 19.619909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219276, 39.176373, 19.566931>,  <40.916172, 39.421997, 19.478632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219276, 39.176373, 19.566931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457180, 0.258220, -0.851064,
		0.465606, 0.745821, 0.476405,
		0.757758, -0.614063, 0.220746,
		41.446606, 38.992153, 19.633154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441025, 39.865448, 19.283163>,  <40.916172, 39.421997, 19.478632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441025, 39.865448, 19.283163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548618, 39.480209, 19.286894>,  <41.613174, 39.249065, 19.289131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548618, 39.480209, 19.286894>,  <41.441025, 39.865448, 19.283163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548618, 39.480209, 19.286894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447682, 0.116449, -0.886578,
		0.852778, 0.242649, 0.462485,
		0.268983, -0.963100, 0.009325,
		41.629314, 39.191280, 19.289692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168774, 39.846283, 19.099134>,  <41.441025, 39.865448, 19.283163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168774, 39.846283, 19.099134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070427, 39.472252, 18.997019>,  <42.011417, 39.247833, 18.935749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070427, 39.472252, 18.997019>,  <42.168774, 39.846283, 19.099134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070427, 39.472252, 18.997019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517854, 0.095918, -0.850074,
		0.819375, -0.341209, 0.460652,
		-0.245868, -0.935081, -0.255290,
		41.996666, 39.191727, 18.920431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722954, 39.605194, 18.761023>,  <42.168774, 39.846283, 19.099134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722954, 39.605194, 18.761023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469513, 39.321098, 18.638315>,  <42.317448, 39.150639, 18.564692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469513, 39.321098, 18.638315>,  <42.722954, 39.605194, 18.761023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469513, 39.321098, 18.638315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537307, -0.118677, -0.834995,
		0.556643, -0.693882, 0.456812,
		-0.633601, -0.710242, -0.306767,
		42.279434, 39.108025, 18.546286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206203, 39.260422, 18.391533>,  <42.722954, 39.605194, 18.761023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206203, 39.260422, 18.391533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844433, 39.136913, 18.273775>,  <42.627369, 39.062809, 18.203121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844433, 39.136913, 18.273775>,  <43.206203, 39.260422, 18.391533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844433, 39.136913, 18.273775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380647, -0.272427, -0.883681,
		0.192654, -0.911287, 0.363924,
		-0.904429, -0.308771, -0.294395,
		42.573105, 39.044281, 18.185457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355137, 38.706112, 17.940380>,  <43.206203, 39.260422, 18.391533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355137, 38.706112, 17.940380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978981, 38.811985, 17.854959>,  <42.753288, 38.875507, 17.803707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978981, 38.811985, 17.854959>,  <43.355137, 38.706112, 17.940380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978981, 38.811985, 17.854959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163289, -0.199408, -0.966216,
		-0.298326, -0.943493, 0.144302,
		-0.940393, 0.264684, -0.213550,
		42.696861, 38.891388, 17.790894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.501743, 38.155334, 18.445457>,  <43.355137, 38.706112, 17.940380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.501743, 38.155334, 18.445457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855026, 37.969215, 18.468945>,  <44.066994, 37.857544, 18.483036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855026, 37.969215, 18.468945>,  <43.501743, 38.155334, 18.445457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855026, 37.969215, 18.468945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152915, -0.167348, 0.973967,
		-0.443361, -0.869190, -0.218954,
		0.883204, -0.465300, 0.058716,
		44.119987, 37.829624, 18.486559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376022, 37.523926, 18.884289>,  <43.501743, 38.155334, 18.445457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376022, 37.523926, 18.884289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773529, 37.553158, 18.850632>,  <44.012035, 37.570698, 18.830437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773529, 37.553158, 18.850632>,  <43.376022, 37.523926, 18.884289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773529, 37.553158, 18.850632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102001, -0.292198, 0.950903,
		0.044907, -0.953562, -0.297832,
		0.993770, 0.073081, -0.084143,
		44.071659, 37.575081, 18.825388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664772, 36.903328, 19.097630>,  <43.376022, 37.523926, 18.884289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664772, 36.903328, 19.097630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943069, 37.183762, 19.160131>,  <44.110050, 37.352020, 19.197632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943069, 37.183762, 19.160131>,  <43.664772, 36.903328, 19.097630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943069, 37.183762, 19.160131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105168, -0.314622, 0.943373,
		0.710546, -0.639916, -0.292629,
		0.695747, 0.701086, 0.156255,
		44.151794, 37.394089, 19.207008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113342, 36.650589, 19.563429>,  <43.664772, 36.903328, 19.097630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113342, 36.650589, 19.563429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213905, 37.036686, 19.592010>,  <44.274242, 37.268345, 19.609159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213905, 37.036686, 19.592010>,  <44.113342, 36.650589, 19.563429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213905, 37.036686, 19.592010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171479, -0.117077, 0.978207,
		0.952571, -0.233672, -0.194952,
		0.251404, 0.965241, 0.071454,
		44.289326, 37.326260, 19.613447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780529, 36.745113, 20.083086>,  <44.113342, 36.650589, 19.563429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780529, 36.745113, 20.083086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558361, 37.076508, 20.054466>,  <44.425060, 37.275345, 20.037294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.558361, 37.076508, 20.054466>,  <44.780529, 36.745113, 20.083086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558361, 37.076508, 20.054466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187392, -0.040869, 0.981435,
		0.810183, 0.558512, 0.177952,
		-0.555416, 0.828489, -0.071549,
		44.391735, 37.325054, 20.033001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874615, 36.944305, 20.713490>,  <44.780529, 36.745113, 20.083086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874615, 36.944305, 20.713490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585098, 37.202049, 20.614756>,  <44.411388, 37.356697, 20.555515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585098, 37.202049, 20.614756>,  <44.874615, 36.944305, 20.713490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585098, 37.202049, 20.614756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286791, 0.044442, 0.956962,
		0.627598, 0.763430, 0.152630,
		-0.723790, 0.644360, -0.246837,
		44.367962, 37.395359, 20.540705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903080, 37.577438, 21.226549>,  <44.874615, 36.944305, 20.713490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903080, 37.577438, 21.226549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548805, 37.547028, 21.043341>,  <44.336239, 37.528782, 20.933416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548805, 37.547028, 21.043341>,  <44.903080, 37.577438, 21.226549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548805, 37.547028, 21.043341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454174, -0.062893, 0.888690,
		-0.096368, 0.995121, 0.021175,
		-0.885686, -0.076024, -0.458019,
		44.283100, 37.524220, 20.905935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429443, 38.067680, 21.599615>,  <44.903080, 37.577438, 21.226549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429443, 38.067680, 21.599615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180157, 37.818058, 21.411083>,  <44.030586, 37.668285, 21.297964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180157, 37.818058, 21.411083>,  <44.429443, 38.067680, 21.599615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180157, 37.818058, 21.411083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559363, -0.065494, 0.826332,
		-0.546549, 0.778628, -0.308258,
		-0.623216, -0.624059, -0.471331,
		43.993191, 37.630840, 21.269684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708298, 38.252739, 21.685511>,  <44.429443, 38.067680, 21.599615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708298, 38.252739, 21.685511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688343, 37.865692, 21.586538>,  <43.676369, 37.633465, 21.527155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688343, 37.865692, 21.586538>,  <43.708298, 38.252739, 21.685511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688343, 37.865692, 21.586538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642361, -0.158617, 0.749809,
		-0.764777, 0.196348, -0.613649,
		-0.049888, -0.967620, -0.247433,
		43.673378, 37.575405, 21.512308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983372, 38.081841, 21.745329>,  <43.708298, 38.252739, 21.685511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983372, 38.081841, 21.745329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199604, 37.749249, 21.796577>,  <43.329346, 37.549694, 21.827326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.199604, 37.749249, 21.796577>,  <42.983372, 38.081841, 21.745329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199604, 37.749249, 21.796577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530021, -0.218332, 0.819395,
		-0.653336, -0.510857, -0.558728,
		0.540582, -0.831478, 0.128121,
		43.361778, 37.499805, 21.835014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495541, 37.661827, 21.946508>,  <42.983372, 38.081841, 21.745329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495541, 37.661827, 21.946508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825329, 37.460476, 22.049932>,  <43.023201, 37.339664, 22.111988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.825329, 37.460476, 22.049932>,  <42.495541, 37.661827, 21.946508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825329, 37.460476, 22.049932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462292, -0.335587, 0.820773,
		-0.326385, -0.796238, -0.509389,
		0.824475, -0.503374, 0.258564,
		43.072670, 37.309464, 22.127501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332054, 37.086983, 21.817276>,  <42.495541, 37.661827, 21.946508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332054, 37.086983, 21.817276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611355, 37.108810, 22.102785>,  <42.778934, 37.121906, 22.274090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611355, 37.108810, 22.102785>,  <42.332054, 37.086983, 21.817276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611355, 37.108810, 22.102785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708210, -0.092660, 0.699895,
		0.104332, -0.994201, -0.026052,
		0.698250, 0.054571, 0.713771,
		42.820831, 37.125183, 22.316916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150871, 36.660469, 22.372787>,  <42.332054, 37.086983, 21.817276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150871, 36.660469, 22.372787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414818, 36.900391, 22.553810>,  <42.573185, 37.044346, 22.662424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414818, 36.900391, 22.553810>,  <42.150871, 36.660469, 22.372787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414818, 36.900391, 22.553810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406529, -0.221537, 0.886372,
		0.631911, -0.768864, 0.097654,
		0.659866, 0.599807, 0.452557,
		42.612778, 37.080334, 22.689577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364048, 36.237892, 22.953678>,  <42.150871, 36.660469, 22.372787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364048, 36.237892, 22.953678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486958, 36.606106, 23.050182>,  <42.560703, 36.827034, 23.108084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486958, 36.606106, 23.050182>,  <42.364048, 36.237892, 22.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486958, 36.606106, 23.050182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370464, -0.117813, 0.921345,
		0.876551, -0.372479, 0.304824,
		0.307269, 0.920532, 0.241259,
		42.579140, 36.882267, 23.122561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731316, 36.129314, 23.599293>,  <42.364048, 36.237892, 22.953678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731316, 36.129314, 23.599293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633385, 36.516609, 23.578964>,  <42.574627, 36.748985, 23.566767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.633385, 36.516609, 23.578964>,  <42.731316, 36.129314, 23.599293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633385, 36.516609, 23.578964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580900, -0.104515, 0.807237,
		0.776283, 0.227154, 0.588036,
		-0.244826, 0.968234, -0.050821,
		42.559937, 36.807079, 23.563719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847038, 36.388649, 24.290312>,  <42.731316, 36.129314, 23.599293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847038, 36.388649, 24.290312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592735, 36.650200, 24.126240>,  <42.440151, 36.807133, 24.027796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592735, 36.650200, 24.126240>,  <42.847038, 36.388649, 24.290312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592735, 36.650200, 24.126240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622551, -0.120213, 0.773291,
		0.456332, 0.746986, 0.483501,
		-0.635760, 0.653882, -0.410180,
		42.402008, 36.846363, 24.003185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732998, 36.957798, 24.758602>,  <42.847038, 36.388649, 24.290312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732998, 36.957798, 24.758602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419983, 36.974773, 24.510141>,  <42.232174, 36.984959, 24.361065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419983, 36.974773, 24.510141>,  <42.732998, 36.957798, 24.758602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419983, 36.974773, 24.510141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619177, 0.051397, 0.783568,
		0.065179, 0.997776, -0.013943,
		-0.782542, 0.042439, -0.621150,
		42.185219, 36.987507, 24.323797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399860, 37.518654, 24.984638>,  <42.732998, 36.957798, 24.758602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399860, 37.518654, 24.984638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133888, 37.317551, 24.763693>,  <41.974304, 37.196888, 24.631126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133888, 37.317551, 24.763693>,  <42.399860, 37.518654, 24.984638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133888, 37.317551, 24.763693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677204, 0.093854, 0.729785,
		-0.315064, 0.859317, -0.402876,
		-0.664929, -0.502758, -0.552363,
		41.934410, 37.166725, 24.597984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802593, 37.891968, 24.922308>,  <42.399860, 37.518654, 24.984638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802593, 37.891968, 24.922308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693111, 37.512222, 24.860600>,  <41.627422, 37.284374, 24.823574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693111, 37.512222, 24.860600>,  <41.802593, 37.891968, 24.922308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693111, 37.512222, 24.860600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646391, 0.062790, 0.760419,
		-0.712225, 0.307851, -0.630844,
		-0.273706, -0.949361, -0.154272,
		41.611000, 37.227413, 24.814318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098419, 37.992958, 24.917620>,  <41.802593, 37.891968, 24.922308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098419, 37.992958, 24.917620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155357, 37.602566, 24.983595>,  <41.189518, 37.368332, 25.023180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155357, 37.602566, 24.983595>,  <41.098419, 37.992958, 24.917620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155357, 37.602566, 24.983595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671891, 0.027092, 0.740155,
		-0.726843, -0.216177, -0.651894,
		0.142344, -0.975978, 0.164939,
		41.198059, 37.309772, 25.033077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426792, 37.712643, 25.038355>,  <41.098419, 37.992958, 24.917620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426792, 37.712643, 25.038355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703472, 37.461868, 25.181740>,  <40.869480, 37.311401, 25.267771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703472, 37.461868, 25.181740>,  <40.426792, 37.712643, 25.038355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703472, 37.461868, 25.181740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544606, -0.126849, 0.829044,
		-0.474288, -0.768673, -0.429176,
		0.691704, -0.626938, 0.358461,
		40.910984, 37.273788, 25.289278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000145, 37.232746, 25.306805>,  <40.426792, 37.712643, 25.038355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000145, 37.232746, 25.306805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360165, 37.188549, 25.475422>,  <40.576176, 37.162033, 25.576593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360165, 37.188549, 25.475422>,  <40.000145, 37.232746, 25.306805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360165, 37.188549, 25.475422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429645, -0.063177, 0.900785,
		-0.072919, -0.991864, -0.104345,
		0.900049, -0.110516, 0.421543,
		40.630180, 37.155403, 25.601885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949123, 36.585560, 25.667917>,  <40.000145, 37.232746, 25.306805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949123, 36.585560, 25.667917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227234, 36.827568, 25.823114>,  <40.394100, 36.972775, 25.916233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227234, 36.827568, 25.823114>,  <39.949123, 36.585560, 25.667917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227234, 36.827568, 25.823114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413624, -0.104663, 0.904412,
		0.587797, -0.789300, 0.177482,
		0.695276, 0.605022, 0.387994,
		40.435818, 37.009075, 25.939512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265911, 36.232151, 26.271067>,  <39.949123, 36.585560, 25.667917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265911, 36.232151, 26.271067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381836, 36.609215, 26.337275>,  <40.451393, 36.835453, 26.376999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381836, 36.609215, 26.337275>,  <40.265911, 36.232151, 26.271067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381836, 36.609215, 26.337275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200006, -0.109471, 0.973660,
		0.935951, -0.315287, 0.156811,
		0.289816, 0.942661, 0.165519,
		40.468781, 36.892014, 26.386930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728207, 36.155773, 26.755190>,  <40.265911, 36.232151, 26.271067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728207, 36.155773, 26.755190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610027, 36.537556, 26.771751>,  <40.539120, 36.766624, 26.781689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610027, 36.537556, 26.771751>,  <40.728207, 36.155773, 26.755190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610027, 36.537556, 26.771751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056552, -0.060733, 0.996551,
		0.953683, 0.292090, 0.071920,
		-0.295450, 0.954461, 0.041402,
		40.521393, 36.823895, 26.784172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980679, 36.462120, 27.326693>,  <40.728207, 36.155773, 26.755190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980679, 36.462120, 27.326693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716122, 36.761143, 27.302269>,  <40.557388, 36.940556, 27.287615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716122, 36.761143, 27.302269>,  <40.980679, 36.462120, 27.326693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716122, 36.761143, 27.302269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082158, 0.008709, 0.996581,
		0.745530, 0.664144, 0.055658,
		-0.661389, 0.747554, -0.061058,
		40.517704, 36.985409, 27.283951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261765, 37.007084, 27.671082>,  <40.980679, 36.462120, 27.326693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261765, 37.007084, 27.671082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862019, 37.018772, 27.679323>,  <40.622173, 37.025787, 27.684269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862019, 37.018772, 27.679323>,  <41.261765, 37.007084, 27.671082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862019, 37.018772, 27.679323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017132, -0.114491, 0.993277,
		0.031386, 0.992994, 0.113917,
		-0.999361, 0.029224, 0.020605,
		40.562210, 37.027538, 27.685505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143688, 37.428719, 28.242289>,  <41.261765, 37.007084, 27.671082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143688, 37.428719, 28.242289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801804, 37.233711, 28.170963>,  <40.596672, 37.116707, 28.128168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.801804, 37.233711, 28.170963>,  <41.143688, 37.428719, 28.242289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801804, 37.233711, 28.170963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049539, -0.265330, 0.962884,
		-0.516740, 0.831818, 0.202629,
		-0.854708, -0.487523, -0.178314,
		40.545391, 37.087456, 28.117470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819252, 37.398491, 28.905954>,  <41.143688, 37.428719, 28.242289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819252, 37.398491, 28.905954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576996, 37.127747, 28.738596>,  <40.431641, 36.965298, 28.638182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576996, 37.127747, 28.738596>,  <40.819252, 37.398491, 28.905954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576996, 37.127747, 28.738596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165580, -0.407088, 0.898255,
		-0.778321, 0.613298, 0.134474,
		-0.605641, -0.676864, -0.418395,
		40.395302, 36.924686, 28.613077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137669, 37.357742, 29.227659>,  <40.819252, 37.398491, 28.905954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137669, 37.357742, 29.227659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158405, 37.004723, 29.040718>,  <40.170849, 36.792912, 28.928553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158405, 37.004723, 29.040718>,  <40.137669, 37.357742, 29.227659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158405, 37.004723, 29.040718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321558, -0.457812, 0.828860,
		-0.945470, 0.107313, -0.307523,
		0.051841, -0.882549, -0.467354,
		40.173958, 36.739960, 28.900513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414474, 37.034096, 29.308378>,  <40.137669, 37.357742, 29.227659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414474, 37.034096, 29.308378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688461, 36.749931, 29.243711>,  <39.852852, 36.579433, 29.204912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688461, 36.749931, 29.243711>,  <39.414474, 37.034096, 29.308378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688461, 36.749931, 29.243711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350253, -0.515648, 0.781940,
		-0.638864, -0.478976, -0.602025,
		0.684964, -0.710415, -0.161666,
		39.893951, 36.536808, 29.195211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958061, 36.494450, 29.443424>,  <39.414474, 37.034096, 29.308378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958061, 36.494450, 29.443424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331722, 36.351753, 29.447342>,  <39.555920, 36.266136, 29.449692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331722, 36.351753, 29.447342>,  <38.958061, 36.494450, 29.443424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331722, 36.351753, 29.447342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202300, -0.506730, 0.838033,
		-0.293999, -0.784831, -0.545532,
		0.934152, -0.356742, 0.009794,
		39.611969, 36.244732, 29.450279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914932, 35.806843, 29.659548>,  <38.958061, 36.494450, 29.443424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914932, 35.806843, 29.659548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296894, 35.897755, 29.735964>,  <39.526073, 35.952301, 29.781813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.296894, 35.897755, 29.735964>,  <38.914932, 35.806843, 29.659548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296894, 35.897755, 29.735964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086146, -0.403661, 0.910844,
		0.284136, -0.886228, -0.365879,
		0.954906, 0.227285, 0.191039,
		39.583366, 35.965939, 29.793276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314442, 35.216705, 29.812798>,  <38.914932, 35.806843, 29.659548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314442, 35.216705, 29.812798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495522, 35.526707, 29.989178>,  <39.604172, 35.712708, 30.095005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495522, 35.526707, 29.989178>,  <39.314442, 35.216705, 29.812798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495522, 35.526707, 29.989178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214263, -0.385485, 0.897492,
		0.865535, -0.500777, -0.008456,
		0.452703, 0.774999, 0.440949,
		39.631332, 35.759205, 30.121462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805138, 34.958817, 30.184313>,  <39.314442, 35.216705, 29.812798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805138, 34.958817, 30.184313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732338, 35.307884, 30.365564>,  <39.688660, 35.517326, 30.474316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732338, 35.307884, 30.365564>,  <39.805138, 34.958817, 30.184313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732338, 35.307884, 30.365564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154485, -0.480479, 0.863292,
		0.971088, 0.087115, 0.222261,
		-0.181997, 0.872669, 0.453130,
		39.677738, 35.569683, 30.501503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265434, 34.974514, 30.804398>,  <39.805138, 34.958817, 30.184313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265434, 34.974514, 30.804398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972061, 35.239906, 30.863535>,  <39.796036, 35.399143, 30.899017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972061, 35.239906, 30.863535>,  <40.265434, 34.974514, 30.804398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972061, 35.239906, 30.863535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050956, -0.270549, 0.961357,
		0.677845, 0.697561, 0.232239,
		-0.733437, 0.663484, 0.147845,
		39.752029, 35.438953, 30.907888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578548, 35.194157, 31.391697>,  <40.265434, 34.974514, 30.804398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578548, 35.194157, 31.391697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182922, 35.253040, 31.395109>,  <39.945545, 35.288372, 31.397156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182922, 35.253040, 31.395109>,  <40.578548, 35.194157, 31.391697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182922, 35.253040, 31.395109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044942, -0.356037, 0.933390,
		0.140441, 0.922804, 0.358761,
		-0.989069, 0.147210, 0.008529,
		39.886200, 35.297203, 31.397669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404972, 35.586697, 32.071346>,  <40.578548, 35.194157, 31.391697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404972, 35.586697, 32.071346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068539, 35.408566, 31.948538>,  <39.866676, 35.301689, 31.874853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068539, 35.408566, 31.948538>,  <40.404972, 35.586697, 32.071346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068539, 35.408566, 31.948538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190693, -0.287040, 0.938746,
		-0.506173, 0.848113, 0.156505,
		-0.841086, -0.445323, -0.307021,
		39.816212, 35.274967, 31.856432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053127, 35.551662, 32.701000>,  <40.404972, 35.586697, 32.071346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053127, 35.551662, 32.701000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868572, 35.287655, 32.463852>,  <39.757839, 35.129250, 32.321564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868572, 35.287655, 32.463852>,  <40.053127, 35.551662, 32.701000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868572, 35.287655, 32.463852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183707, -0.582699, 0.791652,
		-0.867973, 0.474171, 0.147599,
		-0.461384, -0.660018, -0.592875,
		39.730156, 35.089649, 32.285988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438160, 35.253708, 33.128513>,  <40.053127, 35.551662, 32.701000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438160, 35.253708, 33.128513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512733, 34.993027, 32.834431>,  <39.557480, 34.836620, 32.657982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512733, 34.993027, 32.834431>,  <39.438160, 35.253708, 33.128513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512733, 34.993027, 32.834431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179425, -0.758328, 0.626694,
		-0.965944, 0.015075, -0.258311,
		0.186437, -0.651699, -0.735207,
		39.568665, 34.797516, 32.613869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832371, 34.616703, 32.998100>,  <39.438160, 35.253708, 33.128513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832371, 34.616703, 32.998100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181347, 34.452023, 32.892757>,  <39.390732, 34.353214, 32.829552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181347, 34.452023, 32.892757>,  <38.832371, 34.616703, 32.998100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181347, 34.452023, 32.892757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183338, -0.775207, 0.604518,
		-0.453033, -0.479121, -0.751800,
		0.872438, -0.411700, -0.263353,
		39.443077, 34.328514, 32.813751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744198, 33.823589, 32.962551>,  <38.832371, 34.616703, 32.998100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744198, 33.823589, 32.962551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142448, 33.854755, 32.983135>,  <39.381401, 33.873455, 32.995487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142448, 33.854755, 32.983135>,  <38.744198, 33.823589, 32.962551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142448, 33.854755, 32.983135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047100, -0.894928, 0.443719,
		0.080626, -0.439356, -0.894688,
		0.995631, 0.077915, 0.051461,
		39.441139, 33.878128, 32.998573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054375, 33.144375, 32.781704>,  <38.744198, 33.823589, 32.962551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054375, 33.144375, 32.781704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346336, 33.335957, 32.976780>,  <39.521515, 33.450905, 33.093826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346336, 33.335957, 32.976780>,  <39.054375, 33.144375, 32.781704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346336, 33.335957, 32.976780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119202, -0.791720, 0.599141,
		0.673073, -0.379184, -0.634974,
		0.729907, 0.478956, 0.487686,
		39.565308, 33.479645, 33.123085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609570, 32.663418, 32.870586>,  <39.054375, 33.144375, 32.781704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609570, 32.663418, 32.870586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667652, 32.951763, 33.141663>,  <39.702499, 33.124771, 33.304310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667652, 32.951763, 33.141663>,  <39.609570, 32.663418, 32.870586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667652, 32.951763, 33.141663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330999, -0.680878, 0.653333,
		0.932393, 0.129450, -0.337471,
		0.145203, 0.720866, 0.677694,
		39.711212, 33.168022, 33.344971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259609, 32.588978, 33.067028>,  <39.609570, 32.663418, 32.870586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259609, 32.588978, 33.067028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051529, 32.740734, 33.373089>,  <39.926682, 32.831787, 33.556725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051529, 32.740734, 33.373089>,  <40.259609, 32.588978, 33.067028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051529, 32.740734, 33.373089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359672, -0.715269, 0.599189,
		0.774613, 0.586902, 0.235629,
		-0.520203, 0.379390, 0.765149,
		39.895470, 32.854549, 33.602634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588139, 32.185501, 33.624920>,  <40.259609, 32.588978, 33.067028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588139, 32.185501, 33.624920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317696, 32.430309, 33.789021>,  <40.155430, 32.577194, 33.887482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317696, 32.430309, 33.789021>,  <40.588139, 32.185501, 33.624920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317696, 32.430309, 33.789021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275165, -0.306774, 0.911139,
		0.683490, 0.728917, 0.039007,
		-0.676111, 0.612021, 0.410249,
		40.114861, 32.613914, 33.912094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843094, 32.520699, 34.237282>,  <40.588139, 32.185501, 33.624920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843094, 32.520699, 34.237282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449642, 32.484486, 34.299614>,  <40.213573, 32.462757, 34.337013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449642, 32.484486, 34.299614>,  <40.843094, 32.520699, 34.237282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449642, 32.484486, 34.299614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173277, -0.237475, 0.955814,
		-0.049525, 0.967166, 0.249273,
		-0.983627, -0.090530, 0.155826,
		40.154552, 32.457325, 34.346363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791168, 32.685493, 34.928589>,  <40.843094, 32.520699, 34.237282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791168, 32.685493, 34.928589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461475, 32.487385, 34.818794>,  <40.263660, 32.368519, 34.752918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461475, 32.487385, 34.818794>,  <40.791168, 32.685493, 34.928589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461475, 32.487385, 34.818794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059793, -0.405903, 0.911958,
		-0.563084, 0.768079, 0.304945,
		-0.824234, -0.495276, -0.274483,
		40.214207, 32.338802, 34.736450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261120, 32.891087, 35.390884>,  <40.791168, 32.685493, 34.928589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261120, 32.891087, 35.390884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241768, 32.522820, 35.235947>,  <40.230156, 32.301861, 35.142982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241768, 32.522820, 35.235947>,  <40.261120, 32.891087, 35.390884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241768, 32.522820, 35.235947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026581, -0.386479, 0.921915,
		-0.998475, 0.054896, -0.005776,
		-0.048377, -0.920663, -0.387349,
		40.227253, 32.246620, 35.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719574, 32.423443, 35.808781>,  <40.261120, 32.891087, 35.390884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719574, 32.423443, 35.808781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982597, 32.181873, 35.628605>,  <40.140411, 32.036930, 35.520500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982597, 32.181873, 35.628605>,  <39.719574, 32.423443, 35.808781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982597, 32.181873, 35.628605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107438, -0.516596, 0.849462,
		-0.745706, -0.606963, -0.274806,
		0.657556, -0.603924, -0.450440,
		40.179863, 32.000694, 35.493473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503246, 31.774101, 35.938198>,  <39.719574, 32.423443, 35.808781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503246, 31.774101, 35.938198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888950, 31.730972, 35.841385>,  <40.120373, 31.705095, 35.783298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888950, 31.730972, 35.841385>,  <39.503246, 31.774101, 35.938198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888950, 31.730972, 35.841385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087181, -0.733490, 0.674087,
		-0.250211, -0.671094, -0.697873,
		0.964258, -0.107823, -0.242034,
		40.178226, 31.698626, 35.768776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687103, 31.365871, 36.370499>,  <39.503246, 31.774101, 35.938198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687103, 31.365871, 36.370499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015224, 31.338703, 36.143345>,  <40.212097, 31.322403, 36.007053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015224, 31.338703, 36.143345>,  <39.687103, 31.365871, 36.370499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015224, 31.338703, 36.143345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340796, -0.739357, 0.580697,
		-0.459311, -0.669879, -0.583348,
		0.820299, -0.067918, -0.567887,
		40.261314, 31.318327, 35.972977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732460, 30.612505, 36.006554>,  <39.687103, 31.365871, 36.370499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732460, 30.612505, 36.006554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071514, 30.806381, 36.092892>,  <40.274948, 30.922707, 36.144695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071514, 30.806381, 36.092892>,  <39.732460, 30.612505, 36.006554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071514, 30.806381, 36.092892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353787, -0.819486, 0.450863,
		0.395411, -0.305804, -0.866102,
		0.847635, 0.484692, 0.215845,
		40.325806, 30.951790, 36.157646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211933, 30.220846, 35.928562>,  <39.732460, 30.612505, 36.006554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211933, 30.220846, 35.928562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391396, 30.494926, 36.158070>,  <40.499073, 30.659374, 36.295773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391396, 30.494926, 36.158070>,  <40.211933, 30.220846, 35.928562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391396, 30.494926, 36.158070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280130, -0.717475, 0.637774,
		0.848666, -0.125413, -0.513845,
		0.448656, 0.685201, 0.573765,
		40.525993, 30.700487, 36.330200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943417, 29.994577, 36.040604>,  <40.211933, 30.220846, 35.928562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943417, 29.994577, 36.040604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831249, 30.245117, 36.331547>,  <40.763950, 30.395441, 36.506115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831249, 30.245117, 36.331547>,  <40.943417, 29.994577, 36.040604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831249, 30.245117, 36.331547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230607, -0.691611, 0.684467,
		0.931765, 0.359671, 0.049500,
		-0.280417, 0.626347, 0.727362,
		40.747124, 30.433022, 36.549755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368046, 29.909502, 36.634972>,  <40.943417, 29.994577, 36.040604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368046, 29.909502, 36.634972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030170, 30.052645, 36.794193>,  <40.827446, 30.138531, 36.889725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030170, 30.052645, 36.794193>,  <41.368046, 29.909502, 36.634972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030170, 30.052645, 36.794193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132597, -0.580583, 0.803331,
		0.518580, 0.731343, 0.442959,
		-0.844685, 0.357856, 0.398052,
		40.776764, 30.160002, 36.913609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496513, 29.935154, 37.343987>,  <41.368046, 29.909502, 36.634972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496513, 29.935154, 37.343987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099518, 29.983892, 37.339554>,  <40.861320, 30.013136, 37.336895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099518, 29.983892, 37.339554>,  <41.496513, 29.935154, 37.343987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099518, 29.983892, 37.339554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085543, -0.626316, 0.774862,
		0.087472, 0.769988, 0.632033,
		-0.992487, 0.121844, -0.011082,
		40.801773, 30.020445, 37.336227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285587, 30.009754, 38.077435>,  <41.496513, 29.935154, 37.343987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285587, 30.009754, 38.077435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960396, 29.893351, 37.875690>,  <40.765282, 29.823507, 37.754642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960396, 29.893351, 37.875690>,  <41.285587, 30.009754, 38.077435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960396, 29.893351, 37.875690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273917, -0.573213, 0.772267,
		-0.513842, 0.765989, 0.386298,
		-0.812979, -0.291010, -0.504359,
		40.716503, 29.806047, 37.724384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693485, 30.027271, 38.435349>,  <41.285587, 30.009754, 38.077435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693485, 30.027271, 38.435349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540928, 29.756212, 38.183846>,  <40.449394, 29.593576, 38.032944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540928, 29.756212, 38.183846>,  <40.693485, 30.027271, 38.435349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540928, 29.756212, 38.183846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320270, -0.541176, 0.777531,
		-0.867158, 0.497920, -0.010626,
		-0.381397, -0.677646, -0.628754,
		40.426510, 29.552919, 37.995220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484661, 30.146137, 39.188240>,  <40.693485, 30.027271, 38.435349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484661, 30.146137, 39.188240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329224, 29.809742, 39.338829>,  <40.235962, 29.607904, 39.429180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329224, 29.809742, 39.338829>,  <40.484661, 30.146137, 39.188240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329224, 29.809742, 39.338829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906471, 0.275659, -0.319879,
		0.165237, -0.465563, -0.869453,
		-0.388596, -0.840989, 0.376470,
		40.212646, 29.557446, 39.451771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989338, 29.773941, 38.729229>,  <40.484661, 30.146137, 39.188240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989338, 29.773941, 38.729229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879917, 29.726530, 39.111042>,  <39.814266, 29.698084, 39.340130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879917, 29.726530, 39.111042>,  <39.989338, 29.773941, 38.729229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879917, 29.726530, 39.111042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905565, 0.366252, -0.214038,
		-0.324230, -0.922936, -0.207518,
		-0.273547, -0.118523, 0.954528,
		39.797852, 29.690973, 39.397400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352894, 29.324429, 38.774910>,  <39.989338, 29.773941, 38.729229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352894, 29.324429, 38.774910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344601, 29.595543, 39.068897>,  <39.339626, 29.758211, 39.245289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344601, 29.595543, 39.068897>,  <39.352894, 29.324429, 38.774910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344601, 29.595543, 39.068897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882804, 0.332647, -0.331667,
		-0.469283, -0.655705, 0.591459,
		-0.020729, 0.677788, 0.734965,
		39.338383, 29.798880, 39.289387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753265, 28.853539, 39.100296>,  <39.352894, 29.324429, 38.774910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753265, 28.853539, 39.100296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791164, 28.505384, 38.907028>,  <39.813904, 28.296492, 38.791069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791164, 28.505384, 38.907028>,  <39.753265, 28.853539, 39.100296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791164, 28.505384, 38.907028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182843, 0.492312, -0.850998,
		0.978566, -0.007712, 0.205790,
		0.094750, -0.870385, -0.483170,
		39.819588, 28.244268, 38.762077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484333, 28.588490, 38.886944>,  <39.753265, 28.853539, 39.100296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484333, 28.588490, 38.886944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175022, 28.494295, 38.651459>,  <39.989433, 28.437778, 38.510166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175022, 28.494295, 38.651459>,  <40.484333, 28.588490, 38.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175022, 28.494295, 38.651459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368400, 0.588820, -0.719425,
		0.516060, -0.773200, -0.368571,
		-0.773281, -0.235485, -0.588713,
		39.943039, 28.423649, 38.474846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788525, 28.273726, 38.230946>,  <40.484333, 28.588490, 38.886944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788525, 28.273726, 38.230946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426247, 28.430779, 38.166996>,  <40.208881, 28.525011, 38.128624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426247, 28.430779, 38.166996>,  <40.788525, 28.273726, 38.230946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426247, 28.430779, 38.166996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391527, 0.630068, -0.670612,
		-0.162572, -0.669964, -0.724375,
		-0.905692, 0.392635, -0.159878,
		40.154541, 28.548569, 38.119034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710796, 28.385338, 37.557083>,  <40.788525, 28.273726, 38.230946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710796, 28.385338, 37.557083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452656, 28.645044, 37.718067>,  <40.297771, 28.800869, 37.814659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452656, 28.645044, 37.718067>,  <40.710796, 28.385338, 37.557083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452656, 28.645044, 37.718067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330050, 0.712142, -0.619614,
		-0.688905, -0.267035, -0.673871,
		-0.645350, 0.649266, 0.402463,
		40.259052, 28.839825, 37.838806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167034, 28.749233, 37.076782>,  <40.710796, 28.385338, 37.557083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167034, 28.749233, 37.076782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231400, 29.007528, 37.375347>,  <40.270020, 29.162506, 37.554485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231400, 29.007528, 37.375347>,  <40.167034, 28.749233, 37.076782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231400, 29.007528, 37.375347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139181, 0.733861, -0.664888,
		-0.977105, 0.210877, 0.028215,
		0.160916, 0.645739, 0.746410,
		40.279675, 29.201250, 37.599270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676304, 29.395182, 37.077633>,  <40.167034, 28.749233, 37.076782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676304, 29.395182, 37.077633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007511, 29.518152, 37.265198>,  <40.206234, 29.591934, 37.377735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007511, 29.518152, 37.265198>,  <39.676304, 29.395182, 37.077633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007511, 29.518152, 37.265198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070489, 0.772583, -0.630988,
		-0.556255, 0.555522, 0.618041,
		0.828016, 0.307425, 0.468912,
		40.255917, 29.610380, 37.405872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509331, 30.119909, 37.132164>,  <39.676304, 29.395182, 37.077633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509331, 30.119909, 37.132164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901581, 30.081587, 37.200520>,  <40.136929, 30.058594, 37.241531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901581, 30.081587, 37.200520>,  <39.509331, 30.119909, 37.132164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901581, 30.081587, 37.200520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169325, 0.853206, -0.493324,
		-0.098537, 0.512699, 0.852895,
		0.980622, -0.095806, 0.170885,
		40.195766, 30.052845, 37.251785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829239, 30.811352, 37.408985>,  <39.509331, 30.119909, 37.132164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829239, 30.811352, 37.408985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144516, 30.623835, 37.249493>,  <40.333683, 30.511324, 37.153797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144516, 30.623835, 37.249493>,  <39.829239, 30.811352, 37.408985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144516, 30.623835, 37.249493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211641, 0.814845, -0.539663,
		0.577891, 0.340972, 0.741472,
		0.788194, -0.468792, -0.398728,
		40.380974, 30.483196, 37.129875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469109, 31.313240, 37.408772>,  <39.829239, 30.811352, 37.408985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469109, 31.313240, 37.408772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520973, 31.022263, 37.139248>,  <40.552094, 30.847677, 36.977535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520973, 31.022263, 37.139248>,  <40.469109, 31.313240, 37.408772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520973, 31.022263, 37.139248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337973, 0.671274, -0.659671,
		0.932181, -0.142193, 0.332896,
		0.129663, -0.727443, -0.673806,
		40.559872, 30.804029, 36.937107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990692, 31.676355, 37.083199>,  <40.469109, 31.313240, 37.408772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990692, 31.676355, 37.083199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846989, 31.371664, 36.867531>,  <40.760765, 31.188850, 36.738129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846989, 31.371664, 36.867531>,  <40.990692, 31.676355, 37.083199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846989, 31.371664, 36.867531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004913, 0.579279, -0.815115,
		0.933225, -0.290188, -0.211853,
		-0.359258, -0.761727, -0.539171,
		40.739212, 31.143147, 36.705780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277111, 31.699015, 36.455162>,  <40.990692, 31.676355, 37.083199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277111, 31.699015, 36.455162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996197, 31.428139, 36.367336>,  <40.827648, 31.265614, 36.314640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996197, 31.428139, 36.367336>,  <41.277111, 31.699015, 36.455162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996197, 31.428139, 36.367336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095759, 0.215753, -0.971741,
		0.705423, -0.703467, -0.086673,
		-0.702288, -0.677189, -0.219560,
		40.785511, 31.224981, 36.301468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212994, 31.874933, 35.820732>,  <41.277111, 31.699015, 36.455162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212994, 31.874933, 35.820732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944698, 31.579275, 35.845284>,  <40.783722, 31.401880, 35.860016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944698, 31.579275, 35.845284>,  <41.212994, 31.874933, 35.820732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944698, 31.579275, 35.845284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254243, 0.151392, -0.955218,
		0.696754, -0.656309, -0.289468,
		-0.670741, -0.739147, 0.061379,
		40.743477, 31.357531, 35.863697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318031, 31.456926, 35.328667>,  <41.212994, 31.874933, 35.820732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318031, 31.456926, 35.328667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932259, 31.478533, 35.432167>,  <40.700794, 31.491497, 35.494267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.932259, 31.478533, 35.432167>,  <41.318031, 31.456926, 35.328667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932259, 31.478533, 35.432167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230983, 0.303715, -0.924340,
		-0.128517, -0.951230, -0.280435,
		-0.964432, 0.054018, 0.258751,
		40.642929, 31.494738, 35.509792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977123, 31.268314, 34.763290>,  <41.318031, 31.456926, 35.328667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977123, 31.268314, 34.763290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704563, 31.465561, 34.979633>,  <40.541027, 31.583908, 35.109440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704563, 31.465561, 34.979633>,  <40.977123, 31.268314, 34.763290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704563, 31.465561, 34.979633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450913, 0.299244, -0.840911,
		-0.576514, -0.816879, 0.018446,
		-0.681402, 0.493115, 0.540860,
		40.500141, 31.613495, 35.141891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306087, 31.097893, 34.495640>,  <40.977123, 31.268314, 34.763290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306087, 31.097893, 34.495640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253284, 31.450462, 34.677044>,  <40.221603, 31.662004, 34.785885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253284, 31.450462, 34.677044>,  <40.306087, 31.097893, 34.495640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253284, 31.450462, 34.677044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348549, 0.387023, -0.853655,
		-0.927949, -0.270756, 0.256131,
		-0.132003, 0.881422, 0.453509,
		40.213684, 31.714890, 34.813095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704166, 31.387733, 34.224384>,  <40.306087, 31.097893, 34.495640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704166, 31.387733, 34.224384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951340, 31.684538, 34.328365>,  <40.099644, 31.862621, 34.390755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951340, 31.684538, 34.328365>,  <39.704166, 31.387733, 34.224384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951340, 31.684538, 34.328365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143172, 0.431302, -0.890775,
		-0.773086, 0.513220, 0.372750,
		0.617931, 0.742013, 0.259955,
		40.136719, 31.907143, 34.406353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193905, 31.582691, 34.484093>,  <39.704166, 31.387733, 34.224384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193905, 31.582691, 34.484093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472912, 31.852816, 34.579945>,  <39.640316, 32.014889, 34.637455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472912, 31.852816, 34.579945>,  <39.193905, 31.582691, 34.484093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472912, 31.852816, 34.579945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315426, 0.589636, -0.743529,
		-0.643405, 0.443043, 0.624294,
		0.697521, 0.675309, 0.239627,
		39.682167, 32.055408, 34.651833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886677, 32.248074, 34.482826>,  <39.193905, 31.582691, 34.484093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886677, 32.248074, 34.482826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273857, 32.335777, 34.433830>,  <39.506165, 32.388397, 34.404434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273857, 32.335777, 34.433830>,  <38.886677, 32.248074, 34.482826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273857, 32.335777, 34.433830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249008, 0.774254, -0.581830,
		-0.032732, 0.593682, 0.804034,
		0.967948, 0.219255, -0.122489,
		39.564243, 32.401554, 34.397083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972145, 32.974716, 34.579956>,  <38.886677, 32.248074, 34.482826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972145, 32.974716, 34.579956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285378, 32.863430, 34.357468>,  <39.473316, 32.796658, 34.223976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285378, 32.863430, 34.357468>,  <38.972145, 32.974716, 34.579956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285378, 32.863430, 34.357468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012079, 0.900994, -0.433663,
		0.621803, 0.332875, 0.708911,
		0.783080, -0.278216, -0.556220,
		39.520302, 32.779964, 34.190601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356796, 33.536781, 34.589279>,  <38.972145, 32.974716, 34.579956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356796, 33.536781, 34.589279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515907, 33.330067, 34.286045>,  <39.611374, 33.206036, 34.104103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515907, 33.330067, 34.286045>,  <39.356796, 33.536781, 34.589279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515907, 33.330067, 34.286045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099914, 0.845759, -0.524126,
		0.912024, 0.132743, 0.388061,
		0.397781, -0.516788, -0.758090,
		39.635242, 33.175030, 34.058617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744991, 34.044033, 34.125423>,  <39.356796, 33.536781, 34.589279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744991, 34.044033, 34.125423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817074, 33.706345, 33.923508>,  <39.860325, 33.503731, 33.802361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817074, 33.706345, 33.923508>,  <39.744991, 34.044033, 34.125423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817074, 33.706345, 33.923508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220174, 0.534788, -0.815797,
		0.958670, 0.035872, 0.282250,
		0.180208, -0.844225, -0.504787,
		39.871136, 33.453075, 33.772072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541786, 33.898861, 33.831917>,  <39.744991, 34.044033, 34.125423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541786, 33.898861, 33.831917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233006, 33.763256, 33.616821>,  <40.047737, 33.681892, 33.487766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233006, 33.763256, 33.616821>,  <40.541786, 33.898861, 33.831917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233006, 33.763256, 33.616821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280795, 0.577067, -0.766908,
		0.570290, -0.743015, -0.350283,
		-0.771961, -0.339002, -0.537730,
		40.001419, 33.661552, 33.455502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774483, 33.891632, 33.131130>,  <40.541786, 33.898861, 33.831917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774483, 33.891632, 33.131130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375790, 33.912529, 33.106491>,  <40.136574, 33.925068, 33.091705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375790, 33.912529, 33.106491>,  <40.774483, 33.891632, 33.131130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375790, 33.912529, 33.106491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073763, 0.899430, -0.430796,
		0.032903, -0.433933, -0.900344,
		-0.996733, 0.052238, -0.061602,
		40.076771, 33.928200, 33.088009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445496, 33.688026, 32.853840>,  <40.774483, 33.891632, 33.131130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445496, 33.688026, 32.853840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461678, 33.319302, 33.008045>,  <41.471386, 33.098064, 33.100567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461678, 33.319302, 33.008045>,  <41.445496, 33.688026, 32.853840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461678, 33.319302, 33.008045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988696, -0.018823, -0.148747,
		0.144374, 0.387171, 0.910634,
		0.040450, -0.921816, 0.385512,
		41.473812, 33.042755, 33.123699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728058, 33.739712, 33.405102>,  <41.445496, 33.688026, 32.853840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728058, 33.739712, 33.405102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767632, 33.408913, 33.183731>,  <41.791374, 33.210434, 33.050907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767632, 33.408913, 33.183731>,  <41.728058, 33.739712, 33.405102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767632, 33.408913, 33.183731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898171, 0.313628, -0.308103,
		0.428372, -0.466593, 0.773814,
		0.098931, -0.826999, -0.553430,
		41.797310, 33.160812, 33.017704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390285, 33.478718, 33.545429>,  <41.728058, 33.739712, 33.405102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390285, 33.478718, 33.545429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311909, 33.358799, 33.171963>,  <42.264881, 33.286846, 32.947884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311909, 33.358799, 33.171963>,  <42.390285, 33.478718, 33.545429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311909, 33.358799, 33.171963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966697, 0.100795, -0.235239,
		0.164633, -0.948662, 0.270067,
		-0.195941, -0.299801, -0.933663,
		42.253128, 33.268860, 32.891865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811760, 32.902679, 33.342159>,  <42.390285, 33.478718, 33.545429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811760, 32.902679, 33.342159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729195, 33.077629, 32.992050>,  <42.679657, 33.182598, 32.781986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729195, 33.077629, 32.992050>,  <42.811760, 32.902679, 33.342159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729195, 33.077629, 32.992050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977142, 0.045619, -0.207637,
		-0.050886, -0.898121, -0.436793,
		-0.206409, 0.437375, -0.875270,
		42.667271, 33.208843, 32.729469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859898, 32.442062, 32.790260>,  <42.811760, 32.902679, 33.342159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859898, 32.442062, 32.790260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946716, 32.829025, 32.738083>,  <42.998806, 33.061203, 32.706776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946716, 32.829025, 32.738083>,  <42.859898, 32.442062, 32.790260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946716, 32.829025, 32.738083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972510, -0.225839, -0.056743,
		-0.084352, -0.114538, -0.989831,
		0.217044, 0.967408, -0.130439,
		43.011829, 33.119247, 32.698952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410637, 32.481411, 32.359737>,  <42.859898, 32.442062, 32.790260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410637, 32.481411, 32.359737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451061, 32.833088, 32.545986>,  <43.475315, 33.044094, 32.657734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451061, 32.833088, 32.545986>,  <43.410637, 32.481411, 32.359737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451061, 32.833088, 32.545986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983565, -0.017909, -0.179666,
		-0.149623, 0.476123, -0.866556,
		0.101062, 0.879196, 0.465618,
		43.481380, 33.096848, 32.685673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856483, 32.927608, 32.039280>,  <43.410637, 32.481411, 32.359737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856483, 32.927608, 32.039280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871754, 33.066799, 32.413971>,  <43.880917, 33.150314, 32.638786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871754, 33.066799, 32.413971>,  <43.856483, 32.927608, 32.039280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871754, 33.066799, 32.413971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980700, 0.166838, -0.101948,
		-0.191757, 0.922539, -0.334889,
		0.038179, 0.347975, 0.936726,
		43.883205, 33.171192, 32.694988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125393, 33.621159, 32.070156>,  <43.856483, 32.927608, 32.039280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125393, 33.621159, 32.070156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191467, 33.454460, 32.427711>,  <44.231110, 33.354439, 32.642246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191467, 33.454460, 32.427711>,  <44.125393, 33.621159, 32.070156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191467, 33.454460, 32.427711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969406, 0.235460, -0.069363,
		-0.181568, 0.877998, 0.442892,
		0.165183, -0.416748, 0.893888,
		44.241024, 33.329437, 32.695877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439537, 34.101631, 32.401768>,  <44.125393, 33.621159, 32.070156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439537, 34.101631, 32.401768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561779, 33.734203, 32.502033>,  <44.635124, 33.513744, 32.562191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.561779, 33.734203, 32.502033>,  <44.439537, 34.101631, 32.401768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561779, 33.734203, 32.502033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936324, 0.337733, 0.096092,
		-0.172924, 0.205335, 0.963293,
		0.305605, -0.918571, 0.250663,
		44.653461, 33.458633, 32.577232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033333, 34.106548, 32.934860>,  <44.439537, 34.101631, 32.401768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033333, 34.106548, 32.934860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022663, 33.777229, 32.708065>,  <45.016262, 33.579639, 32.571987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022663, 33.777229, 32.708065>,  <45.033333, 34.106548, 32.934860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022663, 33.777229, 32.708065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989189, 0.060085, -0.133776,
		0.144204, -0.564423, 0.812793,
		-0.026670, -0.823296, -0.566985,
		45.014664, 33.530239, 32.537968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374771, 33.407570, 33.261902>,  <45.033333, 34.106548, 32.934860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374771, 33.407570, 33.261902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407784, 33.453205, 32.865887>,  <45.427589, 33.480587, 32.628277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.407784, 33.453205, 32.865887>,  <45.374771, 33.407570, 33.261902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407784, 33.453205, 32.865887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979367, 0.174599, 0.101760,
		0.184469, -0.978008, -0.097321,
		0.082530, 0.114084, -0.990037,
		45.432541, 33.487431, 32.568874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793350, 32.935211, 32.969559>,  <45.374771, 33.407570, 33.261902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793350, 32.935211, 32.969559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808525, 33.262665, 32.740334>,  <45.817631, 33.459137, 32.602798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808525, 33.262665, 32.740334>,  <45.793350, 32.935211, 32.969559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808525, 33.262665, 32.740334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999156, -0.022045, 0.034655,
		0.015736, -0.573898, -0.818775,
		0.037939, 0.818630, -0.573067,
		45.819908, 33.508255, 32.568413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358715, 32.819248, 32.333851>,  <45.793350, 32.935211, 32.969559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358715, 32.819248, 32.333851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274357, 33.174953, 32.496197>,  <46.223740, 33.388378, 32.593605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274357, 33.174953, 32.496197>,  <46.358715, 32.819248, 32.333851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.274357, 33.174953, 32.496197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975135, 0.162485, 0.150699,
		0.068064, 0.427558, -0.901422,
		-0.210900, 0.889265, 0.405867,
		46.211086, 33.441734, 32.617958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592033, 33.449760, 31.974892>,  <46.358715, 32.819248, 32.333851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592033, 33.449760, 31.974892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574909, 33.510487, 32.369884>,  <46.564632, 33.546921, 32.606880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.574909, 33.510487, 32.369884>,  <46.592033, 33.449760, 31.974892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574909, 33.510487, 32.369884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998755, 0.031820, 0.038410,
		-0.025591, 0.987897, -0.152989,
		-0.042813, 0.151816, 0.987481,
		46.562065, 33.556030, 32.666130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.926468, 34.174408, 32.066956>,  <46.592033, 33.449760, 31.974892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.926468, 34.174408, 32.066956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940090, 33.922832, 32.377640>,  <46.948265, 33.771885, 32.564049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.940090, 33.922832, 32.377640>,  <46.926468, 34.174408, 32.066956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940090, 33.922832, 32.377640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978386, 0.179584, 0.102522,
		-0.203964, 0.756428, 0.621463,
		0.034054, -0.628941, 0.776707,
		46.950306, 33.734150, 32.610653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.304028, 34.498753, 32.573597>,  <46.926468, 34.174408, 32.066956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.304028, 34.498753, 32.573597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337990, 34.106724, 32.645428>,  <47.358368, 33.871506, 32.688526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337990, 34.106724, 32.645428>,  <47.304028, 34.498753, 32.573597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.337990, 34.106724, 32.645428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974189, 0.119484, 0.191521,
		-0.209161, 0.158680, 0.964921,
		0.084902, -0.980074, 0.179575,
		47.363461, 33.812702, 32.699299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.580349, 34.367023, 33.325817>,  <47.304028, 34.498753, 32.573597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.580349, 34.367023, 33.325817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659271, 34.073109, 33.066231>,  <47.706623, 33.896759, 32.910477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.659271, 34.073109, 33.066231>,  <47.580349, 34.367023, 33.325817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.659271, 34.073109, 33.066231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962001, 0.017665, 0.272472,
		-0.188744, -0.678069, 0.710350,
		0.197304, -0.734785, -0.648970,
		47.718464, 33.852673, 32.871540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.617359, 33.650253, 33.537315>,  <47.580349, 34.367023, 33.325817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.617359, 33.650253, 33.537315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843189, 33.763172, 33.227074>,  <47.978687, 33.830921, 33.040928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843189, 33.763172, 33.227074>,  <47.617359, 33.650253, 33.537315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843189, 33.763172, 33.227074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790186, 0.086611, 0.606716,
		0.238448, -0.955410, -0.174165,
		0.564579, 0.282293, -0.775604,
		48.012562, 33.847858, 32.994392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.900230, 33.504406, 34.305305>,  <47.617359, 33.650253, 33.537315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.900230, 33.504406, 34.305305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618622, 33.717606, 34.117577>,  <47.449657, 33.845528, 34.004940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618622, 33.717606, 34.117577>,  <47.900230, 33.504406, 34.305305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618622, 33.717606, 34.117577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067185, 0.607897, 0.791169,
		0.706992, 0.588532, -0.392163,
		-0.704023, 0.533002, -0.469319,
		47.407413, 33.877506, 33.976780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.124378, 34.075642, 34.594368>,  <47.900230, 33.504406, 34.305305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.124378, 34.075642, 34.594368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763672, 34.204063, 34.478622>,  <47.547249, 34.281116, 34.409176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763672, 34.204063, 34.478622>,  <48.124378, 34.075642, 34.594368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.763672, 34.204063, 34.478622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136569, 0.423538, 0.895525,
		0.410073, 0.847076, -0.338087,
		-0.901770, 0.321058, -0.289366,
		47.493141, 34.300381, 34.391811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.141003, 34.803284, 34.681728>,  <48.124378, 34.075642, 34.594368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.141003, 34.803284, 34.681728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810799, 34.587776, 34.748970>,  <47.612679, 34.458469, 34.789314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.810799, 34.587776, 34.748970>,  <48.141003, 34.803284, 34.681728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.810799, 34.587776, 34.748970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067283, 0.389677, 0.918491,
		-0.560365, 0.746911, -0.357932,
		-0.825508, -0.538773, 0.168107,
		47.563145, 34.426144, 34.799400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.968967, 35.001770, 35.295185>,  <48.141003, 34.803284, 34.681728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.968967, 35.001770, 35.295185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631927, 34.786839, 35.280811>,  <47.429703, 34.657879, 35.272186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631927, 34.786839, 35.280811>,  <47.968967, 35.001770, 35.295185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631927, 34.786839, 35.280811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099627, 0.089962, 0.990949,
		-0.529238, 0.838558, -0.129335,
		-0.842604, -0.537333, -0.035932,
		47.379147, 34.625637, 35.270031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.167713, 32.768288, 23.144390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.773998, 32.784298, 23.075607>,  <40.537769, 32.793903, 23.034338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.773998, 32.784298, 23.075607>,  <41.167713, 32.768288, 23.144390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773998, 32.784298, 23.075607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176539, -0.210330, 0.961559,
		0.002321, 0.976811, 0.214092,
		-0.984291, 0.040027, -0.171957,
		40.478710, 32.796307, 23.024019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865829, 33.178734, 23.602728>,  <41.167713, 32.768288, 23.144390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865829, 33.178734, 23.602728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.552670, 32.956020, 23.491684>,  <40.364773, 32.822392, 23.425058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.552670, 32.956020, 23.491684>,  <40.865829, 33.178734, 23.602728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552670, 32.956020, 23.491684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295902, -0.059277, 0.953377,
		-0.547278, 0.828542, -0.118345,
		-0.782898, -0.556780, -0.277608,
		40.317799, 32.788986, 23.408401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338047, 33.486000, 23.860250>,  <40.865829, 33.178734, 23.602728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338047, 33.486000, 23.860250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216492, 33.114449, 23.775551>,  <40.143559, 32.891518, 23.724731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.216492, 33.114449, 23.775551>,  <40.338047, 33.486000, 23.860250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216492, 33.114449, 23.775551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390886, -0.081128, 0.916857,
		-0.868825, 0.361396, -0.338431,
		-0.303893, -0.928876, -0.211750,
		40.125324, 32.835785, 23.712027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760292, 33.551453, 24.027294>,  <40.338047, 33.486000, 23.860250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760292, 33.551453, 24.027294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837166, 33.159069, 24.038477>,  <39.883289, 32.923637, 24.045187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837166, 33.159069, 24.038477>,  <39.760292, 33.551453, 24.027294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837166, 33.159069, 24.038477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426781, -0.057893, 0.902500,
		-0.883698, -0.185379, -0.429782,
		0.192186, -0.980961, 0.027956,
		39.894821, 32.864780, 24.046864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230808, 33.182503, 24.286873>,  <39.760292, 33.551453, 24.027294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230808, 33.182503, 24.286873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544365, 32.943939, 24.355946>,  <39.732498, 32.800800, 24.397388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.544365, 32.943939, 24.355946>,  <39.230808, 33.182503, 24.286873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544365, 32.943939, 24.355946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384100, -0.247284, 0.889560,
		-0.487838, -0.763643, -0.422923,
		0.783888, -0.596406, 0.172681,
		39.779533, 32.765018, 24.407749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922729, 32.568237, 24.613497>,  <39.230808, 33.182503, 24.286873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922729, 32.568237, 24.613497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307400, 32.564705, 24.723118>,  <39.538200, 32.562588, 24.788891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307400, 32.564705, 24.723118>,  <38.922729, 32.568237, 24.613497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307400, 32.564705, 24.723118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264167, -0.297642, 0.917401,
		0.073470, -0.954637, -0.288566,
		0.961674, -0.008828, 0.274051,
		39.595901, 32.562057, 24.805334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977100, 31.944267, 24.991234>,  <38.922729, 32.568237, 24.613497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977100, 31.944267, 24.991234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.309311, 32.132130, 25.110994>,  <39.508636, 32.244846, 25.182852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.309311, 32.132130, 25.110994>,  <38.977100, 31.944267, 24.991234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309311, 32.132130, 25.110994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166386, -0.303797, 0.938095,
		0.531540, -0.828934, -0.174168,
		0.830531, 0.469656, 0.299403,
		39.558472, 32.273026, 25.200815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362061, 31.458857, 25.419506>,  <38.977100, 31.944267, 24.991234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362061, 31.458857, 25.419506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.523731, 31.814360, 25.505991>,  <39.620735, 32.027660, 25.557882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.523731, 31.814360, 25.505991>,  <39.362061, 31.458857, 25.419506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523731, 31.814360, 25.505991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105993, -0.189279, 0.976186,
		0.908518, -0.417471, 0.017699,
		0.404179, 0.888758, 0.216212,
		39.644985, 32.080986, 25.570854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771317, 31.337612, 25.931053>,  <39.362061, 31.458857, 25.419506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771317, 31.337612, 25.931053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705456, 31.730804, 25.963654>,  <39.665939, 31.966719, 25.983213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705456, 31.730804, 25.963654>,  <39.771317, 31.337612, 25.931053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705456, 31.730804, 25.963654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097682, -0.098471, 0.990334,
		0.981504, 0.155096, 0.112232,
		-0.164649, 0.982980, 0.081499,
		39.656063, 32.025700, 25.988104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165195, 31.558411, 26.522789>,  <39.771317, 31.337612, 25.931053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165195, 31.558411, 26.522789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884266, 31.830738, 26.439623>,  <39.715710, 31.994135, 26.389723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.884266, 31.830738, 26.439623>,  <40.165195, 31.558411, 26.522789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884266, 31.830738, 26.439623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267402, 0.018370, 0.963410,
		0.659725, 0.732224, 0.169150,
		-0.702324, 0.680816, -0.207918,
		39.673569, 32.034985, 26.377247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256199, 32.029419, 26.996868>,  <40.165195, 31.558411, 26.522789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256199, 32.029419, 26.996868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887604, 32.102749, 26.859900>,  <39.666447, 32.146748, 26.777719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887604, 32.102749, 26.859900>,  <40.256199, 32.029419, 26.996868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887604, 32.102749, 26.859900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347260, 0.006043, 0.937749,
		0.173978, 0.983035, 0.058092,
		-0.921489, 0.183321, -0.342420,
		39.611156, 32.157745, 26.757174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000980, 32.596718, 27.412722>,  <40.256199, 32.029419, 26.996868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000980, 32.596718, 27.412722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.685047, 32.403545, 27.261494>,  <39.495487, 32.287640, 27.170757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.685047, 32.403545, 27.261494>,  <40.000980, 32.596718, 27.412722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685047, 32.403545, 27.261494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411732, -0.039370, 0.910454,
		-0.454575, 0.874771, -0.167745,
		-0.789834, -0.482935, -0.378068,
		39.448097, 32.258663, 27.148073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375149, 32.961697, 27.736994>,  <40.000980, 32.596718, 27.412722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375149, 32.961697, 27.736994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283466, 32.602585, 27.586552>,  <39.228458, 32.387119, 27.496286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283466, 32.602585, 27.586552>,  <39.375149, 32.961697, 27.736994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283466, 32.602585, 27.586552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668276, -0.135797, 0.731414,
		-0.707722, 0.418988, -0.568839,
		-0.229207, -0.897779, -0.376107,
		39.214703, 32.333252, 27.473721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747337, 32.917065, 27.940502>,  <39.375149, 32.961697, 27.736994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747337, 32.917065, 27.940502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822910, 32.536369, 27.843758>,  <38.868256, 32.307953, 27.785711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822910, 32.536369, 27.843758>,  <38.747337, 32.917065, 27.940502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822910, 32.536369, 27.843758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554242, -0.306669, 0.773802,
		-0.810629, -0.012146, -0.585433,
		0.188933, -0.951738, -0.241863,
		38.879589, 32.250847, 27.771198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184410, 32.628857, 28.096739>,  <38.747337, 32.917065, 27.940502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184410, 32.628857, 28.096739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.453636, 32.333130, 28.088860>,  <38.615173, 32.155693, 28.084131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.453636, 32.333130, 28.088860>,  <38.184410, 32.628857, 28.096739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453636, 32.333130, 28.088860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382319, -0.370613, 0.846450,
		-0.633098, -0.562186, -0.532103,
		0.673067, -0.739319, -0.019700,
		38.655556, 32.111336, 28.082951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840042, 31.932610, 28.232088>,  <38.184410, 32.628857, 28.096739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840042, 31.932610, 28.232088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227898, 31.930387, 28.329884>,  <38.460609, 31.929054, 28.388561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.227898, 31.930387, 28.329884>,  <37.840042, 31.932610, 28.232088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227898, 31.930387, 28.329884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227802, -0.384167, 0.894719,
		0.088954, -0.923247, -0.373768,
		0.969636, -0.005557, 0.244491,
		38.518787, 31.928720, 28.403231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783379, 31.481838, 28.825588>,  <37.840042, 31.932610, 28.232088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783379, 31.481838, 28.825588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178490, 31.540131, 28.847740>,  <38.415554, 31.575106, 28.861031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178490, 31.540131, 28.847740>,  <37.783379, 31.481838, 28.825588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178490, 31.540131, 28.847740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029404, -0.523008, 0.851821,
		0.153102, -0.839777, -0.520898,
		0.987773, 0.145732, 0.055381,
		38.474823, 31.583851, 28.864355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198650, 30.835915, 28.869507>,  <37.783379, 31.481838, 28.825588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198650, 30.835915, 28.869507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404499, 31.122482, 29.057936>,  <38.528008, 31.294422, 29.170994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.404499, 31.122482, 29.057936>,  <38.198650, 30.835915, 28.869507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404499, 31.122482, 29.057936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082101, -0.505712, 0.858787,
		0.853478, -0.480625, -0.201431,
		0.514620, 0.716418, 0.471074,
		38.558884, 31.337408, 29.199257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630432, 30.462021, 29.298145>,  <38.198650, 30.835915, 28.869507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630432, 30.462021, 29.298145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659550, 30.819908, 29.474407>,  <38.677021, 31.034641, 29.580164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659550, 30.819908, 29.474407>,  <38.630432, 30.462021, 29.298145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659550, 30.819908, 29.474407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138274, -0.446616, 0.883977,
		0.987715, -0.003420, -0.156229,
		0.072797, 0.894719, 0.440656,
		38.681389, 31.088324, 29.606604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185631, 30.351326, 29.883743>,  <38.630432, 30.462021, 29.298145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185631, 30.351326, 29.883743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.991322, 30.690453, 29.968807>,  <38.874737, 30.893929, 30.019846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.991322, 30.690453, 29.968807>,  <39.185631, 30.351326, 29.883743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991322, 30.690453, 29.968807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131912, -0.169403, 0.976679,
		0.864072, 0.502501, -0.029545,
		-0.485777, 0.847818, 0.212662,
		38.845589, 30.944798, 30.032606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586060, 30.739458, 30.409466>,  <39.185631, 30.351326, 29.883743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586060, 30.739458, 30.409466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211838, 30.876818, 30.442503>,  <38.987305, 30.959234, 30.462324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.211838, 30.876818, 30.442503>,  <39.586060, 30.739458, 30.409466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211838, 30.876818, 30.442503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083361, -0.012548, 0.996440,
		0.343214, 0.939106, -0.016887,
		-0.935551, 0.343400, 0.082592,
		38.931171, 30.979837, 30.467281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645702, 31.263163, 30.879070>,  <39.586060, 30.739458, 30.409466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645702, 31.263163, 30.879070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260956, 31.153912, 30.873243>,  <39.030109, 31.088360, 30.869747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260956, 31.153912, 30.873243>,  <39.645702, 31.263163, 30.879070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260956, 31.153912, 30.873243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030462, 0.054051, 0.998073,
		-0.271816, 0.960458, -0.060310,
		-0.961867, -0.273129, -0.014566,
		38.972397, 31.071972, 30.868874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932678, 31.990091, 30.958424>,  <39.645702, 31.263163, 30.879070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932678, 31.990091, 30.958424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179119, 32.257675, 31.124750>,  <40.326984, 32.418224, 31.224546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179119, 32.257675, 31.124750>,  <39.932678, 31.990091, 30.958424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179119, 32.257675, 31.124750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429670, 0.157012, -0.889231,
		-0.660149, 0.726525, -0.190696,
		0.616107, 0.668961, 0.415817,
		40.363953, 32.458363, 31.249495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892292, 32.641350, 30.549669>,  <39.932678, 31.990091, 30.958424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892292, 32.641350, 30.549669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242851, 32.665737, 30.740755>,  <40.453186, 32.680370, 30.855406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.242851, 32.665737, 30.740755>,  <39.892292, 32.641350, 30.549669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242851, 32.665737, 30.740755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432909, 0.334855, -0.836936,
		-0.210995, 0.940295, 0.267070,
		0.876397, 0.060972, 0.477715,
		40.505772, 32.684029, 30.884069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068592, 33.296696, 30.589848>,  <39.892292, 32.641350, 30.549669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068592, 33.296696, 30.589848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410347, 33.090416, 30.615351>,  <40.615402, 32.966648, 30.630651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.410347, 33.090416, 30.615351>,  <40.068592, 33.296696, 30.589848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410347, 33.090416, 30.615351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356320, 0.492140, -0.794251,
		0.378220, 0.701319, 0.604236,
		0.854392, -0.515703, 0.063757,
		40.666664, 32.935703, 30.634478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550343, 33.802925, 30.654760>,  <40.068592, 33.296696, 30.589848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550343, 33.802925, 30.654760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.738842, 33.473778, 30.527752>,  <40.851940, 33.276291, 30.451548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.738842, 33.473778, 30.527752>,  <40.550343, 33.802925, 30.654760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738842, 33.473778, 30.527752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398849, 0.519901, -0.755396,
		0.786668, 0.229335, 0.573201,
		0.471246, -0.822866, -0.317519,
		40.880215, 33.226917, 30.432497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196739, 34.060894, 30.526499>,  <40.550343, 33.802925, 30.654760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196739, 34.060894, 30.526499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.155483, 33.717819, 30.325010>,  <41.130730, 33.511974, 30.204117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.155483, 33.717819, 30.325010>,  <41.196739, 34.060894, 30.526499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155483, 33.717819, 30.325010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241909, 0.469588, -0.849098,
		0.964802, -0.209432, 0.159048,
		-0.103141, -0.857686, -0.503723,
		41.124542, 33.460514, 30.173893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865425, 33.817810, 30.266926>,  <41.196739, 34.060894, 30.526499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865425, 33.817810, 30.266926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600708, 33.655598, 30.014709>,  <41.441879, 33.558270, 29.863380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.600708, 33.655598, 30.014709>,  <41.865425, 33.817810, 30.266926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600708, 33.655598, 30.014709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412963, 0.504767, -0.758071,
		0.625695, -0.762074, -0.166581,
		-0.661791, -0.405529, -0.630539,
		41.402172, 33.533939, 29.825548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190735, 33.717602, 29.569786>,  <41.865425, 33.817810, 30.266926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190735, 33.717602, 29.569786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799332, 33.671288, 29.501522>,  <41.564491, 33.643497, 29.460564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.799332, 33.671288, 29.501522>,  <42.190735, 33.717602, 29.569786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799332, 33.671288, 29.501522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135412, 0.263425, -0.955129,
		0.155545, -0.957706, -0.242083,
		-0.978503, -0.115784, -0.170659,
		41.505779, 33.636551, 29.450325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275074, 33.516434, 28.958994>,  <42.190735, 33.717602, 29.569786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275074, 33.516434, 28.958994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.892349, 33.627563, 28.993248>,  <41.662716, 33.694241, 29.013800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.892349, 33.627563, 28.993248>,  <42.275074, 33.516434, 28.958994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892349, 33.627563, 28.993248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041328, 0.421552, -0.905862,
		-0.287768, -0.863197, -0.414826,
		-0.956808, 0.277822, 0.085635,
		41.605309, 33.710911, 29.018938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076546, 33.223335, 28.454294>,  <42.275074, 33.516434, 28.958994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076546, 33.223335, 28.454294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.802898, 33.506065, 28.526264>,  <41.638710, 33.675705, 28.569447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.802898, 33.506065, 28.526264>,  <42.076546, 33.223335, 28.454294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802898, 33.506065, 28.526264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127665, 0.358920, -0.924596,
		-0.718110, -0.609564, -0.335782,
		-0.684120, 0.706829, 0.179924,
		41.597664, 33.718113, 28.580242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548679, 33.178043, 27.990431>,  <42.076546, 33.223335, 28.454294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548679, 33.178043, 27.990431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517353, 33.563808, 28.091440>,  <41.498558, 33.795269, 28.152046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517353, 33.563808, 28.091440>,  <41.548679, 33.178043, 27.990431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517353, 33.563808, 28.091440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069058, 0.257942, -0.963690,
		-0.994534, -0.058031, -0.086800,
		-0.078313, 0.964416, 0.252524,
		41.493858, 33.853134, 28.167198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974003, 33.549809, 27.645245>,  <41.548679, 33.178043, 27.990431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974003, 33.549809, 27.645245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232899, 33.831837, 27.761143>,  <41.388237, 34.001053, 27.830683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.232899, 33.831837, 27.761143>,  <40.974003, 33.549809, 27.645245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232899, 33.831837, 27.761143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084703, 0.444272, -0.891879,
		-0.757563, 0.552721, 0.347273,
		0.647244, 0.705069, 0.289747,
		41.427071, 34.043358, 27.848066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640785, 34.232285, 27.455841>,  <40.974003, 33.549809, 27.645245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640785, 34.232285, 27.455841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.037655, 34.273579, 27.483944>,  <41.275776, 34.298355, 27.500805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.037655, 34.273579, 27.483944>,  <40.640785, 34.232285, 27.455841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037655, 34.273579, 27.483944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041450, 0.258441, -0.965137,
		-0.117792, 0.960495, 0.252139,
		0.992173, 0.103235, 0.070255,
		41.335308, 34.304550, 27.505020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838184, 34.889393, 26.930130>,  <40.640785, 34.232285, 27.455841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838184, 34.889393, 26.930130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.158115, 34.658684, 26.996588>,  <41.350075, 34.520260, 27.036463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.158115, 34.658684, 26.996588>,  <40.838184, 34.889393, 26.930130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158115, 34.658684, 26.996588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334169, 0.197960, -0.921489,
		0.498600, 0.792556, 0.351074,
		0.799830, -0.576773, 0.166145,
		41.398064, 34.485653, 27.046431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326481, 35.250408, 26.547461>,  <40.838184, 34.889393, 26.930130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326481, 35.250408, 26.547461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.502048, 34.894905, 26.600323>,  <41.607388, 34.681602, 26.632040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.502048, 34.894905, 26.600323>,  <41.326481, 35.250408, 26.547461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502048, 34.894905, 26.600323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278877, -0.005069, -0.960313,
		0.854154, 0.458354, 0.245629,
		0.438918, -0.888756, 0.132154,
		41.633724, 34.628277, 26.639969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756855, 35.194027, 25.989922>,  <41.326481, 35.250408, 26.547461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756855, 35.194027, 25.989922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.767262, 34.808315, 26.095358>,  <41.773506, 34.576889, 26.158619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.767262, 34.808315, 26.095358>,  <41.756855, 35.194027, 25.989922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767262, 34.808315, 26.095358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170218, -0.255557, -0.951692,
		0.985063, 0.069628, 0.157489,
		0.026017, -0.964283, 0.263591,
		41.775066, 34.519032, 26.174435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268356, 34.933163, 25.703995>,  <41.756855, 35.194027, 25.989922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268356, 34.933163, 25.703995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.067387, 34.595684, 25.779613>,  <41.946804, 34.393196, 25.824986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.067387, 34.595684, 25.779613>,  <42.268356, 34.933163, 25.703995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067387, 34.595684, 25.779613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295697, -0.373134, -0.879394,
		0.812486, -0.385927, 0.436951,
		-0.502423, -0.843701, 0.189049,
		41.916660, 34.342575, 25.836329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760933, 34.305248, 25.765076>,  <42.268356, 34.933163, 25.703995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760933, 34.305248, 25.765076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.396576, 34.162167, 25.682787>,  <42.177959, 34.076317, 25.633413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.396576, 34.162167, 25.682787>,  <42.760933, 34.305248, 25.765076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396576, 34.162167, 25.682787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336561, -0.355588, -0.871943,
		0.238742, -0.863486, 0.444291,
		-0.910895, -0.357701, -0.205721,
		42.123306, 34.054855, 25.621071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773083, 33.620361, 25.455135>,  <42.760933, 34.305248, 25.765076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773083, 33.620361, 25.455135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.406578, 33.745472, 25.355032>,  <42.186676, 33.820538, 25.294970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.406578, 33.745472, 25.355032>,  <42.773083, 33.620361, 25.455135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406578, 33.745472, 25.355032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138204, -0.339549, -0.930380,
		-0.375985, -0.887058, 0.267888,
		-0.916261, 0.312786, -0.250260,
		42.131699, 33.839306, 25.279955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.347046, 32.952522, 24.839149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128506, 33.287426, 24.830185>,  <41.997383, 33.488369, 24.824806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128506, 33.287426, 24.830185>,  <42.347046, 32.952522, 24.839149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128506, 33.287426, 24.830185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182922, 0.093170, -0.978703,
		-0.817338, -0.538814, -0.204056,
		-0.546350, 0.837257, -0.022409,
		41.964600, 33.538605, 24.823462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858013, 32.911491, 24.322365>,  <42.347046, 32.952522, 24.839149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858013, 32.911491, 24.322365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.959671, 33.290901, 24.397961>,  <42.020664, 33.518547, 24.443317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.959671, 33.290901, 24.397961>,  <41.858013, 32.911491, 24.322365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959671, 33.290901, 24.397961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060635, 0.179393, -0.981907,
		-0.965265, 0.261002, -0.011923,
		0.254140, 0.948523, 0.188988,
		42.035912, 33.575459, 24.454657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652699, 33.144253, 23.716553>,  <41.858013, 32.911491, 24.322365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652699, 33.144253, 23.716553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840599, 33.458389, 23.877836>,  <41.953339, 33.646870, 23.974606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.840599, 33.458389, 23.877836>,  <41.652699, 33.144253, 23.716553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840599, 33.458389, 23.877836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290018, 0.294101, -0.910711,
		-0.833799, 0.544747, -0.089607,
		0.469754, 0.785338, 0.403207,
		41.981525, 33.693989, 23.998798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439438, 33.763111, 23.365711>,  <41.652699, 33.144253, 23.716553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439438, 33.763111, 23.365711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.793335, 33.867603, 23.520111>,  <42.005672, 33.930298, 23.612751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.793335, 33.867603, 23.520111>,  <41.439438, 33.763111, 23.365711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793335, 33.867603, 23.520111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292927, 0.332521, -0.896451,
		-0.362535, 0.906194, 0.217672,
		0.884739, 0.261232, 0.385999,
		42.058758, 33.945972, 23.635910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605522, 34.413307, 22.985098>,  <41.439438, 33.763111, 23.365711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605522, 34.413307, 22.985098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.954563, 34.287403, 23.134487>,  <42.163990, 34.211861, 23.224121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.954563, 34.287403, 23.134487>,  <41.605522, 34.413307, 22.985098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954563, 34.287403, 23.134487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459231, 0.268328, -0.846822,
		0.166336, 0.910452, 0.378694,
		0.872605, -0.314765, 0.373475,
		42.216343, 34.192974, 23.246531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042385, 35.041801, 23.138353>,  <41.605522, 34.413307, 22.985098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042385, 35.041801, 23.138353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.251968, 34.710896, 23.057264>,  <42.377720, 34.512352, 23.008610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.251968, 34.710896, 23.057264>,  <42.042385, 35.041801, 23.138353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251968, 34.710896, 23.057264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372876, 0.436780, -0.818649,
		0.765785, 0.353351, 0.537324,
		0.523963, -0.827264, -0.202723,
		42.409157, 34.462715, 22.996447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634865, 35.264435, 22.687416>,  <42.042385, 35.041801, 23.138353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634865, 35.264435, 22.687416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.656826, 34.866783, 22.650118>,  <42.670002, 34.628193, 22.627739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.656826, 34.866783, 22.650118>,  <42.634865, 35.264435, 22.687416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656826, 34.866783, 22.650118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382636, 0.107209, -0.917658,
		0.922266, 0.014706, 0.386276,
		0.054907, -0.994128, -0.093248,
		42.673298, 34.568546, 22.622143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400379, 35.083549, 22.541576>,  <42.634865, 35.264435, 22.687416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400379, 35.083549, 22.541576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154942, 34.797932, 22.406731>,  <43.007679, 34.626560, 22.325823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.154942, 34.797932, 22.406731>,  <43.400379, 35.083549, 22.541576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154942, 34.797932, 22.406731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418394, 0.068071, -0.905711,
		0.669665, -0.696785, 0.256983,
		-0.613593, -0.714043, -0.337115,
		42.970863, 34.583717, 22.305595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820541, 34.574295, 22.070627>,  <43.400379, 35.083549, 22.541576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820541, 34.574295, 22.070627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429237, 34.528316, 22.001591>,  <43.194454, 34.500729, 21.960169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429237, 34.528316, 22.001591>,  <43.820541, 34.574295, 22.070627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429237, 34.528316, 22.001591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168562, 0.043975, -0.984710,
		0.120783, -0.992397, -0.023643,
		-0.978262, -0.114951, -0.172592,
		43.135757, 34.493832, 21.949814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831940, 34.143322, 21.569506>,  <43.820541, 34.574295, 22.070627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831940, 34.143322, 21.569506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458290, 34.285355, 21.554882>,  <43.234100, 34.370575, 21.546108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458290, 34.285355, 21.554882>,  <43.831940, 34.143322, 21.569506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458290, 34.285355, 21.554882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072347, 0.088041, -0.993486,
		-0.349550, -0.930680, -0.107930,
		-0.934120, 0.355082, -0.036557,
		43.178055, 34.391880, 21.543915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429199, 33.664658, 21.071993>,  <43.831940, 34.143322, 21.569506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429199, 33.664658, 21.071993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213127, 34.000572, 21.093801>,  <43.083485, 34.202122, 21.106886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.213127, 34.000572, 21.093801>,  <43.429199, 33.664658, 21.071993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213127, 34.000572, 21.093801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036687, 0.088222, -0.995425,
		-0.840750, -0.535707, -0.078465,
		-0.540179, 0.839782, 0.054519,
		43.051075, 34.252506, 21.110157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773724, 33.649410, 20.602657>,  <43.429199, 33.664658, 21.071993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773724, 33.649410, 20.602657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.914101, 34.018223, 20.668016>,  <42.998325, 34.239510, 20.707232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.914101, 34.018223, 20.668016>,  <42.773724, 33.649410, 20.602657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914101, 34.018223, 20.668016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090328, 0.207013, -0.974159,
		-0.932032, 0.327111, 0.155934,
		0.350939, 0.922032, 0.163396,
		43.019382, 34.294834, 20.717035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613644, 34.035751, 20.008707>,  <42.773724, 33.649410, 20.602657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613644, 34.035751, 20.008707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850323, 34.308632, 20.180519>,  <42.992329, 34.472359, 20.283606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.850323, 34.308632, 20.180519>,  <42.613644, 34.035751, 20.008707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850323, 34.308632, 20.180519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207115, 0.386284, -0.898826,
		-0.779100, 0.620796, 0.087269,
		0.591698, 0.682200, 0.429530,
		43.027832, 34.513290, 20.309378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473328, 34.694546, 19.858715>,  <42.613644, 34.035751, 20.008707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473328, 34.694546, 19.858715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.853935, 34.738316, 19.973705>,  <43.082298, 34.764576, 20.042700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.853935, 34.738316, 19.973705>,  <42.473328, 34.694546, 19.858715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853935, 34.738316, 19.973705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237839, 0.330934, -0.913189,
		-0.195062, 0.937288, 0.288864,
		0.951516, 0.109425, 0.287476,
		43.139389, 34.771145, 20.059948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770222, 35.235287, 19.344461>,  <42.473328, 34.694546, 19.858715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770222, 35.235287, 19.344461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097507, 35.099113, 19.529770>,  <43.293880, 35.017410, 19.640955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097507, 35.099113, 19.529770>,  <42.770222, 35.235287, 19.344461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097507, 35.099113, 19.529770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566122, 0.336776, -0.752388,
		0.100121, 0.877887, 0.468285,
		0.818218, -0.340436, 0.463273,
		43.342972, 34.996983, 19.668753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326324, 35.796890, 19.338539>,  <42.770222, 35.235287, 19.344461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326324, 35.796890, 19.338539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.488434, 35.431274, 19.345291>,  <43.585701, 35.211906, 19.349342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.488434, 35.431274, 19.345291>,  <43.326324, 35.796890, 19.338539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488434, 35.431274, 19.345291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671168, 0.284951, -0.684351,
		0.620713, 0.288680, 0.728957,
		0.405276, -0.914039, 0.016881,
		43.610016, 35.157063, 19.350355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034821, 35.975277, 19.181561>,  <43.326324, 35.796890, 19.338539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034821, 35.975277, 19.181561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.994919, 35.583374, 19.112135>,  <43.970978, 35.348232, 19.070480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.994919, 35.583374, 19.112135>,  <44.034821, 35.975277, 19.181561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994919, 35.583374, 19.112135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689309, 0.057746, -0.722162,
		0.717567, -0.191679, 0.669595,
		-0.099756, -0.979758, -0.173563,
		43.964993, 35.289448, 19.060066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644367, 35.815449, 18.925097>,  <44.034821, 35.975277, 19.181561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644367, 35.815449, 18.925097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.434479, 35.490799, 18.822386>,  <44.308544, 35.296009, 18.760759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.434479, 35.490799, 18.822386>,  <44.644367, 35.815449, 18.925097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.434479, 35.490799, 18.822386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537122, -0.081642, -0.839544,
		0.660431, -0.578446, 0.478781,
		-0.524720, -0.811625, -0.256777,
		44.277061, 35.247311, 18.745352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170486, 35.416466, 18.848492>,  <44.644367, 35.815449, 18.925097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170486, 35.416466, 18.848492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.867443, 35.258926, 18.640293>,  <44.685619, 35.164402, 18.515373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.867443, 35.258926, 18.640293>,  <45.170486, 35.416466, 18.848492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867443, 35.258926, 18.640293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641315, -0.300786, -0.705863,
		0.121445, -0.868569, 0.480458,
		-0.757605, -0.393848, -0.520497,
		44.640160, 35.140774, 18.484144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363365, 34.697208, 18.506966>,  <45.170486, 35.416466, 18.848492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363365, 34.697208, 18.506966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.042381, 34.821018, 18.302908>,  <44.849789, 34.895306, 18.180473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.042381, 34.821018, 18.302908>,  <45.363365, 34.697208, 18.506966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042381, 34.821018, 18.302908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391783, -0.371530, -0.841707,
		-0.450064, -0.875305, 0.176873,
		-0.802464, 0.309526, -0.510142,
		44.801643, 34.913876, 18.149866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276428, 34.186356, 18.056650>,  <45.363365, 34.697208, 18.506966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276428, 34.186356, 18.056650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.043568, 34.474068, 17.904997>,  <44.903851, 34.646694, 17.814005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.043568, 34.474068, 17.904997>,  <45.276428, 34.186356, 18.056650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043568, 34.474068, 17.904997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173510, -0.345652, -0.922181,
		-0.794353, -0.602631, 0.076419,
		-0.582150, 0.719278, -0.379132,
		44.868923, 34.689850, 17.791258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739204, 33.881775, 17.632248>,  <45.276428, 34.186356, 18.056650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739204, 33.881775, 17.632248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.758156, 34.258495, 17.499119>,  <44.769527, 34.484528, 17.419241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.758156, 34.258495, 17.499119>,  <44.739204, 33.881775, 17.632248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758156, 34.258495, 17.499119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007760, -0.333534, -0.942706,
		-0.998847, 0.042081, -0.023110,
		0.047378, 0.941799, -0.332823,
		44.772369, 34.541035, 17.399273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450539, 34.017544, 16.978613>,  <44.739204, 33.881775, 17.632248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450539, 34.017544, 16.978613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.722633, 34.310635, 16.970833>,  <44.885891, 34.486488, 16.966166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.722633, 34.310635, 16.970833>,  <44.450539, 34.017544, 16.978613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722633, 34.310635, 16.970833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164975, -0.178903, -0.969937,
		-0.714182, 0.656581, -0.242579,
		0.680241, 0.732731, -0.019450,
		44.926704, 34.530453, 16.964998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268829, 34.312393, 16.351480>,  <44.450539, 34.017544, 16.978613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268829, 34.312393, 16.351480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.632278, 34.456108, 16.436630>,  <44.850349, 34.542336, 16.487720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.632278, 34.456108, 16.436630>,  <44.268829, 34.312393, 16.351480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632278, 34.456108, 16.436630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219393, 0.023053, -0.975364,
		-0.355342, 0.932943, -0.057878,
		0.908625, 0.359286, 0.212873,
		44.904865, 34.563892, 16.500492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576614, 33.979233, 16.484087>,  <44.268829, 34.312393, 16.351480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576614, 33.979233, 16.484087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.307468, 33.887951, 16.202614>,  <43.145981, 33.833183, 16.033730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.307468, 33.887951, 16.202614>,  <43.576614, 33.979233, 16.484087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307468, 33.887951, 16.202614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728160, 0.036509, 0.684435,
		-0.130499, 0.972929, -0.190734,
		-0.672870, -0.228203, -0.703683,
		43.105606, 33.819489, 15.991508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146385, 34.497780, 16.473373>,  <43.576614, 33.979233, 16.484087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146385, 34.497780, 16.473373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949108, 34.178764, 16.334415>,  <42.830742, 33.987354, 16.251041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949108, 34.178764, 16.334415>,  <43.146385, 34.497780, 16.473373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949108, 34.178764, 16.334415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708317, 0.136335, 0.692604,
		-0.505019, 0.587655, -0.632153,
		-0.493196, -0.797543, -0.347394,
		42.801147, 33.939503, 16.230198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536137, 34.681030, 16.401976>,  <43.146385, 34.497780, 16.473373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536137, 34.681030, 16.401976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.512417, 34.282688, 16.429583>,  <42.498184, 34.043682, 16.446146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.512417, 34.282688, 16.429583>,  <42.536137, 34.681030, 16.401976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512417, 34.282688, 16.429583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728716, 0.090437, 0.678818,
		-0.682243, -0.010039, -0.731056,
		-0.059300, -0.995852, 0.069016,
		42.494625, 33.983932, 16.450287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861431, 34.480949, 16.320333>,  <42.536137, 34.681030, 16.401976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861431, 34.480949, 16.320333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021454, 34.175678, 16.523315>,  <42.117466, 33.992516, 16.645105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021454, 34.175678, 16.523315>,  <41.861431, 34.480949, 16.320333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021454, 34.175678, 16.523315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806438, -0.030061, 0.590554,
		-0.435444, -0.645487, -0.627483,
		0.400058, -0.763180, 0.507455,
		42.141472, 33.946724, 16.675552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338829, 34.047298, 16.495987>,  <41.861431, 34.480949, 16.320333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338829, 34.047298, 16.495987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.633568, 33.932812, 16.740980>,  <41.810410, 33.864120, 16.887976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.633568, 33.932812, 16.740980>,  <41.338829, 34.047298, 16.495987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633568, 33.932812, 16.740980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665148, -0.144812, 0.732535,
		-0.120965, -0.947160, -0.297078,
		0.736848, -0.286212, 0.612485,
		41.854622, 33.846947, 16.924725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051510, 33.397461, 16.808506>,  <41.338829, 34.047298, 16.495987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051510, 33.397461, 16.808506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354752, 33.541580, 17.025932>,  <41.536697, 33.628052, 17.156387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.354752, 33.541580, 17.025932>,  <41.051510, 33.397461, 16.808506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354752, 33.541580, 17.025932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554787, -0.081778, 0.827964,
		0.342764, -0.929246, 0.137891,
		0.758106, 0.360296, 0.543564,
		41.582184, 33.649670, 17.189001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181950, 32.834862, 17.394888>,  <41.051510, 33.397461, 16.808506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181950, 32.834862, 17.394888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.301769, 33.200279, 17.504950>,  <41.373661, 33.419529, 17.570986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.301769, 33.200279, 17.504950>,  <41.181950, 32.834862, 17.394888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301769, 33.200279, 17.504950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354838, -0.161034, 0.920955,
		0.885640, -0.373509, 0.275921,
		0.299553, 0.913542, 0.275154,
		41.391636, 33.474342, 17.587496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301422, 32.708885, 18.058018>,  <41.181950, 32.834862, 17.394888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301422, 32.708885, 18.058018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.310234, 33.108494, 18.042650>,  <41.315521, 33.348259, 18.033430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.310234, 33.108494, 18.042650>,  <41.301422, 32.708885, 18.058018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310234, 33.108494, 18.042650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285798, 0.043120, 0.957319,
		0.958036, -0.010112, 0.286468,
		0.022033, 0.999019, -0.038420,
		41.316845, 33.408199, 18.031124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572918, 32.917477, 18.711411>,  <41.301422, 32.708885, 18.058018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572918, 32.917477, 18.711411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.412788, 33.263733, 18.591137>,  <41.316711, 33.471485, 18.518972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.412788, 33.263733, 18.591137>,  <41.572918, 32.917477, 18.711411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412788, 33.263733, 18.591137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156972, 0.258497, 0.953173,
		0.902829, 0.428777, 0.032399,
		-0.400324, 0.865638, -0.300685,
		41.292690, 33.523426, 18.500931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004795, 33.380600, 19.089478>,  <41.572918, 32.917477, 18.711411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004795, 33.380600, 19.089478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640285, 33.513992, 18.992840>,  <41.421581, 33.594028, 18.934856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.640285, 33.513992, 18.992840>,  <42.004795, 33.380600, 19.089478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640285, 33.513992, 18.992840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224786, 0.088741, 0.970359,
		0.345039, 0.938570, -0.005905,
		-0.911274, 0.333485, -0.241596,
		41.366905, 33.614037, 18.920361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007538, 34.081284, 19.358507>,  <42.004795, 33.380600, 19.089478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007538, 34.081284, 19.358507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.645569, 33.918434, 19.308929>,  <41.428387, 33.820724, 19.279182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.645569, 33.918434, 19.308929>,  <42.007538, 34.081284, 19.358507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645569, 33.918434, 19.308929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242320, 0.253513, 0.936489,
		-0.349843, 0.877487, -0.328064,
		-0.904926, -0.407121, -0.123943,
		41.374092, 33.796299, 19.271746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499352, 34.590202, 19.631058>,  <42.007538, 34.081284, 19.358507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499352, 34.590202, 19.631058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.273376, 34.260994, 19.607449>,  <41.137791, 34.063469, 19.593283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.273376, 34.260994, 19.607449>,  <41.499352, 34.590202, 19.631058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273376, 34.260994, 19.607449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301287, 0.139158, 0.943324,
		-0.768163, 0.550699, -0.326581,
		-0.564935, -0.823022, -0.059023,
		41.103897, 34.014088, 19.589743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053387, 34.705997, 20.172144>,  <41.499352, 34.590202, 19.631058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053387, 34.705997, 20.172144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.986881, 34.320076, 20.090656>,  <40.946976, 34.088524, 20.041763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.986881, 34.320076, 20.090656>,  <41.053387, 34.705997, 20.172144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986881, 34.320076, 20.090656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352375, -0.134822, 0.926097,
		-0.920971, 0.225764, -0.317557,
		-0.166266, -0.964808, -0.203720,
		40.937000, 34.030632, 20.029541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319656, 34.591328, 20.348713>,  <41.053387, 34.705997, 20.172144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319656, 34.591328, 20.348713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521042, 34.246155, 20.366026>,  <40.641872, 34.039051, 20.376413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521042, 34.246155, 20.366026>,  <40.319656, 34.591328, 20.348713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521042, 34.246155, 20.366026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239566, -0.091293, 0.966578,
		-0.830139, -0.497007, -0.252692,
		0.503465, -0.862931, 0.043281,
		40.672081, 33.987274, 20.379009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916584, 34.134205, 20.841551>,  <40.319656, 34.591328, 20.348713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916584, 34.134205, 20.841551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.249989, 33.914474, 20.817898>,  <40.450031, 33.782639, 20.803705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.249989, 33.914474, 20.817898>,  <39.916584, 34.134205, 20.841551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249989, 33.914474, 20.817898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169005, -0.355402, 0.919308,
		-0.526013, -0.756263, -0.389071,
		0.833515, -0.549323, -0.059134,
		40.500042, 33.749680, 20.800158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705620, 33.480919, 21.075357>,  <39.916584, 34.134205, 20.841551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705620, 33.480919, 21.075357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101799, 33.504894, 21.125042>,  <40.339504, 33.519279, 21.154852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.101799, 33.504894, 21.125042>,  <39.705620, 33.480919, 21.075357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101799, 33.504894, 21.125042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092425, -0.380017, 0.920351,
		0.102365, -0.923036, -0.370846,
		0.990444, 0.059937, 0.124212,
		40.398933, 33.522877, 21.162306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890591, 32.730740, 21.235844>,  <39.705620, 33.480919, 21.075357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890591, 32.730740, 21.235844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176540, 32.963196, 21.391397>,  <40.348110, 33.102669, 21.484730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176540, 32.963196, 21.391397>,  <39.890591, 32.730740, 21.235844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176540, 32.963196, 21.391397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107733, -0.457968, 0.882416,
		0.690900, -0.672716, -0.264784,
		0.714878, 0.581136, 0.388884,
		40.391003, 33.137535, 21.508062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165600, 32.317318, 21.697254>,  <39.890591, 32.730740, 21.235844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165600, 32.317318, 21.697254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342659, 32.660698, 21.800882>,  <40.448895, 32.866726, 21.863060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.342659, 32.660698, 21.800882>,  <40.165600, 32.317318, 21.697254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342659, 32.660698, 21.800882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091161, -0.244337, 0.965396,
		0.892048, -0.450951, -0.029898,
		0.442651, 0.858454, 0.259070,
		40.475452, 32.918236, 21.878603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876984, 32.200001, 22.039656>,  <40.165600, 32.317318, 21.697254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876984, 32.200001, 22.039656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676144, 32.523182, 22.163017>,  <40.555637, 32.717091, 22.237034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676144, 32.523182, 22.163017>,  <40.876984, 32.200001, 22.039656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676144, 32.523182, 22.163017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038066, -0.376915, 0.925465,
		0.863970, 0.452939, 0.220006,
		-0.502103, 0.807948, 0.308402,
		40.525513, 32.765568, 22.255537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015198, 32.216770, 22.717823>,  <40.876984, 32.200001, 22.039656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015198, 32.216770, 22.717823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716145, 32.481651, 22.697683>,  <40.536713, 32.640579, 22.685600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716145, 32.481651, 22.697683>,  <41.015198, 32.216770, 22.717823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716145, 32.481651, 22.697683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245106, -0.204677, 0.947645,
		0.617226, 0.720831, 0.315333,
		-0.747633, 0.662201, -0.050348,
		40.491856, 32.680313, 22.682579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.600479, 34.587650, 27.730417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232891, 34.456619, 27.642609>,  <42.012337, 34.378002, 27.589924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232891, 34.456619, 27.642609>,  <42.600479, 34.587650, 27.730417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232891, 34.456619, 27.642609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279178, 0.147325, 0.948870,
		-0.278484, 0.933269, -0.226839,
		-0.918970, -0.327573, -0.219520,
		41.957199, 34.358349, 27.576752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179031, 34.988976, 28.206760>,  <42.600479, 34.587650, 27.730417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179031, 34.988976, 28.206760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.954224, 34.685295, 28.075468>,  <41.819340, 34.503086, 27.996693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.954224, 34.685295, 28.075468>,  <42.179031, 34.988976, 28.206760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954224, 34.685295, 28.075468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414485, -0.084901, 0.906087,
		-0.715773, 0.645290, -0.266963,
		-0.562024, -0.759205, -0.328232,
		41.785618, 34.457535, 27.976997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369789, 35.120949, 28.479996>,  <42.179031, 34.988976, 28.206760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369789, 35.120949, 28.479996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462204, 34.741085, 28.395357>,  <41.517654, 34.513168, 28.344574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.462204, 34.741085, 28.395357>,  <41.369789, 35.120949, 28.479996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462204, 34.741085, 28.395357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443053, -0.296313, 0.846111,
		-0.866213, -0.101736, -0.489208,
		0.231039, -0.949657, -0.211596,
		41.531517, 34.456188, 28.331879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913109, 34.780495, 28.915501>,  <41.369789, 35.120949, 28.479996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913109, 34.780495, 28.915501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136292, 34.463600, 28.816668>,  <41.270203, 34.273464, 28.757368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136292, 34.463600, 28.816668>,  <40.913109, 34.780495, 28.915501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136292, 34.463600, 28.816668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355451, -0.497189, 0.791491,
		-0.749892, -0.353794, -0.559010,
		0.557958, -0.792233, -0.247081,
		41.303680, 34.225929, 28.742542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380974, 34.107780, 29.017702>,  <40.913109, 34.780495, 28.915501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380974, 34.107780, 29.017702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745792, 33.945068, 28.996904>,  <40.964684, 33.847443, 28.984426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.745792, 33.945068, 28.996904>,  <40.380974, 34.107780, 29.017702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745792, 33.945068, 28.996904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196833, -0.545461, 0.814696,
		-0.359758, -0.732807, -0.577553,
		0.912048, -0.406775, -0.051994,
		41.019405, 33.823036, 28.981306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284973, 33.428528, 29.123394>,  <40.380974, 34.107780, 29.017702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284973, 33.428528, 29.123394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670826, 33.480728, 29.215014>,  <40.902336, 33.512047, 29.269985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670826, 33.480728, 29.215014>,  <40.284973, 33.428528, 29.123394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670826, 33.480728, 29.215014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126435, -0.533378, 0.836375,
		0.231316, -0.835750, -0.498011,
		0.964628, 0.130501, 0.229048,
		40.960213, 33.519878, 29.283728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563450, 32.765522, 29.184200>,  <40.284973, 33.428528, 29.123394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563450, 32.765522, 29.184200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844177, 32.978481, 29.373516>,  <41.012615, 33.106258, 29.487106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844177, 32.978481, 29.373516>,  <40.563450, 32.765522, 29.184200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844177, 32.978481, 29.373516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095839, -0.587793, 0.803314,
		0.705880, -0.609140, -0.361500,
		0.701818, 0.532398, 0.473290,
		41.054722, 33.138199, 29.515503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111095, 32.339325, 29.519007>,  <40.563450, 32.765522, 29.184200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111095, 32.339325, 29.519007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.108280, 32.680855, 29.727213>,  <41.106590, 32.885773, 29.852137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.108280, 32.680855, 29.727213>,  <41.111095, 32.339325, 29.519007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108280, 32.680855, 29.727213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035736, -0.519980, 0.853431,
		0.999337, 0.024605, -0.026854,
		-0.007035, 0.853824, 0.520514,
		41.106171, 32.937000, 29.883368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574242, 32.232323, 30.142015>,  <41.111095, 32.339325, 29.519007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574242, 32.232323, 30.142015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.348568, 32.549824, 30.232922>,  <41.213161, 32.740326, 30.287464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.348568, 32.549824, 30.232922>,  <41.574242, 32.232323, 30.142015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348568, 32.549824, 30.232922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153905, -0.371536, 0.915573,
		0.811176, 0.481578, 0.331778,
		-0.564188, 0.793753, 0.227264,
		41.179310, 32.787949, 30.301102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816067, 32.364590, 30.816263>,  <41.574242, 32.232323, 30.142015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816067, 32.364590, 30.816263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454491, 32.525784, 30.759003>,  <41.237545, 32.622501, 30.724646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454491, 32.525784, 30.759003>,  <41.816067, 32.364590, 30.816263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454491, 32.525784, 30.759003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314094, -0.398431, 0.861741,
		0.290232, 0.823927, 0.486734,
		-0.903941, 0.402985, -0.143153,
		41.183308, 32.646679, 30.716057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632401, 32.729843, 31.512716>,  <41.816067, 32.364590, 30.816263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632401, 32.729843, 31.512716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287220, 32.712753, 31.311323>,  <41.080112, 32.702499, 31.190487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287220, 32.712753, 31.311323>,  <41.632401, 32.729843, 31.512716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287220, 32.712753, 31.311323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491596, -0.159423, 0.856106,
		-0.116841, 0.986286, 0.116572,
		-0.862949, -0.042722, -0.503482,
		41.028336, 32.699936, 31.160278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172310, 33.292881, 31.770416>,  <41.632401, 32.729843, 31.512716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172310, 33.292881, 31.770416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974548, 32.978054, 31.622854>,  <40.855892, 32.789158, 31.534317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974548, 32.978054, 31.622854>,  <41.172310, 33.292881, 31.770416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974548, 32.978054, 31.622854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560936, -0.035315, 0.827106,
		-0.664018, 0.615852, -0.424036,
		-0.494399, -0.787070, -0.368903,
		40.826229, 32.741932, 31.512184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464577, 33.421738, 31.676764>,  <41.172310, 33.292881, 31.770416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464577, 33.421738, 31.676764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518082, 33.033409, 31.756374>,  <40.550182, 32.800411, 31.804140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.518082, 33.033409, 31.756374>,  <40.464577, 33.421738, 31.676764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518082, 33.033409, 31.756374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540885, 0.096764, 0.835512,
		-0.830393, -0.219406, -0.512160,
		0.133758, -0.970823, 0.199026,
		40.558208, 32.742161, 31.816082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282917, 33.773464, 32.336185>,  <40.464577, 33.421738, 31.676764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282917, 33.773464, 32.336185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934498, 33.959263, 32.400078>,  <39.725445, 34.070744, 32.438416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934498, 33.959263, 32.400078>,  <40.282917, 33.773464, 32.336185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934498, 33.959263, 32.400078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281557, 0.738617, -0.612512,
		-0.402494, -0.488553, -0.774154,
		-0.871047, 0.464501, 0.159734,
		39.673183, 34.098614, 32.447998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834015, 33.936687, 31.677509>,  <40.282917, 33.773464, 32.336185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834015, 33.936687, 31.677509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718884, 34.190666, 31.964283>,  <39.649803, 34.343056, 32.136349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718884, 34.190666, 31.964283>,  <39.834015, 33.936687, 31.677509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718884, 34.190666, 31.964283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071975, 0.732155, -0.677325,
		-0.954974, -0.246554, -0.165034,
		-0.287828, 0.634949, 0.716934,
		39.632534, 34.381149, 32.179363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188271, 34.230465, 31.428410>,  <39.834015, 33.936687, 31.677509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188271, 34.230465, 31.428410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303486, 34.502010, 31.698574>,  <39.372616, 34.664936, 31.860672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.303486, 34.502010, 31.698574>,  <39.188271, 34.230465, 31.428410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303486, 34.502010, 31.698574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089992, 0.721370, -0.686678,
		-0.953381, 0.137009, 0.268876,
		0.288040, 0.678862, 0.675411,
		39.389896, 34.705669, 31.901197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712498, 34.796097, 31.372486>,  <39.188271, 34.230465, 31.428410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712498, 34.796097, 31.372486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.054218, 34.926189, 31.534662>,  <39.259251, 35.004246, 31.631968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.054218, 34.926189, 31.534662>,  <38.712498, 34.796097, 31.372486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054218, 34.926189, 31.534662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049143, 0.726004, -0.685933,
		-0.517442, 0.605921, 0.604246,
		0.854306, 0.325236, 0.405442,
		39.310509, 35.023762, 31.656294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632011, 35.544655, 31.443815>,  <38.712498, 34.796097, 31.372486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632011, 35.544655, 31.443815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023468, 35.468071, 31.413874>,  <39.258343, 35.422119, 31.395908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023468, 35.468071, 31.413874>,  <38.632011, 35.544655, 31.443815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023468, 35.468071, 31.413874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064204, 0.630573, -0.773470,
		0.195292, 0.752144, 0.629397,
		0.978641, -0.191462, -0.074855,
		39.317062, 35.410633, 31.391417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920433, 36.236721, 31.372135>,  <38.632011, 35.544655, 31.443815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920433, 36.236721, 31.372135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165112, 35.962940, 31.213469>,  <39.311920, 35.798672, 31.118269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.165112, 35.962940, 31.213469>,  <38.920433, 36.236721, 31.372135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165112, 35.962940, 31.213469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192434, 0.615096, -0.764608,
		0.767329, 0.391378, 0.507966,
		0.611699, -0.684456, -0.396667,
		39.348621, 35.757603, 31.094469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446159, 36.731266, 30.960060>,  <38.920433, 36.236721, 31.372135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446159, 36.731266, 30.960060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525951, 36.362667, 30.826759>,  <39.573826, 36.141510, 30.746778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525951, 36.362667, 30.826759>,  <39.446159, 36.731266, 30.960060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525951, 36.362667, 30.826759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231816, 0.374812, -0.897651,
		0.952086, 0.101813, 0.288385,
		0.199483, -0.921493, -0.333252,
		39.585796, 36.086220, 30.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192661, 36.811691, 30.613800>,  <39.446159, 36.731266, 30.960060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192661, 36.811691, 30.613800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019184, 36.480953, 30.470560>,  <39.915096, 36.282509, 30.384617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019184, 36.480953, 30.470560>,  <40.192661, 36.811691, 30.613800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019184, 36.480953, 30.470560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273997, 0.257584, -0.926594,
		0.858389, -0.499980, 0.114839,
		-0.433697, -0.826844, -0.358100,
		39.889076, 36.232899, 30.363131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725952, 36.378651, 30.245632>,  <40.192661, 36.811691, 30.613800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725952, 36.378651, 30.245632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381451, 36.247169, 30.090612>,  <40.174751, 36.168282, 29.997601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.381451, 36.247169, 30.090612>,  <40.725952, 36.378651, 30.245632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381451, 36.247169, 30.090612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415397, -0.016077, -0.909498,
		0.292727, -0.944296, 0.150389,
		-0.861253, -0.328705, -0.387551,
		40.123074, 36.148560, 29.974346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828907, 35.802849, 29.678633>,  <40.725952, 36.378651, 30.245632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828907, 35.802849, 29.678633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.468773, 35.955017, 29.594076>,  <40.252693, 36.046318, 29.543343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.468773, 35.955017, 29.594076>,  <40.828907, 35.802849, 29.678633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468773, 35.955017, 29.594076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248256, 0.049976, -0.967404,
		-0.357453, -0.923463, -0.139436,
		-0.900331, 0.380417, -0.211391,
		40.198673, 36.069141, 29.530659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637009, 35.519661, 28.965641>,  <40.828907, 35.802849, 29.678633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637009, 35.519661, 28.965641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397381, 35.830074, 29.044518>,  <40.253605, 36.016323, 29.091843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397381, 35.830074, 29.044518>,  <40.637009, 35.519661, 28.965641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397381, 35.830074, 29.044518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086388, 0.307480, -0.947625,
		-0.796025, -0.550656, -0.251241,
		-0.599067, 0.776037, 0.197191,
		40.217659, 36.062885, 29.103676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340126, 35.572659, 28.373434>,  <40.637009, 35.519661, 28.965641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340126, 35.572659, 28.373434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289288, 35.935146, 28.534737>,  <40.258785, 36.152637, 28.631519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289288, 35.935146, 28.534737>,  <40.340126, 35.572659, 28.373434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289288, 35.935146, 28.534737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015682, 0.408340, -0.912695,
		-0.991767, -0.109674, -0.066109,
		-0.127093, 0.906218, 0.403258,
		40.251160, 36.207012, 28.655714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854912, 35.897617, 28.048698>,  <40.340126, 35.572659, 28.373434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854912, 35.897617, 28.048698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000935, 36.227455, 28.221567>,  <40.088551, 36.425358, 28.325289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000935, 36.227455, 28.221567>,  <39.854912, 35.897617, 28.048698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000935, 36.227455, 28.221567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023917, 0.472363, -0.881080,
		-0.930677, 0.311310, 0.192163,
		0.365060, 0.824596, 0.432172,
		40.110451, 36.474834, 28.351219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403454, 36.533562, 27.947853>,  <39.854912, 35.897617, 28.048698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403454, 36.533562, 27.947853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759083, 36.705780, 28.010057>,  <39.972462, 36.809109, 28.047380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759083, 36.705780, 28.010057>,  <39.403454, 36.533562, 27.947853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759083, 36.705780, 28.010057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153208, 0.599987, -0.785202,
		-0.431369, 0.674276, 0.599394,
		0.889072, 0.430544, 0.155512,
		40.025803, 36.834942, 28.056711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303123, 37.216698, 27.736134>,  <39.403454, 36.533562, 27.947853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303123, 37.216698, 27.736134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695484, 37.144260, 27.707729>,  <39.930901, 37.100800, 27.690687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695484, 37.144260, 27.707729>,  <39.303123, 37.216698, 27.736134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695484, 37.144260, 27.707729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000274, 0.366354, -0.930475,
		0.194519, 0.912683, 0.359406,
		0.980899, -0.181094, -0.071013,
		39.989754, 37.089931, 27.686426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753067, 37.657871, 27.657663>,  <39.303123, 37.216698, 27.736134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753067, 37.657871, 27.657663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462582, 37.669922, 27.382938>,  <38.288292, 37.677151, 27.218103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.462582, 37.669922, 27.382938>,  <38.753067, 37.657871, 27.657663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462582, 37.669922, 27.382938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687293, -0.054602, 0.724325,
		-0.015682, 0.998054, 0.060357,
		-0.726211, 0.030124, -0.686811,
		38.244717, 37.678959, 27.176895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277531, 38.207886, 27.927149>,  <38.753067, 37.657871, 27.657663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277531, 38.207886, 27.927149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085011, 37.947830, 27.691978>,  <37.969498, 37.791798, 27.550877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.085011, 37.947830, 27.691978>,  <38.277531, 38.207886, 27.927149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085011, 37.947830, 27.691978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695024, -0.125648, 0.707922,
		-0.534123, 0.749351, -0.391390,
		-0.481305, -0.650143, -0.587928,
		37.940620, 37.752789, 27.515600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645161, 38.460243, 27.866312>,  <38.277531, 38.207886, 27.927149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645161, 38.460243, 27.866312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615124, 38.067451, 27.796947>,  <37.597099, 37.831776, 27.755329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.615124, 38.067451, 27.796947>,  <37.645161, 38.460243, 27.866312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615124, 38.067451, 27.796947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691397, -0.074041, 0.718671,
		-0.718562, 0.173866, -0.673379,
		-0.075094, -0.981982, -0.173414,
		37.592594, 37.772858, 27.744923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930813, 38.356663, 27.891220>,  <37.645161, 38.460243, 27.866312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930813, 38.356663, 27.891220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090542, 37.991810, 27.928232>,  <37.186378, 37.772900, 27.950439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090542, 37.991810, 27.928232>,  <36.930813, 38.356663, 27.891220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090542, 37.991810, 27.928232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659115, -0.215468, 0.720514,
		-0.637264, -0.348707, -0.687239,
		0.399326, -0.912128, 0.092528,
		37.210339, 37.718170, 27.955990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352837, 37.983494, 28.022181>,  <36.930813, 38.356663, 27.891220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352837, 37.983494, 28.022181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.645180, 37.737328, 28.140240>,  <36.820587, 37.589626, 28.211075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.645180, 37.737328, 28.140240>,  <36.352837, 37.983494, 28.022181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645180, 37.737328, 28.140240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584296, -0.340638, 0.736590,
		-0.352768, -0.710796, -0.608542,
		0.730858, -0.615414, 0.295149,
		36.864437, 37.552704, 28.228785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994373, 37.317410, 28.163374>,  <36.352837, 37.983494, 28.022181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994373, 37.317410, 28.163374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335739, 37.282063, 28.368853>,  <36.540558, 37.260853, 28.492140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.335739, 37.282063, 28.368853>,  <35.994373, 37.317410, 28.163374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335739, 37.282063, 28.368853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513892, -0.307543, 0.800833,
		0.087216, -0.947422, -0.307871,
		0.853410, -0.088367, 0.513695,
		36.591763, 37.255550, 28.522961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187538, 36.579128, 28.239716>,  <35.994373, 37.317410, 28.163374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187538, 36.579128, 28.239716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.359875, 36.773743, 28.543732>,  <36.463276, 36.890511, 28.726141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.359875, 36.773743, 28.543732>,  <36.187538, 36.579128, 28.239716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359875, 36.773743, 28.543732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482580, -0.587462, 0.649619,
		0.762556, -0.646664, -0.018313,
		0.430843, 0.486534, 0.760039,
		36.489128, 36.919704, 28.771744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274342, 36.072453, 28.723064>,  <36.187538, 36.579128, 28.239716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274342, 36.072453, 28.723064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355309, 36.402184, 28.934538>,  <36.403889, 36.600021, 29.061422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355309, 36.402184, 28.934538>,  <36.274342, 36.072453, 28.723064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355309, 36.402184, 28.934538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512802, -0.370708, 0.774345,
		0.834304, -0.427850, 0.347681,
		0.202416, 0.824330, 0.528685,
		36.416035, 36.649483, 29.093143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576546, 35.845966, 29.359034>,  <36.274342, 36.072453, 28.723064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576546, 35.845966, 29.359034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.451954, 36.213474, 29.456062>,  <36.377201, 36.433979, 29.514280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.451954, 36.213474, 29.456062>,  <36.576546, 35.845966, 29.359034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451954, 36.213474, 29.456062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289919, -0.334981, 0.896513,
		0.904948, 0.208916, 0.370708,
		-0.311475, 0.918772, 0.242571,
		36.358513, 36.489105, 29.528833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794697, 35.946518, 30.016729>,  <36.576546, 35.845966, 29.359034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794697, 35.946518, 30.016729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507328, 36.222557, 29.981802>,  <36.334908, 36.388180, 29.960846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.507328, 36.222557, 29.981802>,  <36.794697, 35.946518, 30.016729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507328, 36.222557, 29.981802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362423, -0.264208, 0.893781,
		0.593730, 0.673761, 0.439922,
		-0.718425, 0.690102, -0.087318,
		36.291801, 36.429588, 29.955606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812298, 36.267529, 30.595491>,  <36.794697, 35.946518, 30.016729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812298, 36.267529, 30.595491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439121, 36.332928, 30.467190>,  <36.215214, 36.372166, 30.390209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.439121, 36.332928, 30.467190>,  <36.812298, 36.267529, 30.595491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439121, 36.332928, 30.467190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347996, -0.181182, 0.919822,
		0.092272, 0.969764, 0.225928,
		-0.932944, 0.163496, -0.320756,
		36.159237, 36.381977, 30.370962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523361, 36.657024, 31.123867>,  <36.812298, 36.267529, 30.595491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523361, 36.657024, 31.123867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251175, 36.459003, 30.907759>,  <36.087864, 36.340191, 30.778093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.251175, 36.459003, 30.907759>,  <36.523361, 36.657024, 31.123867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251175, 36.459003, 30.907759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370834, -0.403269, 0.836575,
		-0.632021, 0.769610, 0.090828,
		-0.680464, -0.495050, -0.540272,
		36.047035, 36.310490, 30.745678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.047443, 39.252087, 24.123009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800404, 38.943081, 24.063953>,  <39.652180, 38.757679, 24.028521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800404, 38.943081, 24.063953>,  <40.047443, 39.252087, 24.123009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800404, 38.943081, 24.063953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502338, 0.243015, 0.829819,
		-0.605165, 0.586662, -0.538147,
		-0.617601, -0.772510, -0.147639,
		39.615124, 38.711327, 24.019661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419025, 39.480911, 24.382971>,  <40.047443, 39.252087, 24.123009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419025, 39.480911, 24.382971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318176, 39.097485, 24.329939>,  <39.257668, 38.867428, 24.298120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318176, 39.097485, 24.329939>,  <39.419025, 39.480911, 24.382971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318176, 39.097485, 24.329939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508816, 0.014779, 0.860748,
		-0.823129, 0.284469, -0.491462,
		-0.252120, -0.958571, -0.132578,
		39.242538, 38.809914, 24.290165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685844, 39.457802, 24.547140>,  <39.419025, 39.480911, 24.382971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685844, 39.457802, 24.547140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847042, 39.093616, 24.584354>,  <38.943760, 38.875107, 24.606684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847042, 39.093616, 24.584354>,  <38.685844, 39.457802, 24.547140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847042, 39.093616, 24.584354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626885, -0.200547, 0.752858,
		-0.666790, -0.361721, -0.651574,
		0.402996, -0.910461, 0.093035,
		38.967941, 38.820477, 24.612265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144535, 39.020561, 24.714712>,  <38.685844, 39.457802, 24.547140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144535, 39.020561, 24.714712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458866, 38.802288, 24.831125>,  <38.647465, 38.671326, 24.900972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458866, 38.802288, 24.831125>,  <38.144535, 39.020561, 24.714712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458866, 38.802288, 24.831125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523581, -0.336571, 0.782677,
		-0.329112, -0.767450, -0.550187,
		0.785842, -0.545656, 0.291053,
		38.694614, 38.638584, 24.918434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011143, 38.291462, 24.897085>,  <38.144535, 39.020561, 24.714712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011143, 38.291462, 24.897085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375011, 38.282982, 25.063000>,  <38.593334, 38.277893, 25.162548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375011, 38.282982, 25.063000>,  <38.011143, 38.291462, 24.897085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375011, 38.282982, 25.063000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352025, -0.569326, 0.742932,
		0.220402, -0.821839, -0.525360,
		0.909671, -0.021196, 0.414788,
		38.647911, 38.276623, 25.187437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306660, 37.522442, 25.165947>,  <38.011143, 38.291462, 24.897085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306660, 37.522442, 25.165947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472549, 37.816170, 25.380899>,  <38.572083, 37.992405, 25.509871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472549, 37.816170, 25.380899>,  <38.306660, 37.522442, 25.165947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472549, 37.816170, 25.380899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283199, -0.457075, 0.843138,
		0.864754, -0.501858, 0.018397,
		0.414727, 0.734317, 0.537383,
		38.596966, 38.036465, 25.542114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647667, 37.217815, 25.666861>,  <38.306660, 37.522442, 25.165947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647667, 37.217815, 25.666861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614590, 37.581799, 25.829407>,  <38.594742, 37.800190, 25.926935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614590, 37.581799, 25.829407>,  <38.647667, 37.217815, 25.666861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614590, 37.581799, 25.829407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190449, -0.414677, 0.889816,
		0.978208, -0.003811, 0.207592,
		-0.082692, 0.909961, 0.406366,
		38.589783, 37.854786, 25.951317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915031, 37.144794, 26.392248>,  <38.647667, 37.217815, 25.666861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915031, 37.144794, 26.392248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692951, 37.477097, 26.376228>,  <38.559704, 37.676479, 26.366617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692951, 37.477097, 26.376228>,  <38.915031, 37.144794, 26.392248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692951, 37.477097, 26.376228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389981, -0.217492, 0.894769,
		0.734624, 0.512391, 0.444729,
		-0.555197, 0.830754, -0.040048,
		38.526394, 37.726322, 26.364214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129971, 37.541252, 27.035398>,  <38.915031, 37.144794, 26.392248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129971, 37.541252, 27.035398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766438, 37.640980, 26.901611>,  <38.548317, 37.700817, 26.821339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766438, 37.640980, 26.901611>,  <39.129971, 37.541252, 27.035398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766438, 37.640980, 26.901611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366015, -0.091877, 0.926062,
		0.200151, 0.964054, 0.174754,
		-0.908830, 0.249315, -0.334469,
		38.493790, 37.715775, 26.801271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664078, 37.868114, 27.319881>,  <39.129971, 37.541252, 27.035398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664078, 37.868114, 27.319881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927593, 37.568981, 27.287031>,  <40.085705, 37.389503, 27.267321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927593, 37.568981, 27.287031>,  <39.664078, 37.868114, 27.319881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927593, 37.568981, 27.287031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114659, 0.207689, -0.971452,
		0.743536, 0.630569, 0.222569,
		0.658793, -0.747829, -0.082124,
		40.125233, 37.344631, 27.262394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221512, 38.100147, 26.860720>,  <39.664078, 37.868114, 27.319881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221512, 38.100147, 26.860720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307743, 37.710175, 26.838659>,  <40.359482, 37.476192, 26.825424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307743, 37.710175, 26.838659>,  <40.221512, 38.100147, 26.860720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307743, 37.710175, 26.838659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273012, 0.114401, -0.955184,
		0.937546, 0.190856, 0.290829,
		0.215574, -0.974929, -0.055150,
		40.372414, 37.417694, 26.822115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905338, 38.063965, 26.769028>,  <40.221512, 38.100147, 26.860720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905338, 38.063965, 26.769028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754173, 37.718182, 26.636423>,  <40.663475, 37.510712, 26.556860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754173, 37.718182, 26.636423>,  <40.905338, 38.063965, 26.769028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754173, 37.718182, 26.636423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666320, -0.005346, -0.745646,
		0.642805, -0.502683, 0.578024,
		-0.377914, -0.864454, -0.331512,
		40.640800, 37.458847, 26.536970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424889, 37.813992, 26.348116>,  <40.905338, 38.063965, 26.769028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424889, 37.813992, 26.348116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144909, 37.538296, 26.273260>,  <40.976921, 37.372879, 26.228346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144909, 37.538296, 26.273260>,  <41.424889, 37.813992, 26.348116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144909, 37.538296, 26.273260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447154, -0.218605, -0.867332,
		0.556891, -0.690767, 0.461208,
		-0.699947, -0.689241, -0.187140,
		40.934925, 37.331524, 26.217117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843578, 37.210960, 26.112881>,  <41.424889, 37.813992, 26.348116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843578, 37.210960, 26.112881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471519, 37.137589, 25.985640>,  <41.248283, 37.093567, 25.909296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471519, 37.137589, 25.985640>,  <41.843578, 37.210960, 26.112881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471519, 37.137589, 25.985640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344723, -0.137781, -0.928538,
		0.126494, -0.973329, 0.191389,
		-0.930143, -0.183430, -0.318100,
		41.192478, 37.082561, 25.890209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853001, 36.517120, 25.781506>,  <41.843578, 37.210960, 26.112881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853001, 36.517120, 25.781506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553520, 36.741131, 25.639624>,  <41.373833, 36.875538, 25.554495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553520, 36.741131, 25.639624>,  <41.853001, 36.517120, 25.781506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553520, 36.741131, 25.639624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331687, -0.146806, -0.931897,
		-0.573961, -0.815363, -0.075841,
		-0.748700, 0.560028, -0.354706,
		41.328911, 36.909138, 25.533213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520496, 36.076458, 25.299376>,  <41.853001, 36.517120, 25.781506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520496, 36.076458, 25.299376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419422, 36.453373, 25.211519>,  <41.358780, 36.679523, 25.158806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419422, 36.453373, 25.211519>,  <41.520496, 36.076458, 25.299376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419422, 36.453373, 25.211519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264963, -0.150939, -0.952372,
		-0.930562, -0.298845, -0.211532,
		-0.252683, 0.942289, -0.219641,
		41.343616, 36.736061, 25.145626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165485, 36.029873, 24.644188>,  <41.520496, 36.076458, 25.299376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165485, 36.029873, 24.644188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307442, 36.400974, 24.690353>,  <41.392616, 36.623634, 24.718052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307442, 36.400974, 24.690353>,  <41.165485, 36.029873, 24.644188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307442, 36.400974, 24.690353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358161, -0.020890, -0.933426,
		-0.863580, 0.372604, -0.339700,
		0.354895, 0.927755, 0.115412,
		41.413910, 36.679302, 24.724977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151508, 36.342178, 23.961573>,  <41.165485, 36.029873, 24.644188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151508, 36.342178, 23.961573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364807, 36.606030, 24.173439>,  <41.492786, 36.764339, 24.300558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364807, 36.606030, 24.173439>,  <41.151508, 36.342178, 23.961573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364807, 36.606030, 24.173439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350854, 0.397280, -0.847980,
		-0.769775, 0.638015, -0.019585,
		0.533244, 0.659625, 0.529666,
		41.524780, 36.803917, 24.332338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158989, 36.981899, 23.536953>,  <41.151508, 36.342178, 23.961573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158989, 36.981899, 23.536953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475929, 36.949474, 23.778816>,  <41.666092, 36.930019, 23.923935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475929, 36.949474, 23.778816>,  <41.158989, 36.981899, 23.536953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475929, 36.949474, 23.778816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608013, 0.186216, -0.771780,
		-0.050037, 0.979159, 0.196833,
		0.792349, -0.081059, 0.604659,
		41.713634, 36.925156, 23.960215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568817, 37.595078, 23.404902>,  <41.158989, 36.981899, 23.536953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568817, 37.595078, 23.404902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849747, 37.390625, 23.603090>,  <42.018303, 37.267956, 23.722004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849747, 37.390625, 23.603090>,  <41.568817, 37.595078, 23.404902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849747, 37.390625, 23.603090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687629, 0.307066, -0.657933,
		0.184146, 0.802782, 0.567126,
		0.702322, -0.511128, 0.495471,
		42.060444, 37.237286, 23.751732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070736, 38.039959, 23.603092>,  <41.568817, 37.595078, 23.404902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070736, 38.039959, 23.603092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240162, 37.677872, 23.589401>,  <42.341816, 37.460621, 23.581186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240162, 37.677872, 23.589401>,  <42.070736, 38.039959, 23.603092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240162, 37.677872, 23.589401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642541, 0.326859, -0.693040,
		0.638541, 0.271553, 0.720086,
		0.423564, -0.905219, -0.034229,
		42.367229, 37.406307, 23.579132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873974, 38.122295, 23.542606>,  <42.070736, 38.039959, 23.603092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873974, 38.122295, 23.542606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776169, 37.760704, 23.402296>,  <42.717487, 37.543751, 23.318110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776169, 37.760704, 23.402296>,  <42.873974, 38.122295, 23.542606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776169, 37.760704, 23.402296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653953, 0.113363, -0.747994,
		0.715933, -0.412283, 0.563439,
		-0.244512, -0.903975, -0.350774,
		42.702816, 37.489510, 23.297064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481865, 37.762142, 23.382355>,  <42.873974, 38.122295, 23.542606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481865, 37.762142, 23.382355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215061, 37.574005, 23.151230>,  <43.054977, 37.461121, 23.012554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215061, 37.574005, 23.151230>,  <43.481865, 37.762142, 23.382355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215061, 37.574005, 23.151230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651098, 0.009006, -0.758940,
		0.362168, -0.882436, 0.300235,
		-0.667012, -0.470346, -0.577814,
		43.014957, 37.432903, 22.977886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.732437, 33.055656, 20.756037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.901402, 33.399128, 20.872141>,  <38.002781, 33.605209, 20.941803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.901402, 33.399128, 20.872141>,  <37.732437, 33.055656, 20.756037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901402, 33.399128, 20.872141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131687, -0.258695, 0.956941,
		0.896789, -0.442442, 0.003802,
		0.422407, 0.858675, 0.290259,
		38.028122, 33.656731, 20.959219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304852, 32.840675, 21.251711>,  <37.732437, 33.055656, 20.756037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304852, 32.840675, 21.251711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214787, 33.224792, 21.317617>,  <38.160748, 33.455261, 21.357161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.214787, 33.224792, 21.317617>,  <38.304852, 32.840675, 21.251711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214787, 33.224792, 21.317617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060773, -0.154936, 0.986054,
		0.972423, 0.232038, -0.023473,
		-0.225165, 0.960288, 0.164765,
		38.147236, 33.512878, 21.367046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676003, 32.944664, 21.782234>,  <38.304852, 32.840675, 21.251711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676003, 32.944664, 21.782234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407341, 33.239727, 21.809799>,  <38.246143, 33.416763, 21.826338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407341, 33.239727, 21.809799>,  <38.676003, 32.944664, 21.782234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407341, 33.239727, 21.809799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174237, -0.247680, 0.953046,
		0.720088, 0.628107, 0.294881,
		-0.671651, 0.737656, 0.068911,
		38.205845, 33.461025, 21.830473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808975, 33.315353, 22.402952>,  <38.676003, 32.944664, 21.782234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808975, 33.315353, 22.402952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440624, 33.444782, 22.315973>,  <38.219612, 33.522442, 22.263786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440624, 33.444782, 22.315973>,  <38.808975, 33.315353, 22.402952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440624, 33.444782, 22.315973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217957, 0.035142, 0.975326,
		0.323233, 0.945549, 0.038164,
		-0.920877, 0.323576, -0.217448,
		38.164360, 33.541855, 22.250738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653500, 33.919498, 22.816650>,  <38.808975, 33.315353, 22.402952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653500, 33.919498, 22.816650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285759, 33.801151, 22.712915>,  <38.065113, 33.730145, 22.650675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285759, 33.801151, 22.712915>,  <38.653500, 33.919498, 22.816650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285759, 33.801151, 22.712915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282699, 0.038327, 0.958443,
		-0.273630, 0.954461, -0.118877,
		-0.919352, -0.295865, -0.259338,
		38.009953, 33.712391, 22.635115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314590, 34.416630, 23.185661>,  <38.653500, 33.919498, 22.816650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314590, 34.416630, 23.185661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080177, 34.107159, 23.089340>,  <37.939529, 33.921474, 23.031548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.080177, 34.107159, 23.089340>,  <38.314590, 34.416630, 23.185661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080177, 34.107159, 23.089340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362039, -0.015858, 0.932028,
		-0.724911, 0.633377, -0.270810,
		-0.586031, -0.773681, -0.240803,
		37.904369, 33.875053, 23.017099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522949, 34.573196, 23.384752>,  <38.314590, 34.416630, 23.185661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522949, 34.573196, 23.384752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594757, 34.181942, 23.342754>,  <37.637840, 33.947189, 23.317556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594757, 34.181942, 23.342754>,  <37.522949, 34.573196, 23.384752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594757, 34.181942, 23.342754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455657, -0.177263, 0.872327,
		-0.871867, -0.108754, -0.477516,
		0.179515, -0.978136, -0.104995,
		37.648613, 33.888500, 23.311256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871616, 34.317459, 23.560644>,  <37.522949, 34.573196, 23.384752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871616, 34.317459, 23.560644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.108620, 34.004059, 23.635538>,  <37.250820, 33.816017, 23.680473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.108620, 34.004059, 23.635538>,  <36.871616, 34.317459, 23.560644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108620, 34.004059, 23.635538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517333, -0.191924, 0.833986,
		-0.617498, -0.591003, -0.519049,
		0.592506, -0.783505, 0.187233,
		37.286373, 33.769009, 23.691708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654751, 34.108768, 24.240576>,  <36.871616, 34.317459, 23.560644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654751, 34.108768, 24.240576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972576, 33.867641, 24.211517>,  <37.163273, 33.722965, 24.194082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.972576, 33.867641, 24.211517>,  <36.654751, 34.108768, 24.240576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972576, 33.867641, 24.211517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219833, -0.397142, 0.891040,
		-0.565986, -0.692018, -0.448074,
		0.794565, -0.602818, -0.072649,
		37.210945, 33.686798, 24.189722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408249, 33.431023, 24.270412>,  <36.654751, 34.108768, 24.240576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408249, 33.431023, 24.270412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792583, 33.429535, 24.381252>,  <37.023182, 33.428642, 24.447756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792583, 33.429535, 24.381252>,  <36.408249, 33.431023, 24.270412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792583, 33.429535, 24.381252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260441, -0.353803, 0.898328,
		0.094700, -0.935313, -0.340914,
		0.960834, -0.003716, 0.277099,
		37.080833, 33.428421, 24.464382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560574, 32.814674, 24.606001>,  <36.408249, 33.431023, 24.270412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560574, 32.814674, 24.606001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856365, 33.053432, 24.730507>,  <37.033840, 33.196686, 24.805210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856365, 33.053432, 24.730507>,  <36.560574, 32.814674, 24.606001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856365, 33.053432, 24.730507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142838, -0.312725, 0.939042,
		0.657849, -0.738864, -0.145995,
		0.739481, 0.596894, 0.311264,
		37.078209, 33.232502, 24.823887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918797, 32.441784, 25.025703>,  <36.560574, 32.814674, 24.606001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918797, 32.441784, 25.025703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080666, 32.801605, 25.091492>,  <37.177788, 33.017498, 25.130964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.080666, 32.801605, 25.091492>,  <36.918797, 32.441784, 25.025703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080666, 32.801605, 25.091492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206855, -0.265237, 0.941733,
		0.890759, -0.347072, -0.293410,
		0.404672, 0.899550, 0.164469,
		37.202068, 33.071472, 25.140833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660248, 32.343609, 25.433073>,  <36.918797, 32.441784, 25.025703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660248, 32.343609, 25.433073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499043, 32.705837, 25.486031>,  <37.402321, 32.923172, 25.517805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499043, 32.705837, 25.486031>,  <37.660248, 32.343609, 25.433073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499043, 32.705837, 25.486031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069518, -0.174537, 0.982193,
		0.912549, 0.386634, 0.133294,
		-0.403015, 0.905566, 0.132396,
		37.378139, 32.977509, 25.525749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088097, 32.711857, 25.885475>,  <37.660248, 32.343609, 25.433073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088097, 32.711857, 25.885475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732918, 32.886414, 25.943581>,  <37.519810, 32.991150, 25.978443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732918, 32.886414, 25.943581>,  <38.088097, 32.711857, 25.885475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732918, 32.886414, 25.943581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114823, -0.095504, 0.988785,
		0.445374, 0.894672, 0.034695,
		-0.887951, 0.436395, 0.145264,
		37.466534, 33.017334, 25.987160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860298, 33.085888, 26.192352>,  <38.088097, 32.711857, 25.885475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860298, 33.085888, 26.192352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090199, 32.763306, 26.247915>,  <39.228138, 32.569756, 26.281252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090199, 32.763306, 26.247915>,  <38.860298, 33.085888, 26.192352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090199, 32.763306, 26.247915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297336, 0.047658, -0.953583,
		0.762401, 0.589372, 0.267179,
		0.574748, -0.806455, 0.138906,
		39.262623, 32.521370, 26.289587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490788, 33.317471, 25.929602>,  <38.860298, 33.085888, 26.192352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490788, 33.317471, 25.929602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.534260, 32.920403, 25.950779>,  <39.560345, 32.682163, 25.963486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.534260, 32.920403, 25.950779>,  <39.490788, 33.317471, 25.929602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534260, 32.920403, 25.950779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505690, 0.009356, -0.862665,
		0.855842, 0.120531, 0.502998,
		0.108684, -0.992665, 0.052944,
		39.566864, 32.622604, 25.966661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202496, 33.187683, 25.938715>,  <39.490788, 33.317471, 25.929602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202496, 33.187683, 25.938715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014133, 32.868401, 25.788458>,  <39.901115, 32.676830, 25.698303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014133, 32.868401, 25.788458>,  <40.202496, 33.187683, 25.938715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014133, 32.868401, 25.788458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529119, 0.085164, -0.844263,
		0.705892, -0.596327, 0.382245,
		-0.470903, -0.798211, -0.375645,
		39.872864, 32.628937, 25.675764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645775, 32.878082, 25.502134>,  <40.202496, 33.187683, 25.938715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645775, 32.878082, 25.502134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310894, 32.679127, 25.411179>,  <40.109966, 32.559753, 25.356606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310894, 32.679127, 25.411179>,  <40.645775, 32.878082, 25.502134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310894, 32.679127, 25.411179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315108, -0.098874, -0.943891,
		0.446996, -0.861876, 0.239507,
		-0.837199, -0.497386, -0.227387,
		40.059734, 32.529911, 25.342962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867783, 32.493561, 24.989744>,  <40.645775, 32.878082, 25.502134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867783, 32.493561, 24.989744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.471523, 32.497471, 24.935308>,  <40.233768, 32.499817, 24.902647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.471523, 32.497471, 24.935308>,  <40.867783, 32.493561, 24.989744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471523, 32.497471, 24.935308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135342, -0.055985, -0.989216,
		-0.017287, -0.998384, 0.054138,
		-0.990648, 0.009773, -0.136091,
		40.174328, 32.500404, 24.894482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795612, 31.984264, 24.471991>,  <40.867783, 32.493561, 24.989744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795612, 31.984264, 24.471991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467445, 32.212948, 24.475281>,  <40.270546, 32.350159, 24.477255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467445, 32.212948, 24.475281>,  <40.795612, 31.984264, 24.471991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467445, 32.212948, 24.475281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100137, -0.129502, -0.986510,
		-0.562929, -0.810173, 0.163494,
		-0.820416, 0.571707, 0.008228,
		40.221321, 32.384460, 24.477749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108543, 31.599829, 24.169828>,  <40.795612, 31.984264, 24.471991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108543, 31.599829, 24.169828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.075909, 31.997213, 24.137878>,  <40.056328, 32.235645, 24.118710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.075909, 31.997213, 24.137878>,  <40.108543, 31.599829, 24.169828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075909, 31.997213, 24.137878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216402, -0.095886, -0.971584,
		-0.972890, -0.061981, 0.222810,
		-0.081584, 0.993461, -0.079873,
		40.051434, 32.295250, 24.113916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793545, 31.613474, 23.422096>,  <40.108543, 31.599829, 24.169828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793545, 31.613474, 23.422096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893166, 31.988630, 23.518703>,  <39.952938, 32.213726, 23.576668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893166, 31.988630, 23.518703>,  <39.793545, 31.613474, 23.422096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893166, 31.988630, 23.518703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057924, 0.234506, -0.970387,
		-0.966756, 0.255669, 0.004078,
		0.249054, 0.937891, 0.241520,
		39.967880, 32.269997, 23.591160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328892, 32.114098, 23.036556>,  <39.793545, 31.613474, 23.422096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328892, 32.114098, 23.036556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661034, 32.302494, 23.155672>,  <39.860321, 32.415531, 23.227142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.661034, 32.302494, 23.155672>,  <39.328892, 32.114098, 23.036556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661034, 32.302494, 23.155672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083095, 0.423775, -0.901948,
		-0.551001, 0.773684, 0.312748,
		0.830357, 0.470987, 0.297789,
		39.910141, 32.443790, 23.245008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205490, 32.847496, 22.910799>,  <39.328892, 32.114098, 23.036556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205490, 32.847496, 22.910799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604233, 32.819572, 22.925770>,  <39.843479, 32.802818, 22.934752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.604233, 32.819572, 22.925770>,  <39.205490, 32.847496, 22.910799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604233, 32.819572, 22.925770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070557, 0.567868, -0.820090,
		0.035997, 0.820154, 0.571009,
		0.996858, -0.069809, 0.037426,
		39.903290, 32.798630, 22.936998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504589, 33.525288, 22.584911>,  <39.205490, 32.847496, 22.910799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504589, 33.525288, 22.584911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.821701, 33.288208, 22.641783>,  <40.011967, 33.145962, 22.675905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.821701, 33.288208, 22.641783>,  <39.504589, 33.525288, 22.584911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821701, 33.288208, 22.641783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428438, 0.375975, -0.821635,
		0.433525, 0.712288, 0.551999,
		0.792778, -0.592696, 0.142176,
		40.059536, 33.110397, 22.684435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167847, 33.935337, 22.643778>,  <39.504589, 33.525288, 22.584911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167847, 33.935337, 22.643778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269939, 33.570518, 22.515379>,  <40.331196, 33.351627, 22.438339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.269939, 33.570518, 22.515379>,  <40.167847, 33.935337, 22.643778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269939, 33.570518, 22.515379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321270, 0.393124, -0.861533,
		0.911945, 0.116763, 0.393348,
		0.255229, -0.912042, -0.320995,
		40.346508, 33.296906, 22.419081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857418, 33.959457, 22.490993>,  <40.167847, 33.935337, 22.643778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857418, 33.959457, 22.490993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744637, 33.630035, 22.294111>,  <40.676968, 33.432384, 22.175982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744637, 33.630035, 22.294111>,  <40.857418, 33.959457, 22.490993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744637, 33.630035, 22.294111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356762, 0.386237, -0.850613,
		0.890631, -0.415432, 0.184912,
		-0.281952, -0.823552, -0.492205,
		40.660049, 33.382969, 22.146450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412674, 33.671825, 22.050955>,  <40.857418, 33.959457, 22.490993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412674, 33.671825, 22.050955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.080421, 33.540257, 21.871243>,  <40.881069, 33.461315, 21.763414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.080421, 33.540257, 21.871243>,  <41.412674, 33.671825, 22.050955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080421, 33.540257, 21.871243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336878, 0.345591, -0.875831,
		0.443351, -0.878849, -0.176252,
		-0.830634, -0.328925, -0.449283,
		40.831230, 33.441578, 21.736458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138119, 33.551777, 22.000242>,  <41.412674, 33.671825, 22.050955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138119, 33.551777, 22.000242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.413090, 33.830849, 22.080933>,  <42.578072, 33.998291, 22.129347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.413090, 33.830849, 22.080933>,  <42.138119, 33.551777, 22.000242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.413090, 33.830849, 22.080933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000313, -0.278047, 0.960567,
		0.726255, -0.660255, -0.191355,
		0.687425, 0.697677, 0.201726,
		42.619316, 34.040154, 22.141451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673283, 33.301086, 22.517050>,  <42.138119, 33.551777, 22.000242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673283, 33.301086, 22.517050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.707977, 33.697296, 22.559649>,  <42.728794, 33.935020, 22.585209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.707977, 33.697296, 22.559649>,  <42.673283, 33.301086, 22.517050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707977, 33.697296, 22.559649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050388, -0.102403, 0.993466,
		0.994956, -0.091535, 0.041029,
		0.086736, 0.990523, 0.106499,
		42.733997, 33.994453, 22.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133911, 33.447243, 23.044497>,  <42.673283, 33.301086, 22.517050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133911, 33.447243, 23.044497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.903515, 33.771774, 23.004532>,  <42.765278, 33.966492, 22.980553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.903515, 33.771774, 23.004532>,  <43.133911, 33.447243, 23.044497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903515, 33.771774, 23.004532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176684, -0.004224, 0.984259,
		0.798136, 0.584574, 0.145782,
		-0.575987, 0.811330, -0.099914,
		42.730721, 34.015175, 22.974558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299179, 33.765076, 23.666025>,  <43.133911, 33.447243, 23.044497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299179, 33.765076, 23.666025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.958965, 33.935547, 23.542755>,  <42.754837, 34.037830, 23.468794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.958965, 33.935547, 23.542755>,  <43.299179, 33.765076, 23.666025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958965, 33.935547, 23.542755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367455, -0.062325, 0.927951,
		0.376261, 0.902492, 0.209609,
		-0.850532, 0.426174, -0.308175,
		42.703804, 34.063400, 23.450302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.223488, 34.291580, 24.127373>,  <43.299179, 33.765076, 23.666025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.223488, 34.291580, 24.127373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.869434, 34.188225, 23.972572>,  <42.657001, 34.126213, 23.879692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.869434, 34.188225, 23.972572>,  <43.223488, 34.291580, 24.127373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869434, 34.188225, 23.972572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414435, 0.059530, 0.908130,
		-0.211610, 0.964206, -0.159776,
		-0.885136, -0.258386, -0.387003,
		42.603893, 34.110710, 23.856472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677433, 34.758770, 24.320547>,  <43.223488, 34.291580, 24.127373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677433, 34.758770, 24.320547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.462887, 34.429573, 24.245722>,  <42.334160, 34.232056, 24.200827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.462887, 34.429573, 24.245722>,  <42.677433, 34.758770, 24.320547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462887, 34.429573, 24.245722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396527, 0.050074, 0.916656,
		-0.745034, 0.565841, -0.353197,
		-0.536368, -0.822992, -0.187065,
		42.301975, 34.182674, 24.189602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926613, 34.900017, 24.621965>,  <42.677433, 34.758770, 24.320547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926613, 34.900017, 24.621965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.949581, 34.506428, 24.554426>,  <41.963364, 34.270275, 24.513903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.949581, 34.506428, 24.554426>,  <41.926613, 34.900017, 24.621965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949581, 34.506428, 24.554426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381821, -0.177915, 0.906950,
		-0.922451, 0.012389, -0.385916,
		0.057424, -0.983968, -0.168849,
		41.966808, 34.211239, 24.503771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255917, 34.627621, 24.627060>,  <41.926613, 34.900017, 24.621965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255917, 34.627621, 24.627060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.483856, 34.307102, 24.699947>,  <41.620621, 34.114792, 24.743679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.483856, 34.307102, 24.699947>,  <41.255917, 34.627621, 24.627060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483856, 34.307102, 24.699947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310462, -0.004621, 0.950574,
		-0.760849, -0.598251, -0.251406,
		0.569844, -0.801295, 0.182218,
		41.654808, 34.066715, 24.754612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844189, 34.211605, 25.048923>,  <41.255917, 34.627621, 24.627060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844189, 34.211605, 25.048923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220367, 34.090401, 25.110563>,  <41.446075, 34.017677, 25.147547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.220367, 34.090401, 25.110563>,  <40.844189, 34.211605, 25.048923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220367, 34.090401, 25.110563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179645, -0.058146, 0.982011,
		-0.288603, -0.951210, -0.109119,
		0.940444, -0.303014, 0.154099,
		41.502502, 33.999496, 25.156794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848022, 33.738937, 25.527452>,  <40.844189, 34.211605, 25.048923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848022, 33.738937, 25.527452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229889, 33.857239, 25.540943>,  <41.459007, 33.928219, 25.549038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.229889, 33.857239, 25.540943>,  <40.848022, 33.738937, 25.527452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229889, 33.857239, 25.540943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017507, -0.057320, 0.998202,
		0.297160, -0.953541, -0.049544,
		0.954667, 0.295759, 0.033727,
		41.516289, 33.945965, 25.551062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222099, 33.282219, 25.983856>,  <40.848022, 33.738937, 25.527452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222099, 33.282219, 25.983856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.433540, 33.619671, 25.946199>,  <41.560406, 33.822144, 25.923605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.433540, 33.619671, 25.946199>,  <41.222099, 33.282219, 25.983856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433540, 33.619671, 25.946199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062250, 0.072078, 0.995455,
		0.846584, -0.532059, -0.014415,
		0.528602, 0.843634, -0.094141,
		41.592121, 33.872761, 25.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691395, 33.255806, 26.498791>,  <41.222099, 33.282219, 25.983856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691395, 33.255806, 26.498791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.758335, 33.640568, 26.412321>,  <41.798500, 33.871426, 26.360439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.758335, 33.640568, 26.412321>,  <41.691395, 33.255806, 26.498791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758335, 33.640568, 26.412321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079666, 0.231743, 0.969509,
		0.982674, -0.145023, 0.115413,
		0.167347, 0.961906, -0.216175,
		41.808540, 33.929138, 26.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254402, 33.511528, 26.843346>,  <41.691395, 33.255806, 26.498791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254402, 33.511528, 26.843346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.054619, 33.850597, 26.771799>,  <41.934750, 34.054039, 26.728870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.054619, 33.850597, 26.771799>,  <42.254402, 33.511528, 26.843346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054619, 33.850597, 26.771799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004021, 0.208728, 0.977965,
		0.866329, 0.487733, -0.107659,
		-0.499458, 0.847672, -0.178866,
		41.904781, 34.104900, 26.718140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537746, 33.969788, 27.344845>,  <42.254402, 33.511528, 26.843346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537746, 33.969788, 27.344845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.183956, 34.132301, 27.253080>,  <41.971680, 34.229809, 27.198021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.183956, 34.132301, 27.253080>,  <42.537746, 33.969788, 27.344845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183956, 34.132301, 27.253080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162521, 0.192627, 0.967720,
		0.437361, 0.893212, -0.104345,
		-0.884479, 0.406285, -0.229413,
		41.918613, 34.254189, 27.184258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.934677, 37.105827, 23.001152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.579662, 37.112717, 22.816986>,  <43.366653, 37.116848, 22.706486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.579662, 37.112717, 22.816986>,  <43.934677, 37.105827, 23.001152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579662, 37.112717, 22.816986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460465, 0.067522, -0.885106,
		0.015846, -0.997569, -0.067858,
		-0.887536, 0.017221, -0.460416,
		43.313400, 37.117882, 22.678862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096649, 36.659939, 22.438049>,  <43.934677, 37.105827, 23.001152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096649, 36.659939, 22.438049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.753098, 36.847237, 22.355022>,  <43.546967, 36.959614, 22.305206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.753098, 36.847237, 22.355022>,  <44.096649, 36.659939, 22.438049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753098, 36.847237, 22.355022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257746, 0.044917, -0.965168,
		-0.442608, -0.882458, -0.159265,
		-0.858874, 0.468241, -0.207569,
		43.495434, 36.987709, 22.292751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929138, 36.324673, 21.821901>,  <44.096649, 36.659939, 22.438049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929138, 36.324673, 21.821901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.765263, 36.689480, 21.829771>,  <43.666939, 36.908363, 21.834494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.765263, 36.689480, 21.829771>,  <43.929138, 36.324673, 21.821901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765263, 36.689480, 21.829771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085129, 0.059697, -0.994580,
		-0.908245, -0.405792, -0.102096,
		-0.409688, 0.912014, 0.019675,
		43.642357, 36.963085, 21.835674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525696, 36.310349, 21.139006>,  <43.929138, 36.324673, 21.821901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525696, 36.310349, 21.139006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.563675, 36.688046, 21.265116>,  <43.586464, 36.914661, 21.340782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.563675, 36.688046, 21.265116>,  <43.525696, 36.310349, 21.139006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563675, 36.688046, 21.265116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202268, 0.291799, -0.934848,
		-0.974716, 0.152535, -0.163283,
		0.094951, 0.944239, 0.315274,
		43.592159, 36.971317, 21.359697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230915, 36.796661, 20.660378>,  <43.525696, 36.310349, 21.139006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230915, 36.796661, 20.660378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462410, 37.053337, 20.861694>,  <43.601307, 37.207344, 20.982485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.462410, 37.053337, 20.861694>,  <43.230915, 36.796661, 20.660378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462410, 37.053337, 20.861694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324104, 0.385338, -0.863986,
		-0.748347, 0.663137, 0.015034,
		0.578734, 0.641689, 0.503292,
		43.636028, 37.245842, 21.012682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159725, 37.435631, 20.271183>,  <43.230915, 36.796661, 20.660378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159725, 37.435631, 20.271183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.492359, 37.506649, 20.481684>,  <43.691940, 37.549259, 20.607985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.492359, 37.506649, 20.481684>,  <43.159725, 37.435631, 20.271183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492359, 37.506649, 20.481684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441157, 0.364474, -0.820085,
		-0.337408, 0.914131, 0.224766,
		0.831587, 0.177546, 0.526252,
		43.741837, 37.559914, 20.639559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296101, 38.103523, 20.130713>,  <43.159725, 37.435631, 20.271183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296101, 38.103523, 20.130713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631443, 37.917702, 20.244797>,  <43.832649, 37.806210, 20.313248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.631443, 37.917702, 20.244797>,  <43.296101, 38.103523, 20.130713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.631443, 37.917702, 20.244797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451010, 0.297232, -0.841572,
		0.306184, 0.834171, 0.458706,
		0.838357, -0.464556, 0.285211,
		43.882950, 37.778336, 20.330360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917702, 38.505402, 20.149794>,  <43.296101, 38.103523, 20.130713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917702, 38.505402, 20.149794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.028347, 38.127056, 20.081873>,  <44.094734, 37.900051, 20.041121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.028347, 38.127056, 20.081873>,  <43.917702, 38.505402, 20.149794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028347, 38.127056, 20.081873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328349, 0.259087, -0.908328,
		0.903145, 0.195503, 0.382240,
		0.276614, -0.945861, -0.169800,
		44.111332, 37.843296, 20.030933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.329021, 38.609924, 19.604847>,  <43.917702, 38.505402, 20.149794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.329021, 38.609924, 19.604847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.336937, 38.210056, 19.611397>,  <44.341686, 37.970135, 19.615326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.336937, 38.210056, 19.611397>,  <44.329021, 38.609924, 19.604847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336937, 38.210056, 19.611397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205938, -0.011949, -0.978492,
		0.978365, 0.022736, 0.205633,
		0.019790, -0.999670, 0.016373,
		44.342873, 37.910156, 19.616308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001438, 38.391411, 19.395695>,  <44.329021, 38.609924, 19.604847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001438, 38.391411, 19.395695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.766853, 38.073742, 19.332014>,  <44.626102, 37.883141, 19.293806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.766853, 38.073742, 19.332014>,  <45.001438, 38.391411, 19.395695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766853, 38.073742, 19.332014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326786, -0.052153, -0.943658,
		0.741126, -0.605448, 0.290111,
		-0.586466, -0.794174, -0.159200,
		44.590912, 37.835491, 19.284254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365288, 37.815903, 18.875326>,  <45.001438, 38.391411, 19.395695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365288, 37.815903, 18.875326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.974209, 37.733997, 18.856659>,  <44.739563, 37.684853, 18.845459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.974209, 37.733997, 18.856659>,  <45.365288, 37.815903, 18.875326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974209, 37.733997, 18.856659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067608, -0.096475, -0.993037,
		0.198840, -0.974044, 0.108167,
		-0.977697, -0.204768, -0.046670,
		44.680901, 37.672565, 18.842657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.223072, 37.241188, 18.414883>,  <45.365288, 37.815903, 18.875326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.223072, 37.241188, 18.414883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.889240, 37.461540, 18.413553>,  <44.688942, 37.593754, 18.412756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.889240, 37.461540, 18.413553>,  <45.223072, 37.241188, 18.414883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889240, 37.461540, 18.413553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065055, -0.104548, -0.992390,
		-0.547040, -0.828008, 0.123091,
		-0.834575, 0.550884, -0.003325,
		44.638866, 37.626804, 18.412556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670872, 36.822281, 17.995220>,  <45.223072, 37.241188, 18.414883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670872, 36.822281, 17.995220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.700642, 37.220901, 18.009884>,  <44.718502, 37.460075, 18.018682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.700642, 37.220901, 18.009884>,  <44.670872, 36.822281, 17.995220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700642, 37.220901, 18.009884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161541, 0.024227, -0.986569,
		-0.984056, 0.079343, -0.159181,
		0.074420, 0.996553, 0.036658,
		44.722969, 37.519867, 18.020882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987106, 36.201611, 17.732910>,  <44.670872, 36.822281, 17.995220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987106, 36.201611, 17.732910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.228352, 35.896065, 17.641027>,  <45.373100, 35.712738, 17.585897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.228352, 35.896065, 17.641027>,  <44.987106, 36.201611, 17.732910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228352, 35.896065, 17.641027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205320, -0.426938, 0.880663,
		-0.770778, -0.483977, -0.414328,
		0.603113, -0.763866, -0.229704,
		45.409286, 35.666904, 17.572117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891708, 35.843639, 17.154104>,  <44.987106, 36.201611, 17.732910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891708, 35.843639, 17.154104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.839901, 35.450001, 17.202747>,  <44.808819, 35.213818, 17.231934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.839901, 35.450001, 17.202747>,  <44.891708, 35.843639, 17.154104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839901, 35.450001, 17.202747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363590, 0.161228, 0.917501,
		-0.922512, 0.074614, -0.378688,
		-0.129514, -0.984093, 0.121606,
		44.801048, 35.154774, 17.239229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208122, 35.698345, 17.214846>,  <44.891708, 35.843639, 17.154104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208122, 35.698345, 17.214846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411602, 35.405739, 17.396444>,  <44.533688, 35.230175, 17.505404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411602, 35.405739, 17.396444>,  <44.208122, 35.698345, 17.214846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411602, 35.405739, 17.396444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527804, 0.151634, 0.835721,
		-0.680185, -0.664748, -0.308962,
		0.508695, -0.731517, 0.453996,
		44.564209, 35.186283, 17.532642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757645, 35.290386, 17.535501>,  <44.208122, 35.698345, 17.214846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757645, 35.290386, 17.535501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091995, 35.169025, 17.718479>,  <44.292606, 35.096210, 17.828266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.091995, 35.169025, 17.718479>,  <43.757645, 35.290386, 17.535501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091995, 35.169025, 17.718479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537624, -0.284358, 0.793789,
		-0.110754, -0.909446, -0.400802,
		0.835879, -0.303396, 0.457446,
		44.342758, 35.078007, 17.855713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590687, 34.623734, 17.860910>,  <43.757645, 35.290386, 17.535501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590687, 34.623734, 17.860910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.902412, 34.790230, 18.048273>,  <44.089447, 34.890129, 18.160690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.902412, 34.790230, 18.048273>,  <43.590687, 34.623734, 17.860910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902412, 34.790230, 18.048273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395329, -0.253386, 0.882899,
		0.486189, -0.873234, -0.032915,
		0.779317, 0.416244, 0.468408,
		44.136208, 34.915104, 18.188795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756561, 34.131195, 18.351885>,  <43.590687, 34.623734, 17.860910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756561, 34.131195, 18.351885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.914803, 34.472374, 18.488102>,  <44.009747, 34.677082, 18.569832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.914803, 34.472374, 18.488102>,  <43.756561, 34.131195, 18.351885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914803, 34.472374, 18.488102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411425, -0.166921, 0.896029,
		0.821112, -0.494584, 0.284890,
		0.395607, 0.852950, 0.340545,
		44.033485, 34.728260, 18.590265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987247, 33.968353, 18.997278>,  <43.756561, 34.131195, 18.351885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987247, 33.968353, 18.997278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.957256, 34.367218, 18.994659>,  <43.939262, 34.606537, 18.993088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.957256, 34.367218, 18.994659>,  <43.987247, 33.968353, 18.997278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957256, 34.367218, 18.994659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421000, -0.025705, 0.906696,
		0.903956, 0.070743, 0.421733,
		-0.074983, 0.997164, -0.006546,
		43.934761, 34.666367, 18.992695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178883, 34.015301, 19.600349>,  <43.987247, 33.968353, 18.997278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178883, 34.015301, 19.600349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.002266, 34.361691, 19.506430>,  <43.896297, 34.569523, 19.450077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.002266, 34.361691, 19.506430>,  <44.178883, 34.015301, 19.600349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002266, 34.361691, 19.506430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423028, 0.029859, 0.905624,
		0.791259, 0.499195, 0.353148,
		-0.441538, 0.865975, -0.234800,
		43.869804, 34.621483, 19.435989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433617, 34.477497, 20.171776>,  <44.178883, 34.015301, 19.600349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433617, 34.477497, 20.171776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.108494, 34.644062, 20.008829>,  <43.913422, 34.743999, 19.911060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.108494, 34.644062, 20.008829>,  <44.433617, 34.477497, 20.171776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108494, 34.644062, 20.008829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450119, -0.005038, 0.892955,
		0.369785, 0.909162, 0.191530,
		-0.812805, 0.416412, -0.407368,
		43.864651, 34.768986, 19.886620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257378, 34.968472, 20.659550>,  <44.433617, 34.477497, 20.171776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257378, 34.968472, 20.659550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.924709, 34.907043, 20.446104>,  <43.725109, 34.870186, 20.318037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.924709, 34.907043, 20.446104>,  <44.257378, 34.968472, 20.659550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924709, 34.907043, 20.446104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516630, -0.138212, 0.844979,
		-0.203519, 0.978423, 0.035606,
		-0.831669, -0.153574, -0.533612,
		43.675209, 34.860970, 20.286020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820110, 35.328438, 20.939861>,  <44.257378, 34.968472, 20.659550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820110, 35.328438, 20.939861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.584568, 35.077744, 20.735722>,  <43.443245, 34.927326, 20.613237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.584568, 35.077744, 20.735722>,  <43.820110, 35.328438, 20.939861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584568, 35.077744, 20.735722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656324, 0.002282, 0.754476,
		-0.471691, 0.779229, -0.412685,
		-0.588851, -0.626735, -0.510350,
		43.407913, 34.889725, 20.582617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181705, 35.580784, 20.853031>,  <43.820110, 35.328438, 20.939861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181705, 35.580784, 20.853031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.141815, 35.183437, 20.830162>,  <43.117882, 34.945030, 20.816441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.141815, 35.183437, 20.830162>,  <43.181705, 35.580784, 20.853031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141815, 35.183437, 20.830162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531444, 0.004600, 0.847081,
		-0.841202, 0.114862, -0.528380,
		-0.099728, -0.993371, -0.057173,
		43.111897, 34.885426, 20.813009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503471, 35.446995, 21.167952>,  <43.181705, 35.580784, 20.853031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503471, 35.446995, 21.167952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.672947, 35.086163, 21.135132>,  <42.774632, 34.869663, 21.115440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.672947, 35.086163, 21.135132>,  <42.503471, 35.446995, 21.167952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.672947, 35.086163, 21.135132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393986, -0.265094, 0.880057,
		-0.815634, -0.340547, -0.467727,
		0.423692, -0.902083, -0.082049,
		42.800056, 34.815536, 21.110518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064896, 35.028732, 21.460981>,  <42.503471, 35.446995, 21.167952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064896, 35.028732, 21.460981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.411850, 34.831055, 21.484341>,  <42.620022, 34.712448, 21.498356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.411850, 34.831055, 21.484341>,  <42.064896, 35.028732, 21.460981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411850, 34.831055, 21.484341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264945, -0.359277, 0.894832,
		-0.421245, -0.791636, -0.442567,
		0.867385, -0.494200, 0.058396,
		42.672066, 34.682796, 21.501860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028301, 34.188377, 21.372030>,  <42.064896, 35.028732, 21.460981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028301, 34.188377, 21.372030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.333439, 34.317924, 21.595882>,  <42.516521, 34.395653, 21.730194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.333439, 34.317924, 21.595882>,  <42.028301, 34.188377, 21.372030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333439, 34.317924, 21.595882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318818, -0.564585, 0.761314,
		0.562522, -0.759181, -0.327433,
		0.762839, 0.323864, 0.559632,
		42.562290, 34.415085, 21.763773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676270, 33.527649, 21.326963>,  <42.028301, 34.188377, 21.372030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676270, 33.527649, 21.326963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.281048, 33.511280, 21.267527>,  <41.043915, 33.501461, 21.231865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.281048, 33.511280, 21.267527>,  <41.676270, 33.527649, 21.326963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281048, 33.511280, 21.267527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141732, 0.137512, -0.980308,
		0.060543, -0.989655, -0.130070,
		-0.988052, -0.040916, -0.148591,
		40.984631, 33.499004, 21.222950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601513, 33.069351, 20.792376>,  <41.676270, 33.527649, 21.326963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601513, 33.069351, 20.792376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.255192, 33.269482, 20.789427>,  <41.047398, 33.389561, 20.787659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.255192, 33.269482, 20.789427>,  <41.601513, 33.069351, 20.792376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255192, 33.269482, 20.789427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082185, 0.127658, -0.988407,
		-0.493588, -0.856373, -0.151646,
		-0.865804, 0.500329, -0.007371,
		40.995449, 33.419579, 20.787216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296097, 32.929070, 20.231289>,  <41.601513, 33.069351, 20.792376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296097, 32.929070, 20.231289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.080055, 33.259335, 20.296484>,  <40.950432, 33.457493, 20.335600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.080055, 33.259335, 20.296484>,  <41.296097, 32.929070, 20.231289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080055, 33.259335, 20.296484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185390, 0.072182, -0.980010,
		-0.820926, -0.559521, 0.114085,
		-0.540102, 0.825667, 0.162986,
		40.918026, 33.507034, 20.345379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622250, 32.830990, 19.877131>,  <41.296097, 32.929070, 20.231289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622250, 32.830990, 19.877131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730476, 33.215397, 19.899876>,  <40.795410, 33.446041, 19.913523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.730476, 33.215397, 19.899876>,  <40.622250, 32.830990, 19.877131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730476, 33.215397, 19.899876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042430, 0.047104, -0.997988,
		-0.961766, 0.272433, -0.028032,
		0.270564, 0.961021, 0.056863,
		40.811646, 33.503704, 19.916935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170525, 33.102966, 19.393389>,  <40.622250, 32.830990, 19.877131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170525, 33.102966, 19.393389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.462189, 33.366547, 19.467270>,  <40.637188, 33.524696, 19.511599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.462189, 33.366547, 19.467270>,  <40.170525, 33.102966, 19.393389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462189, 33.366547, 19.467270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014010, 0.255467, -0.966716,
		-0.684204, 0.707475, 0.177043,
		0.729156, 0.658951, 0.184703,
		40.680935, 33.564232, 19.522680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037792, 33.771286, 19.000664>,  <40.170525, 33.102966, 19.393389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037792, 33.771286, 19.000664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.429264, 33.759792, 19.082005>,  <40.664146, 33.752895, 19.130810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.429264, 33.759792, 19.082005>,  <40.037792, 33.771286, 19.000664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429264, 33.759792, 19.082005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204583, 0.223159, -0.953072,
		-0.017992, 0.974358, 0.224281,
		0.978684, -0.028736, 0.203353,
		40.722870, 33.751171, 19.143011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285900, 34.322243, 18.640432>,  <40.037792, 33.771286, 19.000664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285900, 34.322243, 18.640432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577839, 34.056606, 18.705317>,  <40.753002, 33.897224, 18.744247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.577839, 34.056606, 18.705317>,  <40.285900, 34.322243, 18.640432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577839, 34.056606, 18.705317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196723, -0.023218, -0.980184,
		0.654696, 0.747292, 0.113696,
		0.729844, -0.664090, 0.162210,
		40.796791, 33.857380, 18.753979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961765, 34.905563, 18.941143>,  <40.285900, 34.322243, 18.640432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961765, 34.905563, 18.941143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.580589, 34.970215, 18.838552>,  <39.351883, 35.009007, 18.776999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.580589, 34.970215, 18.838552>,  <39.961765, 34.905563, 18.941143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580589, 34.970215, 18.838552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303108, -0.523218, 0.796472,
		-0.005463, 0.836731, 0.547586,
		-0.952940, 0.161627, -0.256479,
		39.294708, 35.018703, 18.761608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686054, 35.152649, 19.524546>,  <39.961765, 34.905563, 18.941143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686054, 35.152649, 19.524546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375507, 34.997635, 19.325724>,  <39.189178, 34.904625, 19.206430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.375507, 34.997635, 19.325724>,  <39.686054, 35.152649, 19.524546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375507, 34.997635, 19.325724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349086, -0.392228, 0.851056,
		-0.524774, 0.834250, 0.169231,
		-0.776371, -0.387536, -0.497056,
		39.142597, 34.881374, 19.176607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143166, 35.316723, 19.887430>,  <39.686054, 35.152649, 19.524546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143166, 35.316723, 19.887430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027779, 34.991165, 19.685694>,  <38.958546, 34.795830, 19.564651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.027779, 34.991165, 19.685694>,  <39.143166, 35.316723, 19.887430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027779, 34.991165, 19.685694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509979, -0.315204, 0.800355,
		-0.810377, 0.488078, -0.324145,
		-0.288464, -0.813896, -0.504343,
		38.941238, 34.746998, 19.534391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544888, 35.289383, 20.066715>,  <39.143166, 35.316723, 19.887430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544888, 35.289383, 20.066715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571953, 34.931137, 19.890852>,  <38.588192, 34.716190, 19.785334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.571953, 34.931137, 19.890852>,  <38.544888, 35.289383, 20.066715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571953, 34.931137, 19.890852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629251, -0.380280, 0.677813,
		-0.774251, 0.230789, -0.589297,
		0.067666, -0.895614, -0.439656,
		38.592255, 34.662453, 19.758955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940376, 35.056538, 19.967670>,  <38.544888, 35.289383, 20.066715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940376, 35.056538, 19.967670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158142, 34.721050, 19.962530>,  <38.288803, 34.519756, 19.959446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.158142, 34.721050, 19.962530>,  <37.940376, 35.056538, 19.967670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158142, 34.721050, 19.962530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488549, -0.329497, 0.807931,
		-0.681861, -0.433570, -0.589137,
		0.544413, -0.838719, -0.012851,
		38.321465, 34.469433, 19.958675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432594, 34.498032, 20.106470>,  <37.940376, 35.056538, 19.967670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432594, 34.498032, 20.106470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783051, 34.327202, 20.195904>,  <37.993324, 34.224705, 20.249563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.783051, 34.327202, 20.195904>,  <37.432594, 34.498032, 20.106470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783051, 34.327202, 20.195904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407128, -0.407186, 0.817586,
		-0.258131, -0.807345, -0.530625,
		0.876137, -0.427076, 0.223585,
		38.045891, 34.199078, 20.262980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282070, 33.808514, 20.340704>,  <37.432594, 34.498032, 20.106470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282070, 33.808514, 20.340704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644211, 33.896717, 20.485878>,  <37.861496, 33.949638, 20.572983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.644211, 33.896717, 20.485878>,  <37.282070, 33.808514, 20.340704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644211, 33.896717, 20.485878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278193, -0.337774, 0.899176,
		0.320864, -0.915033, -0.244460,
		0.905348, 0.220506, 0.362935,
		37.915813, 33.962868, 20.594759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.541576, 39.312027, 17.382116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.894699, 39.173256, 17.508793>,  <42.106571, 39.089993, 17.584799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.894699, 39.173256, 17.508793>,  <41.541576, 39.312027, 17.382116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894699, 39.173256, 17.508793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373112, -0.108304, 0.921443,
		-0.285378, -0.931617, -0.225055,
		0.882807, -0.346930, 0.316690,
		42.159542, 39.069176, 17.603800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394054, 38.647800, 17.746006>,  <41.541576, 39.312027, 17.382116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394054, 38.647800, 17.746006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.746109, 38.787434, 17.874699>,  <41.957340, 38.871212, 17.951914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.746109, 38.787434, 17.874699>,  <41.394054, 38.647800, 17.746006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746109, 38.787434, 17.874699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235871, -0.266594, 0.934501,
		0.411986, -0.898372, -0.152300,
		0.880132, 0.349079, 0.321733,
		42.010147, 38.892159, 17.971218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512814, 38.100067, 18.229132>,  <41.394054, 38.647800, 17.746006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512814, 38.100067, 18.229132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.755840, 38.407536, 18.309132>,  <41.901657, 38.592018, 18.357132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.755840, 38.407536, 18.309132>,  <41.512814, 38.100067, 18.229132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755840, 38.407536, 18.309132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133283, -0.149563, 0.979728,
		0.783005, -0.621908, 0.011581,
		0.607568, 0.768675, 0.199998,
		41.938110, 38.638138, 18.369131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831776, 37.872086, 18.694649>,  <41.512814, 38.100067, 18.229132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831776, 37.872086, 18.694649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.866482, 38.267040, 18.747633>,  <41.887306, 38.504013, 18.779425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.866482, 38.267040, 18.747633>,  <41.831776, 37.872086, 18.694649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866482, 38.267040, 18.747633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173905, -0.115909, 0.977917,
		0.980932, -0.107889, 0.161654,
		0.086769, 0.987383, 0.132462,
		41.892513, 38.563255, 18.787371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183537, 37.913250, 19.335630>,  <41.831776, 37.872086, 18.694649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183537, 37.913250, 19.335630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.029499, 38.280468, 19.297901>,  <41.937077, 38.500797, 19.275265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.029499, 38.280468, 19.297901>,  <42.183537, 37.913250, 19.335630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029499, 38.280468, 19.297901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224556, 0.005922, 0.974443,
		0.895141, 0.396432, 0.203872,
		-0.385093, 0.918045, -0.094322,
		41.913971, 38.555882, 19.269604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562389, 38.362312, 19.846479>,  <42.183537, 37.913250, 19.335630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562389, 38.362312, 19.846479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.213776, 38.546188, 19.778219>,  <42.004608, 38.656513, 19.737263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.213776, 38.546188, 19.778219>,  <42.562389, 38.362312, 19.846479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213776, 38.546188, 19.778219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217499, -0.050507, 0.974753,
		0.439461, 0.886644, 0.144000,
		-0.871532, 0.459685, -0.170649,
		41.952316, 38.684093, 19.727024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327660, 38.571877, 20.536505>,  <42.562389, 38.362312, 19.846479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327660, 38.571877, 20.536505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.000126, 38.649677, 20.320475>,  <41.803604, 38.696358, 20.190857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.000126, 38.649677, 20.320475>,  <42.327660, 38.571877, 20.536505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000126, 38.649677, 20.320475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567297, -0.130498, 0.813108,
		0.087671, 0.972183, 0.217196,
		-0.818833, 0.194501, -0.540075,
		41.754475, 38.708027, 20.158451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901604, 39.176094, 20.816013>,  <42.327660, 38.571877, 20.536505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901604, 39.176094, 20.816013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.645695, 38.951847, 20.605719>,  <41.492149, 38.817299, 20.479542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.645695, 38.951847, 20.605719>,  <41.901604, 39.176094, 20.816013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.645695, 38.951847, 20.605719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619994, -0.027792, 0.784114,
		-0.454199, 0.827609, -0.329798,
		-0.639774, -0.560617, -0.525736,
		41.453762, 38.783661, 20.447998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278721, 39.452919, 20.885080>,  <41.901604, 39.176094, 20.816013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278721, 39.452919, 20.885080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.164356, 39.084583, 20.779024>,  <41.095737, 38.863583, 20.715391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.164356, 39.084583, 20.779024>,  <41.278721, 39.452919, 20.885080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164356, 39.084583, 20.779024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553558, -0.067135, 0.830100,
		-0.782192, 0.384109, -0.490546,
		-0.285916, -0.920844, -0.265139,
		41.078583, 38.808331, 20.699482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546864, 39.465286, 20.927786>,  <41.278721, 39.452919, 20.885080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546864, 39.465286, 20.927786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654766, 39.080555, 20.946196>,  <40.719509, 38.849716, 20.957241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.654766, 39.080555, 20.946196>,  <40.546864, 39.465286, 20.927786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654766, 39.080555, 20.946196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626107, -0.138888, 0.767268,
		-0.731587, -0.235794, -0.639673,
		0.269760, -0.961827, 0.046024,
		40.735695, 38.792007, 20.960003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897125, 39.031826, 21.046812>,  <40.546864, 39.465286, 20.927786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897125, 39.031826, 21.046812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198368, 38.780941, 21.126244>,  <40.379112, 38.630409, 21.173903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.198368, 38.780941, 21.126244>,  <39.897125, 39.031826, 21.046812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198368, 38.780941, 21.126244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470448, -0.302412, 0.828991,
		-0.459906, -0.717736, -0.522821,
		0.753104, -0.627218, 0.198576,
		40.424301, 38.592777, 21.185816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581535, 38.394352, 21.254745>,  <39.897125, 39.031826, 21.046812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581535, 38.394352, 21.254745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946430, 38.400631, 21.418489>,  <40.165367, 38.404400, 21.516735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946430, 38.400631, 21.418489>,  <39.581535, 38.394352, 21.254745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946430, 38.400631, 21.418489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401410, -0.165289, 0.900861,
		0.081805, -0.986120, -0.144481,
		0.912238, 0.015699, 0.409360,
		40.220100, 38.405338, 21.541298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198418, 37.816841, 20.913504>,  <39.581535, 38.394352, 21.254745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198418, 37.816841, 20.913504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.827946, 37.900101, 20.787731>,  <38.605663, 37.950058, 20.712267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.827946, 37.900101, 20.787731>,  <39.198418, 37.816841, 20.913504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827946, 37.900101, 20.787731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368156, 0.318733, -0.873425,
		-0.081584, -0.924707, -0.371836,
		-0.926178, 0.208151, -0.314433,
		38.550091, 37.962547, 20.693401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065224, 37.450081, 20.260738>,  <39.198418, 37.816841, 20.913504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065224, 37.450081, 20.260738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.791809, 37.741425, 20.241673>,  <38.627762, 37.916229, 20.230234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.791809, 37.741425, 20.241673>,  <39.065224, 37.450081, 20.260738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791809, 37.741425, 20.241673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284941, 0.206149, -0.936115,
		-0.672000, -0.653451, -0.348449,
		-0.683538, 0.728357, -0.047663,
		38.586746, 37.959930, 20.227373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762890, 37.382145, 19.581696>,  <39.065224, 37.450081, 20.260738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762890, 37.382145, 19.581696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686356, 37.754562, 19.705990>,  <38.640434, 37.978012, 19.780567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.686356, 37.754562, 19.705990>,  <38.762890, 37.382145, 19.581696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686356, 37.754562, 19.705990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119496, 0.336325, -0.934134,
		-0.974224, -0.141601, -0.175606,
		-0.191335, 0.931040, 0.310735,
		38.628956, 38.033875, 19.799210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520847, 37.620380, 19.015675>,  <38.762890, 37.382145, 19.581696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520847, 37.620380, 19.015675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.594131, 37.943726, 19.239456>,  <38.638103, 38.137733, 19.373726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.594131, 37.943726, 19.239456>,  <38.520847, 37.620380, 19.015675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594131, 37.943726, 19.239456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303838, 0.494663, -0.814242,
		-0.934942, 0.319163, -0.154982,
		0.183212, 0.808358, 0.559455,
		38.649094, 38.186234, 19.407293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036716, 38.203346, 18.821228>,  <38.520847, 37.620380, 19.015675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036716, 38.203346, 18.821228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373203, 38.331799, 18.995234>,  <38.575096, 38.408871, 19.099636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373203, 38.331799, 18.995234>,  <38.036716, 38.203346, 18.821228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373203, 38.331799, 18.995234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157140, 0.624606, -0.764966,
		-0.517366, 0.711858, 0.474964,
		0.841213, 0.321132, 0.435012,
		38.625568, 38.428139, 19.125736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906242, 38.798752, 18.594608>,  <38.036716, 38.203346, 18.821228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906242, 38.798752, 18.594608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.287590, 38.741814, 18.701065>,  <38.516399, 38.707653, 18.764938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.287590, 38.741814, 18.701065>,  <37.906242, 38.798752, 18.594608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287590, 38.741814, 18.701065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301484, 0.490470, -0.817647,
		-0.014149, 0.859754, 0.510512,
		0.953366, -0.142342, 0.266141,
		38.573601, 38.699112, 18.780907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271160, 39.446228, 18.375690>,  <37.906242, 38.798752, 18.594608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271160, 39.446228, 18.375690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559307, 39.182961, 18.463221>,  <38.732197, 39.025002, 18.515739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559307, 39.182961, 18.463221>,  <38.271160, 39.446228, 18.375690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559307, 39.182961, 18.463221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486969, 0.255276, -0.835282,
		0.493895, 0.708272, 0.504399,
		0.720368, -0.658168, 0.218827,
		38.775417, 38.985512, 18.528868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966793, 39.751595, 18.273539>,  <38.271160, 39.446228, 18.375690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966793, 39.751595, 18.273539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.995354, 39.353294, 18.250296>,  <39.012489, 39.114315, 18.236349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.995354, 39.353294, 18.250296>,  <38.966793, 39.751595, 18.273539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995354, 39.353294, 18.250296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425459, 0.083096, -0.901154,
		0.902156, 0.039619, 0.429586,
		0.071399, -0.995754, -0.058109,
		39.016773, 39.054569, 18.232862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676243, 39.660660, 18.050459>,  <38.966793, 39.751595, 18.273539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676243, 39.660660, 18.050459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.491806, 39.313152, 17.978197>,  <39.381145, 39.104649, 17.934839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.491806, 39.313152, 17.978197>,  <39.676243, 39.660660, 18.050459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491806, 39.313152, 17.978197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556400, -0.124470, -0.821539,
		0.691242, -0.479320, 0.540775,
		-0.461090, -0.868769, -0.180655,
		39.353477, 39.052521, 17.924000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239429, 39.221291, 17.885506>,  <39.676243, 39.660660, 18.050459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239429, 39.221291, 17.885506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902775, 39.064278, 17.737143>,  <39.700783, 38.970070, 17.648125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.902775, 39.064278, 17.737143>,  <40.239429, 39.221291, 17.885506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902775, 39.064278, 17.737143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442499, -0.107513, -0.890301,
		0.309597, -0.913431, 0.264183,
		-0.841632, -0.392535, -0.370907,
		39.650284, 38.946518, 17.625870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408138, 38.671944, 17.539032>,  <40.239429, 39.221291, 17.885506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408138, 38.671944, 17.539032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054745, 38.751629, 17.369438>,  <39.842709, 38.799438, 17.267681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.054745, 38.751629, 17.369438>,  <40.408138, 38.671944, 17.539032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054745, 38.751629, 17.369438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403599, -0.135785, -0.904804,
		-0.237821, -0.970503, 0.039561,
		-0.883487, 0.199214, -0.423987,
		39.789700, 38.811394, 17.242243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328133, 38.120277, 16.912968>,  <40.408138, 38.671944, 17.539032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328133, 38.120277, 16.912968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.076046, 38.424191, 16.849018>,  <39.924793, 38.606537, 16.810648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.076046, 38.424191, 16.849018>,  <40.328133, 38.120277, 16.912968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076046, 38.424191, 16.849018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252222, 0.005593, -0.967653,
		-0.734313, -0.650152, -0.195159,
		-0.630213, 0.759784, -0.159876,
		39.886982, 38.652126, 16.801056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967823, 38.005280, 16.324717>,  <40.328133, 38.120277, 16.912968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967823, 38.005280, 16.324717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.986946, 38.400051, 16.386271>,  <39.998421, 38.636913, 16.423203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.986946, 38.400051, 16.386271>,  <39.967823, 38.005280, 16.324717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986946, 38.400051, 16.386271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416107, 0.120374, -0.901313,
		-0.908058, 0.107126, -0.404914,
		0.047812, 0.986932, 0.153883,
		40.001289, 38.696129, 16.432436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193790, 37.865055, 16.435307>,  <39.967823, 38.005280, 16.324717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193790, 37.865055, 16.435307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211521, 37.497002, 16.279675>,  <39.222160, 37.276169, 16.186295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211521, 37.497002, 16.279675>,  <39.193790, 37.865055, 16.435307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211521, 37.497002, 16.279675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069888, -0.385655, 0.919992,
		-0.996570, -0.067971, 0.047212,
		0.044325, -0.920136, -0.389082,
		39.224819, 37.220963, 16.162951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671787, 37.456810, 16.828259>,  <39.193790, 37.865055, 16.435307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671787, 37.456810, 16.828259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.939514, 37.215626, 16.654613>,  <39.100151, 37.070915, 16.550426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.939514, 37.215626, 16.654613>,  <38.671787, 37.456810, 16.828259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939514, 37.215626, 16.654613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013427, -0.574378, 0.818480,
		-0.742854, -0.553653, -0.376346,
		0.669319, -0.602958, -0.434113,
		39.140308, 37.034737, 16.524380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325726, 36.834213, 16.884533>,  <38.671787, 37.456810, 16.828259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325726, 36.834213, 16.884533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707100, 36.730579, 16.822781>,  <38.935925, 36.668400, 16.785730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707100, 36.730579, 16.822781>,  <38.325726, 36.834213, 16.884533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707100, 36.730579, 16.822781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093153, -0.739827, 0.666318,
		-0.286848, -0.620910, -0.729512,
		0.953436, -0.259088, -0.154378,
		38.993130, 36.652851, 16.776466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282650, 36.133438, 16.903219>,  <38.325726, 36.834213, 16.884533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282650, 36.133438, 16.903219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668121, 36.224407, 16.959213>,  <38.899406, 36.278988, 16.992809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.668121, 36.224407, 16.959213>,  <38.282650, 36.133438, 16.903219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668121, 36.224407, 16.959213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039427, -0.639606, 0.767691,
		0.264123, -0.734292, -0.625343,
		0.963683, 0.227421, 0.139983,
		38.957226, 36.292633, 17.001207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508717, 35.540653, 17.093853>,  <38.282650, 36.133438, 16.903219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508717, 35.540653, 17.093853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.813782, 35.773323, 17.206995>,  <38.996819, 35.912926, 17.274881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.813782, 35.773323, 17.206995>,  <38.508717, 35.540653, 17.093853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813782, 35.773323, 17.206995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234032, -0.655853, 0.717695,
		0.602977, -0.481159, -0.636322,
		0.762659, 0.581673, 0.282857,
		39.042580, 35.947826, 17.291853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086323, 35.047852, 17.140659>,  <38.508717, 35.540653, 17.093853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086323, 35.047852, 17.140659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144138, 35.359364, 17.384825>,  <39.178829, 35.546272, 17.531324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144138, 35.359364, 17.384825>,  <39.086323, 35.047852, 17.140659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144138, 35.359364, 17.384825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039339, -0.611883, 0.789969,
		0.988717, -0.138194, -0.057804,
		0.144538, 0.778782, 0.610416,
		39.187500, 35.592999, 17.567949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520824, 34.832371, 17.559925>,  <39.086323, 35.047852, 17.140659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520824, 34.832371, 17.559925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.408092, 35.146847, 17.779915>,  <39.340454, 35.335533, 17.911909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.408092, 35.146847, 17.779915>,  <39.520824, 34.832371, 17.559925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408092, 35.146847, 17.779915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091721, -0.548508, 0.831100,
		0.955071, 0.284672, 0.082475,
		-0.281829, 0.786194, 0.549974,
		39.323544, 35.382706, 17.944906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972343, 34.798805, 18.138350>,  <39.520824, 34.832371, 17.559925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972343, 34.798805, 18.138350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654549, 35.025738, 18.224998>,  <39.463871, 35.161900, 18.276987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.654549, 35.025738, 18.224998>,  <39.972343, 34.798805, 18.138350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654549, 35.025738, 18.224998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234858, -0.615994, 0.751926,
		0.560030, 0.546520, 0.622642,
		-0.794486, 0.567333, 0.216620,
		39.416203, 35.195938, 18.289984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643082, 34.495235, 18.005159>,  <39.972343, 34.798805, 18.138350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643082, 34.495235, 18.005159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865761, 34.210625, 18.176653>,  <40.999367, 34.039856, 18.279549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.865761, 34.210625, 18.176653>,  <40.643082, 34.495235, 18.005159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865761, 34.210625, 18.176653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641020, 0.039679, -0.766498,
		0.528375, 0.701534, 0.478194,
		0.556698, -0.711531, 0.428732,
		41.032772, 33.997166, 18.305273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340004, 34.710625, 17.988186>,  <40.643082, 34.495235, 18.005159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340004, 34.710625, 17.988186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340221, 34.311066, 18.006977>,  <41.340351, 34.071331, 18.018251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.340221, 34.311066, 18.006977>,  <41.340004, 34.710625, 17.988186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340221, 34.311066, 18.006977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510930, -0.040105, -0.858687,
		0.859622, 0.024472, 0.510344,
		0.000547, -0.998896, 0.046979,
		41.340385, 34.011398, 18.021070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979752, 34.521626, 18.085426>,  <41.340004, 34.710625, 17.988186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979752, 34.521626, 18.085426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.808727, 34.205593, 17.909716>,  <41.706112, 34.015972, 17.804289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.808727, 34.205593, 17.909716>,  <41.979752, 34.521626, 18.085426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808727, 34.205593, 17.909716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717860, -0.001401, -0.696186,
		0.549429, -0.612998, 0.567768,
		-0.427557, -0.790083, -0.439277,
		41.680462, 33.968567, 17.777933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467976, 34.011875, 18.045660>,  <41.979752, 34.521626, 18.085426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467976, 34.011875, 18.045660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.198494, 33.883411, 17.779432>,  <42.036804, 33.806335, 17.619696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.198494, 33.883411, 17.779432>,  <42.467976, 34.011875, 18.045660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198494, 33.883411, 17.779432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716687, -0.064289, -0.694425,
		0.180231, -0.944841, 0.273481,
		-0.673704, -0.321157, -0.665569,
		41.996384, 33.787064, 17.579762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850441, 33.511906, 17.689409>,  <42.467976, 34.011875, 18.045660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850441, 33.511906, 17.689409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.537357, 33.600208, 17.456642>,  <42.349506, 33.653191, 17.316982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.537357, 33.600208, 17.456642>,  <42.850441, 33.511906, 17.689409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537357, 33.600208, 17.456642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563664, -0.145017, -0.813174,
		-0.263906, -0.964487, -0.010929,
		-0.782711, 0.220761, -0.581918,
		42.302544, 33.666435, 17.282066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778305, 32.930920, 17.315666>,  <42.850441, 33.511906, 17.689409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778305, 32.930920, 17.315666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582111, 33.210434, 17.107386>,  <42.464397, 33.378143, 16.982418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.582111, 33.210434, 17.107386>,  <42.778305, 32.930920, 17.315666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582111, 33.210434, 17.107386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545644, -0.219631, -0.808724,
		-0.679485, -0.680781, -0.273563,
		-0.490481, 0.698784, -0.520700,
		42.434967, 33.420071, 16.951176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.558598, 32.701393, 16.651220>,  <42.778305, 32.930920, 17.315666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.558598, 32.701393, 16.651220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.531967, 33.094814, 16.584063>,  <42.515991, 33.330868, 16.543768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.531967, 33.094814, 16.584063>,  <42.558598, 32.701393, 16.651220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531967, 33.094814, 16.584063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446242, -0.121152, -0.886674,
		-0.892433, -0.133950, -0.430838,
		-0.066573, 0.983555, -0.167894,
		42.511993, 33.389881, 16.533695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269299, 32.795654, 15.914515>,  <42.558598, 32.701393, 16.651220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269299, 32.795654, 15.914515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457764, 33.136387, 16.006075>,  <42.570843, 33.340824, 16.061010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.457764, 33.136387, 16.006075>,  <42.269299, 32.795654, 15.914515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457764, 33.136387, 16.006075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401522, 0.023931, -0.915537,
		-0.785357, 0.523276, -0.330752,
		0.471163, 0.851827, 0.228901,
		42.599113, 33.391933, 16.074745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136707, 33.374886, 15.482527>,  <42.269299, 32.795654, 15.914515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136707, 33.374886, 15.482527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.505634, 33.410076, 15.633040>,  <42.726990, 33.431190, 15.723349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.505634, 33.410076, 15.633040>,  <42.136707, 33.374886, 15.482527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505634, 33.410076, 15.633040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382233, -0.064554, -0.921808,
		-0.056804, 0.994029, -0.093166,
		0.922318, 0.087973, 0.376284,
		42.782330, 33.436470, 15.745926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.714890, 30.825891, 30.806263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098320, 30.932011, 30.847742>,  <38.328377, 30.995682, 30.872629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098320, 30.932011, 30.847742>,  <37.714890, 30.825891, 30.806263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098320, 30.932011, 30.847742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021430, 0.295850, -0.954994,
		-0.284038, 0.917654, 0.277909,
		0.958574, 0.265299, 0.103698,
		38.385891, 31.011600, 30.878851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824047, 31.586691, 30.592058>,  <37.714890, 30.825891, 30.806263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824047, 31.586691, 30.592058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162533, 31.379398, 30.542484>,  <38.365623, 31.255022, 30.512739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162533, 31.379398, 30.542484>,  <37.824047, 31.586691, 30.592058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162533, 31.379398, 30.542484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077664, 0.350062, -0.933501,
		0.527154, 0.780316, 0.336475,
		0.846213, -0.518231, -0.123934,
		38.416397, 31.223928, 30.505304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331829, 32.060520, 30.504086>,  <37.824047, 31.586691, 30.592058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331829, 32.060520, 30.504086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453033, 31.721066, 30.330648>,  <38.525757, 31.517393, 30.226587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.453033, 31.721066, 30.330648>,  <38.331829, 32.060520, 30.504086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453033, 31.721066, 30.330648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215222, 0.504165, -0.836360,
		0.928366, 0.160107, 0.335412,
		0.303010, -0.848636, -0.433591,
		38.543938, 31.466475, 30.200571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656754, 32.381977, 30.017452>,  <38.331829, 32.060520, 30.504086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656754, 32.381977, 30.017452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690311, 32.003193, 29.893372>,  <38.710445, 31.775923, 29.818924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.690311, 32.003193, 29.893372>,  <38.656754, 32.381977, 30.017452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690311, 32.003193, 29.893372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163809, 0.320169, -0.933091,
		0.982919, 0.027464, 0.181980,
		0.083891, -0.946962, -0.310201,
		38.715477, 31.719105, 29.800312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291641, 32.252502, 29.753267>,  <38.656754, 32.381977, 30.017452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291641, 32.252502, 29.753267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061245, 31.977713, 29.576040>,  <38.923008, 31.812840, 29.469704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.061245, 31.977713, 29.576040>,  <39.291641, 32.252502, 29.753267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061245, 31.977713, 29.576040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217161, 0.393940, -0.893114,
		0.788084, -0.610641, -0.077722,
		-0.575990, -0.686971, -0.443065,
		38.888447, 31.771622, 29.443121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620522, 32.046810, 29.157818>,  <39.291641, 32.252502, 29.753267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620522, 32.046810, 29.157818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267513, 31.889414, 29.054810>,  <39.055706, 31.794977, 28.993004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267513, 31.889414, 29.054810>,  <39.620522, 32.046810, 29.157818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267513, 31.889414, 29.054810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204394, 0.172227, -0.963619,
		0.423526, -0.903052, -0.071567,
		-0.882524, -0.393490, -0.257521,
		39.002754, 31.771368, 28.977552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754162, 31.554663, 28.600851>,  <39.620522, 32.046810, 29.157818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754162, 31.554663, 28.600851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.371090, 31.653576, 28.541920>,  <39.141247, 31.712923, 28.506561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.371090, 31.653576, 28.541920>,  <39.754162, 31.554663, 28.600851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371090, 31.653576, 28.541920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171599, 0.079533, -0.981951,
		-0.231101, -0.965674, -0.118600,
		-0.957677, 0.247282, -0.147329,
		39.083786, 31.727760, 28.497721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407982, 31.055061, 28.157387>,  <39.754162, 31.554663, 28.600851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407982, 31.055061, 28.157387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195770, 31.392670, 28.125982>,  <39.068443, 31.595234, 28.107140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195770, 31.392670, 28.125982>,  <39.407982, 31.055061, 28.157387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195770, 31.392670, 28.125982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152820, 0.004130, -0.988245,
		-0.833775, -0.536296, -0.131174,
		-0.530533, 0.844020, -0.078513,
		39.036610, 31.645876, 28.102428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126087, 31.023829, 27.532043>,  <39.407982, 31.055061, 28.157387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126087, 31.023829, 27.532043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056637, 31.409874, 27.610435>,  <39.014969, 31.641502, 27.657471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056637, 31.409874, 27.610435>,  <39.126087, 31.023829, 27.532043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056637, 31.409874, 27.610435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109654, 0.216708, -0.970059,
		-0.978688, -0.146935, -0.143454,
		-0.173623, 0.965115, 0.195978,
		39.004551, 31.699409, 27.669230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576462, 31.208645, 26.974508>,  <39.126087, 31.023829, 27.532043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576462, 31.208645, 26.974508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760426, 31.536388, 27.111408>,  <38.870804, 31.733034, 27.193548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.760426, 31.536388, 27.111408>,  <38.576462, 31.208645, 26.974508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760426, 31.536388, 27.111408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116079, 0.326650, -0.937990,
		-0.880346, 0.471118, 0.055119,
		0.459908, 0.819358, 0.342252,
		38.898399, 31.782196, 27.214085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373280, 31.712433, 26.662128>,  <38.576462, 31.208645, 26.974508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373280, 31.712433, 26.662128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694290, 31.903406, 26.805241>,  <38.886898, 32.017990, 26.891108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.694290, 31.903406, 26.805241>,  <38.373280, 31.712433, 26.662128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694290, 31.903406, 26.805241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216437, 0.325850, -0.920313,
		-0.555971, 0.816014, 0.158169,
		0.802528, 0.477434, 0.357779,
		38.935047, 32.046635, 26.912575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358158, 32.384396, 26.494558>,  <38.373280, 31.712433, 26.662128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358158, 32.384396, 26.494558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750393, 32.338192, 26.557949>,  <38.985733, 32.310471, 26.595984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.750393, 32.338192, 26.557949>,  <38.358158, 32.384396, 26.494558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750393, 32.338192, 26.557949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191262, 0.384773, -0.902978,
		0.043327, 0.915755, 0.399395,
		0.980582, -0.115512, 0.158478,
		39.044567, 32.303539, 26.605492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185471, 33.245514, 26.449276>,  <38.358158, 32.384396, 26.494558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185471, 33.245514, 26.449276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801109, 33.135075, 26.457642>,  <37.570492, 33.068810, 26.462660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801109, 33.135075, 26.457642>,  <38.185471, 33.245514, 26.449276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801109, 33.135075, 26.457642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007535, 0.101575, 0.994799,
		-0.276787, 0.955747, -0.099684,
		-0.960902, -0.276099, 0.020913,
		37.512840, 33.052246, 26.463915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842068, 33.807209, 26.875021>,  <38.185471, 33.245514, 26.449276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842068, 33.807209, 26.875021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515430, 33.577080, 26.856380>,  <37.319447, 33.439003, 26.845196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.515430, 33.577080, 26.856380>,  <37.842068, 33.807209, 26.875021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515430, 33.577080, 26.856380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206647, 0.216010, 0.954273,
		-0.538950, 0.788887, -0.295282,
		-0.816597, -0.575324, -0.046603,
		37.270451, 33.404484, 26.842400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305542, 34.135628, 27.216045>,  <37.842068, 33.807209, 26.875021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305542, 34.135628, 27.216045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163792, 33.761784, 27.203959>,  <37.078743, 33.537476, 27.196707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.163792, 33.761784, 27.203959>,  <37.305542, 34.135628, 27.216045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163792, 33.761784, 27.203959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269804, 0.071256, 0.960275,
		-0.895334, 0.348451, -0.277414,
		-0.354376, -0.934615, -0.030215,
		37.057480, 33.481400, 27.194895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582489, 34.128555, 27.501820>,  <37.305542, 34.135628, 27.216045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582489, 34.128555, 27.501820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702908, 33.751579, 27.560030>,  <36.775158, 33.525394, 27.594955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.702908, 33.751579, 27.560030>,  <36.582489, 34.128555, 27.501820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702908, 33.751579, 27.560030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420989, 0.005583, 0.907049,
		-0.855651, -0.334331, -0.395075,
		0.301048, -0.942439, 0.145526,
		36.793221, 33.468849, 27.603687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020630, 33.752007, 27.717722>,  <36.582489, 34.128555, 27.501820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020630, 33.752007, 27.717722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329224, 33.536865, 27.853683>,  <36.514378, 33.407780, 27.935261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.329224, 33.536865, 27.853683>,  <36.020630, 33.752007, 27.717722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329224, 33.536865, 27.853683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314110, 0.142616, 0.938614,
		-0.553310, -0.830889, -0.058919,
		0.771481, -0.537852, 0.339902,
		36.560669, 33.375511, 27.955654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694298, 33.286945, 28.212610>,  <36.020630, 33.752007, 27.717722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694298, 33.286945, 28.212610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081917, 33.305061, 28.309679>,  <36.314487, 33.315929, 28.367920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081917, 33.305061, 28.309679>,  <35.694298, 33.286945, 28.212610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081917, 33.305061, 28.309679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245451, 0.071743, 0.966751,
		0.026366, -0.996395, 0.080637,
		0.969050, 0.045282, 0.242674,
		36.372631, 33.318645, 28.382481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824570, 32.817329, 28.756495>,  <35.694298, 33.286945, 28.212610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824570, 32.817329, 28.756495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134480, 33.069710, 28.772619>,  <36.320423, 33.221138, 28.782293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134480, 33.069710, 28.772619>,  <35.824570, 32.817329, 28.756495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134480, 33.069710, 28.772619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152640, 0.124795, 0.980371,
		0.613539, -0.765717, 0.192997,
		0.774771, 0.630955, 0.040312,
		36.366913, 33.258995, 28.784714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279816, 32.595375, 29.339432>,  <35.824570, 32.817329, 28.756495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279816, 32.595375, 29.339432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313786, 32.980637, 29.237356>,  <36.334167, 33.211792, 29.176111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313786, 32.980637, 29.237356>,  <36.279816, 32.595375, 29.339432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313786, 32.980637, 29.237356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267024, 0.268747, 0.925458,
		0.959941, -0.010449, 0.280008,
		0.084922, 0.963154, -0.255190,
		36.339264, 33.269585, 29.160799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394909, 32.945992, 30.032869>,  <36.279816, 32.595375, 29.339432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394909, 32.945992, 30.032869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348034, 33.259510, 29.788925>,  <36.319908, 33.447620, 29.642559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348034, 33.259510, 29.788925>,  <36.394909, 32.945992, 30.032869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348034, 33.259510, 29.788925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377882, 0.532709, 0.757249,
		0.918407, 0.319195, 0.233757,
		-0.117186, 0.783796, -0.609862,
		36.312878, 33.494648, 29.605967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636143, 33.531445, 30.357893>,  <36.394909, 32.945992, 30.032869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636143, 33.531445, 30.357893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374729, 33.664745, 30.086058>,  <36.217880, 33.744724, 29.922956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.374729, 33.664745, 30.086058>,  <36.636143, 33.531445, 30.357893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374729, 33.664745, 30.086058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440364, 0.562851, 0.699485,
		0.615611, 0.756401, -0.221088,
		-0.653531, 0.333251, -0.679589,
		36.178669, 33.764721, 29.882181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584465, 34.286705, 30.511759>,  <36.636143, 33.531445, 30.357893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584465, 34.286705, 30.511759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270084, 34.204620, 30.278461>,  <36.081455, 34.155369, 30.138483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270084, 34.204620, 30.278461>,  <36.584465, 34.286705, 30.511759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270084, 34.204620, 30.278461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609778, 0.413272, 0.676297,
		0.102253, 0.887183, -0.449945,
		-0.785949, -0.205213, -0.583243,
		36.034298, 34.143055, 30.103489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244289, 34.848766, 30.570335>,  <36.584465, 34.286705, 30.511759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244289, 34.848766, 30.570335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978722, 34.572914, 30.454666>,  <35.819382, 34.407402, 30.385263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978722, 34.572914, 30.454666>,  <36.244289, 34.848766, 30.570335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978722, 34.572914, 30.454666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717417, 0.478269, 0.506530,
		-0.211016, 0.543752, -0.812285,
		-0.663917, -0.689633, -0.289175,
		35.779545, 34.366024, 30.367914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657707, 35.199097, 30.240873>,  <36.244289, 34.848766, 30.570335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657707, 35.199097, 30.240873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518467, 34.849796, 30.377264>,  <35.434921, 34.640217, 30.459099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518467, 34.849796, 30.377264>,  <35.657707, 35.199097, 30.240873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518467, 34.849796, 30.377264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821999, 0.459195, 0.336836,
		-0.450715, -0.163030, -0.877654,
		-0.348100, -0.873248, 0.340976,
		35.414036, 34.587822, 30.479557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951576, 35.198811, 30.061073>,  <35.657707, 35.199097, 30.240873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951576, 35.198811, 30.061073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003227, 34.928974, 30.351799>,  <35.034218, 34.767075, 30.526234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003227, 34.928974, 30.351799>,  <34.951576, 35.198811, 30.061073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003227, 34.928974, 30.351799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918824, 0.194266, 0.343546,
		-0.372947, -0.712175, -0.594742,
		0.129127, -0.674587, 0.726814,
		35.041965, 34.726597, 30.569843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229927, 34.838215, 30.214344>,  <34.951576, 35.198811, 30.061073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229927, 34.838215, 30.214344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465118, 34.860546, 30.537125>,  <34.606232, 34.873947, 30.730793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.465118, 34.860546, 30.537125>,  <34.229927, 34.838215, 30.214344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465118, 34.860546, 30.537125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773059, 0.332373, 0.540285,
		-0.238043, -0.941494, 0.238589,
		0.587975, 0.055832, 0.806950,
		34.641510, 34.877296, 30.779209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671280, 35.379257, 29.884268>,  <34.229927, 34.838215, 30.214344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671280, 35.379257, 29.884268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975571, 35.638081, 29.863815>,  <34.158146, 35.793373, 29.851543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975571, 35.638081, 29.863815>,  <33.671280, 35.379257, 29.884268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975571, 35.638081, 29.863815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181841, 0.136836, -0.973760,
		-0.623079, 0.750064, 0.221756,
		0.760727, 0.647054, -0.051133,
		34.203789, 35.832195, 29.848475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486382, 36.051247, 29.668787>,  <33.671280, 35.379257, 29.884268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486382, 36.051247, 29.668787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869331, 35.978390, 29.579105>,  <34.099102, 35.934677, 29.525295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869331, 35.978390, 29.579105>,  <33.486382, 36.051247, 29.668787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869331, 35.978390, 29.579105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191949, 0.178898, -0.964962,
		0.215866, 0.966862, 0.136311,
		0.957370, -0.182138, -0.224206,
		34.156544, 35.923748, 29.511843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654621, 36.593410, 29.299530>,  <33.486382, 36.051247, 29.668787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654621, 36.593410, 29.299530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940102, 36.324120, 29.222185>,  <34.111389, 36.162544, 29.175779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940102, 36.324120, 29.222185>,  <33.654621, 36.593410, 29.299530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940102, 36.324120, 29.222185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083922, 0.356252, -0.930614,
		0.695401, 0.647957, 0.310758,
		0.713705, -0.673228, -0.193360,
		34.154213, 36.122150, 29.164177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210087, 36.918102, 28.957163>,  <33.654621, 36.593410, 29.299530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210087, 36.918102, 28.957163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246632, 36.539471, 28.833462>,  <34.268559, 36.312290, 28.759241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246632, 36.539471, 28.833462>,  <34.210087, 36.918102, 28.957163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246632, 36.539471, 28.833462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071554, 0.315987, -0.946061,
		0.993243, 0.064308, 0.096602,
		0.091364, -0.946582, -0.309250,
		34.274040, 36.255497, 28.740686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752075, 36.876621, 28.382433>,  <34.210087, 36.918102, 28.957163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752075, 36.876621, 28.382433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541950, 36.539146, 28.338198>,  <34.415874, 36.336662, 28.311657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541950, 36.539146, 28.338198>,  <34.752075, 36.876621, 28.382433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541950, 36.539146, 28.338198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112749, 0.059801, -0.991822,
		0.843405, -0.533488, 0.063711,
		-0.525316, -0.843691, -0.110587,
		34.384354, 36.286037, 28.305021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199238, 36.500977, 28.039398>,  <34.752075, 36.876621, 28.382433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199238, 36.500977, 28.039398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826584, 36.377033, 27.963446>,  <34.602993, 36.302670, 27.917873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.826584, 36.377033, 27.963446>,  <35.199238, 36.500977, 28.039398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826584, 36.377033, 27.963446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160274, 0.118614, -0.979920,
		0.326156, -0.943356, -0.060843,
		-0.931630, -0.309855, -0.189882,
		34.547096, 36.284077, 27.906481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296486, 35.828308, 27.655153>,  <35.199238, 36.500977, 28.039398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296486, 35.828308, 27.655153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934998, 35.988853, 27.595556>,  <34.718105, 36.085182, 27.559797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934998, 35.988853, 27.595556>,  <35.296486, 35.828308, 27.655153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934998, 35.988853, 27.595556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093327, -0.154953, -0.983504,
		-0.417835, -0.902714, 0.102575,
		-0.903717, 0.401369, -0.148993,
		34.663883, 36.109264, 27.550859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079052, 35.436581, 27.275696>,  <35.296486, 35.828308, 27.655153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079052, 35.436581, 27.275696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830605, 35.743141, 27.210163>,  <34.681538, 35.927078, 27.170843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.830605, 35.743141, 27.210163>,  <35.079052, 35.436581, 27.275696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830605, 35.743141, 27.210163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163291, -0.077901, -0.983498,
		-0.766520, -0.637616, -0.076762,
		-0.621114, 0.766406, -0.163829,
		34.644272, 35.973064, 27.161015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884583, 35.315598, 26.618483>,  <35.079052, 35.436581, 27.275696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884583, 35.315598, 26.618483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744720, 35.689663, 26.641138>,  <34.660805, 35.914104, 26.654732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.744720, 35.689663, 26.641138>,  <34.884583, 35.315598, 26.618483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744720, 35.689663, 26.641138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244574, 0.149470, -0.958041,
		-0.904393, -0.321128, -0.280980,
		-0.349652, 0.935166, 0.056640,
		34.639824, 35.970211, 26.658131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459385, 35.387562, 26.019817>,  <34.884583, 35.315598, 26.618483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459385, 35.387562, 26.019817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556984, 35.758213, 26.134241>,  <34.615543, 35.980602, 26.202896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556984, 35.758213, 26.134241>,  <34.459385, 35.387562, 26.019817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556984, 35.758213, 26.134241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382179, 0.179224, -0.906542,
		-0.891293, 0.330524, -0.310405,
		0.244002, 0.926624, 0.286061,
		34.630184, 36.036201, 26.220058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115059, 35.873421, 25.552673>,  <34.459385, 35.387562, 26.019817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115059, 35.873421, 25.552673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435688, 36.043034, 25.721281>,  <34.628063, 36.144802, 25.822447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435688, 36.043034, 25.721281>,  <34.115059, 35.873421, 25.552673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435688, 36.043034, 25.721281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329562, 0.274891, -0.903230,
		-0.498872, 0.862920, 0.080599,
		0.801571, 0.424033, 0.421521,
		34.676159, 36.170242, 25.847738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227333, 36.447308, 25.139082>,  <34.115059, 35.873421, 25.552673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227333, 36.447308, 25.139082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569275, 36.392277, 25.339201>,  <34.774441, 36.359261, 25.459272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.569275, 36.392277, 25.339201>,  <34.227333, 36.447308, 25.139082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569275, 36.392277, 25.339201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516605, 0.135684, -0.845405,
		0.048422, 0.981154, 0.187061,
		0.854853, -0.137573, 0.500299,
		34.825729, 36.351006, 25.489290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663033, 36.955631, 24.876537>,  <34.227333, 36.447308, 25.139082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663033, 36.955631, 24.876537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922874, 36.708378, 25.053591>,  <35.078781, 36.560028, 25.159822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922874, 36.708378, 25.053591>,  <34.663033, 36.955631, 24.876537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922874, 36.708378, 25.053591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579835, 0.026242, -0.814311,
		0.491736, 0.785637, 0.375461,
		0.649606, -0.618131, 0.442636,
		35.117756, 36.522938, 25.186382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359814, 37.223125, 24.863077>,  <34.663033, 36.955631, 24.876537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359814, 37.223125, 24.863077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428585, 36.831497, 24.906649>,  <35.469849, 36.596519, 24.932791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428585, 36.831497, 24.906649>,  <35.359814, 37.223125, 24.863077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428585, 36.831497, 24.906649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553633, 0.004572, -0.832748,
		0.814819, 0.203481, 0.542830,
		0.171931, -0.979068, 0.108928,
		35.480164, 36.537777, 24.939327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067966, 37.151512, 25.183067>,  <35.359814, 37.223125, 24.863077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067966, 37.151512, 25.183067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000271, 36.781918, 25.045891>,  <35.959656, 36.560162, 24.963585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000271, 36.781918, 25.045891>,  <36.067966, 37.151512, 25.183067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000271, 36.781918, 25.045891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827600, 0.055722, -0.558545,
		0.535198, -0.378343, 0.755261,
		-0.169237, -0.923987, -0.342939,
		35.949501, 36.504723, 24.943008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742481, 36.769875, 25.234917>,  <36.067966, 37.151512, 25.183067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742481, 36.769875, 25.234917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528435, 36.589172, 24.949383>,  <36.400005, 36.480751, 24.778063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.528435, 36.589172, 24.949383>,  <36.742481, 36.769875, 25.234917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528435, 36.589172, 24.949383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774749, 0.074411, -0.627874,
		0.336763, -0.889033, 0.310178,
		-0.535120, -0.451756, -0.713837,
		36.367897, 36.453644, 24.735231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235054, 36.324528, 24.842424>,  <36.742481, 36.769875, 25.234917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235054, 36.324528, 24.842424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915680, 36.303856, 24.602478>,  <36.724056, 36.291454, 24.458511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.915680, 36.303856, 24.602478>,  <37.235054, 36.324528, 24.842424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915680, 36.303856, 24.602478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592229, 0.112133, -0.797929,
		0.108485, -0.992349, -0.058937,
		-0.798434, -0.051659, -0.599863,
		36.676151, 36.288353, 24.422518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417076, 35.760296, 24.371134>,  <37.235054, 36.324528, 24.842424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417076, 35.760296, 24.371134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144329, 36.012383, 24.222599>,  <36.980682, 36.163635, 24.133478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144329, 36.012383, 24.222599>,  <37.417076, 35.760296, 24.371134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144329, 36.012383, 24.222599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530252, 0.076164, -0.844412,
		-0.503879, -0.772676, -0.386106,
		-0.681864, 0.630215, -0.371335,
		36.939770, 36.201447, 24.111198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420879, 35.521915, 23.593885>,  <37.417076, 35.760296, 24.371134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420879, 35.521915, 23.593885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253296, 35.885098, 23.597637>,  <37.152748, 36.103008, 23.599888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.253296, 35.885098, 23.597637>,  <37.420879, 35.521915, 23.593885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253296, 35.885098, 23.597637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458087, 0.220266, -0.861185,
		-0.783986, -0.356501, -0.508205,
		-0.418954, 0.907959, 0.009377,
		37.127609, 36.157486, 23.600451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145779, 35.617283, 22.976021>,  <37.420879, 35.521915, 23.593885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145779, 35.617283, 22.976021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202080, 35.984230, 23.124947>,  <37.235863, 36.204399, 23.214302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202080, 35.984230, 23.124947>,  <37.145779, 35.617283, 22.976021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202080, 35.984230, 23.124947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382127, 0.296579, -0.875226,
		-0.913327, 0.265465, -0.308806,
		0.140756, 0.917371, 0.372315,
		37.244308, 36.259441, 23.236641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832085, 36.069756, 22.457531>,  <37.145779, 35.617283, 22.976021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832085, 36.069756, 22.457531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053078, 36.345821, 22.644480>,  <37.185673, 36.511459, 22.756649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053078, 36.345821, 22.644480>,  <36.832085, 36.069756, 22.457531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053078, 36.345821, 22.644480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181097, 0.447935, -0.875533,
		-0.813613, 0.568357, 0.122490,
		0.552483, 0.690162, 0.467374,
		37.218822, 36.552872, 22.784693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575275, 36.727249, 22.180197>,  <36.832085, 36.069756, 22.457531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575275, 36.727249, 22.180197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935684, 36.806908, 22.334343>,  <37.151928, 36.854702, 22.426830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.935684, 36.806908, 22.334343>,  <36.575275, 36.727249, 22.180197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935684, 36.806908, 22.334343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147361, 0.695033, -0.703714,
		-0.407984, 0.690847, 0.596892,
		0.901018, 0.199145, 0.385367,
		37.205990, 36.866650, 22.449953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646053, 37.454670, 22.177189>,  <36.575275, 36.727249, 22.180197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646053, 37.454670, 22.177189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019173, 37.314213, 22.209658>,  <37.243046, 37.229939, 22.229139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019173, 37.314213, 22.209658>,  <36.646053, 37.454670, 22.177189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019173, 37.314213, 22.209658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300679, 0.634051, -0.712441,
		0.198699, 0.688970, 0.697021,
		0.932798, -0.351140, 0.081174,
		37.299011, 37.208870, 22.234011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111092, 38.085655, 22.190350>,  <36.646053, 37.454670, 22.177189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111092, 38.085655, 22.190350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336399, 37.769741, 22.093216>,  <37.471584, 37.580193, 22.034935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336399, 37.769741, 22.093216>,  <37.111092, 38.085655, 22.190350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336399, 37.769741, 22.093216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387261, 0.511954, -0.766767,
		0.729899, 0.337858, 0.594222,
		0.563273, -0.789782, -0.242835,
		37.505383, 37.532806, 22.020365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751495, 38.334789, 22.228916>,  <37.111092, 38.085655, 22.190350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751495, 38.334789, 22.228916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746075, 38.025986, 21.974728>,  <37.742821, 37.840706, 21.822214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746075, 38.025986, 21.974728>,  <37.751495, 38.334789, 22.228916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746075, 38.025986, 21.974728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695539, 0.449303, -0.560672,
		0.718360, -0.449596, 0.530869,
		-0.013554, -0.772005, -0.635472,
		37.742008, 37.794384, 21.784086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419743, 38.219711, 21.968235>,  <37.751495, 38.334789, 22.228916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419743, 38.219711, 21.968235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230545, 38.024975, 21.674498>,  <38.117027, 37.908131, 21.498255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.230545, 38.024975, 21.674498>,  <38.419743, 38.219711, 21.968235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230545, 38.024975, 21.674498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633513, 0.391319, -0.667482,
		0.612321, -0.780930, 0.123330,
		-0.472995, -0.486845, -0.734342,
		38.088646, 37.878922, 21.454195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888649, 38.121548, 21.475504>,  <38.419743, 38.219711, 21.968235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888649, 38.121548, 21.475504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.556644, 38.075363, 21.257236>,  <38.357441, 38.047653, 21.126276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.556644, 38.075363, 21.257236>,  <38.888649, 38.121548, 21.475504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556644, 38.075363, 21.257236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423853, 0.505348, -0.751646,
		0.362538, -0.855156, -0.370506,
		-0.830010, -0.115460, -0.545668,
		38.307640, 38.040726, 21.093536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537762, 37.877041, 21.833509>,  <38.888649, 38.121548, 21.475504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537762, 37.877041, 21.833509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895016, 38.034313, 21.920891>,  <40.109367, 38.128677, 21.973320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.895016, 38.034313, 21.920891>,  <39.537762, 37.877041, 21.833509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895016, 38.034313, 21.920891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132938, -0.233237, 0.963290,
		0.429696, -0.889388, -0.156044,
		0.893135, 0.393178, 0.218454,
		40.162956, 38.152267, 21.986427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983742, 37.360184, 22.161289>,  <39.537762, 37.877041, 21.833509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983742, 37.360184, 22.161289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106541, 37.721115, 22.282318>,  <40.180222, 37.937675, 22.354935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106541, 37.721115, 22.282318>,  <39.983742, 37.360184, 22.161289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106541, 37.721115, 22.282318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319590, -0.201718, 0.925836,
		0.896445, -0.380928, 0.226449,
		0.306998, 0.902332, 0.302570,
		40.198639, 37.991814, 22.373089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449829, 37.270279, 22.791739>,  <39.983742, 37.360184, 22.161289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449829, 37.270279, 22.791739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302456, 37.642052, 22.783541>,  <40.214031, 37.865116, 22.778622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302456, 37.642052, 22.783541>,  <40.449829, 37.270279, 22.791739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302456, 37.642052, 22.783541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260500, -0.082050, 0.961981,
		0.892411, 0.359765, 0.272345,
		-0.368433, 0.929428, -0.020497,
		40.191925, 37.920879, 22.777391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618813, 37.495056, 23.386278>,  <40.449829, 37.270279, 22.791739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618813, 37.495056, 23.386278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320438, 37.744991, 23.294050>,  <40.141415, 37.894951, 23.238712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320438, 37.744991, 23.294050>,  <40.618813, 37.495056, 23.386278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320438, 37.744991, 23.294050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175725, 0.149287, 0.973054,
		0.642422, 0.766349, -0.001559,
		-0.745932, 0.624837, -0.230572,
		40.096661, 37.932442, 23.224878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720840, 38.087841, 23.786932>,  <40.618813, 37.495056, 23.386278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720840, 38.087841, 23.786932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.329868, 38.112926, 23.706242>,  <40.095284, 38.127979, 23.657827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.329868, 38.112926, 23.706242>,  <40.720840, 38.087841, 23.786932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329868, 38.112926, 23.706242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161571, 0.393270, 0.905115,
		0.136096, 0.917282, -0.374262,
		-0.977432, 0.062713, -0.201728,
		40.036640, 38.131741, 23.645723>
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
