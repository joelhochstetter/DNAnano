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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<42.458256, 45.475822, 57.114029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773888, 45.687229, 57.239265>,  <42.963268, 45.814072, 57.314407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773888, 45.687229, 57.239265>,  <42.458256, 45.475822, 57.114029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773888, 45.687229, 57.239265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403834, -0.062249, -0.912712,
		-0.462891, 0.846639, -0.262552,
		0.789081, 0.528514, 0.313088,
		43.010612, 45.845783, 57.333191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530399, 45.901218, 56.638874>,  <42.458256, 45.475822, 57.114029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530399, 45.901218, 56.638874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890205, 45.890919, 56.813328>,  <43.106091, 45.884739, 56.917999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890205, 45.890919, 56.813328>,  <42.530399, 45.901218, 56.638874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890205, 45.890919, 56.813328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421872, -0.208284, -0.882407,
		0.113564, 0.977729, -0.176490,
		0.899515, -0.025753, 0.436130,
		43.160061, 45.883194, 56.944168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888161, 46.336723, 56.158630>,  <42.530399, 45.901218, 56.638874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888161, 46.336723, 56.158630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138931, 46.104378, 56.366306>,  <43.289394, 45.964970, 56.490913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138931, 46.104378, 56.366306>,  <42.888161, 46.336723, 56.158630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138931, 46.104378, 56.366306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389678, -0.343276, -0.854584,
		0.674625, 0.738076, 0.011143,
		0.626923, -0.580866, 0.519194,
		43.327007, 45.930119, 56.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580841, 46.484150, 55.894543>,  <42.888161, 46.336723, 56.158630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580841, 46.484150, 55.894543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576607, 46.109634, 56.034973>,  <43.574066, 45.884926, 56.119232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576607, 46.109634, 56.034973>,  <43.580841, 46.484150, 55.894543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576607, 46.109634, 56.034973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199931, -0.345990, -0.916689,
		0.979753, 0.060489, 0.190854,
		-0.010584, -0.936287, 0.351078,
		43.573433, 45.828747, 56.140297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038975, 46.245041, 55.428730>,  <43.580841, 46.484150, 55.894543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038975, 46.245041, 55.428730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897659, 45.913765, 55.602757>,  <43.812870, 45.715000, 55.707172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897659, 45.913765, 55.602757>,  <44.038975, 46.245041, 55.428730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897659, 45.913765, 55.602757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254136, -0.532533, -0.807356,
		0.900335, -0.174661, 0.398611,
		-0.353288, -0.828192, 0.435070,
		43.791672, 45.665306, 55.733276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527847, 45.733089, 55.363899>,  <44.038975, 46.245041, 55.428730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527847, 45.733089, 55.363899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170883, 45.561142, 55.418766>,  <43.956703, 45.457973, 55.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170883, 45.561142, 55.418766>,  <44.527847, 45.733089, 55.363899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170883, 45.561142, 55.418766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089368, -0.466360, -0.880070,
		0.442283, -0.773126, 0.454601,
		-0.892412, -0.429867, 0.137170,
		43.903160, 45.432182, 55.459919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638851, 44.973988, 55.214760>,  <44.527847, 45.733089, 55.363899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638851, 44.973988, 55.214760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246353, 45.047512, 55.191559>,  <44.010853, 45.091629, 55.177639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246353, 45.047512, 55.191559>,  <44.638851, 44.973988, 55.214760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246353, 45.047512, 55.191559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009015, -0.344371, -0.938790,
		-0.192537, -0.920663, 0.339571,
		-0.981248, 0.183813, -0.058004,
		43.951981, 45.102657, 55.174156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347370, 44.308327, 55.047379>,  <44.638851, 44.973988, 55.214760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347370, 44.308327, 55.047379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087791, 44.594540, 54.943935>,  <43.932045, 44.766270, 54.881870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087791, 44.594540, 54.943935>,  <44.347370, 44.308327, 55.047379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087791, 44.594540, 54.943935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087458, -0.407802, -0.908872,
		-0.755790, -0.567193, 0.327221,
		-0.648947, 0.715535, -0.258607,
		43.893108, 44.809200, 54.866352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951435, 43.954292, 54.652580>,  <44.347370, 44.308327, 55.047379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951435, 43.954292, 54.652580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892181, 44.339695, 54.563389>,  <43.856628, 44.570934, 54.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892181, 44.339695, 54.563389>,  <43.951435, 43.954292, 54.652580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892181, 44.339695, 54.563389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132326, -0.242746, -0.961023,
		-0.980074, -0.112859, 0.163456,
		-0.148139, 0.963503, -0.222975,
		43.847740, 44.628746, 54.496498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433044, 43.819954, 54.228287>,  <43.951435, 43.954292, 54.652580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433044, 43.819954, 54.228287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527718, 44.199501, 54.144737>,  <43.584522, 44.427231, 54.094608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527718, 44.199501, 54.144737>,  <43.433044, 43.819954, 54.228287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527718, 44.199501, 54.144737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320116, -0.126818, -0.938852,
		-0.917338, 0.289070, 0.273733,
		0.236680, 0.948871, -0.208871,
		43.598721, 44.484161, 54.082077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772144, 44.105225, 54.036713>,  <43.433044, 43.819954, 54.228287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772144, 44.105225, 54.036713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064400, 44.329178, 53.880413>,  <43.239754, 44.463551, 53.786633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064400, 44.329178, 53.880413>,  <42.772144, 44.105225, 54.036713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064400, 44.329178, 53.880413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392252, -0.124218, -0.911432,
		-0.558838, 0.819205, 0.128858,
		0.730643, 0.559887, -0.390753,
		43.283592, 44.497143, 53.763187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479359, 44.657169, 53.637184>,  <42.772144, 44.105225, 54.036713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479359, 44.657169, 53.637184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845032, 44.589375, 53.489922>,  <43.064434, 44.548698, 53.401562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.845032, 44.589375, 53.489922>,  <42.479359, 44.657169, 53.637184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845032, 44.589375, 53.489922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379399, -0.038347, -0.924438,
		0.142563, 0.984786, -0.099360,
		0.914184, -0.169488, -0.368160,
		43.119286, 44.538528, 53.379475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374977, 44.852512, 53.022114>,  <42.479359, 44.657169, 53.637184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374977, 44.852512, 53.022114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743248, 44.700932, 52.984703>,  <42.964211, 44.609985, 52.962257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743248, 44.700932, 52.984703>,  <42.374977, 44.852512, 53.022114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743248, 44.700932, 52.984703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107911, -0.016842, -0.994018,
		0.375107, 0.925264, -0.056399,
		0.920679, -0.378950, -0.093528,
		43.019451, 44.587246, 52.956646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565624, 45.150467, 52.424774>,  <42.374977, 44.852512, 53.022114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565624, 45.150467, 52.424774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765678, 44.807934, 52.476257>,  <42.885712, 44.602413, 52.507145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765678, 44.807934, 52.476257>,  <42.565624, 45.150467, 52.424774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765678, 44.807934, 52.476257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020097, -0.160066, -0.986902,
		0.865715, 0.490995, -0.097264,
		0.500133, -0.856331, 0.128705,
		42.915718, 44.551033, 52.514870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046040, 45.172260, 51.951210>,  <42.565624, 45.150467, 52.424774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046040, 45.172260, 51.951210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031769, 44.784637, 52.048908>,  <43.023209, 44.552063, 52.107529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031769, 44.784637, 52.048908>,  <43.046040, 45.172260, 51.951210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031769, 44.784637, 52.048908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054749, -0.242138, -0.968696,
		0.997863, -0.047930, -0.044417,
		-0.035674, -0.969057, 0.244244,
		43.021065, 44.493919, 52.122181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530533, 44.903404, 51.587608>,  <43.046040, 45.172260, 51.951210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530533, 44.903404, 51.587608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337677, 44.568176, 51.689728>,  <43.221962, 44.367039, 51.750999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337677, 44.568176, 51.689728>,  <43.530533, 44.903404, 51.587608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337677, 44.568176, 51.689728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237206, -0.405401, -0.882827,
		0.843370, -0.365089, 0.394256,
		-0.482141, -0.838070, 0.255301,
		43.193035, 44.316757, 51.766319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974873, 44.319973, 51.483421>,  <43.530533, 44.903404, 51.587608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974873, 44.319973, 51.483421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609016, 44.158443, 51.475880>,  <43.389503, 44.061527, 51.471355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609016, 44.158443, 51.475880>,  <43.974873, 44.319973, 51.483421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609016, 44.158443, 51.475880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176501, -0.356942, -0.917300,
		0.363694, -0.842331, 0.397749,
		-0.914644, -0.403819, -0.018855,
		43.334621, 44.037296, 51.470222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025864, 43.724396, 50.982319>,  <43.974873, 44.319973, 51.483421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025864, 43.724396, 50.982319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641418, 43.834694, 50.988304>,  <43.410751, 43.900875, 50.991894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641418, 43.834694, 50.988304>,  <44.025864, 43.724396, 50.982319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641418, 43.834694, 50.988304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037456, -0.076495, -0.996366,
		-0.273602, -0.958181, 0.083849,
		-0.961113, 0.275749, 0.014960,
		43.353085, 43.917419, 50.992794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689369, 43.154575, 50.643345>,  <44.025864, 43.724396, 50.982319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689369, 43.154575, 50.643345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437134, 43.462742, 50.605770>,  <43.285793, 43.647640, 50.583225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437134, 43.462742, 50.605770>,  <43.689369, 43.154575, 50.643345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437134, 43.462742, 50.605770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070143, -0.177113, -0.981688,
		-0.772944, -0.612448, 0.165724,
		-0.630585, 0.770414, -0.093939,
		43.247959, 43.693867, 50.577587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179623, 42.864124, 50.233501>,  <43.689369, 43.154575, 50.643345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179623, 42.864124, 50.233501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164642, 43.261848, 50.193611>,  <43.155655, 43.500484, 50.169678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.164642, 43.261848, 50.193611>,  <43.179623, 42.864124, 50.233501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.164642, 43.261848, 50.193611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077078, -0.102368, -0.991756,
		-0.996321, -0.029458, 0.080473,
		-0.037453, 0.994310, -0.099721,
		43.153408, 43.560143, 50.163696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732437, 42.871819, 49.649570>,  <43.179623, 42.864124, 50.233501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732437, 42.871819, 49.649570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891075, 43.237926, 49.677853>,  <42.986256, 43.457592, 49.694820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891075, 43.237926, 49.677853>,  <42.732437, 42.871819, 49.649570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891075, 43.237926, 49.677853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019277, 0.068698, -0.997451,
		-0.917793, 0.396943, 0.009601,
		0.396591, 0.915268, 0.070702,
		43.010052, 43.512508, 49.699062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401115, 43.395355, 49.234734>,  <42.732437, 42.871819, 49.649570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401115, 43.395355, 49.234734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746170, 43.592789, 49.278992>,  <42.953201, 43.711246, 49.305546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746170, 43.592789, 49.278992>,  <42.401115, 43.395355, 49.234734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746170, 43.592789, 49.278992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103584, 0.386482, -0.916462,
		-0.495113, 0.779108, 0.384519,
		0.862632, 0.493582, 0.110649,
		43.004959, 43.740864, 49.312187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296535, 43.996128, 48.830231>,  <42.401115, 43.395355, 49.234734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296535, 43.996128, 48.830231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692108, 44.012657, 48.887245>,  <42.929451, 44.022575, 48.921452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692108, 44.012657, 48.887245>,  <42.296535, 43.996128, 48.830231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692108, 44.012657, 48.887245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122701, 0.312532, -0.941949,
		-0.083474, 0.949008, 0.304001,
		0.988927, 0.041327, 0.142532,
		42.988785, 44.025055, 48.930004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497726, 44.653175, 48.547253>,  <42.296535, 43.996128, 48.830231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497726, 44.653175, 48.547253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810364, 44.404221, 48.563969>,  <42.997948, 44.254848, 48.573997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810364, 44.404221, 48.563969>,  <42.497726, 44.653175, 48.547253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810364, 44.404221, 48.563969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205935, 0.194222, -0.959098,
		0.588811, 0.758233, 0.279974,
		0.781596, -0.622383, 0.041786,
		43.044842, 44.217506, 48.576504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065872, 45.039761, 48.248947>,  <42.497726, 44.653175, 48.547253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065872, 45.039761, 48.248947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183037, 44.657864, 48.228268>,  <43.253334, 44.428726, 48.215862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183037, 44.657864, 48.228268>,  <43.065872, 45.039761, 48.248947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183037, 44.657864, 48.228268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211190, 0.117335, -0.970377,
		0.932524, 0.273318, 0.236001,
		0.292913, -0.954741, -0.051696,
		43.270912, 44.371441, 48.212757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637753, 45.091236, 47.845955>,  <43.065872, 45.039761, 48.248947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637753, 45.091236, 47.845955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551605, 44.700947, 47.830063>,  <43.499916, 44.466774, 47.820530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551605, 44.700947, 47.830063>,  <43.637753, 45.091236, 47.845955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551605, 44.700947, 47.830063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200625, -0.004396, -0.979658,
		0.955701, -0.218961, 0.196702,
		-0.215372, -0.975724, -0.039728,
		43.486992, 44.408230, 47.818146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268188, 44.746330, 47.672794>,  <43.637753, 45.091236, 47.845955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268188, 44.746330, 47.672794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937035, 44.549221, 47.565620>,  <43.738342, 44.430954, 47.501316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.937035, 44.549221, 47.565620>,  <44.268188, 44.746330, 47.672794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937035, 44.549221, 47.565620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208970, 0.172330, -0.962618,
		0.520525, -0.852923, -0.039694,
		-0.827880, -0.492772, -0.267937,
		43.688671, 44.401390, 47.485241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525166, 44.236221, 47.049370>,  <44.268188, 44.746330, 47.672794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525166, 44.236221, 47.049370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126938, 44.264870, 47.024994>,  <43.888000, 44.282059, 47.010368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.126938, 44.264870, 47.024994>,  <44.525166, 44.236221, 47.049370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126938, 44.264870, 47.024994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059548, -0.021436, -0.997995,
		-0.072787, -0.997201, 0.017075,
		-0.995568, 0.071625, -0.060941,
		43.828266, 44.286354, 47.006710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378277, 43.794369, 46.494064>,  <44.525166, 44.236221, 47.049370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378277, 43.794369, 46.494064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038727, 44.000256, 46.542213>,  <43.834999, 44.123787, 46.571102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.038727, 44.000256, 46.542213>,  <44.378277, 43.794369, 46.494064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.038727, 44.000256, 46.542213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116865, 0.039341, -0.992368,
		-0.515520, -0.856460, 0.026756,
		-0.848871, 0.514713, 0.120372,
		43.784065, 44.154671, 46.578323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858887, 43.421875, 46.044655>,  <44.378277, 43.794369, 46.494064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858887, 43.421875, 46.044655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760086, 43.803627, 46.111763>,  <43.700806, 44.032677, 46.152027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760086, 43.803627, 46.111763>,  <43.858887, 43.421875, 46.044655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760086, 43.803627, 46.111763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231764, 0.109929, -0.966541,
		-0.940891, -0.277622, 0.194038,
		-0.247003, 0.954380, 0.167774,
		43.685986, 44.089943, 46.162094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336884, 43.466618, 45.579662>,  <43.858887, 43.421875, 46.044655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336884, 43.466618, 45.579662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443169, 43.842922, 45.663914>,  <43.506939, 44.068707, 45.714466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443169, 43.842922, 45.663914>,  <43.336884, 43.466618, 45.579662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443169, 43.842922, 45.663914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136828, 0.253073, -0.957722,
		-0.954293, 0.225659, 0.195968,
		0.265713, 0.940761, 0.210629,
		43.522884, 44.125149, 45.727104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752316, 43.968506, 45.298023>,  <43.336884, 43.466618, 45.579662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752316, 43.968506, 45.298023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108612, 44.144321, 45.344299>,  <43.322392, 44.249809, 45.372066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108612, 44.144321, 45.344299>,  <42.752316, 43.968506, 45.298023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108612, 44.144321, 45.344299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101354, 0.440230, -0.892147,
		-0.443062, 0.782947, 0.436680,
		0.890743, 0.439535, 0.115694,
		43.375835, 44.276180, 45.379009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589767, 44.710102, 45.361977>,  <42.752316, 43.968506, 45.298023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589767, 44.710102, 45.361977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958420, 44.637718, 45.224663>,  <43.179611, 44.594288, 45.142273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.958420, 44.637718, 45.224663>,  <42.589767, 44.710102, 45.361977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958420, 44.637718, 45.224663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233263, 0.448631, -0.862739,
		0.310133, 0.875205, 0.371261,
		0.921632, -0.180962, -0.343288,
		43.234909, 44.583431, 45.121677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648846, 45.180553, 44.879128>,  <42.589767, 44.710102, 45.361977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648846, 45.180553, 44.879128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974129, 44.963573, 44.794807>,  <43.169300, 44.833385, 44.744213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974129, 44.963573, 44.794807>,  <42.648846, 45.180553, 44.879128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974129, 44.963573, 44.794807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057694, 0.435587, -0.898296,
		0.579101, 0.718342, 0.385521,
		0.813212, -0.542447, -0.210805,
		43.218094, 44.800838, 44.731567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090019, 45.667576, 44.629990>,  <42.648846, 45.180553, 44.879128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090019, 45.667576, 44.629990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233727, 45.327438, 44.476189>,  <43.319950, 45.123356, 44.383907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233727, 45.327438, 44.476189>,  <43.090019, 45.667576, 44.629990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233727, 45.327438, 44.476189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064487, 0.433642, -0.898775,
		0.931004, 0.298104, 0.210629,
		0.359266, -0.850346, -0.384498,
		43.341507, 45.072334, 44.360840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680843, 45.868336, 44.213348>,  <43.090019, 45.667576, 44.629990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680843, 45.868336, 44.213348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539536, 45.512997, 44.096016>,  <43.454750, 45.299793, 44.025616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539536, 45.512997, 44.096016>,  <43.680843, 45.868336, 44.213348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539536, 45.512997, 44.096016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109796, 0.272016, -0.956008,
		0.929057, -0.369933, 0.001443,
		-0.353267, -0.888345, -0.293336,
		43.433556, 45.246494, 44.008015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052731, 45.823421, 43.520870>,  <43.680843, 45.868336, 44.213348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052731, 45.823421, 43.520870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780411, 45.530464, 43.516708>,  <43.617020, 45.354691, 43.514214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.780411, 45.530464, 43.516708>,  <44.052731, 45.823421, 43.520870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780411, 45.530464, 43.516708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041419, 0.052671, -0.997753,
		0.731298, -0.678838, -0.066194,
		-0.680799, -0.732397, -0.010402,
		43.576172, 45.310745, 43.513588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230534, 45.480286, 42.994682>,  <44.052731, 45.823421, 43.520870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230534, 45.480286, 42.994682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850052, 45.362289, 43.030861>,  <43.621761, 45.291492, 43.052567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850052, 45.362289, 43.030861>,  <44.230534, 45.480286, 42.994682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850052, 45.362289, 43.030861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149418, 0.183922, -0.971518,
		0.269959, -0.937630, -0.219025,
		-0.951208, -0.294996, 0.090447,
		43.564690, 45.273792, 43.057995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092041, 44.886604, 42.640800>,  <44.230534, 45.480286, 42.994682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092041, 44.886604, 42.640800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746948, 45.088711, 42.648880>,  <43.539894, 45.209972, 42.653728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.746948, 45.088711, 42.648880>,  <44.092041, 44.886604, 42.640800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746948, 45.088711, 42.648880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022522, 0.078308, -0.996675,
		-0.505166, -0.859404, -0.078938,
		-0.862728, 0.505264, 0.020203,
		43.488129, 45.240292, 42.654942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.732269, 44.687511, 42.034676>,  <44.092041, 44.886604, 42.640800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.732269, 44.687511, 42.034676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520302, 45.014042, 42.126579>,  <43.393120, 45.209961, 42.181721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520302, 45.014042, 42.126579>,  <43.732269, 44.687511, 42.034676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520302, 45.014042, 42.126579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194480, 0.146731, -0.969870,
		-0.825445, -0.558640, 0.081004,
		-0.529922, 0.816328, 0.229763,
		43.361324, 45.258942, 42.195507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953621, 44.572090, 41.903454>,  <43.732269, 44.687511, 42.034676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953621, 44.572090, 41.903454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024002, 44.965794, 41.910137>,  <43.066231, 45.202015, 41.914146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.024002, 44.965794, 41.910137>,  <42.953621, 44.572090, 41.903454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024002, 44.965794, 41.910137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407431, 0.088270, -0.908960,
		-0.896125, 0.153130, 0.416548,
		0.175957, 0.984256, 0.016711,
		43.076790, 45.261070, 41.915150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369453, 44.936760, 41.443768>,  <42.953621, 44.572090, 41.903454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369453, 44.936760, 41.443768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641029, 45.229523, 41.466942>,  <42.803974, 45.405178, 41.480846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641029, 45.229523, 41.466942>,  <42.369453, 44.936760, 41.443768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641029, 45.229523, 41.466942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100175, 0.170522, -0.980249,
		-0.727327, 0.659727, 0.189093,
		0.678941, 0.731904, 0.057938,
		42.844711, 45.449093, 41.484322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024097, 45.433540, 41.199509>,  <42.369453, 44.936760, 41.443768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024097, 45.433540, 41.199509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410706, 45.527058, 41.157204>,  <42.642670, 45.583168, 41.131821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410706, 45.527058, 41.157204>,  <42.024097, 45.433540, 41.199509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410706, 45.527058, 41.157204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166475, 0.257649, -0.951789,
		-0.195269, 0.937528, 0.287942,
		0.966518, 0.233790, -0.105764,
		42.700661, 45.597195, 41.125473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978886, 46.040985, 40.820137>,  <42.024097, 45.433540, 41.199509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978886, 46.040985, 40.820137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365082, 45.943943, 40.782257>,  <42.596798, 45.885715, 40.759529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.365082, 45.943943, 40.782257>,  <41.978886, 46.040985, 40.820137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365082, 45.943943, 40.782257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029683, 0.258739, -0.965491,
		0.258739, 0.934984, 0.242609,
		0.965491, -0.242609, -0.094699,
		42.654728, 45.871159, 40.753849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.345982, 46.630527, 40.420147>,  <41.978886, 46.040985, 40.820137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.345982, 46.630527, 40.420147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575127, 46.305283, 40.378830>,  <42.712612, 46.110134, 40.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575127, 46.305283, 40.378830>,  <42.345982, 46.630527, 40.420147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575127, 46.305283, 40.378830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091244, 0.188501, -0.977825,
		0.814557, 0.550735, 0.182177,
		0.572863, -0.813117, -0.103294,
		42.746986, 46.061348, 40.347843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726391, 46.769562, 39.894070>,  <42.345982, 46.630527, 40.420147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726391, 46.769562, 39.894070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785126, 46.374779, 39.920475>,  <42.820366, 46.137909, 39.936317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785126, 46.374779, 39.920475>,  <42.726391, 46.769562, 39.894070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785126, 46.374779, 39.920475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002520, -0.067106, -0.997743,
		0.989157, 0.146339, -0.012341,
		0.146837, -0.986956, 0.066010,
		42.829178, 46.078693, 39.940277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260784, 46.573238, 39.452251>,  <42.726391, 46.769562, 39.894070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260784, 46.573238, 39.452251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031876, 46.248001, 39.494946>,  <42.894531, 46.052860, 39.520561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031876, 46.248001, 39.494946>,  <43.260784, 46.573238, 39.452251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031876, 46.248001, 39.494946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130885, -0.219048, -0.966895,
		0.809554, -0.539354, 0.231776,
		-0.572269, -0.813090, 0.106738,
		42.860195, 46.004074, 39.526966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625736, 46.064568, 39.079102>,  <43.260784, 46.573238, 39.452251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625736, 46.064568, 39.079102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252808, 45.927979, 39.126728>,  <43.029049, 45.846027, 39.155304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252808, 45.927979, 39.126728>,  <43.625736, 46.064568, 39.079102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252808, 45.927979, 39.126728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006613, -0.345280, -0.938477,
		0.361572, -0.874174, 0.324170,
		-0.932321, -0.341471, 0.119062,
		42.973110, 45.825539, 39.162445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627579, 45.387489, 39.105236>,  <43.625736, 46.064568, 39.079102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627579, 45.387489, 39.105236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261421, 45.493412, 38.983955>,  <43.041729, 45.556965, 38.911186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261421, 45.493412, 38.983955>,  <43.627579, 45.387489, 39.105236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261421, 45.493412, 38.983955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179211, -0.406371, -0.895961,
		-0.360473, -0.874493, 0.324532,
		-0.915392, 0.264810, -0.303205,
		42.986805, 45.572857, 38.892994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456402, 44.892532, 38.576401>,  <43.627579, 45.387489, 39.105236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456402, 44.892532, 38.576401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160088, 45.160625, 38.558392>,  <42.982300, 45.321484, 38.547585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160088, 45.160625, 38.558392>,  <43.456402, 44.892532, 38.576401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160088, 45.160625, 38.558392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165598, -0.247163, -0.954719,
		-0.651015, -0.699782, 0.294083,
		-0.740781, 0.670236, -0.045024,
		42.937855, 45.361694, 38.544884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862366, 44.560322, 38.134022>,  <43.456402, 44.892532, 38.576401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862366, 44.560322, 38.134022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828537, 44.958431, 38.114929>,  <42.808239, 45.197296, 38.103474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828537, 44.958431, 38.114929>,  <42.862366, 44.560322, 38.134022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828537, 44.958431, 38.114929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117056, -0.057498, -0.991459,
		-0.989518, -0.078261, 0.121366,
		-0.084570, 0.995273, -0.047734,
		42.803165, 45.257011, 38.100609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277504, 44.653767, 37.702179>,  <42.862366, 44.560322, 38.134022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277504, 44.653767, 37.702179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498100, 44.987179, 37.689064>,  <42.630459, 45.187225, 37.681194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498100, 44.987179, 37.689064>,  <42.277504, 44.653767, 37.702179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498100, 44.987179, 37.689064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156278, 0.064636, -0.985596,
		-0.819409, 0.548674, 0.165909,
		0.551494, 0.833534, -0.032783,
		42.663548, 45.237240, 37.679230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896679, 45.158894, 37.188606>,  <42.277504, 44.653767, 37.702179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896679, 45.158894, 37.188606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281715, 45.256386, 37.235973>,  <42.512737, 45.314880, 37.264393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281715, 45.256386, 37.235973>,  <41.896679, 45.158894, 37.188606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281715, 45.256386, 37.235973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068255, 0.204840, -0.976413,
		-0.262235, 0.947965, 0.180541,
		0.962587, 0.243727, 0.118419,
		42.570492, 45.329502, 37.271500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996136, 45.725830, 36.613632>,  <41.896679, 45.158894, 37.188606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996136, 45.725830, 36.613632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345718, 45.579098, 36.741150>,  <42.555470, 45.491058, 36.817661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345718, 45.579098, 36.741150>,  <41.996136, 45.725830, 36.613632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345718, 45.579098, 36.741150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326506, -0.042708, -0.944230,
		0.359987, 0.929307, 0.082447,
		0.873958, -0.366830, 0.318798,
		42.607906, 45.469048, 36.836788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347134, 45.984493, 36.105446>,  <41.996136, 45.725830, 36.613632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347134, 45.984493, 36.105446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598396, 45.727222, 36.280602>,  <42.749153, 45.572861, 36.385693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598396, 45.727222, 36.280602>,  <42.347134, 45.984493, 36.105446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598396, 45.727222, 36.280602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395722, -0.220478, -0.891512,
		0.669941, 0.733292, 0.116023,
		0.628158, -0.643174, 0.437887,
		42.786842, 45.534271, 36.411968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035473, 46.186695, 35.863510>,  <42.347134, 45.984493, 36.105446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035473, 46.186695, 35.863510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037285, 45.805069, 35.983337>,  <43.038372, 45.576092, 36.055233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037285, 45.805069, 35.983337>,  <43.035473, 46.186695, 35.863510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037285, 45.805069, 35.983337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183263, -0.293704, -0.938164,
		0.983054, 0.059145, 0.173515,
		0.004526, -0.954065, 0.299566,
		43.038643, 45.518848, 36.073208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712791, 45.805557, 35.563725>,  <43.035473, 46.186695, 35.863510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712791, 45.805557, 35.563725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419228, 45.543129, 35.634098>,  <43.243092, 45.385670, 35.676323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419228, 45.543129, 35.634098>,  <43.712791, 45.805557, 35.563725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419228, 45.543129, 35.634098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046637, -0.307063, -0.950546,
		0.677649, -0.689405, 0.255953,
		-0.733905, -0.656074, 0.175929,
		43.199055, 45.346306, 35.686878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870514, 45.331570, 35.046059>,  <43.712791, 45.805557, 35.563725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870514, 45.331570, 35.046059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509819, 45.231579, 35.187130>,  <43.293404, 45.171585, 35.271774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.509819, 45.231579, 35.187130>,  <43.870514, 45.331570, 35.046059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509819, 45.231579, 35.187130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188995, -0.505775, -0.841708,
		0.388785, -0.825653, 0.408831,
		-0.901736, -0.249976, 0.352682,
		43.239300, 45.156586, 35.292934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914864, 44.661804, 35.035126>,  <43.870514, 45.331570, 35.046059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914864, 44.661804, 35.035126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530014, 44.770611, 35.028038>,  <43.299103, 44.835896, 35.023785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530014, 44.770611, 35.028038>,  <43.914864, 44.661804, 35.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530014, 44.770611, 35.028038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114226, -0.461340, -0.879840,
		-0.247510, -0.844494, 0.474940,
		-0.962129, 0.272020, -0.017723,
		43.241375, 44.852219, 35.022720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519268, 44.089809, 34.832970>,  <43.914864, 44.661804, 35.035126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519268, 44.089809, 34.832970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292992, 44.402569, 34.728191>,  <43.157227, 44.590225, 34.665325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292992, 44.402569, 34.728191>,  <43.519268, 44.089809, 34.832970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292992, 44.402569, 34.728191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001905, -0.318902, -0.947785,
		-0.824613, -0.535657, 0.181890,
		-0.565693, 0.781903, -0.261951,
		43.123283, 44.637138, 34.649605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089142, 43.810471, 34.337181>,  <43.519268, 44.089809, 34.832970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089142, 43.810471, 34.337181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079872, 44.204777, 34.270569>,  <43.074310, 44.441360, 34.230602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079872, 44.204777, 34.270569>,  <43.089142, 43.810471, 34.337181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079872, 44.204777, 34.270569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063472, -0.167694, -0.983793,
		-0.997714, -0.012233, 0.066456,
		-0.023179, 0.985763, -0.166534,
		43.072918, 44.500507, 34.220608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587547, 43.895599, 33.808746>,  <43.089142, 43.810471, 34.337181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587547, 43.895599, 33.808746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769257, 44.251026, 33.783218>,  <42.878284, 44.464283, 33.767902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769257, 44.251026, 33.783218>,  <42.587547, 43.895599, 33.808746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769257, 44.251026, 33.783218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155229, 0.008406, -0.987843,
		-0.877232, 0.458661, 0.141750,
		0.454277, 0.888571, -0.063824,
		42.905540, 44.517597, 33.764072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212128, 44.411198, 33.414654>,  <42.587547, 43.895599, 33.808746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212128, 44.411198, 33.414654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566681, 44.594807, 33.390587>,  <42.779415, 44.704971, 33.376148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.566681, 44.594807, 33.390587>,  <42.212128, 44.411198, 33.414654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566681, 44.594807, 33.390587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052183, -0.030067, -0.998185,
		-0.459998, 0.887916, -0.002697,
		0.886385, 0.459022, -0.060165,
		42.832596, 44.732513, 33.372536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074654, 44.974110, 33.011406>,  <42.212128, 44.411198, 33.414654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074654, 44.974110, 33.011406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464806, 44.888977, 32.988281>,  <42.698895, 44.837898, 32.974407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464806, 44.888977, 32.988281>,  <42.074654, 44.974110, 33.011406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464806, 44.888977, 32.988281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099803, -0.192219, -0.976264,
		0.196669, 0.957995, -0.208727,
		0.975377, -0.212832, -0.057807,
		42.757420, 44.825127, 32.970940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.488525, 43.539688, 32.447964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.118858, 43.670849, 32.526340>,  <45.897057, 43.749546, 32.573364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.118858, 43.670849, 32.526340>,  <46.488525, 43.539688, 32.447964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118858, 43.670849, 32.526340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270528, 0.199703, 0.941771,
		0.269681, 0.923362, -0.273266,
		-0.924168, 0.327904, 0.195939,
		45.841606, 43.769218, 32.585121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499065, 44.324215, 32.815079>,  <46.488525, 43.539688, 32.447964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499065, 44.324215, 32.815079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.168106, 44.116043, 32.899521>,  <45.969528, 43.991142, 32.950188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.168106, 44.116043, 32.899521>,  <46.499065, 44.324215, 32.815079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168106, 44.116043, 32.899521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103525, 0.228119, 0.968114,
		-0.551988, 0.822872, -0.134869,
		-0.827400, -0.520425, 0.211107,
		45.919888, 43.959915, 32.962852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035000, 44.835026, 33.287033>,  <46.499065, 44.324215, 32.815079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035000, 44.835026, 33.287033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.905067, 44.468971, 33.382538>,  <45.827106, 44.249336, 33.439842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.905067, 44.468971, 33.382538>,  <46.035000, 44.835026, 33.287033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905067, 44.468971, 33.382538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000109, 0.252418, 0.967618,
		-0.945773, 0.314337, -0.081893,
		-0.324830, -0.915138, 0.238764,
		45.807617, 44.194431, 33.454166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641407, 44.986637, 33.838955>,  <46.035000, 44.835026, 33.287033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641407, 44.986637, 33.838955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.713959, 44.594479, 33.869759>,  <45.757488, 44.359184, 33.888241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.713959, 44.594479, 33.869759>,  <45.641407, 44.986637, 33.838955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713959, 44.594479, 33.869759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030527, 0.083881, 0.996008,
		-0.982940, -0.178300, 0.045143,
		0.181375, -0.980394, 0.077007,
		45.768372, 44.300362, 33.892860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129517, 44.700325, 34.333786>,  <45.641407, 44.986637, 33.838955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129517, 44.700325, 34.333786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.442177, 44.450916, 34.340031>,  <45.629772, 44.301270, 34.343777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.442177, 44.450916, 34.340031>,  <45.129517, 44.700325, 34.333786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442177, 44.450916, 34.340031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035876, -0.019962, 0.999157,
		-0.622685, -0.781550, -0.037973,
		0.781649, -0.623523, 0.015609,
		45.676670, 44.263859, 34.344715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951466, 44.290260, 34.784569>,  <45.129517, 44.700325, 34.333786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951466, 44.290260, 34.784569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.340240, 44.197021, 34.771839>,  <45.573505, 44.141079, 34.764202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.340240, 44.197021, 34.771839>,  <44.951466, 44.290260, 34.784569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340240, 44.197021, 34.771839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005003, -0.114746, 0.993382,
		-0.235205, -0.965660, -0.110359,
		0.971933, -0.233097, -0.031820,
		45.631821, 44.127094, 34.762295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076984, 43.882183, 35.395435>,  <44.951466, 44.290260, 34.784569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076984, 43.882183, 35.395435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.459763, 43.903976, 35.281399>,  <45.689430, 43.917053, 35.212975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.459763, 43.903976, 35.281399>,  <45.076984, 43.882183, 35.395435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459763, 43.903976, 35.281399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290231, -0.167590, 0.942167,
		0.003557, -0.984350, -0.176189,
		0.956950, 0.054487, -0.285093,
		45.746849, 43.920322, 35.195869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383274, 43.262085, 35.587257>,  <45.076984, 43.882183, 35.395435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383274, 43.262085, 35.587257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.643753, 43.565361, 35.574059>,  <45.800041, 43.747326, 35.566139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.643753, 43.565361, 35.574059>,  <45.383274, 43.262085, 35.587257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643753, 43.565361, 35.574059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216181, -0.143647, 0.965728,
		0.727463, -0.636018, -0.257448,
		0.651202, 0.758187, -0.032997,
		45.839115, 43.792816, 35.564159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.054859, 43.020439, 35.781342>,  <45.383274, 43.262085, 35.587257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.054859, 43.020439, 35.781342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.060158, 43.414810, 35.848007>,  <46.063335, 43.651432, 35.888008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.060158, 43.414810, 35.848007>,  <46.054859, 43.020439, 35.781342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060158, 43.414810, 35.848007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311619, -0.162450, 0.936218,
		0.950115, 0.039540, -0.309384,
		0.013242, 0.985924, 0.166668,
		46.064129, 43.710587, 35.898006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.605572, 43.250797, 36.130630>,  <46.054859, 43.020439, 35.781342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.605572, 43.250797, 36.130630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.366989, 43.560936, 36.213657>,  <46.223839, 43.747017, 36.263474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.366989, 43.560936, 36.213657>,  <46.605572, 43.250797, 36.130630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366989, 43.560936, 36.213657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359640, 0.026966, 0.932702,
		0.717567, 0.630963, -0.294928,
		-0.596453, 0.775344, 0.207570,
		46.188053, 43.793541, 36.275928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.089787, 43.842430, 36.471893>,  <46.605572, 43.250797, 36.130630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.089787, 43.842430, 36.471893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.699211, 43.851643, 36.557713>,  <46.464867, 43.857170, 36.609203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.699211, 43.851643, 36.557713>,  <47.089787, 43.842430, 36.471893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699211, 43.851643, 36.557713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215398, 0.044712, 0.975502,
		0.012875, 0.998734, -0.048619,
		-0.976442, 0.023032, 0.214549,
		46.406281, 43.858551, 36.622078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139145, 44.365982, 37.026814>,  <47.089787, 43.842430, 36.471893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139145, 44.365982, 37.026814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.770630, 44.213341, 37.056767>,  <46.549522, 44.121758, 37.074738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.770630, 44.213341, 37.056767>,  <47.139145, 44.365982, 37.026814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.770630, 44.213341, 37.056767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019301, 0.147443, 0.988882,
		-0.388401, 0.912491, -0.128473,
		-0.921288, -0.381603, 0.074879,
		46.494244, 44.098858, 37.079231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.753815, 44.773750, 37.313435>,  <47.139145, 44.365982, 37.026814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.753815, 44.773750, 37.313435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.561348, 44.431419, 37.389362>,  <46.445866, 44.226021, 37.434921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.561348, 44.431419, 37.389362>,  <46.753815, 44.773750, 37.313435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561348, 44.431419, 37.389362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091552, 0.166295, 0.981817,
		-0.871834, 0.489799, -0.001663,
		-0.481170, -0.855829, 0.189823,
		46.416996, 44.174671, 37.446308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278240, 44.979721, 37.848618>,  <46.753815, 44.773750, 37.313435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278240, 44.979721, 37.848618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.260849, 44.580933, 37.874432>,  <46.250416, 44.341660, 37.889919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.260849, 44.580933, 37.874432>,  <46.278240, 44.979721, 37.848618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260849, 44.580933, 37.874432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001014, 0.064557, 0.997914,
		-0.999054, 0.043453, -0.001796,
		-0.043478, -0.996968, 0.064540,
		46.247807, 44.281841, 37.893795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727623, 44.880829, 38.232281>,  <46.278240, 44.979721, 37.848618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727623, 44.880829, 38.232281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.934738, 44.539715, 38.259579>,  <46.059006, 44.335045, 38.275955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.934738, 44.539715, 38.259579>,  <45.727623, 44.880829, 38.232281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934738, 44.539715, 38.259579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045926, 0.107360, 0.993159,
		-0.854276, -0.511110, 0.094755,
		0.517787, -0.852784, 0.068242,
		46.090073, 44.283878, 38.280052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448208, 44.564053, 38.765686>,  <45.727623, 44.880829, 38.232281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448208, 44.564053, 38.765686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.802376, 44.379436, 38.743713>,  <46.014877, 44.268665, 38.730530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.802376, 44.379436, 38.743713>,  <45.448208, 44.564053, 38.765686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.802376, 44.379436, 38.743713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061278, -0.001243, 0.998120,
		-0.460740, -0.887119, 0.027182,
		0.885417, -0.461539, -0.054934,
		46.068001, 44.240974, 38.727234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409481, 44.092510, 39.246006>,  <45.448208, 44.564053, 38.765686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409481, 44.092510, 39.246006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.806221, 44.109318, 39.197899>,  <46.044266, 44.119404, 39.169037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.806221, 44.109318, 39.197899>,  <45.409481, 44.092510, 39.246006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806221, 44.109318, 39.197899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125684, -0.168594, 0.977640,
		0.020810, -0.984789, -0.172502,
		0.991852, 0.042025, -0.120264,
		46.103775, 44.121925, 39.161819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680866, 43.505142, 39.780052>,  <45.409481, 44.092510, 39.246006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680866, 43.505142, 39.780052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.935471, 43.799648, 39.688164>,  <46.088234, 43.976353, 39.633030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.935471, 43.799648, 39.688164>,  <45.680866, 43.505142, 39.780052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935471, 43.799648, 39.688164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117316, 0.201961, 0.972342,
		0.762296, -0.645853, 0.042174,
		0.636508, 0.736265, -0.229723,
		46.126423, 44.020527, 39.619247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990917, 43.567383, 40.333755>,  <45.680866, 43.505142, 39.780052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990917, 43.567383, 40.333755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.146767, 43.901089, 40.177708>,  <46.240276, 44.101315, 40.084080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.146767, 43.901089, 40.177708>,  <45.990917, 43.567383, 40.333755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.146767, 43.901089, 40.177708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231879, 0.321082, 0.918225,
		0.891305, -0.448223, -0.068348,
		0.389624, 0.834268, -0.390116,
		46.263653, 44.151367, 40.060673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685810, 43.698761, 40.616371>,  <45.990917, 43.567383, 40.333755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685810, 43.698761, 40.616371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.560852, 44.062031, 40.504929>,  <46.485878, 44.279995, 40.438061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.560852, 44.062031, 40.504929>,  <46.685810, 43.698761, 40.616371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560852, 44.062031, 40.504929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215867, 0.353483, 0.910193,
		0.925101, 0.224196, -0.306471,
		-0.312394, 0.908177, -0.278611,
		46.467133, 44.334484, 40.421345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.240284, 44.145947, 40.822884>,  <46.685810, 43.698761, 40.616371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.240284, 44.145947, 40.822884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.929626, 44.395882, 40.790855>,  <46.743233, 44.545841, 40.771641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.929626, 44.395882, 40.790855>,  <47.240284, 44.145947, 40.822884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.929626, 44.395882, 40.790855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209898, 0.376518, 0.902318,
		0.593947, 0.683970, -0.423571,
		-0.776640, 0.624836, -0.080068,
		46.696636, 44.583332, 40.766834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.445896, 44.767014, 41.054779>,  <47.240284, 44.145947, 40.822884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.445896, 44.767014, 41.054779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.046730, 44.781006, 41.076469>,  <46.807232, 44.789402, 41.089481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.046730, 44.781006, 41.076469>,  <47.445896, 44.767014, 41.054779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046730, 44.781006, 41.076469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061305, 0.251704, 0.965861,
		0.020137, 0.967172, -0.253324,
		-0.997916, 0.034980, 0.054224,
		46.747356, 44.791500, 41.092735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.412903, 45.277351, 41.559807>,  <47.445896, 44.767014, 41.054779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.412903, 45.277351, 41.559807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.048286, 45.114670, 41.535507>,  <46.829517, 45.017059, 41.520927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.048286, 45.114670, 41.535507>,  <47.412903, 45.277351, 41.559807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.048286, 45.114670, 41.535507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090542, 0.054396, 0.994406,
		-0.401127, 0.911938, -0.086408,
		-0.911537, -0.406707, -0.060749,
		46.774826, 44.992657, 41.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.005875, 45.740776, 41.939255>,  <47.412903, 45.277351, 41.559807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.005875, 45.740776, 41.939255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.784668, 45.407589, 41.931942>,  <46.651943, 45.207676, 41.927555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.784668, 45.407589, 41.931942>,  <47.005875, 45.740776, 41.939255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784668, 45.407589, 41.931942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245864, 0.142186, 0.958819,
		-0.796069, 0.534736, -0.283429,
		-0.553014, -0.832971, -0.018283,
		46.618763, 45.157696, 41.926456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.298737, 45.833263, 42.222874>,  <47.005875, 45.740776, 41.939255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.298737, 45.833263, 42.222874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.357323, 45.442326, 42.283997>,  <46.392475, 45.207764, 42.320671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.357323, 45.442326, 42.283997>,  <46.298737, 45.833263, 42.222874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357323, 45.442326, 42.283997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246763, 0.113495, 0.962407,
		-0.957944, -0.178664, -0.224549,
		0.146462, -0.977343, 0.152809,
		46.401260, 45.149124, 42.329838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769386, 45.592476, 42.623386>,  <46.298737, 45.833263, 42.222874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769386, 45.592476, 42.623386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.049019, 45.311737, 42.678082>,  <46.216797, 45.143295, 42.710899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.049019, 45.311737, 42.678082>,  <45.769386, 45.592476, 42.623386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049019, 45.311737, 42.678082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116040, 0.077337, 0.990229,
		-0.705563, -0.708118, -0.027377,
		0.699082, -0.701846, 0.136736,
		46.258743, 45.101185, 42.719101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394234, 45.186150, 42.949585>,  <45.769386, 45.592476, 42.623386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394234, 45.186150, 42.949585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.777107, 45.119598, 43.044342>,  <46.006832, 45.079666, 43.101196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.777107, 45.119598, 43.044342>,  <45.394234, 45.186150, 42.949585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777107, 45.119598, 43.044342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242553, -0.014270, 0.970033,
		-0.158018, -0.985958, -0.054016,
		0.957183, -0.166384, 0.236892,
		46.064262, 45.069683, 43.115410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325142, 44.701645, 43.506126>,  <45.394234, 45.186150, 42.949585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325142, 44.701645, 43.506126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.706100, 44.812969, 43.555912>,  <45.934673, 44.879765, 43.585785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.706100, 44.812969, 43.555912>,  <45.325142, 44.701645, 43.506126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706100, 44.812969, 43.555912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084195, -0.152274, 0.984746,
		0.293021, -0.948343, -0.121592,
		0.952392, 0.278314, 0.124465,
		45.991817, 44.896461, 43.593250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632874, 44.167168, 43.879173>,  <45.325142, 44.701645, 43.506126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632874, 44.167168, 43.879173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.874947, 44.482079, 43.926414>,  <46.020191, 44.671024, 43.954762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.874947, 44.482079, 43.926414>,  <45.632874, 44.167168, 43.879173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874947, 44.482079, 43.926414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078355, -0.206542, 0.975295,
		0.792222, -0.580977, -0.186682,
		0.605182, 0.787277, 0.118105,
		46.056499, 44.718262, 43.961845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252571, 43.931271, 44.271587>,  <45.632874, 44.167168, 43.879173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252571, 43.931271, 44.271587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.178719, 44.319939, 44.330616>,  <46.134407, 44.553139, 44.366032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.178719, 44.319939, 44.330616>,  <46.252571, 43.931271, 44.271587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178719, 44.319939, 44.330616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085804, -0.165513, 0.982468,
		0.979056, 0.168729, 0.113931,
		-0.184628, 0.971667, 0.147569,
		46.123329, 44.611439, 44.374886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641953, 44.057373, 44.833626>,  <46.252571, 43.931271, 44.271587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641953, 44.057373, 44.833626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.398636, 44.373135, 44.800583>,  <46.252647, 44.562592, 44.780758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.398636, 44.373135, 44.800583>,  <46.641953, 44.057373, 44.833626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398636, 44.373135, 44.800583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056246, 0.146689, 0.987582,
		0.791721, 0.596088, -0.133630,
		-0.608288, 0.789406, -0.082609,
		46.216148, 44.609955, 44.775799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006523, 44.605110, 45.260475>,  <46.641953, 44.057373, 44.833626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006523, 44.605110, 45.260475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.615616, 44.676170, 45.214191>,  <46.381073, 44.718807, 45.186420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.615616, 44.676170, 45.214191>,  <47.006523, 44.605110, 45.260475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615616, 44.676170, 45.214191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106515, 0.060486, 0.992470,
		0.183309, 0.982233, -0.040189,
		-0.977268, 0.177648, -0.115711,
		46.322437, 44.729465, 45.179478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867550, 45.151054, 45.598358>,  <47.006523, 44.605110, 45.260475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867550, 45.151054, 45.598358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.497704, 45.001003, 45.571934>,  <46.275795, 44.910973, 45.556080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.497704, 45.001003, 45.571934>,  <46.867550, 45.151054, 45.598358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497704, 45.001003, 45.571934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109085, 0.094616, 0.989519,
		-0.364945, 0.922132, -0.128404,
		-0.924616, -0.375128, -0.066061,
		46.220318, 44.888466, 45.552116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486946, 45.669788, 45.918114>,  <46.867550, 45.151054, 45.598358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486946, 45.669788, 45.918114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.267731, 45.335213, 45.916389>,  <46.136200, 45.134468, 45.915356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.267731, 45.335213, 45.916389>,  <46.486946, 45.669788, 45.918114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.267731, 45.335213, 45.916389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057359, 0.032434, 0.997827,
		-0.834485, 0.547093, -0.065752,
		-0.548037, -0.836443, -0.004315,
		46.103321, 45.084278, 45.915096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786636, 45.825996, 46.179546>,  <46.486946, 45.669788, 45.918114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786636, 45.825996, 46.179546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.858589, 45.439003, 46.250679>,  <45.901760, 45.206806, 46.293358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.858589, 45.439003, 46.250679>,  <45.786636, 45.825996, 46.179546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858589, 45.439003, 46.250679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062878, 0.191724, 0.979433,
		-0.981676, -0.165001, 0.095321,
		0.179883, -0.967479, 0.177836,
		45.912556, 45.148758, 46.304031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423771, 45.648701, 46.719273>,  <45.786636, 45.825996, 46.179546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423771, 45.648701, 46.719273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.708420, 45.367683, 46.720879>,  <45.879211, 45.199074, 46.721840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.708420, 45.367683, 46.720879>,  <45.423771, 45.648701, 46.719273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708420, 45.367683, 46.720879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172261, 0.180019, 0.968462,
		-0.681113, -0.688492, 0.249127,
		0.711626, -0.702547, 0.004013,
		45.921909, 45.156918, 46.722084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329887, 45.336685, 47.372826>,  <45.423771, 45.648701, 46.719273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329887, 45.336685, 47.372826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.697433, 45.215092, 47.272198>,  <45.917961, 45.142136, 47.211823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.697433, 45.215092, 47.272198>,  <45.329887, 45.336685, 47.372826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697433, 45.215092, 47.272198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249698, -0.045700, 0.967245,
		-0.305525, -0.951580, 0.033913,
		0.918861, -0.303986, -0.251570,
		45.973091, 45.123898, 47.196728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423199, 44.687366, 47.767956>,  <45.329887, 45.336685, 47.372826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423199, 44.687366, 47.767956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.792717, 44.787647, 47.652195>,  <46.014427, 44.847816, 47.582741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.792717, 44.787647, 47.652195>,  <45.423199, 44.687366, 47.767956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792717, 44.787647, 47.652195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324674, -0.112271, 0.939139,
		0.202950, -0.961533, -0.185111,
		0.923795, 0.250699, -0.289399,
		46.069855, 44.862858, 47.565376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762787, 44.199303, 48.012684>,  <45.423199, 44.687366, 47.767956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762787, 44.199303, 48.012684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.010292, 44.511883, 47.980526>,  <46.158794, 44.699432, 47.961231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.010292, 44.511883, 47.980526>,  <45.762787, 44.199303, 48.012684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010292, 44.511883, 47.980526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367306, -0.197336, 0.908925,
		0.694416, -0.591941, -0.409136,
		0.618767, 0.781451, -0.080391,
		46.195923, 44.746319, 47.956409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377411, 43.978817, 48.237595>,  <45.762787, 44.199303, 48.012684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377411, 43.978817, 48.237595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.378677, 44.376106, 48.284065>,  <46.379436, 44.614479, 48.311947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.378677, 44.376106, 48.284065>,  <46.377411, 43.978817, 48.237595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378677, 44.376106, 48.284065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458282, -0.104697, 0.882619,
		0.888801, 0.050446, -0.455508,
		0.003166, 0.993224, 0.116173,
		46.379627, 44.674072, 48.318916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.030155, 44.137478, 48.490425>,  <46.377411, 43.978817, 48.237595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.030155, 44.137478, 48.490425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.811165, 44.454475, 48.597923>,  <46.679771, 44.644672, 48.662422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.811165, 44.454475, 48.597923>,  <47.030155, 44.137478, 48.490425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811165, 44.454475, 48.597923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273855, -0.133791, 0.952420,
		0.790742, 0.595025, -0.143780,
		-0.547477, 0.792493, 0.268745,
		46.646923, 44.692223, 48.678547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.386665, 44.501156, 49.015442>,  <47.030155, 44.137478, 48.490425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.386665, 44.501156, 49.015442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.024757, 44.662430, 49.070320>,  <46.807613, 44.759193, 49.103249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.024757, 44.662430, 49.070320>,  <47.386665, 44.501156, 49.015442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.024757, 44.662430, 49.070320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109224, -0.091706, 0.989778,
		0.411650, 0.910510, 0.038935,
		-0.904773, 0.403189, 0.137200,
		46.753326, 44.783386, 49.111481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414173, 44.926430, 49.560383>,  <47.386665, 44.501156, 49.015442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414173, 44.926430, 49.560383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.016869, 44.890347, 49.531250>,  <46.778488, 44.868698, 49.513771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.016869, 44.890347, 49.531250>,  <47.414173, 44.926430, 49.560383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016869, 44.890347, 49.531250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069818, -0.036113, 0.996906,
		-0.092555, 0.995268, 0.029571,
		-0.993257, -0.090204, -0.072830,
		46.718891, 44.863285, 49.509399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.136154, 45.450211, 49.983757>,  <47.414173, 44.926430, 49.560383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.136154, 45.450211, 49.983757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.840271, 45.184322, 49.941849>,  <46.662743, 45.024788, 49.916706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.840271, 45.184322, 49.941849>,  <47.136154, 45.450211, 49.983757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840271, 45.184322, 49.941849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030058, -0.188172, 0.981676,
		-0.672255, 0.723006, 0.159173,
		-0.739709, -0.664721, -0.104767,
		46.618359, 44.984905, 49.910419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583073, 45.655582, 50.476589>,  <47.136154, 45.450211, 49.983757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583073, 45.655582, 50.476589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.541664, 45.269657, 50.379906>,  <46.516819, 45.038101, 50.321896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.541664, 45.269657, 50.379906>,  <46.583073, 45.655582, 50.476589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.541664, 45.269657, 50.379906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075226, -0.249910, 0.965343,
		-0.991779, 0.081749, 0.098449,
		-0.103520, -0.964812, -0.241706,
		46.510609, 44.980213, 50.307392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187153, 45.394997, 50.903198>,  <46.583073, 45.655582, 50.476589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187153, 45.394997, 50.903198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.354523, 45.050060, 50.789154>,  <46.454945, 44.843098, 50.720730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.354523, 45.050060, 50.789154>,  <46.187153, 45.394997, 50.903198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.354523, 45.050060, 50.789154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160526, -0.238753, 0.957720,
		-0.893955, -0.446497, 0.038530,
		0.418420, -0.862344, -0.285109,
		46.480049, 44.791359, 50.703621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.941822, 44.931320, 51.390491>,  <46.187153, 45.394997, 50.903198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.941822, 44.931320, 51.390491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.276047, 44.785198, 51.226349>,  <46.476582, 44.697525, 51.127865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.276047, 44.785198, 51.226349>,  <45.941822, 44.931320, 51.390491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276047, 44.785198, 51.226349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339321, -0.244292, 0.908396,
		-0.432092, -0.898260, -0.080163,
		0.835558, -0.365309, -0.410355,
		46.526714, 44.675606, 51.103241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906876, 44.222328, 51.471905>,  <45.941822, 44.931320, 51.390491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906876, 44.222328, 51.471905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.271523, 44.385159, 51.449139>,  <46.490311, 44.482857, 51.435478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.271523, 44.385159, 51.449139>,  <45.906876, 44.222328, 51.471905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.271523, 44.385159, 51.449139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237004, -0.407456, 0.881935,
		0.335823, -0.817478, -0.467923,
		0.911620, 0.407074, -0.056912,
		46.545010, 44.507282, 51.432064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271908, 43.798805, 52.029293>,  <45.906876, 44.222328, 51.471905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271908, 43.798805, 52.029293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.548615, 44.068272, 51.925266>,  <46.714638, 44.229950, 51.862850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.548615, 44.068272, 51.925266>,  <46.271908, 43.798805, 52.029293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548615, 44.068272, 51.925266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304662, 0.054252, 0.950914,
		0.654709, -0.737041, -0.167712,
		0.691763, 0.673667, -0.260068,
		46.756145, 44.270370, 51.847244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.941200, 43.674828, 52.448860>,  <46.271908, 43.798805, 52.029293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.941200, 43.674828, 52.448860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.972466, 44.054893, 52.328148>,  <46.991226, 44.282932, 52.255722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.972466, 44.054893, 52.328148>,  <46.941200, 43.674828, 52.448860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.972466, 44.054893, 52.328148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435610, 0.239728, 0.867626,
		0.896736, -0.199274, -0.395165,
		0.078163, 0.950168, -0.301778,
		46.995914, 44.339943, 52.237614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.631405, 43.783600, 52.639896>,  <46.941200, 43.674828, 52.448860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.631405, 43.783600, 52.639896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.465683, 44.144753, 52.594025>,  <47.366249, 44.361446, 52.566502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.465683, 44.144753, 52.594025>,  <47.631405, 43.783600, 52.639896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.465683, 44.144753, 52.594025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358703, 0.277787, 0.891160,
		0.836472, 0.328075, -0.438955,
		-0.414304, 0.902885, -0.114680,
		47.341393, 44.415619, 52.559620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.167969, 44.282566, 52.827393>,  <47.631405, 43.783600, 52.639896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.167969, 44.282566, 52.827393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.810226, 44.457806, 52.863609>,  <47.595581, 44.562950, 52.885338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.810226, 44.457806, 52.863609>,  <48.167969, 44.282566, 52.827393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.810226, 44.457806, 52.863609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245986, 0.312544, 0.917500,
		0.373659, 0.842843, -0.387292,
		-0.894354, 0.438101, 0.090543,
		47.541920, 44.589237, 52.890774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.195492, 44.983746, 53.137554>,  <48.167969, 44.282566, 52.827393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.195492, 44.983746, 53.137554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.816635, 44.873871, 53.203846>,  <47.589321, 44.807945, 53.243622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.816635, 44.873871, 53.203846>,  <48.195492, 44.983746, 53.137554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816635, 44.873871, 53.203846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149045, 0.080702, 0.985532,
		-0.284084, 0.958142, -0.035496,
		-0.947144, -0.274684, 0.165733,
		47.532494, 44.791466, 53.253567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.147045, 45.239338, 53.852505>,  <48.195492, 44.983746, 53.137554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.147045, 45.239338, 53.852505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.785973, 45.076031, 53.798126>,  <47.569328, 44.978046, 53.765499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.785973, 45.076031, 53.798126>,  <48.147045, 45.239338, 53.852505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785973, 45.076031, 53.798126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229862, 0.190437, 0.954409,
		-0.363762, 0.892779, -0.265749,
		-0.902685, -0.408263, -0.135942,
		47.515167, 44.953552, 53.757343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.681583, 45.734989, 54.043976>,  <48.147045, 45.239338, 53.852505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.681583, 45.734989, 54.043976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.507072, 45.376732, 54.078594>,  <47.402367, 45.161777, 54.099365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.507072, 45.376732, 54.078594>,  <47.681583, 45.734989, 54.043976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507072, 45.376732, 54.078594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179612, 0.180929, 0.966956,
		-0.881702, 0.406320, -0.239804,
		-0.436281, -0.895639, 0.086546,
		47.376190, 45.108040, 54.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051746, 45.891247, 54.378963>,  <47.681583, 45.734989, 54.043976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051746, 45.891247, 54.378963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.128654, 45.501663, 54.427010>,  <47.174797, 45.267914, 54.455837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.128654, 45.501663, 54.427010>,  <47.051746, 45.891247, 54.378963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128654, 45.501663, 54.427010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213604, 0.077930, 0.973807,
		-0.957813, -0.212889, -0.193059,
		0.192267, -0.973964, 0.120116,
		47.186337, 45.209473, 54.463043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451927, 45.456314, 54.598125>,  <47.051746, 45.891247, 54.378963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451927, 45.456314, 54.598125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.752434, 45.217678, 54.711037>,  <46.932739, 45.074497, 54.778782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.752434, 45.217678, 54.711037>,  <46.451927, 45.456314, 54.598125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752434, 45.217678, 54.711037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400246, -0.071751, 0.913594,
		-0.524789, -0.799331, -0.292687,
		0.751266, -0.596591, 0.282275,
		46.977814, 45.038700, 54.795719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.145264, 45.082371, 55.119556>,  <46.451927, 45.456314, 54.598125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.145264, 45.082371, 55.119556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.539330, 45.067142, 55.186501>,  <46.775768, 45.058006, 55.226669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.539330, 45.067142, 55.186501>,  <46.145264, 45.082371, 55.119556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539330, 45.067142, 55.186501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170536, -0.106776, 0.979549,
		-0.019416, -0.993554, -0.111683,
		0.985160, -0.038065, 0.167364,
		46.834877, 45.055721, 55.236710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156399, 44.674026, 55.743160>,  <46.145264, 45.082371, 55.119556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156399, 44.674026, 55.743160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.501289, 44.875816, 55.724968>,  <46.708225, 44.996891, 55.714054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.501289, 44.875816, 55.724968>,  <46.156399, 44.674026, 55.743160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501289, 44.875816, 55.724968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016156, 0.062352, 0.997923,
		0.506263, -0.861172, 0.045612,
		0.862228, 0.504475, -0.045479,
		46.759956, 45.027157, 55.711323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638680, 44.192268, 56.082176>,  <46.156399, 44.674026, 55.743160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638680, 44.192268, 56.082176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.763641, 44.572243, 56.083973>,  <46.838619, 44.800228, 56.085052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.763641, 44.572243, 56.083973>,  <46.638680, 44.192268, 56.082176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763641, 44.572243, 56.083973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078854, -0.030642, 0.996415,
		0.946672, -0.310927, -0.084479,
		0.312401, 0.949940, 0.004490,
		46.857361, 44.857224, 56.085320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.253811, 44.139175, 56.403267>,  <46.638680, 44.192268, 56.082176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.253811, 44.139175, 56.403267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.168938, 44.528770, 56.435101>,  <47.118015, 44.762527, 56.454201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.168938, 44.528770, 56.435101>,  <47.253811, 44.139175, 56.403267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.168938, 44.528770, 56.435101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071858, -0.065671, 0.995250,
		0.974585, 0.216892, -0.056055,
		-0.212180, 0.973984, 0.079587,
		47.105282, 44.820965, 56.458977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.714619, 44.315250, 56.914368>,  <47.253811, 44.139175, 56.403267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.714619, 44.315250, 56.914368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.435486, 44.601593, 56.904720>,  <47.268005, 44.773399, 56.898933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.435486, 44.601593, 56.904720>,  <47.714619, 44.315250, 56.914368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.435486, 44.601593, 56.904720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030525, 0.063364, 0.997523,
		0.715615, 0.695363, -0.066069,
		-0.697828, 0.715860, -0.024118,
		47.226139, 44.816349, 56.897484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.074192, 44.801273, 57.339691>,  <47.714619, 44.315250, 56.914368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.074192, 44.801273, 57.339691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.698410, 44.935692, 57.312851>,  <47.472942, 45.016342, 57.296745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.698410, 44.935692, 57.312851>,  <48.074192, 44.801273, 57.339691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.698410, 44.935692, 57.312851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007268, 0.176233, 0.984322,
		0.342606, 0.925210, -0.163120,
		-0.939451, 0.336049, -0.067103,
		47.416576, 45.036507, 57.292721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.053101, 45.514694, 57.494644>,  <48.074192, 44.801273, 57.339691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.053101, 45.514694, 57.494644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.706993, 45.350277, 57.609428>,  <47.499329, 45.251629, 57.678299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.706993, 45.350277, 57.609428>,  <48.053101, 45.514694, 57.494644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.706993, 45.350277, 57.609428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191334, 0.258311, 0.946925,
		-0.463351, 0.874254, -0.144864,
		-0.865273, -0.411041, 0.286964,
		47.447411, 45.226963, 57.695518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.341236, 44.686424, 57.799763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.650047, 44.939880, 57.779900>,  <46.835335, 45.091953, 57.767982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.650047, 44.939880, 57.779900>,  <46.341236, 44.686424, 57.799763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650047, 44.939880, 57.779900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023623, -0.049471, -0.998496,
		-0.635146, 0.772043, -0.023225,
		0.772031, 0.633642, -0.049659,
		46.881657, 45.129974, 57.765003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157936, 45.406273, 57.296524>,  <46.341236, 44.686424, 57.799763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157936, 45.406273, 57.296524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.540688, 45.290592, 57.307419>,  <46.770340, 45.221184, 57.313957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.540688, 45.290592, 57.307419>,  <46.157936, 45.406273, 57.296524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540688, 45.290592, 57.307419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001742, -0.088055, -0.996114,
		0.290475, 0.953210, -0.083755,
		0.956881, -0.289201, 0.027239,
		46.827751, 45.203831, 57.315590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472160, 45.848347, 56.874710>,  <46.157936, 45.406273, 57.296524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472160, 45.848347, 56.874710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.712090, 45.528515, 56.886635>,  <46.856045, 45.336617, 56.893787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.712090, 45.528515, 56.886635>,  <46.472160, 45.848347, 56.874710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712090, 45.528515, 56.886635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187274, 0.104071, -0.976779,
		0.777911, 0.591473, 0.212165,
		0.599819, -0.799581, 0.029809,
		46.892036, 45.288639, 56.895576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.141689, 46.099277, 56.625988>,  <46.472160, 45.848347, 56.874710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.141689, 46.099277, 56.625988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.100677, 45.705040, 56.572197>,  <47.076069, 45.468498, 56.539921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.100677, 45.705040, 56.572197>,  <47.141689, 46.099277, 56.625988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.100677, 45.705040, 56.572197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095144, 0.124858, -0.987602,
		0.990169, -0.114057, 0.080971,
		-0.102533, -0.985597, -0.134482,
		47.069916, 45.409363, 56.531853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.594154, 45.981529, 56.040558>,  <47.141689, 46.099277, 56.625988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.594154, 45.981529, 56.040558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.383888, 45.641411, 56.050964>,  <47.257729, 45.437340, 56.057209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.383888, 45.641411, 56.050964>,  <47.594154, 45.981529, 56.040558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.383888, 45.641411, 56.050964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180818, -0.141565, -0.973275,
		0.831252, -0.506914, 0.228165,
		-0.525667, -0.850293, 0.026017,
		47.226189, 45.386322, 56.058769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.971447, 45.517410, 55.756489>,  <47.594154, 45.981529, 56.040558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.971447, 45.517410, 55.756489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600410, 45.369190, 55.737404>,  <47.377789, 45.280258, 55.725952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600410, 45.369190, 55.737404>,  <47.971447, 45.517410, 55.756489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600410, 45.369190, 55.737404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157885, -0.273053, -0.948954,
		0.338607, -0.887770, 0.311785,
		-0.927587, -0.370548, -0.047708,
		47.322136, 45.258026, 55.723091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.037720, 44.795208, 55.633324>,  <47.971447, 45.517410, 55.756489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.037720, 44.795208, 55.633324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.683418, 44.915470, 55.491871>,  <47.470837, 44.987625, 55.406998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.683418, 44.915470, 55.491871>,  <48.037720, 44.795208, 55.633324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683418, 44.915470, 55.491871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231446, -0.374322, -0.897951,
		-0.402350, -0.877204, 0.261969,
		-0.885747, 0.300658, -0.353634,
		47.417694, 45.005665, 55.385780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.885010, 44.217590, 55.077904>,  <48.037720, 44.795208, 55.633324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.885010, 44.217590, 55.077904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.607887, 44.493423, 54.993530>,  <47.441612, 44.658924, 54.942905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.607887, 44.493423, 54.993530>,  <47.885010, 44.217590, 55.077904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.607887, 44.493423, 54.993530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079471, -0.363743, -0.928103,
		-0.716728, -0.626235, 0.306806,
		-0.692810, 0.689580, -0.210937,
		47.400043, 44.700298, 54.930248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.401657, 43.946060, 54.641869>,  <47.885010, 44.217590, 55.077904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.401657, 43.946060, 54.641869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.311462, 44.331478, 54.584259>,  <47.257347, 44.562729, 54.549694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.311462, 44.331478, 54.584259>,  <47.401657, 43.946060, 54.641869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.311462, 44.331478, 54.584259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172413, -0.184965, -0.967503,
		-0.958869, -0.193328, 0.207834,
		-0.225488, 0.963541, -0.144025,
		47.243816, 44.620541, 54.541050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803852, 43.963764, 54.226013>,  <47.401657, 43.946060, 54.641869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803852, 43.963764, 54.226013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.964172, 44.328197, 54.187454>,  <47.060364, 44.546856, 54.164318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.964172, 44.328197, 54.187454>,  <46.803852, 43.963764, 54.226013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964172, 44.328197, 54.187454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146763, -0.040007, -0.988362,
		-0.904335, 0.410281, 0.117678,
		0.400798, 0.911081, -0.096393,
		47.084412, 44.601521, 54.158535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.505901, 44.087799, 53.665638>,  <46.803852, 43.963764, 54.226013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.505901, 44.087799, 53.665638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.793808, 44.364090, 53.693428>,  <46.966553, 44.529865, 53.710102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.793808, 44.364090, 53.693428>,  <46.505901, 44.087799, 53.665638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.793808, 44.364090, 53.693428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058718, 0.039146, -0.997507,
		-0.691728, 0.722052, -0.012382,
		0.719767, 0.690730, 0.069476,
		47.009739, 44.571308, 53.714272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.284260, 44.599792, 53.271519>,  <46.505901, 44.087799, 53.665638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.284260, 44.599792, 53.271519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.679756, 44.659309, 53.277958>,  <46.917053, 44.695019, 53.281822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.679756, 44.659309, 53.277958>,  <46.284260, 44.599792, 53.271519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679756, 44.659309, 53.277958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012537, 0.189539, -0.981793,
		-0.149132, 0.970534, 0.189270,
		0.988738, 0.148790, 0.016099,
		46.976379, 44.703945, 53.282787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397476, 45.205437, 52.991367>,  <46.284260, 44.599792, 53.271519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397476, 45.205437, 52.991367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.752953, 45.027115, 52.948494>,  <46.966236, 44.920120, 52.922771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.752953, 45.027115, 52.948494>,  <46.397476, 45.205437, 52.991367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752953, 45.027115, 52.948494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068477, 0.102095, -0.992415,
		0.453370, 0.889287, 0.060203,
		0.888688, -0.445809, -0.107183,
		47.019558, 44.893372, 52.916340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686749, 45.511909, 52.419750>,  <46.397476, 45.205437, 52.991367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686749, 45.511909, 52.419750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.894554, 45.177528, 52.490501>,  <47.019238, 44.976898, 52.532951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.894554, 45.177528, 52.490501>,  <46.686749, 45.511909, 52.419750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.894554, 45.177528, 52.490501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011753, -0.199994, -0.979727,
		0.854381, 0.511061, -0.094075,
		0.519515, -0.835954, 0.176877,
		47.050407, 44.926743, 52.543564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187424, 45.584282, 51.990849>,  <46.686749, 45.511909, 52.419750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187424, 45.584282, 51.990849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.091248, 45.200432, 52.049248>,  <47.033543, 44.970123, 52.084286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.091248, 45.200432, 52.049248>,  <47.187424, 45.584282, 51.990849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.091248, 45.200432, 52.049248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047373, -0.138628, -0.989211,
		0.969506, -0.244766, -0.012127,
		-0.240444, -0.959621, 0.145996,
		47.019115, 44.912544, 52.093048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634426, 45.143871, 51.537849>,  <47.187424, 45.584282, 51.990849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634426, 45.143871, 51.537849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.346298, 44.885784, 51.639694>,  <47.173420, 44.730930, 51.700802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.346298, 44.885784, 51.639694>,  <47.634426, 45.143871, 51.537849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346298, 44.885784, 51.639694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186940, -0.172912, -0.967034,
		0.667973, -0.744175, 0.003935,
		-0.720323, -0.645217, 0.254617,
		47.130199, 44.692219, 51.716080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.743534, 44.718174, 50.937531>,  <47.634426, 45.143871, 51.537849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.743534, 44.718174, 50.937531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.399033, 44.627304, 51.119362>,  <47.192333, 44.572784, 51.228458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.399033, 44.627304, 51.119362>,  <47.743534, 44.718174, 50.937531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399033, 44.627304, 51.119362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433848, -0.137093, -0.890495,
		0.264615, -0.964157, 0.019513,
		-0.861252, -0.227173, 0.454575,
		47.140656, 44.559155, 51.255733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533302, 44.041965, 50.654888>,  <47.743534, 44.718174, 50.937531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533302, 44.041965, 50.654888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.220413, 44.257484, 50.780003>,  <47.032681, 44.386795, 50.855072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.220413, 44.257484, 50.780003>,  <47.533302, 44.041965, 50.654888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.220413, 44.257484, 50.780003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422259, -0.089361, -0.902060,
		-0.458073, -0.837685, 0.297411,
		-0.782219, 0.538793, 0.312786,
		46.985748, 44.419121, 50.873840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.954510, 43.632401, 50.403805>,  <47.533302, 44.041965, 50.654888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.954510, 43.632401, 50.403805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.790596, 43.989666, 50.477921>,  <46.692249, 44.204025, 50.522388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.790596, 43.989666, 50.477921>,  <46.954510, 43.632401, 50.403805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.790596, 43.989666, 50.477921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379713, 0.017664, -0.924936,
		-0.829395, -0.449378, 0.331909,
		-0.409783, 0.893167, 0.185285,
		46.667660, 44.257618, 50.533504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289726, 43.735863, 50.016209>,  <46.954510, 43.632401, 50.403805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289726, 43.735863, 50.016209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.366745, 44.118126, 50.105331>,  <46.412956, 44.347485, 50.158806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.366745, 44.118126, 50.105331>,  <46.289726, 43.735863, 50.016209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366745, 44.118126, 50.105331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311468, 0.274833, -0.909645,
		-0.930545, 0.105749, 0.350574,
		0.192544, 0.955659, 0.222807,
		46.424507, 44.404823, 50.172173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624317, 44.134968, 49.837223>,  <46.289726, 43.735863, 50.016209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624317, 44.134968, 49.837223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.935623, 44.386112, 49.833420>,  <46.122406, 44.536800, 49.831139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.935623, 44.386112, 49.833420>,  <45.624317, 44.134968, 49.837223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935623, 44.386112, 49.833420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246175, 0.291148, -0.924462,
		-0.577667, 0.721819, 0.381155,
		0.778267, 0.627862, -0.009507,
		46.169102, 44.574471, 49.830566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425438, 44.711060, 49.455368>,  <45.624317, 44.134968, 49.837223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425438, 44.711060, 49.455368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.824112, 44.743088, 49.461212>,  <46.063316, 44.762302, 49.464718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.824112, 44.743088, 49.461212>,  <45.425438, 44.711060, 49.455368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824112, 44.743088, 49.461212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020783, 0.423882, -0.905479,
		-0.078691, 0.902171, 0.424140,
		0.996682, 0.080068, 0.014606,
		46.123116, 44.767109, 49.465595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562157, 45.338718, 49.231098>,  <45.425438, 44.711060, 49.455368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562157, 45.338718, 49.231098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.914619, 45.153561, 49.192551>,  <46.126099, 45.042465, 49.169422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.914619, 45.153561, 49.192551>,  <45.562157, 45.338718, 49.231098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.914619, 45.153561, 49.192551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148846, 0.465029, -0.872693,
		0.448782, 0.754636, 0.478665,
		0.881158, -0.462896, -0.096372,
		46.178967, 45.014690, 49.163639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.020779, 45.884396, 48.960098>,  <45.562157, 45.338718, 49.231098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.020779, 45.884396, 48.960098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.168465, 45.523651, 48.870369>,  <46.257076, 45.307205, 48.816532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.168465, 45.523651, 48.870369>,  <46.020779, 45.884396, 48.960098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168465, 45.523651, 48.870369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194230, 0.310936, -0.930373,
		0.908820, 0.299938, 0.289972,
		0.369217, -0.901863, -0.224328,
		46.279228, 45.253094, 48.803070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558655, 45.987595, 48.478062>,  <46.020779, 45.884396, 48.960098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558655, 45.987595, 48.478062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.509865, 45.594334, 48.423611>,  <46.480591, 45.358376, 48.390938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.509865, 45.594334, 48.423611>,  <46.558655, 45.987595, 48.478062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509865, 45.594334, 48.423611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178130, 0.113243, -0.977469,
		0.976418, -0.143477, 0.161316,
		-0.121976, -0.983153, -0.136130,
		46.473270, 45.299389, 48.382771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987209, 45.751781, 47.941105>,  <46.558655, 45.987595, 48.478062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987209, 45.751781, 47.941105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.736855, 45.439831, 47.944191>,  <46.586639, 45.252663, 47.946041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.736855, 45.439831, 47.944191>,  <46.987209, 45.751781, 47.941105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736855, 45.439831, 47.944191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005371, -0.014202, -0.999885,
		0.779893, -0.625777, 0.013078,
		-0.625890, -0.779873, 0.007715,
		46.549088, 45.205868, 47.946507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.267776, 45.341488, 47.375042>,  <46.987209, 45.751781, 47.941105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.267776, 45.341488, 47.375042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.895874, 45.203697, 47.427017>,  <46.672733, 45.121021, 47.458202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.895874, 45.203697, 47.427017>,  <47.267776, 45.341488, 47.375042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895874, 45.203697, 47.427017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068942, -0.183800, -0.980543,
		0.361662, -0.920625, 0.147141,
		-0.929757, -0.344481, 0.129943,
		46.616947, 45.100353, 47.466000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242352, 44.835598, 46.829651>,  <47.267776, 45.341488, 47.375042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242352, 44.835598, 46.829651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.861031, 44.875744, 46.943596>,  <46.632240, 44.899830, 47.011963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.861031, 44.875744, 46.943596>,  <47.242352, 44.835598, 46.829651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861031, 44.875744, 46.943596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301926, -0.292593, -0.907320,
		-0.007714, -0.950955, 0.309232,
		-0.953300, 0.100364, 0.284861,
		46.575039, 44.905853, 47.029053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867554, 44.231949, 46.658405>,  <47.242352, 44.835598, 46.829651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867554, 44.231949, 46.658405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.575592, 44.505066, 46.671299>,  <46.400414, 44.668934, 46.679035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.575592, 44.505066, 46.671299>,  <46.867554, 44.231949, 46.658405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575592, 44.505066, 46.671299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352314, -0.335377, -0.873726,
		-0.585760, -0.649092, 0.485350,
		-0.729903, 0.682789, 0.032234,
		46.356621, 44.709904, 46.680969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.278946, 43.036598, 33.744350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429497, 43.392078, 33.639618>,  <45.519829, 43.605366, 33.576778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429497, 43.392078, 33.639618>,  <45.278946, 43.036598, 33.744350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429497, 43.392078, 33.639618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449901, -0.071735, -0.890193,
		-0.809894, 0.452850, 0.372826,
		0.376379, 0.888696, -0.261835,
		45.542412, 43.658688, 33.561066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773960, 43.435993, 33.360519>,  <45.278946, 43.036598, 33.744350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773960, 43.435993, 33.360519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125687, 43.585075, 33.241928>,  <45.336723, 43.674526, 33.170773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125687, 43.585075, 33.241928>,  <44.773960, 43.435993, 33.360519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125687, 43.585075, 33.241928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337585, 0.048683, -0.940035,
		-0.335923, 0.926672, 0.168627,
		0.879313, 0.372705, -0.296477,
		45.389481, 43.696888, 33.152985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678219, 44.046291, 32.987988>,  <44.773960, 43.435993, 33.360519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678219, 44.046291, 32.987988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.034355, 43.927998, 32.849518>,  <45.248035, 43.857021, 32.766438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.034355, 43.927998, 32.849518>,  <44.678219, 44.046291, 32.987988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034355, 43.927998, 32.849518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331117, 0.101270, -0.938139,
		0.312497, 0.949887, -0.007758,
		0.890341, -0.295734, -0.346171,
		45.301456, 43.839279, 32.745667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033810, 44.454151, 32.916965>,  <44.678219, 44.046291, 32.987988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033810, 44.454151, 32.916965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666084, 44.611393, 32.924271>,  <43.445450, 44.705738, 32.928654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666084, 44.611393, 32.924271>,  <44.033810, 44.454151, 32.916965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666084, 44.611393, 32.924271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105896, 0.202413, 0.973558,
		0.379016, 0.896937, -0.227709,
		-0.919311, 0.393107, 0.018265,
		43.390289, 44.729324, 32.929749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077896, 45.087673, 33.250793>,  <44.033810, 44.454151, 32.916965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077896, 45.087673, 33.250793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687157, 45.009193, 33.284908>,  <43.452713, 44.962105, 33.305378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687157, 45.009193, 33.284908>,  <44.077896, 45.087673, 33.250793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687157, 45.009193, 33.284908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029188, 0.517156, 0.855393,
		-0.211939, 0.833099, -0.510909,
		-0.976847, -0.196203, 0.085289,
		43.394104, 44.950333, 33.310493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683880, 45.619770, 33.732193>,  <44.077896, 45.087673, 33.250793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683880, 45.619770, 33.732193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458748, 45.289143, 33.733044>,  <43.323669, 45.090767, 33.733555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458748, 45.289143, 33.733044>,  <43.683880, 45.619770, 33.732193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458748, 45.289143, 33.733044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236905, 0.163773, 0.957630,
		-0.791899, 0.538475, -0.287994,
		-0.562826, -0.826573, 0.002124,
		43.289902, 45.041172, 33.733681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077099, 45.801552, 34.098553>,  <43.683880, 45.619770, 33.732193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077099, 45.801552, 34.098553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084137, 45.402153, 34.119335>,  <43.088360, 45.162514, 34.131805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.084137, 45.402153, 34.119335>,  <43.077099, 45.801552, 34.098553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084137, 45.402153, 34.119335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166622, 0.048311, 0.984837,
		-0.985864, -0.025982, -0.165521,
		0.017592, -0.998495, 0.051957,
		43.089413, 45.102604, 34.134922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370640, 45.620441, 34.336689>,  <43.077099, 45.801552, 34.098553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370640, 45.620441, 34.336689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.605835, 45.314232, 34.441189>,  <42.746952, 45.130508, 34.503887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.605835, 45.314232, 34.441189>,  <42.370640, 45.620441, 34.336689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605835, 45.314232, 34.441189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278805, 0.111374, 0.953868,
		-0.759302, -0.633697, -0.147945,
		0.587986, -0.765522, 0.261245,
		42.782230, 45.084576, 34.519562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033310, 45.284882, 34.923946>,  <42.370640, 45.620441, 34.336689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033310, 45.284882, 34.923946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.406708, 45.146763, 34.962631>,  <42.630749, 45.063892, 34.985840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.406708, 45.146763, 34.962631>,  <42.033310, 45.284882, 34.923946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406708, 45.146763, 34.962631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066762, 0.097623, 0.992982,
		-0.352313, -0.933403, 0.068078,
		0.933498, -0.345296, 0.096710,
		42.686756, 45.043175, 34.991646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041416, 44.854538, 35.544807>,  <42.033310, 45.284882, 34.923946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041416, 44.854538, 35.544807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421219, 44.959957, 35.476707>,  <42.649101, 45.023209, 35.435848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.421219, 44.959957, 35.476707>,  <42.041416, 44.854538, 35.544807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421219, 44.959957, 35.476707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119440, 0.198142, 0.972869,
		0.290136, -0.944076, 0.156657,
		0.949503, 0.263553, -0.170248,
		42.706070, 45.039024, 35.425632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447510, 44.327084, 35.933453>,  <42.041416, 44.854538, 35.544807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447510, 44.327084, 35.933453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653313, 44.665230, 35.875988>,  <42.776794, 44.868118, 35.841511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653313, 44.665230, 35.875988>,  <42.447510, 44.327084, 35.933453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653313, 44.665230, 35.875988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164789, 0.066937, 0.984055,
		0.841504, -0.529976, -0.104868,
		0.514506, 0.845367, -0.143662,
		42.807663, 44.918839, 35.832890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955997, 44.290310, 36.422031>,  <42.447510, 44.327084, 35.933453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955997, 44.290310, 36.422031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967583, 44.675377, 36.314377>,  <42.974533, 44.906418, 36.249786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.967583, 44.675377, 36.314377>,  <42.955997, 44.290310, 36.422031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967583, 44.675377, 36.314377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176344, 0.260101, 0.949342,
		0.983902, -0.074954, -0.162228,
		0.028961, 0.962668, -0.269132,
		42.976273, 44.964176, 36.233639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380302, 44.482761, 36.875694>,  <42.955997, 44.290310, 36.422031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380302, 44.482761, 36.875694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225349, 44.825268, 36.739021>,  <43.132378, 45.030773, 36.657017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225349, 44.825268, 36.739021>,  <43.380302, 44.482761, 36.875694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225349, 44.825268, 36.739021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015724, 0.364429, 0.931098,
		0.921786, 0.366062, -0.127709,
		-0.387380, 0.856265, -0.341682,
		43.109135, 45.082146, 36.636517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798615, 45.092590, 37.097668>,  <43.380302, 44.482761, 36.875694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798615, 45.092590, 37.097668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425583, 45.220810, 37.031288>,  <43.201763, 45.297741, 36.991459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425583, 45.220810, 37.031288>,  <43.798615, 45.092590, 37.097668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425583, 45.220810, 37.031288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006318, 0.445187, 0.895415,
		0.360904, 0.836096, -0.413148,
		-0.932582, 0.320549, -0.165952,
		43.145809, 45.316975, 36.981503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775646, 45.805466, 37.316589>,  <43.798615, 45.092590, 37.097668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775646, 45.805466, 37.316589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.403664, 45.658585, 37.309132>,  <43.180473, 45.570457, 37.304657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.403664, 45.658585, 37.309132>,  <43.775646, 45.805466, 37.316589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403664, 45.658585, 37.309132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206840, 0.480555, 0.852223,
		-0.303978, 0.796385, -0.522847,
		-0.929954, -0.367203, -0.018646,
		43.124676, 45.548424, 37.303539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354954, 46.320572, 37.683186>,  <43.775646, 45.805466, 37.316589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354954, 46.320572, 37.683186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153694, 45.974968, 37.690464>,  <43.032940, 45.767605, 37.694832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153694, 45.974968, 37.690464>,  <43.354954, 46.320572, 37.683186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153694, 45.974968, 37.690464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253324, 0.167588, 0.952755,
		-0.826236, 0.474769, -0.303195,
		-0.503150, -0.864007, 0.018197,
		43.002750, 45.715767, 37.695923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752285, 46.563671, 38.042217>,  <43.354954, 46.320572, 37.683186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752285, 46.563671, 38.042217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774597, 46.164345, 38.048561>,  <42.787983, 45.924747, 38.052368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.774597, 46.164345, 38.048561>,  <42.752285, 46.563671, 38.042217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774597, 46.164345, 38.048561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297570, -0.001456, 0.954699,
		-0.953069, -0.057971, -0.297151,
		0.055778, -0.998317, 0.015863,
		42.791332, 45.864849, 38.053322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117111, 46.396271, 38.366577>,  <42.752285, 46.563671, 38.042217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117111, 46.396271, 38.366577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.359734, 46.082458, 38.418125>,  <42.505306, 45.894173, 38.449055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.359734, 46.082458, 38.418125>,  <42.117111, 46.396271, 38.366577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359734, 46.082458, 38.418125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218320, -0.008500, 0.975840,
		-0.764478, -0.620036, -0.176434,
		0.606556, -0.784527, 0.128869,
		42.541698, 45.847099, 38.456787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740929, 46.055408, 38.775364>,  <42.117111, 46.396271, 38.366577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740929, 46.055408, 38.775364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104813, 45.890884, 38.798183>,  <42.323143, 45.792171, 38.811874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104813, 45.890884, 38.798183>,  <41.740929, 46.055408, 38.775364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104813, 45.890884, 38.798183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146273, -0.188838, 0.971053,
		-0.388634, -0.891719, -0.231951,
		0.909708, -0.411312, 0.057046,
		42.377724, 45.767490, 38.815296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739372, 45.507969, 39.293064>,  <41.740929, 46.055408, 38.775364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739372, 45.507969, 39.293064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128098, 45.589596, 39.245834>,  <42.361332, 45.638573, 39.217495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.128098, 45.589596, 39.245834>,  <41.739372, 45.507969, 39.293064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128098, 45.589596, 39.245834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158746, -0.196064, 0.967656,
		0.174319, -0.959121, -0.222932,
		0.971809, 0.204071, -0.118079,
		42.419640, 45.650818, 39.210411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165699, 44.928528, 39.588650>,  <41.739372, 45.507969, 39.293064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165699, 44.928528, 39.588650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379250, 45.266582, 39.577827>,  <42.507378, 45.469414, 39.571335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.379250, 45.266582, 39.577827>,  <42.165699, 44.928528, 39.588650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379250, 45.266582, 39.577827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294953, -0.156141, 0.942668,
		0.792454, -0.511245, -0.332634,
		0.533872, 0.845132, -0.027059,
		42.539410, 45.520123, 39.569710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778214, 44.788986, 39.889851>,  <42.165699, 44.928528, 39.588650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778214, 44.788986, 39.889851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758667, 45.187817, 39.913357>,  <42.746941, 45.427116, 39.927460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758667, 45.187817, 39.913357>,  <42.778214, 44.788986, 39.889851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758667, 45.187817, 39.913357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378871, -0.035934, 0.924752,
		0.924159, 0.067453, -0.376007,
		-0.048865, 0.997075, 0.058765,
		42.744007, 45.486938, 39.930984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457085, 44.994465, 40.067539>,  <42.778214, 44.788986, 39.889851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457085, 44.994465, 40.067539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227745, 45.308044, 40.162781>,  <43.090141, 45.496193, 40.219925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.227745, 45.308044, 40.162781>,  <43.457085, 44.994465, 40.067539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227745, 45.308044, 40.162781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454821, 0.062823, 0.888364,
		0.681478, 0.617633, -0.392578,
		-0.573346, 0.783954, 0.238100,
		43.055740, 45.543232, 40.234211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810951, 45.288960, 40.560589>,  <43.457085, 44.994465, 40.067539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810951, 45.288960, 40.560589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466591, 45.490040, 40.591946>,  <43.259975, 45.610687, 40.610760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.466591, 45.490040, 40.591946>,  <43.810951, 45.288960, 40.560589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466591, 45.490040, 40.591946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158534, 0.118638, 0.980200,
		0.483445, 0.856282, -0.181830,
		-0.860900, 0.502699, 0.078395,
		43.208321, 45.640850, 40.615463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916119, 45.914387, 40.956989>,  <43.810951, 45.288960, 40.560589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916119, 45.914387, 40.956989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539345, 45.786118, 40.996868>,  <43.313282, 45.709156, 41.020794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539345, 45.786118, 40.996868>,  <43.916119, 45.914387, 40.956989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539345, 45.786118, 40.996868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067040, 0.111340, 0.991518,
		-0.329049, 0.940625, -0.083376,
		-0.941930, -0.320669, 0.099696,
		43.256767, 45.689919, 41.026775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768436, 46.321854, 41.548733>,  <43.916119, 45.914387, 40.956989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768436, 46.321854, 41.548733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481178, 46.044395, 41.526375>,  <43.308823, 45.877922, 41.512962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481178, 46.044395, 41.526375>,  <43.768436, 46.321854, 41.548733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481178, 46.044395, 41.526375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061294, -0.016955, 0.997976,
		-0.693190, 0.720116, -0.030340,
		-0.718144, -0.693647, -0.055892,
		43.265736, 45.836300, 41.509605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334026, 46.545292, 42.045883>,  <43.768436, 46.321854, 41.548733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334026, 46.545292, 42.045883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259354, 46.159103, 41.973209>,  <43.214550, 45.927391, 41.929607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259354, 46.159103, 41.973209>,  <43.334026, 46.545292, 42.045883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259354, 46.159103, 41.973209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179129, -0.148381, 0.972572,
		-0.965951, 0.214109, -0.145244,
		-0.186685, -0.965474, -0.181682,
		43.203350, 45.869461, 41.918705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802502, 46.432514, 42.520691>,  <43.334026, 46.545292, 42.045883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802502, 46.432514, 42.520691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952492, 46.074829, 42.422890>,  <43.042484, 45.860218, 42.364208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952492, 46.074829, 42.422890>,  <42.802502, 46.432514, 42.520691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952492, 46.074829, 42.422890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008725, -0.260335, 0.965479,
		-0.926994, -0.364163, -0.089817,
		0.374975, -0.894210, -0.244507,
		43.064983, 45.806568, 42.349537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440289, 45.886639, 42.990749>,  <42.802502, 46.432514, 42.520691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440289, 45.886639, 42.990749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763664, 45.694485, 42.854713>,  <42.957687, 45.579193, 42.773090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763664, 45.694485, 42.854713>,  <42.440289, 45.886639, 42.990749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763664, 45.694485, 42.854713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103836, -0.452352, 0.885774,
		-0.579352, -0.751406, -0.315817,
		0.808436, -0.480382, -0.340094,
		43.006195, 45.550369, 42.752686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286457, 45.159805, 43.353390>,  <42.440289, 45.886639, 42.990749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286457, 45.159805, 43.353390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675842, 45.171780, 43.262634>,  <42.909473, 45.178967, 43.208183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675842, 45.171780, 43.262634>,  <42.286457, 45.159805, 43.353390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675842, 45.171780, 43.262634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213454, -0.476278, 0.852992,
		-0.082523, -0.878785, -0.470029,
		0.973461, 0.029938, -0.226885,
		42.967880, 45.180759, 43.194569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530792, 44.531441, 43.423370>,  <42.286457, 45.159805, 43.353390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530792, 44.531441, 43.423370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866623, 44.747231, 43.448883>,  <43.068123, 44.876705, 43.464191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866623, 44.747231, 43.448883>,  <42.530792, 44.531441, 43.423370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866623, 44.747231, 43.448883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240554, -0.474488, 0.846756,
		0.487072, -0.695575, -0.528144,
		0.839580, 0.539478, 0.063786,
		43.118496, 44.909073, 43.468018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059929, 44.063496, 43.593792>,  <42.530792, 44.531441, 43.423370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059929, 44.063496, 43.593792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153114, 44.433884, 43.712662>,  <43.209026, 44.656116, 43.783981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.153114, 44.433884, 43.712662>,  <43.059929, 44.063496, 43.593792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153114, 44.433884, 43.712662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162845, -0.338409, 0.926802,
		0.958755, -0.167515, -0.229625,
		0.232960, 0.925969, 0.297172,
		43.223003, 44.711674, 43.801815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.843628, 43.967888, 44.004642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696289, 44.326473, 44.103172>,  <43.607887, 44.541626, 44.162292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696289, 44.326473, 44.103172>,  <43.843628, 43.967888, 44.004642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696289, 44.326473, 44.103172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279827, -0.145766, 0.948920,
		0.886578, 0.418457, -0.197163,
		-0.368343, 0.896463, 0.246329,
		43.585785, 44.595413, 44.177071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325520, 44.234455, 44.418995>,  <43.843628, 43.967888, 44.004642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325520, 44.234455, 44.418995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974045, 44.403374, 44.508049>,  <43.763161, 44.504726, 44.561481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974045, 44.403374, 44.508049>,  <44.325520, 44.234455, 44.418995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974045, 44.403374, 44.508049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211505, -0.073717, 0.974593,
		0.427983, 0.903453, -0.024544,
		-0.878690, 0.422301, 0.222634,
		43.710438, 44.530064, 44.574841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579536, 44.509460, 44.947014>,  <44.325520, 44.234455, 44.418995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579536, 44.509460, 44.947014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181114, 44.531155, 44.975105>,  <43.942062, 44.544170, 44.991962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181114, 44.531155, 44.975105>,  <44.579536, 44.509460, 44.947014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181114, 44.531155, 44.975105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070189, -0.002686, 0.997530,
		0.054286, 0.998525, -0.001131,
		-0.996056, 0.054232, 0.070231,
		43.882298, 44.547424, 44.996174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053547, 45.057110, 45.028576>,  <44.579536, 44.509460, 44.947014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053547, 45.057110, 45.028576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442436, 44.982185, 45.084702>,  <45.675770, 44.937229, 45.118378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442436, 44.982185, 45.084702>,  <45.053547, 45.057110, 45.028576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442436, 44.982185, 45.084702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188966, 0.274555, -0.942821,
		0.138082, 0.943150, 0.302326,
		0.972227, -0.187316, 0.140312,
		45.734104, 44.925991, 45.126797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444088, 45.636288, 44.742897>,  <45.053547, 45.057110, 45.028576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444088, 45.636288, 44.742897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695930, 45.325603, 44.750076>,  <45.847034, 45.139194, 44.754383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695930, 45.325603, 44.750076>,  <45.444088, 45.636288, 44.742897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695930, 45.325603, 44.750076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286307, 0.210482, -0.934733,
		0.722238, 0.593650, 0.354898,
		0.629604, -0.776709, 0.017948,
		45.884811, 45.092590, 44.755463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117146, 45.876881, 44.584805>,  <45.444088, 45.636288, 44.742897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117146, 45.876881, 44.584805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121277, 45.486256, 44.498806>,  <46.123756, 45.251881, 44.447208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.121277, 45.486256, 44.498806>,  <46.117146, 45.876881, 44.584805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.121277, 45.486256, 44.498806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314713, 0.207255, -0.926283,
		0.949131, -0.058092, 0.309477,
		0.010331, -0.976561, -0.214994,
		46.124374, 45.193287, 44.434307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650410, 45.809746, 44.050999>,  <46.117146, 45.876881, 44.584805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650410, 45.809746, 44.050999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.508789, 45.436157, 44.031673>,  <46.423817, 45.212002, 44.020081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.508789, 45.436157, 44.031673>,  <46.650410, 45.809746, 44.050999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508789, 45.436157, 44.031673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119930, 0.005887, -0.992765,
		0.927503, -0.357288, 0.109928,
		-0.354056, -0.933976, -0.048310,
		46.402573, 45.155964, 44.017181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.159744, 45.360935, 43.703831>,  <46.650410, 45.809746, 44.050999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.159744, 45.360935, 43.703831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799721, 45.189304, 43.673401>,  <46.583706, 45.086327, 43.655144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799721, 45.189304, 43.673401>,  <47.159744, 45.360935, 43.703831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.799721, 45.189304, 43.673401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188643, -0.226277, -0.955622,
		0.392823, -0.874466, 0.284605,
		-0.900058, -0.429079, -0.076074,
		46.529705, 45.060581, 43.650578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.293465, 44.696533, 43.342358>,  <47.159744, 45.360935, 43.703831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.293465, 44.696533, 43.342358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.912910, 44.806763, 43.287319>,  <46.684578, 44.872898, 43.254295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.912910, 44.806763, 43.287319>,  <47.293465, 44.696533, 43.342358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912910, 44.806763, 43.287319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030697, -0.359669, -0.932575,
		-0.306474, -0.891461, 0.333724,
		-0.951384, 0.275566, -0.137594,
		46.627495, 44.889435, 43.246040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.038868, 44.097710, 42.961716>,  <47.293465, 44.696533, 43.342358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.038868, 44.097710, 42.961716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818764, 44.425781, 42.899075>,  <46.686699, 44.622623, 42.861488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818764, 44.425781, 42.899075>,  <47.038868, 44.097710, 42.961716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.818764, 44.425781, 42.899075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117686, -0.261856, -0.957905,
		-0.826656, -0.508671, 0.240613,
		-0.550264, 0.820174, -0.156601,
		46.653683, 44.671833, 42.852093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570328, 43.870480, 42.436829>,  <47.038868, 44.097710, 42.961716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570328, 43.870480, 42.436829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540916, 44.268311, 42.407394>,  <46.523270, 44.507008, 42.389736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540916, 44.268311, 42.407394>,  <46.570328, 43.870480, 42.436829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540916, 44.268311, 42.407394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170486, -0.085230, -0.981667,
		-0.982613, -0.059638, 0.175828,
		-0.073531, 0.994575, -0.073581,
		46.518856, 44.566685, 42.385319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011845, 44.010532, 41.952663>,  <46.570328, 43.870480, 42.436829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011845, 44.010532, 41.952663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201210, 44.362560, 41.937923>,  <46.314827, 44.573776, 41.929081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201210, 44.362560, 41.937923>,  <46.011845, 44.010532, 41.952663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.201210, 44.362560, 41.937923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027780, -0.026895, -0.999252,
		-0.880404, 0.474080, 0.011716,
		0.473411, 0.880071, -0.036849,
		46.343235, 44.626583, 41.926868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587852, 44.456547, 41.518051>,  <46.011845, 44.010532, 41.952663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587852, 44.456547, 41.518051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945068, 44.636478, 41.513420>,  <46.159397, 44.744438, 41.510639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945068, 44.636478, 41.513420>,  <45.587852, 44.456547, 41.518051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945068, 44.636478, 41.513420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008654, -0.008559, -0.999926,
		-0.449894, 0.893074, -0.003751,
		0.893040, 0.449828, -0.011579,
		46.212982, 44.771427, 41.509945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474323, 45.041538, 41.116608>,  <45.587852, 44.456547, 41.518051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474323, 45.041538, 41.116608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864822, 44.955490, 41.126854>,  <46.099121, 44.903862, 41.133003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864822, 44.955490, 41.126854>,  <45.474323, 45.041538, 41.116608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864822, 44.955490, 41.126854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005948, -0.091589, -0.995779,
		0.216562, 0.972282, -0.088134,
		0.976251, -0.215124, 0.025618,
		46.157696, 44.890953, 41.134541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706615, 45.350616, 40.596035>,  <45.474323, 45.041538, 41.116608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706615, 45.350616, 40.596035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015816, 45.104527, 40.657967>,  <46.201336, 44.956871, 40.695126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.015816, 45.104527, 40.657967>,  <45.706615, 45.350616, 40.596035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015816, 45.104527, 40.657967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003031, -0.240463, -0.970654,
		0.634400, 0.750784, -0.184013,
		0.772999, -0.615224, 0.154825,
		46.247715, 44.919960, 40.704414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151981, 45.530663, 40.032986>,  <45.706615, 45.350616, 40.596035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151981, 45.530663, 40.032986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234581, 45.157787, 40.151901>,  <46.284142, 44.934063, 40.223251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234581, 45.157787, 40.151901>,  <46.151981, 45.530663, 40.032986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234581, 45.157787, 40.151901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065031, -0.290089, -0.954787,
		0.976284, 0.216492, 0.000719,
		0.206495, -0.932191, 0.297288,
		46.296528, 44.878132, 40.241089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676170, 45.334133, 39.636677>,  <46.151981, 45.530663, 40.032986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676170, 45.334133, 39.636677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553970, 44.972240, 39.755421>,  <46.480652, 44.755104, 39.826668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553970, 44.972240, 39.755421>,  <46.676170, 45.334133, 39.636677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553970, 44.972240, 39.755421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054109, -0.327755, -0.943212,
		0.950654, -0.272087, 0.149083,
		-0.305498, -0.904735, 0.296859,
		46.462322, 44.700821, 39.844479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082676, 44.859287, 39.316666>,  <46.676170, 45.334133, 39.636677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082676, 44.859287, 39.316666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807884, 44.582897, 39.406647>,  <46.643009, 44.417061, 39.460636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.807884, 44.582897, 39.406647>,  <47.082676, 44.859287, 39.316666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807884, 44.582897, 39.406647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180567, -0.137536, -0.973899,
		0.703883, -0.709670, -0.030283,
		-0.686982, -0.690979, 0.224952,
		46.601791, 44.375603, 39.474133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345261, 44.299183, 39.056808>,  <47.082676, 44.859287, 39.316666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345261, 44.299183, 39.056808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951691, 44.239235, 39.095634>,  <46.715549, 44.203266, 39.118931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951691, 44.239235, 39.095634>,  <47.345261, 44.299183, 39.056808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.951691, 44.239235, 39.095634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067419, -0.191571, -0.979161,
		0.165345, -0.969969, 0.178388,
		-0.983929, -0.149873, 0.097069,
		46.656513, 44.194275, 39.124756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.277935, 43.661499, 38.673916>,  <47.345261, 44.299183, 39.056808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.277935, 43.661499, 38.673916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908875, 43.815243, 38.686401>,  <46.687439, 43.907490, 38.693893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908875, 43.815243, 38.686401>,  <47.277935, 43.661499, 38.673916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908875, 43.815243, 38.686401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195651, -0.396835, -0.896796,
		-0.332302, -0.833542, 0.441342,
		-0.922657, 0.384356, 0.031214,
		46.632076, 43.930550, 38.695766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.799805, 43.201466, 38.439678>,  <47.277935, 43.661499, 38.673916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.799805, 43.201466, 38.439678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576019, 43.529205, 38.389606>,  <46.441750, 43.725849, 38.359566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.576019, 43.529205, 38.389606>,  <46.799805, 43.201466, 38.439678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576019, 43.529205, 38.389606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074249, -0.199957, -0.976987,
		-0.825526, -0.537290, 0.172704,
		-0.559459, 0.819351, -0.125176,
		46.408180, 43.775009, 38.352055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249729, 42.986202, 38.111649>,  <46.799805, 43.201466, 38.439678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249729, 42.986202, 38.111649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246941, 43.377743, 38.029869>,  <46.245270, 43.612667, 37.980801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246941, 43.377743, 38.029869>,  <46.249729, 42.986202, 38.111649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.246941, 43.377743, 38.029869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225933, -0.200705, -0.953243,
		-0.974118, 0.039548, 0.222553,
		-0.006969, 0.978853, -0.204445,
		46.244850, 43.671398, 37.968536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743015, 43.095459, 37.528095>,  <46.249729, 42.986202, 38.111649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743015, 43.095459, 37.528095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952400, 43.435974, 37.513680>,  <46.078033, 43.640282, 37.505028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952400, 43.435974, 37.513680>,  <45.743015, 43.095459, 37.528095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952400, 43.435974, 37.513680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131002, 0.038612, -0.990630,
		-0.841916, 0.523282, 0.131732,
		0.523466, 0.851284, -0.036043,
		46.109440, 43.691360, 37.502865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331268, 43.556812, 37.283672>,  <45.743015, 43.095459, 37.528095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331268, 43.556812, 37.283672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689301, 43.720730, 37.213356>,  <45.904121, 43.819080, 37.171165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689301, 43.720730, 37.213356>,  <45.331268, 43.556812, 37.283672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689301, 43.720730, 37.213356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247129, 0.127746, -0.960525,
		-0.371158, 0.903190, 0.215614,
		0.895081, 0.409791, -0.175791,
		45.957825, 43.843666, 37.160618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242393, 44.211468, 36.967590>,  <45.331268, 43.556812, 37.283672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242393, 44.211468, 36.967590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605537, 44.099476, 36.842747>,  <45.823421, 44.032280, 36.767841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605537, 44.099476, 36.842747>,  <45.242393, 44.211468, 36.967590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.605537, 44.099476, 36.842747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180539, 0.410805, -0.893670,
		0.378422, 0.867671, 0.322405,
		0.907856, -0.279978, -0.312106,
		45.877895, 44.015484, 36.749115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474396, 44.828533, 36.508156>,  <45.242393, 44.211468, 36.967590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474396, 44.828533, 36.508156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708099, 44.510818, 36.441532>,  <45.848324, 44.320190, 36.401558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708099, 44.510818, 36.441532>,  <45.474396, 44.828533, 36.508156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708099, 44.510818, 36.441532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027851, 0.185483, -0.982253,
		0.811086, 0.578533, 0.086249,
		0.584263, -0.794289, -0.166556,
		45.883377, 44.272533, 36.391567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071075, 44.941582, 36.061024>,  <45.474396, 44.828533, 36.508156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071075, 44.941582, 36.061024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064819, 44.542000, 36.043827>,  <46.061066, 44.302250, 36.033508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.064819, 44.542000, 36.043827>,  <46.071075, 44.941582, 36.061024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064819, 44.542000, 36.043827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292093, 0.036559, -0.955691,
		0.956262, -0.027509, 0.291215,
		-0.015644, -0.998953, -0.042996,
		46.060127, 44.242313, 36.030930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624695, 44.811592, 35.432629>,  <46.071075, 44.941582, 36.061024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624695, 44.811592, 35.432629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388824, 44.492001, 35.479824>,  <46.247303, 44.300247, 35.508141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.388824, 44.492001, 35.479824>,  <46.624695, 44.811592, 35.432629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.388824, 44.492001, 35.479824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038616, -0.173813, -0.984021,
		0.806715, -0.575699, 0.133346,
		-0.589677, -0.798974, 0.117986,
		46.211922, 44.252308, 35.515221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933575, 44.352139, 35.002449>,  <46.624695, 44.811592, 35.432629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933575, 44.352139, 35.002449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557175, 44.224747, 35.048203>,  <46.331333, 44.148312, 35.075653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557175, 44.224747, 35.048203>,  <46.933575, 44.352139, 35.002449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557175, 44.224747, 35.048203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058248, -0.180531, -0.981843,
		0.333350, -0.930579, 0.151329,
		-0.941002, -0.318483, 0.114385,
		46.274876, 44.129204, 35.082520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.921852, 43.805691, 34.565971>,  <46.933575, 44.352139, 35.002449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.921852, 43.805691, 34.565971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545174, 43.925163, 34.627926>,  <46.319164, 43.996845, 34.665100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545174, 43.925163, 34.627926>,  <46.921852, 43.805691, 34.565971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545174, 43.925163, 34.627926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253222, -0.326053, -0.910806,
		-0.221535, -0.896929, 0.382676,
		-0.941701, 0.298677, 0.154890,
		46.262665, 44.014767, 34.674393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.591232, 43.301033, 34.269768>,  <46.921852, 43.805691, 34.565971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.591232, 43.301033, 34.269768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322388, 43.596684, 34.287434>,  <46.161079, 43.774075, 34.298035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.322388, 43.596684, 34.287434>,  <46.591232, 43.301033, 34.269768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322388, 43.596684, 34.287434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246957, -0.167531, -0.954435,
		-0.698053, -0.652394, 0.295133,
		-0.672112, 0.739131, 0.044167,
		46.120754, 43.818424, 34.300682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004349, 43.014343, 34.038811>,  <46.591232, 43.301033, 34.269768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004349, 43.014343, 34.038811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922783, 43.401676, 33.981197>,  <45.873844, 43.634075, 33.946629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922783, 43.401676, 33.981197>,  <46.004349, 43.014343, 34.038811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922783, 43.401676, 33.981197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404244, -0.217280, -0.888468,
		-0.891630, -0.122950, 0.435751,
		-0.203917, 0.968335, -0.144032,
		45.861607, 43.692177, 33.937988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.150307, 43.883759, 46.264492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.084198, 44.276154, 46.305180>,  <46.044533, 44.511589, 46.329590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.084198, 44.276154, 46.305180>,  <46.150307, 43.883759, 46.264492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.084198, 44.276154, 46.305180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417037, 0.023946, -0.908574,
		-0.893737, -0.192581, 0.405151,
		-0.165272, 0.980989, 0.101715,
		46.034615, 44.570450, 46.335693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441887, 44.032486, 46.116100>,  <46.150307, 43.883759, 46.264492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441887, 44.032486, 46.116100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.668465, 44.353161, 46.039753>,  <45.804413, 44.545567, 45.993946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.668465, 44.353161, 46.039753>,  <45.441887, 44.032486, 46.116100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668465, 44.353161, 46.039753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309019, -0.008077, -0.951022,
		-0.763968, 0.597683, 0.243163,
		0.566445, 0.801692, -0.190866,
		45.838398, 44.593670, 45.982494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080513, 44.292343, 45.497097>,  <45.441887, 44.032486, 46.116100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080513, 44.292343, 45.497097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.430222, 44.484970, 45.521553>,  <45.640049, 44.600548, 45.536228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.430222, 44.484970, 45.521553>,  <45.080513, 44.292343, 45.497097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430222, 44.484970, 45.521553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007826, 0.111953, -0.993683,
		-0.485369, 0.869230, 0.094108,
		0.874274, 0.481566, 0.061141,
		45.692505, 44.629440, 45.539894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527588, 44.900570, 45.546108>,  <45.080513, 44.292343, 45.497097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527588, 44.900570, 45.546108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.173813, 44.720760, 45.495991>,  <43.961548, 44.612873, 45.465919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.173813, 44.720760, 45.495991>,  <44.527588, 44.900570, 45.546108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173813, 44.720760, 45.495991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108534, -0.062981, 0.992095,
		-0.453865, 0.891043, 0.006914,
		-0.884436, -0.449527, -0.125294,
		43.908482, 44.585903, 45.458401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974842, 45.357185, 45.957729>,  <44.527588, 44.900570, 45.546108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974842, 45.357185, 45.957729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856926, 44.979435, 45.899426>,  <43.786179, 44.752785, 45.864445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.856926, 44.979435, 45.899426>,  <43.974842, 45.357185, 45.957729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856926, 44.979435, 45.899426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285353, -0.058574, 0.956631,
		-0.911961, 0.323596, -0.252215,
		-0.294788, -0.944381, -0.145756,
		43.768490, 44.696121, 45.855698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251953, 45.293636, 46.389290>,  <43.974842, 45.357185, 45.957729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251953, 45.293636, 46.389290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.372963, 44.921165, 46.307919>,  <43.445568, 44.697681, 46.259098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.372963, 44.921165, 46.307919>,  <43.251953, 45.293636, 46.389290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372963, 44.921165, 46.307919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259101, -0.285730, 0.922618,
		-0.917249, -0.226406, -0.327710,
		0.302523, -0.931181, -0.203424,
		43.463718, 44.641811, 46.246891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708206, 44.811489, 46.601974>,  <43.251953, 45.293636, 46.389290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708206, 44.811489, 46.601974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.055687, 44.613426, 46.596668>,  <43.264175, 44.494587, 46.593483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.055687, 44.613426, 46.596668>,  <42.708206, 44.811489, 46.601974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055687, 44.613426, 46.596668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082739, -0.171468, 0.981709,
		-0.488375, -0.851715, -0.189923,
		0.868702, -0.495156, -0.013270,
		43.316299, 44.464878, 46.592686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515343, 44.293327, 46.943256>,  <42.708206, 44.811489, 46.601974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515343, 44.293327, 46.943256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.915215, 44.294136, 46.953403>,  <43.155136, 44.294621, 46.959492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.915215, 44.294136, 46.953403>,  <42.515343, 44.293327, 46.943256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915215, 44.294136, 46.953403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023618, -0.297326, 0.954484,
		0.009474, -0.954774, -0.297182,
		0.999676, 0.002024, 0.025367,
		43.215118, 44.294743, 46.961014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741646, 43.532745, 47.152725>,  <42.515343, 44.293327, 46.943256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741646, 43.532745, 47.152725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.032059, 43.794109, 47.238453>,  <43.206306, 43.950928, 47.289890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.032059, 43.794109, 47.238453>,  <42.741646, 43.532745, 47.152725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032059, 43.794109, 47.238453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035387, -0.346754, 0.937288,
		0.686747, -0.672919, -0.274878,
		0.726034, 0.653407, 0.214320,
		43.249870, 43.990131, 47.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131111, 43.175320, 47.570610>,  <42.741646, 43.532745, 47.152725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131111, 43.175320, 47.570610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.230377, 43.552219, 47.660572>,  <43.289936, 43.778358, 47.714550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.230377, 43.552219, 47.660572>,  <43.131111, 43.175320, 47.570610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230377, 43.552219, 47.660572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199787, -0.177397, 0.963647,
		0.947893, -0.284074, 0.144226,
		0.248161, 0.942249, 0.224907,
		43.304825, 43.834892, 47.728043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655319, 43.149792, 48.125614>,  <43.131111, 43.175320, 47.570610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655319, 43.149792, 48.125614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.544853, 43.533390, 48.151093>,  <43.478573, 43.763550, 48.166378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.544853, 43.533390, 48.151093>,  <43.655319, 43.149792, 48.125614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544853, 43.533390, 48.151093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026613, -0.073873, 0.996912,
		0.960741, 0.273619, 0.045923,
		-0.276166, 0.958997, 0.063691,
		43.462002, 43.821091, 48.170200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008038, 43.331757, 48.700417>,  <43.655319, 43.149792, 48.125614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008038, 43.331757, 48.700417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.729095, 43.614151, 48.650967>,  <43.561729, 43.783588, 48.621296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.729095, 43.614151, 48.650967>,  <44.008038, 43.331757, 48.700417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729095, 43.614151, 48.650967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192605, -0.018451, 0.981103,
		0.690362, 0.707987, 0.148844,
		-0.697355, 0.705984, -0.123624,
		43.519890, 43.825947, 48.613880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260788, 43.732540, 49.135788>,  <44.008038, 43.331757, 48.700417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260788, 43.732540, 49.135788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.875999, 43.821896, 49.072910>,  <43.645126, 43.875511, 49.035183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.875999, 43.821896, 49.072910>,  <44.260788, 43.732540, 49.135788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875999, 43.821896, 49.072910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138349, 0.097741, 0.985549,
		0.235528, 0.969816, -0.063118,
		-0.961970, 0.223392, -0.157194,
		43.587410, 43.888912, 49.025753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054398, 44.391335, 49.399151>,  <44.260788, 43.732540, 49.135788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054398, 44.391335, 49.399151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.730858, 44.156750, 49.382065>,  <43.536732, 44.015999, 49.371811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.730858, 44.156750, 49.382065>,  <44.054398, 44.391335, 49.399151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730858, 44.156750, 49.382065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120360, 0.094017, 0.988268,
		-0.575561, 0.804505, -0.146633,
		-0.808853, -0.586458, -0.042718,
		43.488201, 43.980812, 49.369251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464504, 44.799595, 49.679760>,  <44.054398, 44.391335, 49.399151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464504, 44.799595, 49.679760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.372101, 44.410999, 49.701118>,  <43.316658, 44.177841, 49.713936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.372101, 44.410999, 49.701118>,  <43.464504, 44.799595, 49.679760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372101, 44.410999, 49.701118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302251, 0.123822, 0.945152,
		-0.924814, 0.202194, -0.322236,
		-0.231004, -0.971486, 0.053399,
		43.302799, 44.119553, 49.717136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901752, 44.823372, 50.195309>,  <43.464504, 44.799595, 49.679760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901752, 44.823372, 50.195309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.954460, 44.427666, 50.170021>,  <42.986084, 44.190243, 50.154850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.954460, 44.427666, 50.170021>,  <42.901752, 44.823372, 50.195309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954460, 44.427666, 50.170021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224350, -0.091879, 0.970168,
		-0.965560, -0.113651, -0.234047,
		0.131765, -0.989263, -0.063217,
		42.993988, 44.130886, 50.151054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309322, 44.525627, 50.403477>,  <42.901752, 44.823372, 50.195309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309322, 44.525627, 50.403477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613373, 44.276577, 50.477829>,  <42.795803, 44.127148, 50.522438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.613373, 44.276577, 50.477829>,  <42.309322, 44.525627, 50.403477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613373, 44.276577, 50.477829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196804, 0.052023, 0.979061,
		-0.619258, -0.780789, -0.082991,
		0.760123, -0.622625, 0.185879,
		42.841412, 44.089790, 50.533592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087921, 44.056656, 50.922260>,  <42.309322, 44.525627, 50.403477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087921, 44.056656, 50.922260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.485634, 44.026081, 50.952072>,  <42.724262, 44.007736, 50.969959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.485634, 44.026081, 50.952072>,  <42.087921, 44.056656, 50.922260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485634, 44.026081, 50.952072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083782, -0.126007, 0.988485,
		-0.066166, -0.989080, -0.131691,
		0.994285, -0.076437, 0.074530,
		42.783920, 44.003151, 50.974430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145016, 43.521881, 51.465923>,  <42.087921, 44.056656, 50.922260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145016, 43.521881, 51.465923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521866, 43.655975, 51.464714>,  <42.747978, 43.736431, 51.463989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521866, 43.655975, 51.464714>,  <42.145016, 43.521881, 51.465923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521866, 43.655975, 51.464714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003795, -0.001657, 0.999991,
		0.335229, -0.942132, -0.002834,
		0.942129, 0.335237, -0.003020,
		42.804504, 43.756546, 51.463806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324860, 43.411156, 52.199150>,  <42.145016, 43.521881, 51.465923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324860, 43.411156, 52.199150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.598892, 43.665531, 52.057022>,  <42.763309, 43.818157, 51.971745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.598892, 43.665531, 52.057022>,  <42.324860, 43.411156, 52.199150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598892, 43.665531, 52.057022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196649, 0.308213, 0.930771,
		0.701425, -0.707524, 0.086093,
		0.685078, 0.635936, -0.355322,
		42.804417, 43.856312, 51.950424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982533, 43.256439, 52.534340>,  <42.324860, 43.411156, 52.199150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982533, 43.256439, 52.534340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009300, 43.632504, 52.400700>,  <43.025360, 43.858143, 52.320515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.009300, 43.632504, 52.400700>,  <42.982533, 43.256439, 52.534340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009300, 43.632504, 52.400700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250732, 0.308261, 0.917665,
		0.965741, -0.145182, -0.215098,
		0.066922, 0.940158, -0.334102,
		43.029377, 43.914551, 52.300468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594276, 43.450623, 52.711216>,  <42.982533, 43.256439, 52.534340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594276, 43.450623, 52.711216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.393837, 43.792999, 52.660210>,  <43.273575, 43.998425, 52.629608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.393837, 43.792999, 52.660210>,  <43.594276, 43.450623, 52.711216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393837, 43.792999, 52.660210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473342, 0.394445, 0.787630,
		0.724463, 0.334325, -0.602810,
		-0.501099, 0.855944, -0.127511,
		43.243507, 44.049782, 52.621956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113689, 44.018734, 52.613819>,  <43.594276, 43.450623, 52.711216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113689, 44.018734, 52.613819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.789589, 44.212933, 52.745136>,  <43.595127, 44.329453, 52.823925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.789589, 44.212933, 52.745136>,  <44.113689, 44.018734, 52.613819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789589, 44.212933, 52.745136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523820, 0.348670, 0.777201,
		0.262864, 0.801698, -0.536826,
		-0.810256, 0.485499, 0.328293,
		43.546513, 44.358582, 52.843624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346645, 44.611660, 53.003365>,  <44.113689, 44.018734, 52.613819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346645, 44.611660, 53.003365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.957718, 44.607826, 53.096756>,  <43.724361, 44.605526, 53.152790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.957718, 44.607826, 53.096756>,  <44.346645, 44.611660, 53.003365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.957718, 44.607826, 53.096756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194247, 0.522234, 0.830385,
		-0.129891, 0.852748, -0.505914,
		-0.972315, -0.009587, 0.233477,
		43.666023, 44.604950, 53.166798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252258, 45.209152, 53.227371>,  <44.346645, 44.611660, 53.003365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252258, 45.209152, 53.227371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.950211, 45.001400, 53.387394>,  <43.768982, 44.876751, 53.483410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.950211, 45.001400, 53.387394>,  <44.252258, 45.209152, 53.227371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950211, 45.001400, 53.387394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306742, 0.259412, 0.915759,
		-0.579405, 0.814219, -0.036571,
		-0.755115, -0.519377, 0.400060,
		43.723675, 44.845585, 53.507412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.012886, 45.675072, 53.649448>,  <44.252258, 45.209152, 53.227371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.012886, 45.675072, 53.649448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.907768, 45.318581, 53.797318>,  <43.844696, 45.104687, 53.886040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.907768, 45.318581, 53.797318>,  <44.012886, 45.675072, 53.649448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907768, 45.318581, 53.797318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097679, 0.356597, 0.929138,
		-0.959894, 0.280284, -0.006658,
		-0.262797, -0.891224, 0.369673,
		43.828930, 45.051212, 53.908218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.595005, 45.906990, 54.212063>,  <44.012886, 45.675072, 53.649448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.595005, 45.906990, 54.212063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.654312, 45.516796, 54.277100>,  <43.689896, 45.282681, 54.316124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.654312, 45.516796, 54.277100>,  <43.595005, 45.906990, 54.212063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654312, 45.516796, 54.277100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105599, 0.147856, 0.983355,
		-0.983293, -0.162973, -0.081088,
		0.148271, -0.975489, 0.162595,
		43.698795, 45.224148, 54.325878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028675, 45.716850, 54.538300>,  <43.595005, 45.906990, 54.212063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028675, 45.716850, 54.538300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.282669, 45.418083, 54.617203>,  <43.435066, 45.238823, 54.664543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.282669, 45.418083, 54.617203>,  <43.028675, 45.716850, 54.538300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282669, 45.418083, 54.617203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231033, 0.060044, 0.971091,
		-0.737167, -0.662203, -0.134434,
		0.634987, -0.746915, 0.197253,
		43.473164, 45.194008, 54.676380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692860, 45.301739, 55.084270>,  <43.028675, 45.716850, 54.538300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692860, 45.301739, 55.084270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.089134, 45.251266, 55.104717>,  <43.326900, 45.220982, 55.116985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.089134, 45.251266, 55.104717>,  <42.692860, 45.301739, 55.084270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089134, 45.251266, 55.104717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022940, 0.215354, 0.976267,
		-0.134194, -0.968350, 0.210454,
		0.990690, -0.126181, 0.051113,
		43.386341, 45.213413, 55.120052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766956, 44.808846, 55.629463>,  <42.692860, 45.301739, 55.084270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766956, 44.808846, 55.629463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.101418, 45.020912, 55.573212>,  <43.302094, 45.148151, 55.539463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.101418, 45.020912, 55.573212>,  <42.766956, 44.808846, 55.629463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101418, 45.020912, 55.573212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006515, 0.265964, 0.963961,
		0.548459, -0.805102, 0.225840,
		0.836152, 0.530165, -0.140626,
		43.352264, 45.179962, 55.531025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262638, 44.540695, 56.136425>,  <42.766956, 44.808846, 55.629463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262638, 44.540695, 56.136425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.380875, 44.911476, 56.043999>,  <43.451817, 45.133945, 55.988544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.380875, 44.911476, 56.043999>,  <43.262638, 44.540695, 56.136425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380875, 44.911476, 56.043999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256276, 0.156066, 0.953921,
		0.920299, -0.341183, -0.191425,
		0.295587, 0.926951, -0.231064,
		43.469551, 45.189560, 55.974678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704437, 44.663017, 56.647598>,  <43.262638, 44.540695, 56.136425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704437, 44.663017, 56.647598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.640366, 45.022896, 56.485172>,  <43.601921, 45.238823, 56.387718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.640366, 45.022896, 56.485172>,  <43.704437, 44.663017, 56.647598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640366, 45.022896, 56.485172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030138, 0.406723, 0.913054,
		0.986627, 0.158492, -0.038035,
		-0.160182, 0.899698, -0.406061,
		43.592312, 45.292805, 56.363354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136799, 45.044613, 57.017532>,  <43.704437, 44.663017, 56.647598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136799, 45.044613, 57.017532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.876335, 45.315903, 56.881294>,  <43.720055, 45.478676, 56.799553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.876335, 45.315903, 56.881294>,  <44.136799, 45.044613, 57.017532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876335, 45.315903, 56.881294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078762, 0.506741, 0.858493,
		0.754841, 0.532192, -0.383389,
		-0.651162, 0.678222, -0.340593,
		43.680988, 45.519371, 56.779118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320576, 45.667885, 57.473740>,  <44.136799, 45.044613, 57.017532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320576, 45.667885, 57.473740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.964424, 45.741291, 57.307106>,  <43.750732, 45.785336, 57.207127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.964424, 45.741291, 57.307106>,  <44.320576, 45.667885, 57.473740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964424, 45.741291, 57.307106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270859, 0.521933, 0.808839,
		0.365865, 0.833011, -0.415012,
		-0.890381, 0.183517, -0.416586,
		43.697311, 45.796345, 57.182129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213959, 46.283905, 57.588631>,  <44.320576, 45.667885, 57.473740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213959, 46.283905, 57.588631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.837616, 46.167114, 57.519890>,  <43.611809, 46.097042, 57.478645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.837616, 46.167114, 57.519890>,  <44.213959, 46.283905, 57.588631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837616, 46.167114, 57.519890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298886, 0.476456, 0.826835,
		-0.159533, 0.829301, -0.535545,
		-0.940859, -0.291975, -0.171856,
		43.555359, 46.079521, 57.468334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
