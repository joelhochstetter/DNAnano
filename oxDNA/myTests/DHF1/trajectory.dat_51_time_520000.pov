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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<4.257853, 3.969652, 0.267106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499636, 3.651009, 0.269833>,  <4.644705, 3.459823, 0.271468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.499636, 3.651009, 0.269833>,  <4.257853, 3.969652, 0.267106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.499636, 3.651009, 0.269833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555807, -0.415579, 0.719981,
		-0.570711, -0.438985, -0.693960,
		0.604457, -0.796609, 0.006815,
		4.680973, 3.412026, 0.271877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038824, 3.393098, -0.148513>,  <4.257853, 3.969652, 0.267106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038824, 3.393098, -0.148513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031523, 3.784595, -0.230221>,  <4.027142, 4.019494, -0.279245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.031523, 3.784595, -0.230221>,  <4.038824, 3.393098, -0.148513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.031523, 3.784595, -0.230221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923976, 0.061547, 0.377467,
		0.382016, 0.195629, 0.903213,
		-0.018254, 0.978745, -0.204269,
		4.026047, 4.078219, -0.291501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.511082, 3.905423, 0.230010>,  <4.038824, 3.393098, -0.148513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.511082, 3.905423, 0.230010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.741413, 4.199860, 0.372330>,  <3.879611, 4.376522, 0.457722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.741413, 4.199860, 0.372330>,  <3.511082, 3.905423, 0.230010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.741413, 4.199860, 0.372330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630338, 0.676862, -0.380173,
		-0.520670, -0.005361, 0.853741,
		0.575827, 0.736091, 0.355800,
		3.914161, 4.420687, 0.479070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.230989, 4.384861, 0.630901>,  <3.511082, 3.905423, 0.230010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.230989, 4.384861, 0.630901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.530539, 4.599411, 0.475216>,  <3.710268, 4.728141, 0.381805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.530539, 4.599411, 0.475216>,  <3.230989, 4.384861, 0.630901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.530539, 4.599411, 0.475216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650235, 0.708127, -0.275228,
		0.127987, 0.459192, 0.879069,
		0.748875, 0.536376, -0.389214,
		3.755201, 4.760324, 0.358452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.258379, 5.103238, 0.910731>,  <3.230989, 4.384861, 0.630901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.258379, 5.103238, 0.910731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.388149, 5.082619, 0.532928>,  <3.466012, 5.070247, 0.306247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.388149, 5.082619, 0.532928>,  <3.258379, 5.103238, 0.910731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.388149, 5.082619, 0.532928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767104, 0.569882, -0.294593,
		0.553443, 0.820108, 0.145342,
		0.324426, -0.051548, -0.944506,
		3.485477, 5.067154, 0.249577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.217710, 5.775222, 0.626699>,  <3.258379, 5.103238, 0.910731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.217710, 5.775222, 0.626699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.211840, 5.500408, 0.336109>,  <3.208318, 5.335520, 0.161755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.211840, 5.500408, 0.336109>,  <3.217710, 5.775222, 0.626699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.211840, 5.500408, 0.336109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809697, 0.434455, -0.394512,
		0.586665, 0.582435, -0.562667,
		-0.014676, -0.687035, -0.726475,
		3.207437, 5.294297, 0.118167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.215682, 6.101598, -0.053739>,  <3.217710, 5.775222, 0.626699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.215682, 6.101598, -0.053739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.028849, 5.747913, -0.052876>,  <2.916749, 5.535703, -0.052357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.028849, 5.747913, -0.052876>,  <3.215682, 6.101598, -0.053739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.028849, 5.747913, -0.052876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741523, 0.390375, -0.545666,
		0.481641, -0.256472, -0.838000,
		-0.467082, -0.884211, 0.002159,
		2.888724, 5.482650, -0.052228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.029709, 5.889329, -0.719336>,  <3.215682, 6.101598, -0.053739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.029709, 5.889329, -0.719336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759642, 5.746956, -0.460892>,  <2.597601, 5.661532, -0.305825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.759642, 5.746956, -0.460892>,  <3.029709, 5.889329, -0.719336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759642, 5.746956, -0.460892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736382, 0.376799, -0.561928,
		-0.043445, -0.855181, -0.516506,
		-0.675169, -0.355932, 0.646110,
		2.557091, 5.640176, -0.267059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.358590, 3.302340, 0.302087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.073475, 3.500008, 0.501179>,  <4.902407, 3.618608, 0.620634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.073475, 3.500008, 0.501179>,  <5.358590, 3.302340, 0.302087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.073475, 3.500008, 0.501179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175798, -0.812862, 0.555293,
		0.678994, 0.308305, 0.666270,
		-0.712785, 0.494169, 0.497729,
		4.859640, 3.648258, 0.650497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.526592, 3.383679, 0.946449>,  <5.358590, 3.302340, 0.302087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.526592, 3.383679, 0.946449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.128471, 3.373482, 0.909096>,  <4.889598, 3.367363, 0.886684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.128471, 3.373482, 0.909096>,  <5.526592, 3.383679, 0.946449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.128471, 3.373482, 0.909096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018022, -0.899029, 0.437519,
		-0.095108, 0.437147, 0.894347,
		-0.995304, -0.025493, -0.093383,
		4.829880, 3.365834, 0.881081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.296289, 3.265307, 1.568891>,  <5.526592, 3.383679, 0.946449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.296289, 3.265307, 1.568891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.002649, 3.145325, 1.325211>,  <4.826466, 3.073335, 1.179003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.002649, 3.145325, 1.325211>,  <5.296289, 3.265307, 1.568891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.002649, 3.145325, 1.325211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026425, -0.883847, 0.467028,
		-0.678528, 0.358943, 0.640905,
		-0.734099, -0.299956, -0.609200,
		4.782420, 3.055338, 1.142450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.733841, 3.069836, 1.945233>,  <5.296289, 3.265307, 1.568891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.733841, 3.069836, 1.945233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.733677, 2.851074, 1.610355>,  <4.733579, 2.719817, 1.409428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.733677, 2.851074, 1.610355>,  <4.733841, 3.069836, 1.945233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.733677, 2.851074, 1.610355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026932, -0.836885, 0.546715,
		-0.999637, 0.022771, -0.014386,
		-0.000410, -0.546904, -0.837195,
		4.733554, 2.687003, 1.359197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.351533, 2.841850, 2.342096>,  <4.733841, 3.069836, 1.945233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.351533, 2.841850, 2.342096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.971595, 2.716927, 2.348499>,  <4.743632, 2.641972, 2.352341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.971595, 2.716927, 2.348499>,  <5.351533, 2.841850, 2.342096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.971595, 2.716927, 2.348499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021968, -0.117700, -0.992806,
		0.311947, -0.942661, 0.118658,
		-0.949845, -0.312309, 0.016007,
		4.686641, 2.623234, 2.353302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.249856, 2.108846, 2.206451>,  <5.351533, 2.841850, 2.342096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.249856, 2.108846, 2.206451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.933732, 2.323273, 2.087761>,  <4.744058, 2.451929, 2.016547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.933732, 2.323273, 2.087761>,  <5.249856, 2.108846, 2.206451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.933732, 2.323273, 2.087761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249864, -0.160211, -0.954935,
		-0.559447, -0.828834, -0.007327,
		-0.790308, 0.536067, -0.296725,
		4.696640, 2.484093, 1.998743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.862747, 1.711809, 1.775837>,  <5.249856, 2.108846, 2.206451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.862747, 1.711809, 1.775837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.784647, 2.091362, 1.676640>,  <4.737787, 2.319094, 1.617121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.784647, 2.091362, 1.676640>,  <4.862747, 1.711809, 1.775837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.784647, 2.091362, 1.676640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119596, -0.227937, -0.966303,
		-0.973435, -0.218328, -0.068978,
		-0.195249, 0.948883, -0.247993,
		4.726072, 2.376027, 1.602242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.464878, 1.464398, 1.845169>,  <4.862747, 1.711809, 1.775837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.464878, 1.464398, 1.845169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.311757, 1.104767, 1.760204>,  <5.219884, 0.888988, 1.709225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.311757, 1.104767, 1.760204>,  <5.464878, 1.464398, 1.845169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.311757, 1.104767, 1.760204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171476, -0.156781, 0.972633,
		-0.907776, 0.408750, -0.094155,
		-0.382803, -0.899079, -0.212413,
		5.196916, 0.835043, 1.696481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
