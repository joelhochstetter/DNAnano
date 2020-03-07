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
	<1.989647, 4.010365, 2.060641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.616978, 3.865076, 2.063579>,  <1.393376, 3.777902, 2.065341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.616978, 3.865076, 2.063579>,  <1.989647, 4.010365, 2.060641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.616978, 3.865076, 2.063579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342712, 0.885411, 0.314000,
		-0.120556, 0.290028, -0.949395,
		-0.931673, -0.363224, 0.007345,
		1.337476, 3.756109, 2.065782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.561983, 4.531929, 1.710396>,  <1.989647, 4.010365, 2.060641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.561983, 4.531929, 1.710396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.353373, 4.336403, 1.990130>,  <1.228206, 4.219087, 2.157971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.353373, 4.336403, 1.990130>,  <1.561983, 4.531929, 1.710396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.353373, 4.336403, 1.990130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236685, 0.870342, 0.431838,
		-0.819751, 0.059693, -0.569601,
		-0.521525, -0.488816, 0.699336,
		1.196915, 4.189758, 2.199931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.835108, 4.727043, 1.664726>,  <1.561983, 4.531929, 1.710396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.835108, 4.727043, 1.664726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926111, 4.607313, 2.035379>,  <0.980713, 4.535475, 2.257771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.926111, 4.607313, 2.035379>,  <0.835108, 4.727043, 1.664726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.926111, 4.607313, 2.035379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429860, 0.822980, 0.371382,
		-0.873762, -0.482814, 0.058566,
		0.227507, -0.299324, 0.926631,
		0.994363, 4.517516, 2.313368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.210446, 4.820171, 2.055359>,  <0.835108, 4.727043, 1.664726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.210446, 4.820171, 2.055359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.534035, 4.827358, 2.290388>,  <0.728188, 4.831670, 2.431405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.534035, 4.827358, 2.290388>,  <0.210446, 4.820171, 2.055359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.534035, 4.827358, 2.290388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340933, 0.828598, 0.444061,
		-0.478883, -0.559555, 0.676438,
		0.808972, 0.017967, 0.587572,
		0.776726, 4.832748, 2.466660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.007755, 4.892360, 2.796563>,  <0.210446, 4.820171, 2.055359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.007755, 4.892360, 2.796563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.377476, 5.032852, 2.736829>,  <0.599308, 5.117147, 2.700988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.377476, 5.032852, 2.736829>,  <0.007755, 4.892360, 2.796563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.377476, 5.032852, 2.736829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232423, 0.828361, 0.509704,
		0.302727, -0.436412, 0.847290,
		0.924303, 0.351230, -0.149335,
		0.654767, 5.138221, 2.692028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.253383, 5.169830, 3.496257>,  <0.007755, 4.892360, 2.796563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.253383, 5.169830, 3.496257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.483164, 5.353899, 3.225482>,  <0.621032, 5.464340, 3.063017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.483164, 5.353899, 3.225482>,  <0.253383, 5.169830, 3.496257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.483164, 5.353899, 3.225482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253375, 0.886358, 0.387518,
		0.778335, -0.051091, 0.625767,
		0.574453, 0.460173, -0.676938,
		0.655500, 5.491951, 3.022400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.782727, 5.485799, 3.829995>,  <0.253383, 5.169830, 3.496257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.782727, 5.485799, 3.829995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803703, 5.687342, 3.485117>,  <0.816289, 5.808267, 3.278190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.803703, 5.687342, 3.485117>,  <0.782727, 5.485799, 3.829995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.803703, 5.687342, 3.485117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061967, 0.863360, 0.500768,
		0.996700, 0.027167, 0.076499,
		0.052442, 0.503855, -0.862195,
		0.819436, 5.838498, 3.226459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.413920, 5.939373, 3.802976>,  <0.782727, 5.485799, 3.829995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.413920, 5.939373, 3.802976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.131887, 6.091572, 3.563616>,  <0.962668, 6.182891, 3.420000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.131887, 6.091572, 3.563616>,  <1.413920, 5.939373, 3.802976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.131887, 6.091572, 3.563616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002918, 0.842291, 0.539015,
		0.709120, 0.381796, -0.592774,
		-0.705082, 0.380497, -0.598400,
		0.920363, 6.205721, 3.384096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.141775, 1.870119, 4.411858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.159164, 2.081738, 4.072866>,  <0.169598, 2.208709, 3.869471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.159164, 2.081738, 4.072866>,  <0.141775, 1.870119, 4.411858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.159164, 2.081738, 4.072866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242287, -0.828541, -0.504794,
		-0.969230, -0.183388, -0.164200,
		0.043474, 0.529046, -0.847479,
		0.172206, 2.240451, 3.818623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.345493, 1.654350, 3.760803>,  <0.141775, 1.870119, 4.411858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.345493, 1.654350, 3.760803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.002441, 1.812603, 3.629381>,  <0.203390, 1.907555, 3.550528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.002441, 1.812603, 3.629381>,  <-0.345493, 1.654350, 3.760803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.002441, 1.812603, 3.629381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222184, -0.861225, -0.457083,
		-0.463796, 0.319009, -0.826515,
		0.857629, 0.395632, -0.328554,
		0.254847, 1.931293, 3.530815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.277446, 1.472581, 3.058427>,  <-0.345493, 1.654350, 3.760803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.277446, 1.472581, 3.058427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.096413, 1.567436, 3.164410>,  <0.320728, 1.624349, 3.228000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.096413, 1.567436, 3.164410>,  <-0.277446, 1.472581, 3.058427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.096413, 1.567436, 3.164410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351180, -0.732483, -0.583216,
		0.055775, 0.638149, -0.767890,
		0.934645, 0.237139, 0.264959,
		0.376806, 1.638578, 3.243898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.097660, 1.594474, 2.482291>,  <-0.277446, 1.472581, 3.058427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.097660, 1.594474, 2.482291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.365406, 1.482647, 2.757621>,  <0.526054, 1.415551, 2.922819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.365406, 1.482647, 2.757621>,  <0.097660, 1.594474, 2.482291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.365406, 1.482647, 2.757621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345465, -0.703111, -0.621522,
		0.657726, 0.653818, -0.374057,
		0.669365, -0.279567, 0.688325,
		0.566216, 1.398777, 2.964119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.687553, 1.456208, 2.138298>,  <0.097660, 1.594474, 2.482291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.687553, 1.456208, 2.138298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.758759, 1.267403, 2.483671>,  <0.801482, 1.154119, 2.690895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.758759, 1.267403, 2.483671>,  <0.687553, 1.456208, 2.138298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.758759, 1.267403, 2.483671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278819, -0.817292, -0.504275,
		0.943701, 0.330509, -0.013884,
		0.178015, -0.472013, 0.863432,
		0.812163, 1.125799, 2.742701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.385333, 1.128003, 2.068022>,  <0.687553, 1.456208, 2.138298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.385333, 1.128003, 2.068022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174831, 0.932590, 2.346416>,  <1.048530, 0.815343, 2.513452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174831, 0.932590, 2.346416>,  <1.385333, 1.128003, 2.068022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.174831, 0.932590, 2.346416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484366, -0.844944, -0.226847,
		0.698889, 0.217732, 0.681283,
		-0.526255, -0.488531, 0.695984,
		1.016955, 0.786031, 2.555211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.819232, 0.629625, 2.567917>,  <1.385333, 1.128003, 2.068022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.819232, 0.629625, 2.567917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.455181, 0.467484, 2.602224>,  <1.236751, 0.370198, 2.622808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.455181, 0.467484, 2.602224>,  <1.819232, 0.629625, 2.567917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.455181, 0.467484, 2.602224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381430, -0.900550, -0.208617,
		0.161802, -0.157154, 0.974229,
		-0.910127, -0.405355, 0.085767,
		1.182143, 0.345877, 2.627954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.865144, 0.101403, 3.031315>,  <1.819232, 0.629625, 2.567917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.865144, 0.101403, 3.031315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.544445, 0.027069, 2.804100>,  <1.352026, -0.017531, 2.667771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.544445, 0.027069, 2.804100>,  <1.865144, 0.101403, 3.031315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.544445, 0.027069, 2.804100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381877, -0.890402, -0.247698,
		-0.459750, -0.415511, 0.784844,
		-0.801748, -0.185835, -0.568036,
		1.303921, -0.028681, 2.633689>
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
