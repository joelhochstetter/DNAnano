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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.772747, 32.925072, 22.918768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081161, 32.757881, 23.110935>,  <43.266209, 32.657566, 23.226236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.081161, 32.757881, 23.110935>,  <42.772747, 32.925072, 22.918768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081161, 32.757881, 23.110935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361231, 0.334216, 0.870524,
		-0.524426, -0.844744, 0.106703,
		0.771031, -0.417981, 0.480419,
		43.312469, 32.632488, 23.255060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571953, 32.372246, 23.291786>,  <42.772747, 32.925072, 22.918768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571953, 32.372246, 23.291786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860954, 32.578339, 23.476185>,  <43.034355, 32.701996, 23.586824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860954, 32.578339, 23.476185>,  <42.571953, 32.372246, 23.291786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860954, 32.578339, 23.476185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674384, 0.378338, 0.634087,
		0.152290, -0.769021, 0.620817,
		0.722506, 0.515234, 0.460998,
		43.077705, 32.732910, 23.614485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193790, 32.084888, 23.818594>,  <42.571953, 32.372246, 23.291786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193790, 32.084888, 23.818594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891628, 32.130985, 24.076611>,  <41.710331, 32.158642, 24.231421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891628, 32.130985, 24.076611>,  <42.193790, 32.084888, 23.818594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891628, 32.130985, 24.076611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009699, 0.982339, -0.186856,
		-0.655183, -0.147409, -0.740949,
		-0.755408, 0.115239, 0.645042,
		41.665005, 32.165558, 24.270123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518543, 32.439240, 23.612228>,  <42.193790, 32.084888, 23.818594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518543, 32.439240, 23.612228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550110, 32.518417, 24.003040>,  <41.569050, 32.565926, 24.237528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550110, 32.518417, 24.003040>,  <41.518543, 32.439240, 23.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550110, 32.518417, 24.003040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258504, 0.950625, -0.171719,
		-0.962782, -0.239016, 0.126186,
		0.078912, 0.197947, 0.977031,
		41.573784, 32.577801, 24.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912979, 32.788082, 23.773371>,  <41.518543, 32.439240, 23.612228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912979, 32.788082, 23.773371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253098, 32.860477, 23.971054>,  <41.457169, 32.903915, 24.089664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253098, 32.860477, 23.971054>,  <40.912979, 32.788082, 23.773371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253098, 32.860477, 23.971054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071091, 0.969902, -0.232885,
		-0.521485, 0.162886, 0.837569,
		0.850294, 0.180990, 0.494209,
		41.508186, 32.914776, 24.119316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238747, 32.910755, 24.113832>,  <40.912979, 32.788082, 23.773371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238747, 32.910755, 24.113832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861053, 32.779675, 24.126740>,  <39.634438, 32.701027, 24.134483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861053, 32.779675, 24.126740>,  <40.238747, 32.910755, 24.113832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861053, 32.779675, 24.126740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233428, -0.597011, 0.767521,
		-0.232258, 0.732248, 0.640211,
		-0.944229, -0.327706, 0.032267,
		39.577785, 32.681362, 24.136419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969261, 32.912319, 24.903431>,  <40.238747, 32.910755, 24.113832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969261, 32.912319, 24.903431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740974, 32.643970, 24.714027>,  <39.604000, 32.482964, 24.600386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740974, 32.643970, 24.714027>,  <39.969261, 32.912319, 24.903431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740974, 32.643970, 24.714027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182988, -0.666054, 0.723110,
		-0.800495, 0.326048, 0.502892,
		-0.570721, -0.670869, -0.473510,
		39.569759, 32.442711, 24.571974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516300, 32.756161, 25.385794>,  <39.969261, 32.912319, 24.903431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516300, 32.756161, 25.385794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479023, 32.452744, 25.127823>,  <39.456657, 32.270695, 24.973040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479023, 32.452744, 25.127823>,  <39.516300, 32.756161, 25.385794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479023, 32.452744, 25.127823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146168, -0.630305, 0.762464,
		-0.984860, 0.165325, -0.052134,
		-0.093194, -0.758541, -0.644927,
		39.451065, 32.225182, 24.934345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923149, 32.467197, 25.586407>,  <39.516300, 32.756161, 25.385794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923149, 32.467197, 25.586407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146435, 32.207989, 25.379150>,  <39.280407, 32.052464, 25.254797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146435, 32.207989, 25.379150>,  <38.923149, 32.467197, 25.586407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146435, 32.207989, 25.379150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157264, -0.695811, 0.700796,
		-0.814658, -0.309707, -0.490319,
		0.558211, -0.648019, -0.518143,
		39.313900, 32.013584, 25.223707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616711, 31.879326, 25.751501>,  <38.923149, 32.467197, 25.586407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616711, 31.879326, 25.751501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961277, 31.755241, 25.590641>,  <39.168018, 31.680790, 25.494125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961277, 31.755241, 25.590641>,  <38.616711, 31.879326, 25.751501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961277, 31.755241, 25.590641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034710, -0.825902, 0.562744,
		-0.506706, -0.470800, -0.722216,
		0.861420, -0.310214, -0.402148,
		39.219704, 31.662178, 25.469997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543217, 31.087246, 25.523672>,  <38.616711, 31.879326, 25.751501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543217, 31.087246, 25.523672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927444, 31.169594, 25.598419>,  <39.157982, 31.219002, 25.643269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927444, 31.169594, 25.598419>,  <38.543217, 31.087246, 25.523672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927444, 31.169594, 25.598419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049475, -0.787953, 0.613745,
		0.273595, -0.580301, -0.767071,
		0.960572, 0.205868, 0.186869,
		39.215614, 31.231354, 25.654480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815243, 30.527912, 25.578348>,  <38.543217, 31.087246, 25.523672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815243, 30.527912, 25.578348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120235, 30.728855, 25.741447>,  <39.303230, 30.849421, 25.839308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120235, 30.728855, 25.741447>,  <38.815243, 30.527912, 25.578348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120235, 30.728855, 25.741447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143730, -0.745972, 0.650283,
		0.630842, -0.437223, -0.640994,
		0.762482, 0.502356, 0.407749,
		39.348980, 30.879562, 25.863771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368492, 29.962471, 25.675562>,  <38.815243, 30.527912, 25.578348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368492, 29.962471, 25.675562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424706, 30.275867, 25.917683>,  <39.458435, 30.463905, 26.062954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424706, 30.275867, 25.917683>,  <39.368492, 29.962471, 25.675562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424706, 30.275867, 25.917683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363735, -0.609473, 0.704443,
		0.920840, 0.121169, -0.370636,
		0.140536, 0.783492, 0.605301,
		39.466866, 30.510916, 26.099274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919491, 29.773340, 26.142397>,  <39.368492, 29.962471, 25.675562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919491, 29.773340, 26.142397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771809, 30.070190, 26.366161>,  <39.683197, 30.248301, 26.500420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771809, 30.070190, 26.366161>,  <39.919491, 29.773340, 26.142397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771809, 30.070190, 26.366161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246159, -0.502346, 0.828887,
		0.896153, 0.443735, 0.002790,
		-0.369208, 0.742123, 0.559409,
		39.661045, 30.292828, 26.533983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297005, 29.856062, 26.690508>,  <39.919491, 29.773340, 26.142397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297005, 29.856062, 26.690508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004833, 30.089920, 26.831738>,  <39.829529, 30.230234, 26.916475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004833, 30.089920, 26.831738>,  <40.297005, 29.856062, 26.690508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004833, 30.089920, 26.831738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169263, -0.345870, 0.922889,
		0.661679, 0.733870, 0.153676,
		-0.730432, 0.584645, 0.353072,
		39.785706, 30.265314, 26.937658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499832, 30.069288, 27.287022>,  <40.297005, 29.856062, 26.690508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499832, 30.069288, 27.287022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100143, 30.084785, 27.284317>,  <39.860329, 30.094084, 27.282694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100143, 30.084785, 27.284317>,  <40.499832, 30.069288, 27.287022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100143, 30.084785, 27.284317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023046, -0.437563, 0.898892,
		0.031867, 0.898353, 0.438118,
		-0.999226, 0.038742, -0.006760,
		39.800377, 30.096409, 27.282290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301888, 30.264778, 27.966932>,  <40.499832, 30.069288, 27.287022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301888, 30.264778, 27.966932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961285, 30.103447, 27.832905>,  <39.756924, 30.006649, 27.752489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961285, 30.103447, 27.832905>,  <40.301888, 30.264778, 27.966932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961285, 30.103447, 27.832905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211770, -0.320058, 0.923427,
		-0.479683, 0.857258, 0.187118,
		-0.851503, -0.403326, -0.335067,
		39.705833, 29.982449, 27.732384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829460, 30.285717, 28.553034>,  <40.301888, 30.264778, 27.966932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829460, 30.285717, 28.553034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641056, 30.035084, 28.304665>,  <39.528015, 29.884705, 28.155643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641056, 30.035084, 28.304665>,  <39.829460, 30.285717, 28.553034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641056, 30.035084, 28.304665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363206, -0.503709, 0.783810,
		-0.803887, 0.594704, 0.009672,
		-0.471006, -0.626582, -0.620925,
		39.499756, 29.847109, 28.118387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153481, 30.279318, 28.762135>,  <39.829460, 30.285717, 28.553034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153481, 30.279318, 28.762135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217712, 29.934948, 28.569042>,  <39.256252, 29.728327, 28.453188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217712, 29.934948, 28.569042>,  <39.153481, 30.279318, 28.762135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217712, 29.934948, 28.569042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569843, -0.480197, 0.666851,
		-0.805912, 0.167999, -0.567699,
		0.160577, -0.860922, -0.482729,
		39.265884, 29.676672, 28.424223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512363, 29.954199, 28.748400>,  <39.153481, 30.279318, 28.762135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512363, 29.954199, 28.748400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786171, 29.671833, 28.675606>,  <38.950455, 29.502415, 28.631929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786171, 29.671833, 28.675606>,  <38.512363, 29.954199, 28.748400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786171, 29.671833, 28.675606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535098, -0.656082, 0.532190,
		-0.495077, -0.266915, -0.826834,
		0.684521, -0.705912, -0.181986,
		38.991528, 29.460060, 28.621010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144386, 29.399973, 28.466862>,  <38.512363, 29.954199, 28.748400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144386, 29.399973, 28.466862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483955, 29.244141, 28.609722>,  <38.687698, 29.150640, 28.695438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483955, 29.244141, 28.609722>,  <38.144386, 29.399973, 28.466862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483955, 29.244141, 28.609722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524214, -0.706712, 0.475140,
		0.067296, -0.590580, -0.804168,
		0.848924, -0.389581, 0.357149,
		38.738632, 29.127266, 28.716867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955437, 28.652479, 28.608274>,  <38.144386, 29.399973, 28.466862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955437, 28.652479, 28.608274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290325, 28.715260, 28.817822>,  <38.491257, 28.752928, 28.943550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290325, 28.715260, 28.817822>,  <37.955437, 28.652479, 28.608274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290325, 28.715260, 28.817822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199771, -0.803958, 0.560128,
		0.509078, -0.573601, -0.641733,
		0.837217, 0.156950, 0.523866,
		38.541489, 28.762344, 28.974981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351055, 27.923763, 28.656406>,  <37.955437, 28.652479, 28.608274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351055, 27.923763, 28.656406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452759, 28.176037, 28.949688>,  <38.513783, 28.327400, 29.125658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452759, 28.176037, 28.949688>,  <38.351055, 27.923763, 28.656406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452759, 28.176037, 28.949688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259281, -0.685917, 0.679920,
		0.931732, -0.362983, -0.010877,
		0.254261, 0.630683, 0.733205,
		38.529037, 28.365242, 29.169649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492790, 27.465330, 29.195578>,  <38.351055, 27.923763, 28.656406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492790, 27.465330, 29.195578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479454, 27.823631, 29.372898>,  <38.471451, 28.038612, 29.479290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479454, 27.823631, 29.372898>,  <38.492790, 27.465330, 29.195578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479454, 27.823631, 29.372898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289555, -0.433180, 0.853529,
		0.956580, -0.099902, 0.273813,
		-0.033341, 0.895754, 0.443299,
		38.469452, 28.092358, 29.505888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767025, 27.410671, 29.846235>,  <38.492790, 27.465330, 29.195578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767025, 27.410671, 29.846235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540417, 27.738663, 29.878956>,  <38.404453, 27.935457, 29.898588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540417, 27.738663, 29.878956>,  <38.767025, 27.410671, 29.846235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540417, 27.738663, 29.878956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471588, -0.404014, 0.783822,
		0.675764, 0.405477, 0.615574,
		-0.566522, 0.819977, 0.081800,
		38.370461, 27.984655, 29.903496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840412, 27.593178, 30.562738>,  <38.767025, 27.410671, 29.846235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840412, 27.593178, 30.562738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507347, 27.763054, 30.420574>,  <38.307507, 27.864979, 30.335276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507347, 27.763054, 30.420574>,  <38.840412, 27.593178, 30.562738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507347, 27.763054, 30.420574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504993, -0.318898, 0.802051,
		0.227283, 0.847316, 0.479999,
		-0.832661, 0.424689, -0.355409,
		38.257549, 27.890461, 30.313951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535194, 28.150919, 30.953287>,  <38.840412, 27.593178, 30.562738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535194, 28.150919, 30.953287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236553, 27.973492, 30.754959>,  <38.057369, 27.867035, 30.635962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236553, 27.973492, 30.754959>,  <38.535194, 28.150919, 30.953287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236553, 27.973492, 30.754959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432439, -0.242791, 0.868360,
		-0.505556, 0.862729, -0.010548,
		-0.746599, -0.443566, -0.495822,
		38.012573, 27.840422, 30.606213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786415, 28.419130, 31.155788>,  <38.535194, 28.150919, 30.953287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786415, 28.419130, 31.155788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792980, 28.044411, 31.015995>,  <37.796921, 27.819580, 30.932119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792980, 28.044411, 31.015995>,  <37.786415, 28.419130, 31.155788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792980, 28.044411, 31.015995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629689, -0.281196, 0.724169,
		-0.776674, 0.208179, -0.594508,
		0.016416, -0.936798, -0.349486,
		37.797905, 27.763371, 30.911150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075798, 28.138483, 31.010208>,  <37.786415, 28.419130, 31.155788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075798, 28.138483, 31.010208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317822, 27.841373, 31.124878>,  <37.463036, 27.663107, 31.193680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317822, 27.841373, 31.124878>,  <37.075798, 28.138483, 31.010208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317822, 27.841373, 31.124878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656005, -0.261059, 0.708171,
		-0.451174, -0.616548, -0.645222,
		0.605062, -0.742777, 0.286675,
		37.499340, 27.618540, 31.210880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777012, 27.413301, 31.014420>,  <37.075798, 28.138483, 31.010208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777012, 27.413301, 31.014420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050446, 27.476982, 31.299339>,  <37.214504, 27.515190, 31.470291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050446, 27.476982, 31.299339>,  <36.777012, 27.413301, 31.014420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050446, 27.476982, 31.299339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714866, -0.050855, 0.697410,
		0.147254, -0.985935, 0.079046,
		0.683581, 0.159204, 0.712300,
		37.255520, 27.524742, 31.513029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625900, 26.889246, 31.555178>,  <36.777012, 27.413301, 31.014420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625900, 26.889246, 31.555178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797527, 27.238178, 31.648933>,  <36.900505, 27.447538, 31.705187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797527, 27.238178, 31.648933>,  <36.625900, 26.889246, 31.555178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797527, 27.238178, 31.648933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596251, 0.078603, 0.798940,
		0.678517, -0.482554, 0.553855,
		0.429067, 0.872332, 0.234390,
		36.926247, 27.499878, 31.719250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124107, 27.224407, 32.056107>,  <36.625900, 26.889246, 31.555178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124107, 27.224407, 32.056107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429741, 27.472244, 32.127968>,  <36.613121, 27.620947, 32.171085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429741, 27.472244, 32.127968>,  <36.124107, 27.224407, 32.056107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429741, 27.472244, 32.127968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534842, 0.452704, 0.713445,
		0.360714, -0.641221, 0.677289,
		0.764088, 0.619592, 0.179655,
		36.658966, 27.658123, 32.181866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395710, 27.338007, 31.963932>,  <36.124107, 27.224407, 32.056107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395710, 27.338007, 31.963932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447071, 27.307312, 31.568432>,  <35.477886, 27.288895, 31.331133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447071, 27.307312, 31.568432>,  <35.395710, 27.338007, 31.963932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447071, 27.307312, 31.568432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630060, 0.763623, -0.141086,
		0.765857, 0.641087, 0.049704,
		0.128404, -0.076736, -0.988749,
		35.485592, 27.284292, 31.271807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718636, 27.962360, 31.596859>,  <35.395710, 27.338007, 31.963932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718636, 27.962360, 31.596859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461132, 27.747803, 31.378555>,  <35.306629, 27.619068, 31.247572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461132, 27.747803, 31.378555>,  <35.718636, 27.962360, 31.596859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461132, 27.747803, 31.378555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596989, 0.798217, -0.080333,
		0.478726, 0.274098, -0.834082,
		-0.643759, -0.536395, -0.545761,
		35.268005, 27.586884, 31.214827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404533, 28.461985, 31.159122>,  <35.718636, 27.962360, 31.596859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404533, 28.461985, 31.159122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146702, 28.156170, 31.159008>,  <34.992004, 27.972681, 31.158939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146702, 28.156170, 31.159008>,  <35.404533, 28.461985, 31.159122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146702, 28.156170, 31.159008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761845, 0.642340, -0.083617,
		0.064111, -0.053681, -0.996498,
		-0.644579, -0.764538, -0.000285,
		34.953327, 27.926809, 31.158922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874851, 28.593578, 30.632635>,  <35.404533, 28.461985, 31.159122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874851, 28.593578, 30.632635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718300, 28.374737, 30.928608>,  <34.624371, 28.243431, 31.106192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718300, 28.374737, 30.928608>,  <34.874851, 28.593578, 30.632635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718300, 28.374737, 30.928608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784578, 0.618580, 0.042386,
		-0.480897, -0.563947, -0.671343,
		-0.391376, -0.547104, 0.739933,
		34.600887, 28.210606, 31.150587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017612, 28.340305, 29.954268>,  <34.874851, 28.593578, 30.632635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017612, 28.340305, 29.954268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284653, 28.052788, 29.876663>,  <35.444878, 27.880278, 29.830101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284653, 28.052788, 29.876663>,  <35.017612, 28.340305, 29.954268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284653, 28.052788, 29.876663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510617, 0.631691, -0.583297,
		0.541827, 0.290345, 0.788748,
		0.667603, -0.718795, -0.194012,
		35.484932, 27.837149, 29.818459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656597, 28.679861, 29.963160>,  <35.017612, 28.340305, 29.954268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656597, 28.679861, 29.963160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710258, 28.347122, 29.747742>,  <35.742455, 28.147478, 29.618492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710258, 28.347122, 29.747742>,  <35.656597, 28.679861, 29.963160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710258, 28.347122, 29.747742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470054, 0.531845, -0.704407,
		0.872383, -0.158644, 0.462364,
		0.134156, -0.831849, -0.538544,
		35.750504, 28.097567, 29.586178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353848, 28.682407, 29.838211>,  <35.656597, 28.679861, 29.963160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353848, 28.682407, 29.838211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171509, 28.467144, 29.554638>,  <36.062107, 28.337986, 29.384493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171509, 28.467144, 29.554638>,  <36.353848, 28.682407, 29.838211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171509, 28.467144, 29.554638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536666, 0.469245, -0.701284,
		0.710068, -0.700137, 0.074910,
		-0.455844, -0.538161, -0.708935,
		36.034756, 28.305696, 29.341957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814999, 28.683041, 29.263334>,  <36.353848, 28.682407, 29.838211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814999, 28.683041, 29.263334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513863, 28.507511, 29.067101>,  <36.333183, 28.402193, 28.949360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513863, 28.507511, 29.067101>,  <36.814999, 28.683041, 29.263334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513863, 28.507511, 29.067101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334556, 0.386759, -0.859354,
		0.566843, -0.811080, -0.144355,
		-0.752835, -0.438824, -0.490584,
		36.288013, 28.375864, 28.919926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041248, 28.318975, 28.669420>,  <36.814999, 28.683041, 29.263334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041248, 28.318975, 28.669420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655529, 28.393463, 28.594109>,  <36.424099, 28.438156, 28.548922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655529, 28.393463, 28.594109>,  <37.041248, 28.318975, 28.669420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655529, 28.393463, 28.594109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245313, 0.360384, -0.899969,
		-0.099739, -0.914027, -0.393200,
		-0.964299, 0.186219, -0.188278,
		36.366238, 28.449329, 28.537624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909771, 28.153137, 27.969875>,  <37.041248, 28.318975, 28.669420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909771, 28.153137, 27.969875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630901, 28.420963, 28.072350>,  <36.463581, 28.581659, 28.133835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630901, 28.420963, 28.072350>,  <36.909771, 28.153137, 27.969875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630901, 28.420963, 28.072350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111619, 0.454374, -0.883790,
		-0.708158, -0.587561, -0.391514,
		-0.697175, 0.669564, 0.256186,
		36.421749, 28.621832, 28.149206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614735, 28.244164, 27.342463>,  <36.909771, 28.153137, 27.969875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614735, 28.244164, 27.342463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448246, 28.545013, 27.546841>,  <36.348351, 28.725523, 27.669468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448246, 28.545013, 27.546841>,  <36.614735, 28.244164, 27.342463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448246, 28.545013, 27.546841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029874, 0.550317, -0.834421,
		-0.908771, -0.362571, -0.206587,
		-0.416225, 0.752126, 0.510944,
		36.323380, 28.770651, 27.700123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137089, 28.520683, 26.877396>,  <36.614735, 28.244164, 27.342463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137089, 28.520683, 26.877396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226025, 28.805191, 27.144127>,  <36.279385, 28.975895, 27.304167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226025, 28.805191, 27.144127>,  <36.137089, 28.520683, 26.877396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226025, 28.805191, 27.144127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034435, 0.689252, -0.723703,
		-0.974361, 0.137945, 0.177739,
		0.222338, 0.711269, 0.666830,
		36.292725, 29.018572, 27.344175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729099, 29.029362, 26.591331>,  <36.137089, 28.520683, 26.877396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729099, 29.029362, 26.591331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963047, 29.201466, 26.866375>,  <36.103416, 29.304728, 27.031401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963047, 29.201466, 26.866375>,  <35.729099, 29.029362, 26.591331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963047, 29.201466, 26.866375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042593, 0.830259, -0.555748,
		-0.810009, 0.354326, 0.467266,
		0.584868, 0.430259, 0.687609,
		36.138508, 29.330544, 27.072659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493340, 29.695099, 26.641947>,  <35.729099, 29.029362, 26.591331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493340, 29.695099, 26.641947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870609, 29.720268, 26.772465>,  <36.096970, 29.735369, 26.850775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870609, 29.720268, 26.772465>,  <35.493340, 29.695099, 26.641947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870609, 29.720268, 26.772465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147802, 0.800007, -0.581501,
		-0.297626, 0.596682, 0.745244,
		0.943172, 0.062921, 0.326294,
		36.153561, 29.739145, 26.870354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556801, 30.280491, 26.730789>,  <35.493340, 29.695099, 26.641947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556801, 30.280491, 26.730789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943192, 30.179276, 26.709381>,  <36.175026, 30.118546, 26.696535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943192, 30.179276, 26.709381>,  <35.556801, 30.280491, 26.730789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943192, 30.179276, 26.709381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188757, 0.831191, -0.522965,
		0.176818, 0.495068, 0.850672,
		0.965974, -0.253040, -0.053522,
		36.232983, 30.103363, 26.693325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039577, 30.819664, 26.928293>,  <35.556801, 30.280491, 26.730789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039577, 30.819664, 26.928293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228458, 30.577053, 26.672436>,  <36.341789, 30.431486, 26.518921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228458, 30.577053, 26.672436>,  <36.039577, 30.819664, 26.928293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228458, 30.577053, 26.672436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110081, 0.760536, -0.639896,
		0.874588, 0.231750, 0.425897,
		0.472206, -0.606529, -0.639644,
		36.370121, 30.395094, 26.480543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263638, 31.276230, 26.626949>,  <36.039577, 30.819664, 26.928293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263638, 31.276230, 26.626949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387753, 30.969013, 26.402866>,  <36.462223, 30.784683, 26.268415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387753, 30.969013, 26.402866>,  <36.263638, 31.276230, 26.626949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387753, 30.969013, 26.402866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245858, 0.634080, -0.733141,
		0.918299, 0.089755, 0.385578,
		0.310290, -0.768041, -0.560209,
		36.480839, 30.738602, 26.234804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990177, 31.456905, 26.278509>,  <36.263638, 31.276230, 26.626949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990177, 31.456905, 26.278509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808514, 31.186550, 26.046333>,  <36.699516, 31.024336, 25.907028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808514, 31.186550, 26.046333>,  <36.990177, 31.456905, 26.278509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808514, 31.186550, 26.046333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206541, 0.553881, -0.806571,
		0.866648, -0.486197, -0.111952,
		-0.454161, -0.675890, -0.580440,
		36.672264, 30.983784, 25.872202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477337, 31.368994, 25.630003>,  <36.990177, 31.456905, 26.278509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477337, 31.368994, 25.630003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112232, 31.227337, 25.548569>,  <36.893169, 31.142344, 25.499708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112232, 31.227337, 25.548569>,  <37.477337, 31.368994, 25.630003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112232, 31.227337, 25.548569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006451, 0.485832, -0.874029,
		0.408439, -0.799094, -0.441164,
		-0.912763, -0.354141, -0.203587,
		36.838402, 31.121094, 25.487492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549099, 31.007360, 25.061859>,  <37.477337, 31.368994, 25.630003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549099, 31.007360, 25.061859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163845, 31.113522, 25.079456>,  <36.932693, 31.177217, 25.090015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163845, 31.113522, 25.079456>,  <37.549099, 31.007360, 25.061859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163845, 31.113522, 25.079456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060189, 0.371972, -0.926291,
		-0.262205, -0.889493, -0.374233,
		-0.963133, 0.265403, 0.043995,
		36.874905, 31.193142, 25.092655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232288, 30.793257, 24.452801>,  <37.549099, 31.007360, 25.061859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232288, 30.793257, 24.452801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979748, 31.073540, 24.585709>,  <36.828224, 31.241711, 24.665453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979748, 31.073540, 24.585709>,  <37.232288, 30.793257, 24.452801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979748, 31.073540, 24.585709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104547, 0.347642, -0.931780,
		-0.768417, -0.623019, -0.146227,
		-0.631351, 0.700709, 0.332269,
		36.790340, 31.283752, 24.685389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656178, 30.920149, 23.949558>,  <37.232288, 30.793257, 24.452801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656178, 30.920149, 23.949558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670723, 31.254116, 24.169228>,  <36.679451, 31.454496, 24.301029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670723, 31.254116, 24.169228>,  <36.656178, 30.920149, 23.949558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670723, 31.254116, 24.169228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072627, 0.550290, -0.831809,
		-0.996696, -0.009641, 0.080645,
		0.036359, 0.834918, 0.549172,
		36.681629, 31.504591, 24.333979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244167, 31.327333, 23.644695>,  <36.656178, 30.920149, 23.949558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244167, 31.327333, 23.644695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458855, 31.580246, 23.868179>,  <36.587666, 31.731993, 24.002270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458855, 31.580246, 23.868179>,  <36.244167, 31.327333, 23.644695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458855, 31.580246, 23.868179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140379, 0.719851, -0.679785,
		-0.832004, 0.286419, 0.475113,
		0.536714, 0.632280, 0.558712,
		36.619869, 31.769930, 24.035793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960972, 31.977760, 23.527128>,  <36.244167, 31.327333, 23.644695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960972, 31.977760, 23.527128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324806, 32.056694, 23.673393>,  <36.543106, 32.104053, 23.761152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324806, 32.056694, 23.673393>,  <35.960972, 31.977760, 23.527128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324806, 32.056694, 23.673393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087997, 0.768581, -0.633671,
		-0.406088, 0.608557, 0.681727,
		0.909587, 0.197336, 0.365663,
		36.597683, 32.115894, 23.783092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980103, 32.681568, 23.573994>,  <35.960972, 31.977760, 23.527128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980103, 32.681568, 23.573994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357471, 32.548973, 23.570583>,  <36.583893, 32.469418, 23.568537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357471, 32.548973, 23.570583>,  <35.980103, 32.681568, 23.573994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357471, 32.548973, 23.570583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210882, 0.619619, -0.756043,
		0.255901, 0.711469, 0.654466,
		0.943421, -0.331487, -0.008525,
		36.640499, 32.449528, 23.568026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309124, 33.376652, 23.644009>,  <35.980103, 32.681568, 23.573994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309124, 33.376652, 23.644009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540482, 33.074066, 23.521885>,  <36.679298, 32.892513, 23.448610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540482, 33.074066, 23.521885>,  <36.309124, 33.376652, 23.644009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540482, 33.074066, 23.521885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238915, 0.514943, -0.823258,
		0.779985, 0.403227, 0.478573,
		0.578397, -0.756467, -0.305311,
		36.714001, 32.847126, 23.430292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843025, 33.867393, 23.983654>,  <36.309124, 33.376652, 23.644009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843025, 33.867393, 23.983654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007786, 33.981632, 24.329781>,  <36.106640, 34.050175, 24.537457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007786, 33.981632, 24.329781>,  <35.843025, 33.867393, 23.983654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007786, 33.981632, 24.329781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671698, 0.736861, 0.076533,
		-0.615761, -0.612756, 0.495347,
		0.411898, 0.285598, 0.865317,
		36.131355, 34.067310, 24.589376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409969, 33.626926, 24.622595>,  <35.843025, 33.867393, 23.983654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409969, 33.626926, 24.622595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617691, 33.967785, 24.648388>,  <35.742325, 34.172302, 24.663864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617691, 33.967785, 24.648388>,  <35.409969, 33.626926, 24.622595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617691, 33.967785, 24.648388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836878, 0.491816, 0.240316,
		0.173070, -0.178764, 0.968550,
		0.519308, 0.852151, 0.064485,
		35.773483, 34.223431, 24.667734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200340, 33.970127, 25.277998>,  <35.409969, 33.626926, 24.622595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200340, 33.970127, 25.277998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335373, 34.239632, 25.015068>,  <35.416393, 34.401337, 24.857309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335373, 34.239632, 25.015068>,  <35.200340, 33.970127, 25.277998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335373, 34.239632, 25.015068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776408, 0.594127, 0.210247,
		0.532192, 0.439378, 0.723684,
		0.337582, 0.673766, -0.657327,
		35.436649, 34.441761, 24.817869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251381, 34.675713, 25.568645>,  <35.200340, 33.970127, 25.277998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251381, 34.675713, 25.568645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178894, 34.657650, 25.175682>,  <35.135403, 34.646812, 24.939905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178894, 34.657650, 25.175682>,  <35.251381, 34.675713, 25.568645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178894, 34.657650, 25.175682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856925, 0.497393, 0.135203,
		0.482536, 0.866349, -0.128831,
		-0.181212, -0.045158, -0.982407,
		35.124531, 34.644104, 24.880960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604359, 35.009846, 25.182840>,  <35.251381, 34.675713, 25.568645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604359, 35.009846, 25.182840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751183, 35.273014, 25.445869>,  <34.839279, 35.430916, 25.603687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751183, 35.273014, 25.445869>,  <34.604359, 35.009846, 25.182840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751183, 35.273014, 25.445869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880103, 0.016787, 0.474486,
		0.301138, -0.752896, 0.585203,
		0.367062, 0.657925, 0.657571,
		34.861301, 35.470390, 25.643141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469936, 34.833557, 26.033813>,  <34.604359, 35.009846, 25.182840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469936, 34.833557, 26.033813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519264, 35.226398, 25.976871>,  <34.548859, 35.462105, 25.942707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519264, 35.226398, 25.976871>,  <34.469936, 34.833557, 26.033813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519264, 35.226398, 25.976871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779741, 0.184626, 0.598262,
		0.613838, 0.037224, 0.788554,
		0.123318, 0.982104, -0.142356,
		34.556259, 35.521030, 25.934164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965885, 34.657673, 26.615170>,  <34.469936, 34.833557, 26.033813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965885, 34.657673, 26.615170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588192, 34.788788, 26.602642>,  <33.361576, 34.867458, 26.595125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588192, 34.788788, 26.602642>,  <33.965885, 34.657673, 26.615170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588192, 34.788788, 26.602642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327107, -0.944658, -0.024951,
		-0.037763, -0.013315, 0.999198,
		-0.944233, 0.327787, -0.031317,
		33.304924, 34.887123, 26.593246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697765, 34.362221, 27.110373>,  <33.965885, 34.657673, 26.615170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697765, 34.362221, 27.110373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384480, 34.469345, 26.885925>,  <33.196507, 34.533619, 26.751257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384480, 34.469345, 26.885925>,  <33.697765, 34.362221, 27.110373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384480, 34.469345, 26.885925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266969, -0.959904, -0.085508,
		-0.561520, 0.082831, 0.823307,
		-0.783213, 0.267812, -0.561119,
		33.149517, 34.549690, 26.717590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082043, 33.921745, 27.370146>,  <33.697765, 34.362221, 27.110373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082043, 33.921745, 27.370146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980427, 34.042862, 27.002716>,  <32.919456, 34.115532, 26.782259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980427, 34.042862, 27.002716>,  <33.082043, 33.921745, 27.370146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980427, 34.042862, 27.002716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411660, -0.893264, -0.180601,
		-0.875214, 0.332260, 0.351574,
		-0.254042, 0.302793, -0.918574,
		32.904213, 34.133701, 26.727144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354080, 33.806690, 27.277887>,  <33.082043, 33.921745, 27.370146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354080, 33.806690, 27.277887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480419, 33.791500, 26.898666>,  <32.556221, 33.782387, 26.671135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480419, 33.791500, 26.898666>,  <32.354080, 33.806690, 27.277887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480419, 33.791500, 26.898666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596191, -0.785246, -0.167166,
		-0.738105, 0.618018, -0.270656,
		0.315843, -0.037976, -0.948051,
		32.575172, 33.780106, 26.614250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838539, 33.579945, 26.929893>,  <32.354080, 33.806690, 27.277887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838539, 33.579945, 26.929893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112141, 33.520042, 26.644318>,  <32.276302, 33.484100, 26.472973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112141, 33.520042, 26.644318>,  <31.838539, 33.579945, 26.929893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112141, 33.520042, 26.644318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473736, -0.835425, -0.278638,
		-0.554717, 0.528809, -0.642378,
		0.684005, -0.149753, -0.713941,
		32.317341, 33.475117, 26.430136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470566, 33.549053, 26.274956>,  <31.838539, 33.579945, 26.929893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470566, 33.549053, 26.274956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818789, 33.358276, 26.226524>,  <32.027721, 33.243809, 26.197466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818789, 33.358276, 26.226524>,  <31.470566, 33.549053, 26.274956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818789, 33.358276, 26.226524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488200, -0.867954, -0.091195,
		-0.061594, 0.138500, -0.988445,
		0.870556, -0.476942, -0.121076,
		32.079956, 33.215195, 26.190201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317839, 33.073151, 25.635010>,  <31.470566, 33.549053, 26.274956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317839, 33.073151, 25.635010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628517, 32.917980, 25.833508>,  <31.814924, 32.824879, 25.952606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628517, 32.917980, 25.833508>,  <31.317839, 33.073151, 25.635010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628517, 32.917980, 25.833508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474339, -0.878584, 0.055602,
		0.414424, -0.278574, -0.866400,
		0.776695, -0.387924, 0.496245,
		31.861526, 32.801601, 25.982382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596361, 32.399879, 25.279671>,  <31.317839, 33.073151, 25.635010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596361, 32.399879, 25.279671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705599, 32.375973, 25.663723>,  <31.771141, 32.361629, 25.894154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705599, 32.375973, 25.663723>,  <31.596361, 32.399879, 25.279671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705599, 32.375973, 25.663723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179538, -0.983699, -0.010167,
		0.945085, -0.169603, -0.279372,
		0.273093, -0.059767, 0.960129,
		31.787527, 32.358044, 25.951761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622232, 31.673691, 25.330517>,  <31.596361, 32.399879, 25.279671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622232, 31.673691, 25.330517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677309, 31.774708, 25.713612>,  <31.710354, 31.835318, 25.943468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677309, 31.774708, 25.713612>,  <31.622232, 31.673691, 25.330517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677309, 31.774708, 25.713612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316297, -0.905109, 0.284138,
		0.938615, -0.342053, -0.044746,
		0.137690, 0.252543, 0.957739,
		31.718616, 31.850471, 26.000933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093361, 31.232189, 25.620083>,  <31.622232, 31.673691, 25.330517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093361, 31.232189, 25.620083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882833, 31.378693, 25.927029>,  <31.756517, 31.466595, 26.111197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882833, 31.378693, 25.927029>,  <32.093361, 31.232189, 25.620083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882833, 31.378693, 25.927029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309936, -0.923020, 0.227977,
		0.791790, -0.117846, 0.599317,
		-0.526315, 0.366260, 0.767363,
		31.724939, 31.488571, 26.157238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185547, 30.759621, 26.137865>,  <32.093361, 31.232189, 25.620083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185547, 30.759621, 26.137865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878820, 30.946522, 26.313896>,  <31.694784, 31.058662, 26.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878820, 30.946522, 26.313896>,  <32.185547, 30.759621, 26.137865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878820, 30.946522, 26.313896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393657, -0.883888, 0.252541,
		0.506979, 0.020413, 0.861717,
		-0.766816, 0.467253, 0.440077,
		31.648775, 31.086699, 26.445919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046940, 30.489532, 26.786333>,  <32.185547, 30.759621, 26.137865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046940, 30.489532, 26.786333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705706, 30.658718, 26.664127>,  <31.500965, 30.760229, 26.590803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705706, 30.658718, 26.664127>,  <32.046940, 30.489532, 26.786333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705706, 30.658718, 26.664127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499608, -0.831005, 0.244585,
		-0.150433, 0.361290, 0.920239,
		-0.853089, 0.422965, -0.305514,
		31.449780, 30.785608, 26.572474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551115, 30.488899, 27.410494>,  <32.046940, 30.489532, 26.786333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551115, 30.488899, 27.410494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331121, 30.485722, 27.076439>,  <31.199125, 30.483816, 26.876005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331121, 30.485722, 27.076439>,  <31.551115, 30.488899, 27.410494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331121, 30.485722, 27.076439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463827, -0.828665, 0.313336,
		-0.694538, 0.559689, 0.452068,
		-0.549984, -0.007942, -0.835138,
		31.166126, 30.483339, 26.825897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860563, 30.435488, 27.704033>,  <31.551115, 30.488899, 27.410494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860563, 30.435488, 27.704033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817564, 30.315506, 27.324883>,  <30.791763, 30.243517, 27.097391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817564, 30.315506, 27.324883>,  <30.860563, 30.435488, 27.704033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817564, 30.315506, 27.324883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541553, -0.781880, 0.308843,
		-0.833765, 0.546526, -0.078389,
		-0.107501, -0.299954, -0.947877,
		30.785315, 30.225519, 27.040520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182627, 30.262440, 27.608816>,  <30.860563, 30.435488, 27.704033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182627, 30.262440, 27.608816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392763, 30.070644, 27.327644>,  <30.518845, 29.955568, 27.158941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392763, 30.070644, 27.327644>,  <30.182627, 30.262440, 27.608816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392763, 30.070644, 27.327644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338781, -0.875672, 0.344129,
		-0.780540, 0.057353, -0.622469,
		0.525342, -0.479488, -0.702928,
		30.550365, 29.926798, 27.116766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814217, 29.698006, 27.494131>,  <30.182627, 30.262440, 27.608816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814217, 29.698006, 27.494131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163771, 29.588928, 27.333153>,  <30.373503, 29.523481, 27.236567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163771, 29.588928, 27.333153>,  <29.814217, 29.698006, 27.494131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163771, 29.588928, 27.333153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130008, -0.928796, 0.347040,
		-0.468423, -0.250952, -0.847114,
		0.873887, -0.272693, -0.402443,
		30.425936, 29.507120, 27.212420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718525, 29.006056, 27.308403>,  <29.814217, 29.698006, 27.494131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718525, 29.006056, 27.308403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115303, 29.051773, 27.330235>,  <30.353371, 29.079203, 27.343334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115303, 29.051773, 27.330235>,  <29.718525, 29.006056, 27.308403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115303, 29.051773, 27.330235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076238, -0.882918, 0.463297,
		0.101141, -0.455405, -0.884521,
		0.991947, 0.114292, 0.054580,
		30.412888, 29.086061, 27.346609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994999, 28.319916, 27.141977>,  <29.718525, 29.006056, 27.308403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994999, 28.319916, 27.141977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289745, 28.514645, 27.329609>,  <30.466593, 28.631483, 27.442188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289745, 28.514645, 27.329609>,  <29.994999, 28.319916, 27.141977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289745, 28.514645, 27.329609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226339, -0.831470, 0.507375,
		0.637025, -0.267696, -0.722868,
		0.736864, 0.486824, 0.469077,
		30.510805, 28.660692, 27.470331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559820, 27.838192, 27.135956>,  <29.994999, 28.319916, 27.141977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559820, 27.838192, 27.135956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688616, 28.087059, 27.421398>,  <30.765894, 28.236380, 27.592663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688616, 28.087059, 27.421398>,  <30.559820, 27.838192, 27.135956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688616, 28.087059, 27.421398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295599, -0.782132, 0.548535,
		0.899413, 0.034318, -0.435750,
		0.321989, 0.622167, 0.713604,
		30.785213, 28.273708, 27.635479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241241, 27.571058, 27.273359>,  <30.559820, 27.838192, 27.135956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241241, 27.571058, 27.273359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108612, 27.792992, 27.578571>,  <31.029034, 27.926151, 27.761700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108612, 27.792992, 27.578571>,  <31.241241, 27.571058, 27.273359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108612, 27.792992, 27.578571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332980, -0.687910, 0.644906,
		0.882713, 0.467909, 0.043345,
		-0.331575, 0.554834, 0.763032,
		31.009140, 27.959442, 27.807482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785099, 27.650103, 27.726173>,  <31.241241, 27.571058, 27.273359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785099, 27.650103, 27.726173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453466, 27.729328, 27.935322>,  <31.254486, 27.776863, 28.060810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453466, 27.729328, 27.935322>,  <31.785099, 27.650103, 27.726173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453466, 27.729328, 27.935322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352088, -0.541515, 0.763411,
		0.434344, 0.817027, 0.379226,
		-0.829084, 0.198062, 0.522869,
		31.204741, 27.788746, 28.092182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054478, 27.696701, 28.408405>,  <31.785099, 27.650103, 27.726173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054478, 27.696701, 28.408405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655594, 27.677979, 28.431660>,  <31.416264, 27.666746, 28.445612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655594, 27.677979, 28.431660>,  <32.054478, 27.696701, 28.408405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655594, 27.677979, 28.431660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072998, -0.449404, 0.890341,
		-0.015547, 0.892102, 0.451567,
		-0.997211, -0.046805, 0.058134,
		31.356430, 27.663937, 28.449100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820581, 27.958277, 29.062508>,  <32.054478, 27.696701, 28.408405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820581, 27.958277, 29.062508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526028, 27.723064, 28.928665>,  <31.349297, 27.581936, 28.848360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526028, 27.723064, 28.928665>,  <31.820581, 27.958277, 29.062508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526028, 27.723064, 28.928665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116355, -0.597264, 0.793560,
		-0.666485, 0.545430, 0.508235,
		-0.736382, -0.588032, -0.334604,
		31.305113, 27.546656, 28.828283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200521, 27.940414, 29.497408>,  <31.820581, 27.958277, 29.062508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200521, 27.940414, 29.497408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157366, 27.599758, 29.292248>,  <31.131474, 27.395365, 29.169151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157366, 27.599758, 29.292248>,  <31.200521, 27.940414, 29.497408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157366, 27.599758, 29.292248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057446, -0.520388, 0.851995,
		-0.992502, 0.062456, 0.105067,
		-0.107888, -0.851643, -0.512898,
		31.125000, 27.344265, 29.138378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875172, 27.515881, 30.003359>,  <31.200521, 27.940414, 29.497408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875172, 27.515881, 30.003359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012829, 27.256683, 29.731575>,  <31.095423, 27.101164, 29.568504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012829, 27.256683, 29.731575>,  <30.875172, 27.515881, 30.003359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012829, 27.256683, 29.731575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148578, -0.752131, 0.642046,
		-0.927086, -0.120004, -0.355120,
		0.344145, -0.647995, -0.679461,
		31.116072, 27.062284, 29.527737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465706, 27.016567, 30.108736>,  <30.875172, 27.515881, 30.003359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465706, 27.016567, 30.108736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760174, 26.855316, 29.891281>,  <30.936855, 26.758566, 29.760809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760174, 26.855316, 29.891281>,  <30.465706, 27.016567, 30.108736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760174, 26.855316, 29.891281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013386, -0.811766, 0.583830,
		-0.676664, -0.422521, -0.602994,
		0.736170, -0.403128, -0.543637,
		30.981026, 26.734377, 29.728189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289680, 26.410160, 30.109072>,  <30.465706, 27.016567, 30.108736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289680, 26.410160, 30.109072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679625, 26.406830, 30.020004>,  <30.913591, 26.404833, 29.966564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679625, 26.406830, 30.020004>,  <30.289680, 26.410160, 30.109072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679625, 26.406830, 30.020004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093836, -0.891036, 0.444128,
		-0.202104, -0.453856, -0.867853,
		0.974858, -0.008324, -0.222670,
		30.972082, 26.404333, 29.953203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422729, 25.796156, 29.945135>,  <30.289680, 26.410160, 30.109072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422729, 25.796156, 29.945135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783255, 25.929729, 30.055500>,  <30.999569, 26.009872, 30.121719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783255, 25.929729, 30.055500>,  <30.422729, 25.796156, 29.945135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783255, 25.929729, 30.055500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148493, -0.836549, 0.527386,
		0.406926, -0.434368, -0.803577,
		0.901311, 0.333933, 0.275913,
		31.053648, 26.029909, 30.138273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854521, 25.155760, 29.947765>,  <30.422729, 25.796156, 29.945135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854521, 25.155760, 29.947765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033113, 25.442196, 30.162380>,  <31.140268, 25.614058, 30.291149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033113, 25.442196, 30.162380>,  <30.854521, 25.155760, 29.947765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033113, 25.442196, 30.162380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372478, -0.693936, 0.616209,
		0.813582, -0.075277, -0.576556,
		0.446480, 0.716091, 0.536535,
		31.167057, 25.657022, 30.323341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539694, 25.024767, 29.850033>,  <30.854521, 25.155760, 29.947765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539694, 25.024767, 29.850033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489403, 25.236332, 30.185757>,  <31.459229, 25.363272, 30.387192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489403, 25.236332, 30.185757>,  <31.539694, 25.024767, 29.850033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489403, 25.236332, 30.185757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471703, -0.712401, 0.519597,
		0.872748, 0.461232, -0.159923,
		-0.125726, 0.528914, 0.839311,
		31.451685, 25.395006, 30.437550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175110, 24.934294, 30.220278>,  <31.539694, 25.024767, 29.850033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175110, 24.934294, 30.220278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910234, 25.050343, 30.496635>,  <31.751308, 25.119972, 30.662449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910234, 25.050343, 30.496635>,  <32.175110, 24.934294, 30.220278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910234, 25.050343, 30.496635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226774, -0.801181, 0.553789,
		0.714197, 0.523390, 0.464743,
		-0.662191, 0.290122, 0.690893,
		31.711576, 25.137379, 30.703903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505283, 24.948679, 30.812107>,  <32.175110, 24.934294, 30.220278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505283, 24.948679, 30.812107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123016, 24.901585, 30.920055>,  <31.893656, 24.873329, 30.984825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123016, 24.901585, 30.920055>,  <32.505283, 24.948679, 30.812107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123016, 24.901585, 30.920055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261922, -0.758626, 0.596560,
		0.134496, 0.640800, 0.755834,
		-0.955671, -0.117735, 0.269871,
		31.836315, 24.866264, 31.001017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510345, 24.768242, 31.465528>,  <32.505283, 24.948679, 30.812107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510345, 24.768242, 31.465528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139622, 24.652142, 31.370220>,  <31.917187, 24.582481, 31.313036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139622, 24.652142, 31.370220>,  <32.510345, 24.768242, 31.465528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139622, 24.652142, 31.370220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104066, -0.808167, 0.579687,
		-0.360819, 0.512464, 0.779224,
		-0.926812, -0.290253, -0.238271,
		31.861578, 24.565065, 31.298738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185074, 24.625757, 32.085789>,  <32.510345, 24.768242, 31.465528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185074, 24.625757, 32.085789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969786, 24.418083, 31.820229>,  <31.840612, 24.293478, 31.660892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969786, 24.418083, 31.820229>,  <32.185074, 24.625757, 32.085789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969786, 24.418083, 31.820229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027573, -0.776460, 0.629562,
		-0.842352, 0.357150, 0.403593,
		-0.538222, -0.519185, -0.663901,
		31.808319, 24.262327, 31.621058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750462, 24.263929, 32.461159>,  <32.185074, 24.625757, 32.085789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750462, 24.263929, 32.461159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739939, 24.045124, 32.126472>,  <31.733625, 23.913841, 31.925661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739939, 24.045124, 32.126472>,  <31.750462, 24.263929, 32.461159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739939, 24.045124, 32.126472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133760, -0.827548, 0.545227,
		-0.990665, 0.126261, -0.051399,
		-0.026305, -0.547012, -0.836711,
		31.732048, 23.881020, 31.875460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066889, 23.857002, 32.491310>,  <31.750462, 24.263929, 32.461159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066889, 23.857002, 32.491310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341673, 23.696861, 32.248722>,  <31.506542, 23.600777, 32.103168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341673, 23.696861, 32.248722>,  <31.066889, 23.857002, 32.491310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341673, 23.696861, 32.248722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177715, -0.901772, 0.393986,
		-0.704630, -0.162874, -0.690629,
		0.686960, -0.400350, -0.606471,
		31.547760, 23.576756, 32.066780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744921, 23.246128, 32.313541>,  <31.066889, 23.857002, 32.491310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744921, 23.246128, 32.313541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132818, 23.207443, 32.223881>,  <31.365557, 23.184233, 32.170082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132818, 23.207443, 32.223881>,  <30.744921, 23.246128, 32.313541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132818, 23.207443, 32.223881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035792, -0.851935, 0.522424,
		-0.241490, -0.514640, -0.822696,
		0.969743, -0.096714, -0.224154,
		31.423740, 23.178429, 32.156635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927351, 22.569798, 32.277805>,  <30.744921, 23.246128, 32.313541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927351, 22.569798, 32.277805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307825, 22.693054, 32.284691>,  <31.536110, 22.767008, 32.288822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307825, 22.693054, 32.284691>,  <30.927351, 22.569798, 32.277805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307825, 22.693054, 32.284691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246217, -0.791297, 0.559665,
		0.186078, -0.528107, -0.828540,
		0.951185, 0.308142, 0.017214,
		31.593180, 22.785498, 32.289856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357122, 21.975559, 32.079037>,  <30.927351, 22.569798, 32.277805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357122, 21.975559, 32.079037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619740, 22.227264, 32.245399>,  <31.777309, 22.378288, 32.345219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619740, 22.227264, 32.245399>,  <31.357122, 21.975559, 32.079037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619740, 22.227264, 32.245399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373672, -0.750314, 0.545342,
		0.655227, -0.202626, -0.727750,
		0.656541, 0.629263, 0.415911,
		31.816702, 22.416044, 32.370174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980913, 21.666790, 31.926908>,  <31.357122, 21.975559, 32.079037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980913, 21.666790, 31.926908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011051, 21.898026, 32.251904>,  <32.029133, 22.036766, 32.446899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011051, 21.898026, 32.251904>,  <31.980913, 21.666790, 31.926908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011051, 21.898026, 32.251904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275705, -0.795117, 0.540163,
		0.958285, 0.183309, -0.219290,
		0.075344, 0.578089, 0.812488,
		32.033653, 22.071453, 32.495651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641731, 21.475183, 32.258823>,  <31.980913, 21.666790, 31.926908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641731, 21.475183, 32.258823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430893, 21.644928, 32.553329>,  <32.304390, 21.746775, 32.730034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430893, 21.644928, 32.553329>,  <32.641731, 21.475183, 32.258823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430893, 21.644928, 32.553329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170661, -0.795883, 0.580901,
		0.832494, 0.431841, 0.347083,
		-0.527094, 0.424363, 0.736266,
		32.272766, 21.772238, 32.774208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112957, 21.455879, 32.805332>,  <32.641731, 21.475183, 32.258823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112957, 21.455879, 32.805332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749294, 21.461708, 32.971809>,  <32.531097, 21.465204, 33.071697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749294, 21.461708, 32.971809>,  <33.112957, 21.455879, 32.805332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749294, 21.461708, 32.971809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239012, -0.800150, 0.550122,
		0.341036, 0.599623, 0.723979,
		-0.909158, 0.014571, 0.416197,
		32.476547, 21.466080, 33.096668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238342, 21.356937, 33.524414>,  <33.112957, 21.455879, 32.805332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238342, 21.356937, 33.524414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857643, 21.265728, 33.442268>,  <32.629223, 21.211002, 33.392979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857643, 21.265728, 33.442268>,  <33.238342, 21.356937, 33.524414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857643, 21.265728, 33.442268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075547, -0.822735, 0.563382,
		-0.297425, 0.520685, 0.800266,
		-0.951752, -0.228021, -0.205366,
		32.572117, 21.197321, 33.380657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716499, 21.175219, 34.073608>,  <33.238342, 21.356937, 33.524414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716499, 21.175219, 34.073608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622402, 20.947659, 33.758389>,  <32.565945, 20.811123, 33.569256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622402, 20.947659, 33.758389>,  <32.716499, 21.175219, 34.073608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622402, 20.947659, 33.758389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311200, -0.724027, 0.615581,
		-0.920770, 0.390048, -0.006722,
		-0.235240, -0.568900, -0.788045,
		32.551830, 20.776989, 33.521976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992809, 21.106882, 33.898800>,  <32.716499, 21.175219, 34.073608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992809, 21.106882, 33.898800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224785, 20.785782, 33.843285>,  <32.363972, 20.593122, 33.809975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224785, 20.785782, 33.843285>,  <31.992809, 21.106882, 33.898800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224785, 20.785782, 33.843285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570125, -0.521620, 0.634721,
		-0.581918, -0.288971, -0.760176,
		0.579938, -0.802750, -0.138791,
		32.398766, 20.544956, 33.801647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639204, 20.417130, 33.778034>,  <31.992809, 21.106882, 33.898800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639204, 20.417130, 33.778034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007393, 20.290318, 33.869442>,  <32.228306, 20.214231, 33.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007393, 20.290318, 33.869442>,  <31.639204, 20.417130, 33.778034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007393, 20.290318, 33.869442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381698, -0.603819, 0.699793,
		-0.083871, -0.731366, -0.676809,
		0.920474, -0.317029, 0.228518,
		32.283535, 20.195210, 33.937996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505846, 19.808954, 34.223557>,  <31.639204, 20.417130, 33.778034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505846, 19.808954, 34.223557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905054, 19.832294, 34.214195>,  <32.144581, 19.846298, 34.208576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905054, 19.832294, 34.214195>,  <31.505846, 19.808954, 34.223557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905054, 19.832294, 34.214195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045402, -0.411364, 0.910340,
		0.043493, -0.909601, -0.413199,
		0.998021, 0.058353, -0.023407,
		32.204460, 19.849800, 34.207172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895761, 20.141870, 34.593712>,  <31.505846, 19.808954, 34.223557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895761, 20.141870, 34.593712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523371, 20.042610, 34.700821>,  <30.299936, 19.983055, 34.765087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523371, 20.042610, 34.700821>,  <30.895761, 20.141870, 34.593712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523371, 20.042610, 34.700821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257946, 0.966158, -0.001462,
		-0.258347, -0.070432, -0.963481,
		-0.930978, -0.248149, 0.267772,
		30.244078, 19.968166, 34.781151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561045, 20.465208, 34.184132>,  <30.895761, 20.141870, 34.593712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561045, 20.465208, 34.184132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316916, 20.412117, 34.496513>,  <30.170439, 20.380262, 34.683941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316916, 20.412117, 34.496513>,  <30.561045, 20.465208, 34.184132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316916, 20.412117, 34.496513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131919, 0.989126, 0.065012,
		-0.781091, -0.063345, -0.621196,
		-0.610323, -0.132728, 0.780954,
		30.133818, 20.372299, 34.730801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891371, 20.856741, 34.086464>,  <30.561045, 20.465208, 34.184132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891371, 20.856741, 34.086464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961079, 20.793785, 34.475281>,  <30.002903, 20.756012, 34.708569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961079, 20.793785, 34.475281>,  <29.891371, 20.856741, 34.086464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961079, 20.793785, 34.475281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166170, 0.968286, 0.186574,
		-0.970576, -0.194038, 0.142589,
		0.174269, -0.157390, 0.972038,
		30.013359, 20.746569, 34.766891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327986, 21.191511, 34.511837>,  <29.891371, 20.856741, 34.086464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327986, 21.191511, 34.511837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660116, 21.189266, 34.734737>,  <29.859394, 21.187920, 34.868477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660116, 21.189266, 34.734737>,  <29.327986, 21.191511, 34.511837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660116, 21.189266, 34.734737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052545, 0.994706, 0.088316,
		-0.554796, -0.102612, 0.825634,
		0.830325, -0.005614, 0.557251,
		29.909214, 21.187582, 34.901913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199457, 21.575829, 35.068897>,  <29.327986, 21.191511, 34.511837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199457, 21.575829, 35.068897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596670, 21.566711, 35.022648>,  <29.834997, 21.561241, 34.994900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596670, 21.566711, 35.022648>,  <29.199457, 21.575829, 35.068897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596670, 21.566711, 35.022648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048624, 0.972957, 0.225811,
		0.107346, -0.229859, 0.967286,
		0.993032, -0.022794, -0.115620,
		29.894579, 21.559874, 34.987961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442133, 22.140345, 35.560734>,  <29.199457, 21.575829, 35.068897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442133, 22.140345, 35.560734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784521, 22.083523, 35.361881>,  <29.989954, 22.049431, 35.242569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784521, 22.083523, 35.361881>,  <29.442133, 22.140345, 35.560734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784521, 22.083523, 35.361881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163174, 0.986597, -0.000962,
		0.490602, -0.080295, 0.867676,
		0.855970, -0.142054, -0.497128,
		30.041311, 22.040907, 35.212742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966913, 22.478764, 35.930408>,  <29.442133, 22.140345, 35.560734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966913, 22.478764, 35.930408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035341, 22.457191, 35.536896>,  <30.076397, 22.444248, 35.300789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035341, 22.457191, 35.536896>,  <29.966913, 22.478764, 35.930408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035341, 22.457191, 35.536896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222115, 0.974908, -0.014820,
		0.959896, -0.215977, 0.178754,
		0.171067, -0.053930, -0.983782,
		30.086662, 22.441013, 35.241760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354837, 23.166895, 35.771225>,  <29.966913, 22.478764, 35.930408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354837, 23.166895, 35.771225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269451, 23.063885, 35.394268>,  <30.218220, 23.002079, 35.168091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.269451, 23.063885, 35.394268>,  <30.354837, 23.166895, 35.771225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269451, 23.063885, 35.394268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212302, 0.929351, -0.302051,
		0.953604, -0.264550, -0.143711,
		-0.213466, -0.257527, -0.942397,
		30.205412, 22.986628, 35.111549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631073, 23.730503, 35.343269>,  <30.354837, 23.166895, 35.771225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631073, 23.730503, 35.343269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409718, 23.549664, 35.063450>,  <30.276905, 23.441160, 34.895557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409718, 23.549664, 35.063450>,  <30.631073, 23.730503, 35.343269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409718, 23.549664, 35.063450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069595, 0.862031, -0.502056,
		0.830010, -0.229148, -0.508503,
		-0.553390, -0.452100, -0.699547,
		30.243702, 23.414034, 34.853584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821121, 24.033745, 34.764057>,  <30.631073, 23.730503, 35.343269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821121, 24.033745, 34.764057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483255, 23.866787, 34.629997>,  <30.280537, 23.766613, 34.549561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483255, 23.866787, 34.629997>,  <30.821121, 24.033745, 34.764057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483255, 23.866787, 34.629997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143786, 0.780002, -0.609034,
		0.515626, -0.466239, -0.718854,
		-0.844663, -0.417395, -0.335151,
		30.229856, 23.741568, 34.529453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751999, 24.308767, 34.055656>,  <30.821121, 24.033745, 34.764057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751999, 24.308767, 34.055656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372477, 24.197533, 34.115570>,  <30.144764, 24.130793, 34.151516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372477, 24.197533, 34.115570>,  <30.751999, 24.308767, 34.055656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372477, 24.197533, 34.115570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313999, 0.779037, -0.542684,
		0.034227, -0.561933, -0.826474,
		-0.948806, -0.278086, 0.149783,
		30.087835, 24.114107, 34.160503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444324, 24.113264, 33.330200>,  <30.751999, 24.308767, 34.055656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444324, 24.113264, 33.330200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188417, 24.253620, 33.603718>,  <30.034874, 24.337833, 33.767826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188417, 24.253620, 33.603718>,  <30.444324, 24.113264, 33.330200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188417, 24.253620, 33.603718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225137, 0.765107, -0.603261,
		-0.734854, -0.539894, -0.410492,
		-0.639768, 0.350892, 0.683792,
		29.996487, 24.358889, 33.808857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810068, 24.219017, 32.962990>,  <30.444324, 24.113264, 33.330200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810068, 24.219017, 32.962990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819719, 24.444958, 33.292927>,  <29.825510, 24.580523, 33.490891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819719, 24.444958, 33.292927>,  <29.810068, 24.219017, 32.962990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819719, 24.444958, 33.292927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263406, 0.799518, -0.539804,
		-0.964383, -0.204244, 0.168075,
		0.024128, 0.564849, 0.824841,
		29.826958, 24.614412, 33.540379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255518, 24.561583, 32.835052>,  <29.810068, 24.219017, 32.962990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255518, 24.561583, 32.835052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440351, 24.775677, 33.117897>,  <29.551252, 24.904133, 33.287601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440351, 24.775677, 33.117897>,  <29.255518, 24.561583, 32.835052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440351, 24.775677, 33.117897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505676, 0.814037, -0.285720,
		-0.728539, -0.225540, 0.646810,
		0.462086, 0.535234, 0.707108,
		29.578978, 24.936247, 33.330029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747770, 24.870090, 33.222984>,  <29.255518, 24.561583, 32.835052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747770, 24.870090, 33.222984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081007, 25.079037, 33.295746>,  <29.280949, 25.204405, 33.339401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081007, 25.079037, 33.295746>,  <28.747770, 24.870090, 33.222984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081007, 25.079037, 33.295746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487657, 0.848828, -0.204162,
		-0.261050, 0.081381, 0.961889,
		0.833093, 0.522368, 0.181901,
		29.330935, 25.235746, 33.350315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442799, 25.475925, 33.497131>,  <28.747770, 24.870090, 33.222984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442799, 25.475925, 33.497131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813677, 25.570633, 33.381027>,  <29.036203, 25.627459, 33.311363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813677, 25.570633, 33.381027>,  <28.442799, 25.475925, 33.497131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813677, 25.570633, 33.381027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323168, 0.897448, -0.300250,
		0.189406, 0.372193, 0.908624,
		0.927193, 0.236770, -0.290263,
		29.091835, 25.641665, 33.293949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527498, 26.170683, 33.747902>,  <28.442799, 25.475925, 33.497131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527498, 26.170683, 33.747902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830362, 26.136364, 33.488876>,  <29.012081, 26.115772, 33.333462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830362, 26.136364, 33.488876>,  <28.527498, 26.170683, 33.747902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830362, 26.136364, 33.488876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112741, 0.959297, -0.258920,
		0.643424, 0.269052, 0.716670,
		0.757162, -0.085797, -0.647568,
		29.057510, 26.110624, 33.294605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861847, 26.776091, 33.849915>,  <28.527498, 26.170683, 33.747902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861847, 26.776091, 33.849915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955713, 26.644753, 33.483936>,  <29.012033, 26.565948, 33.264351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955713, 26.644753, 33.483936>,  <28.861847, 26.776091, 33.849915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955713, 26.644753, 33.483936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161433, 0.914992, -0.369769,
		0.958578, 0.234474, 0.161712,
		0.234667, -0.328346, -0.914943,
		29.026114, 26.546249, 33.209454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318678, 27.361176, 33.493729>,  <28.861847, 26.776091, 33.849915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318678, 27.361176, 33.493729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173571, 27.117928, 33.211285>,  <29.086506, 26.971979, 33.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173571, 27.117928, 33.211285>,  <29.318678, 27.361176, 33.493729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173571, 27.117928, 33.211285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084011, 0.775982, -0.625135,
		0.928085, -0.167458, -0.332590,
		-0.362768, -0.608120, -0.706109,
		29.064741, 26.935492, 32.999451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736666, 27.288565, 32.948700>,  <29.318678, 27.361176, 33.493729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736666, 27.288565, 32.948700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357311, 27.242279, 32.830597>,  <29.129700, 27.214508, 32.759735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357311, 27.242279, 32.830597>,  <29.736666, 27.288565, 32.948700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357311, 27.242279, 32.830597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116309, 0.739245, -0.663317,
		0.295022, -0.663421, -0.687630,
		-0.948385, -0.115716, -0.295255,
		29.072796, 27.207563, 32.742020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721998, 27.569441, 32.305279>,  <29.736666, 27.288565, 32.948700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721998, 27.569441, 32.305279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330919, 27.559570, 32.388702>,  <29.096272, 27.553648, 32.438755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330919, 27.559570, 32.388702>,  <29.721998, 27.569441, 32.305279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330919, 27.559570, 32.388702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142847, 0.806108, -0.574269,
		-0.153948, -0.591254, -0.791656,
		-0.977698, -0.024678, 0.208558,
		29.037609, 27.552166, 32.451271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486753, 27.824234, 31.739511>,  <29.721998, 27.569441, 32.305279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486753, 27.824234, 31.739511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159935, 27.873058, 31.964912>,  <28.963844, 27.902353, 32.100155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159935, 27.873058, 31.964912>,  <29.486753, 27.824234, 31.739511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159935, 27.873058, 31.964912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161409, 0.889835, -0.426780,
		-0.553519, -0.439654, -0.707334,
		-0.817046, 0.122061, 0.563504,
		28.914822, 27.909678, 32.133965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896681, 28.132179, 31.275846>,  <29.486753, 27.824234, 31.739511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896681, 28.132179, 31.275846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782385, 28.229511, 31.646606>,  <28.713806, 28.287910, 31.869062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782385, 28.229511, 31.646606>,  <28.896681, 28.132179, 31.275846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782385, 28.229511, 31.646606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273039, 0.906464, -0.322137,
		-0.918587, -0.345127, -0.192576,
		-0.285742, 0.243330, 0.926899,
		28.696663, 28.302511, 31.924677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274511, 28.473291, 31.218924>,  <28.896681, 28.132179, 31.275846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274511, 28.473291, 31.218924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394852, 28.588829, 31.582474>,  <28.467056, 28.658152, 31.800604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394852, 28.588829, 31.582474>,  <28.274511, 28.473291, 31.218924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394852, 28.588829, 31.582474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247817, 0.943969, -0.217965,
		-0.920910, -0.159660, 0.355576,
		0.300852, 0.288844, 0.908877,
		28.485107, 28.675482, 31.855137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738773, 28.835749, 31.571047>,  <28.274511, 28.473291, 31.218924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738773, 28.835749, 31.571047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080338, 28.956127, 31.740879>,  <28.285276, 29.028355, 31.842779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.080338, 28.956127, 31.740879>,  <27.738773, 28.835749, 31.571047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080338, 28.956127, 31.740879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248738, 0.952635, -0.174974,
		-0.457129, 0.043803, 0.888321,
		0.853910, 0.300945, 0.424581,
		28.336510, 29.046412, 31.868254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583652, 29.449915, 31.959963>,  <27.738773, 28.835749, 31.571047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583652, 29.449915, 31.959963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977270, 29.484192, 31.897594>,  <28.213442, 29.504757, 31.860172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977270, 29.484192, 31.897594>,  <27.583652, 29.449915, 31.959963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977270, 29.484192, 31.897594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112249, 0.978958, -0.170414,
		0.138039, 0.185197, 0.972958,
		0.984045, 0.085690, -0.155922,
		28.272484, 29.509899, 31.850819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812527, 30.156864, 32.123859>,  <27.583652, 29.449915, 31.959963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812527, 30.156864, 32.123859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140402, 30.039883, 31.926849>,  <28.337128, 29.969694, 31.808643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140402, 30.039883, 31.926849>,  <27.812527, 30.156864, 32.123859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140402, 30.039883, 31.926849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123771, 0.929957, -0.346210,
		0.559280, 0.222823, 0.798471,
		0.819687, -0.292455, -0.492527,
		28.386309, 29.952147, 31.779091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255785, 30.656172, 32.188972>,  <27.812527, 30.156864, 32.123859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255785, 30.656172, 32.188972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411125, 30.456711, 31.878998>,  <28.504330, 30.337034, 31.693012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411125, 30.456711, 31.878998>,  <28.255785, 30.656172, 32.188972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411125, 30.456711, 31.878998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262648, 0.865957, -0.425599,
		0.883290, -0.038256, 0.467263,
		0.388348, -0.498654, -0.774939,
		28.527630, 30.307116, 31.646517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049412, 30.821655, 32.095898>,  <28.255785, 30.656172, 32.188972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049412, 30.821655, 32.095898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900970, 30.686886, 31.749771>,  <28.811907, 30.606024, 31.542097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900970, 30.686886, 31.749771>,  <29.049412, 30.821655, 32.095898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900970, 30.686886, 31.749771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348669, 0.813112, -0.466131,
		0.860648, -0.474690, -0.184271,
		-0.371100, -0.336925, -0.865313,
		28.789640, 30.585808, 31.490177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579800, 30.866251, 31.708862>,  <29.049412, 30.821655, 32.095898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579800, 30.866251, 31.708862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274866, 30.823090, 31.453613>,  <29.091906, 30.797194, 31.300465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274866, 30.823090, 31.453613>,  <29.579800, 30.866251, 31.708862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274866, 30.823090, 31.453613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382803, 0.719846, -0.579037,
		0.521829, -0.685696, -0.507460,
		-0.762336, -0.107902, -0.638123,
		29.046165, 30.790718, 31.262177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923120, 30.899382, 31.160467>,  <29.579800, 30.866251, 31.708862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923120, 30.899382, 31.160467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558598, 30.935242, 30.999729>,  <29.339884, 30.956758, 30.903286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558598, 30.935242, 30.999729>,  <29.923120, 30.899382, 31.160467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558598, 30.935242, 30.999729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363342, 0.634164, -0.682510,
		0.193646, -0.767984, -0.610493,
		-0.911309, 0.089652, -0.401844,
		29.285206, 30.962137, 30.879175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968643, 31.084345, 30.447416>,  <29.923120, 30.899382, 31.160467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968643, 31.084345, 30.447416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603399, 31.213005, 30.547634>,  <29.384253, 31.290201, 30.607765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603399, 31.213005, 30.547634>,  <29.968643, 31.084345, 30.447416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603399, 31.213005, 30.547634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182768, 0.872224, -0.453674,
		-0.364455, -0.368462, -0.855224,
		-0.913109, 0.321652, 0.250544,
		29.329466, 31.309500, 30.622797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875364, 31.531614, 29.889006>,  <29.968643, 31.084345, 30.447416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875364, 31.531614, 29.889006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621916, 31.632298, 30.181625>,  <29.469847, 31.692707, 30.357197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621916, 31.632298, 30.181625>,  <29.875364, 31.531614, 29.889006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621916, 31.632298, 30.181625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071764, 0.960638, -0.268375,
		-0.770308, -0.117549, -0.626743,
		-0.633620, 0.251709, 0.731552,
		29.431829, 31.707809, 30.401091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305841, 31.875433, 29.545218>,  <29.875364, 31.531614, 29.889006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305841, 31.875433, 29.545218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322048, 31.992397, 29.927391>,  <29.331772, 32.062576, 30.156694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.322048, 31.992397, 29.927391>,  <29.305841, 31.875433, 29.545218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322048, 31.992397, 29.927391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089163, 0.951347, -0.294939,
		-0.995193, 0.097139, 0.012473,
		0.040516, 0.292409, 0.955434,
		29.334204, 32.080120, 30.214022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991650, 32.491196, 29.538513>,  <29.305841, 31.875433, 29.545218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991650, 32.491196, 29.538513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193007, 32.512409, 29.883484>,  <29.313822, 32.525139, 30.090467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193007, 32.512409, 29.883484>,  <28.991650, 32.491196, 29.538513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193007, 32.512409, 29.883484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262284, 0.941640, -0.211000,
		-0.823287, 0.332417, 0.460106,
		0.503394, 0.053035, 0.862428,
		29.344025, 32.528320, 30.142212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868881, 33.225353, 29.664276>,  <28.991650, 32.491196, 29.538513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868881, 33.225353, 29.664276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142782, 33.130898, 29.940060>,  <29.307123, 33.074223, 30.105530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142782, 33.130898, 29.940060>,  <28.868881, 33.225353, 29.664276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142782, 33.130898, 29.940060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462706, 0.871776, -0.160966,
		-0.563042, 0.429238, 0.706214,
		0.684753, -0.236139, 0.689457,
		29.348207, 33.060055, 30.146896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869215, 33.762871, 30.260149>,  <28.868881, 33.225353, 29.664276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869215, 33.762871, 30.260149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225634, 33.586868, 30.215561>,  <29.439486, 33.481266, 30.188808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225634, 33.586868, 30.215561>,  <28.869215, 33.762871, 30.260149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225634, 33.586868, 30.215561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401621, 0.878691, -0.258073,
		0.211502, 0.185187, 0.959673,
		0.891048, -0.440008, -0.111470,
		29.492949, 33.454865, 30.182119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404221, 34.267456, 30.522299>,  <28.869215, 33.762871, 30.260149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404221, 34.267456, 30.522299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603106, 34.024544, 30.274433>,  <29.722437, 33.878796, 30.125713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603106, 34.024544, 30.274433>,  <29.404221, 34.267456, 30.522299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603106, 34.024544, 30.274433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455238, 0.790599, -0.409526,
		0.738605, -0.078472, 0.669556,
		0.497214, -0.607285, -0.619664,
		29.752270, 33.842358, 30.088533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096180, 34.651932, 30.384359>,  <29.404221, 34.267456, 30.522299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096180, 34.651932, 30.384359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061943, 34.357353, 30.115936>,  <30.041401, 34.180607, 29.954882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061943, 34.357353, 30.115936>,  <30.096180, 34.651932, 30.384359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061943, 34.357353, 30.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403112, 0.590342, -0.699283,
		0.911139, -0.330363, 0.246343,
		-0.085591, -0.736448, -0.671057,
		30.036266, 34.136417, 29.914619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711851, 34.669048, 29.865864>,  <30.096180, 34.651932, 30.384359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711851, 34.669048, 29.865864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449673, 34.439831, 29.669086>,  <30.292366, 34.302299, 29.551020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449673, 34.439831, 29.669086>,  <30.711851, 34.669048, 29.865864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449673, 34.439831, 29.669086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345917, 0.351245, -0.870039,
		0.671365, -0.740436, -0.031995,
		-0.655446, -0.573046, -0.491943,
		30.253038, 34.267918, 29.521503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060616, 34.344879, 29.365353>,  <30.711851, 34.669048, 29.865864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060616, 34.344879, 29.365353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687847, 34.340603, 29.220352>,  <30.464186, 34.338036, 29.133352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687847, 34.340603, 29.220352>,  <31.060616, 34.344879, 29.365353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687847, 34.340603, 29.220352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326699, 0.409210, -0.851948,
		0.157449, -0.912378, -0.377858,
		-0.931921, -0.010693, -0.362503,
		30.408270, 34.337395, 29.111601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187017, 34.122967, 28.646343>,  <31.060616, 34.344879, 29.365353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187017, 34.122967, 28.646343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838860, 34.312820, 28.698711>,  <30.629965, 34.426731, 28.730133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838860, 34.312820, 28.698711>,  <31.187017, 34.122967, 28.646343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838860, 34.312820, 28.698711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035920, 0.326416, -0.944543,
		-0.491044, -0.817422, -0.301159,
		-0.870394, 0.474630, 0.130922,
		30.577742, 34.455208, 28.737988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921766, 33.940624, 28.101124>,  <31.187017, 34.122967, 28.646343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921766, 33.940624, 28.101124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705370, 34.250736, 28.231522>,  <30.575531, 34.436802, 28.309761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705370, 34.250736, 28.231522>,  <30.921766, 33.940624, 28.101124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705370, 34.250736, 28.231522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018345, 0.376645, -0.926176,
		-0.840827, -0.507035, -0.189540,
		-0.540993, 0.775277, 0.325995,
		30.543072, 34.483318, 28.329321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278788, 34.077141, 27.736097>,  <30.921766, 33.940624, 28.101124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278788, 34.077141, 27.736097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374567, 34.439308, 27.876320>,  <30.432035, 34.656609, 27.960453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374567, 34.439308, 27.876320>,  <30.278788, 34.077141, 27.736097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374567, 34.439308, 27.876320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012844, 0.363980, -0.931318,
		-0.970824, 0.218501, 0.098784,
		0.239449, 0.905415, 0.350554,
		30.446402, 34.710934, 27.981485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159643, 34.341797, 27.161760>,  <30.278788, 34.077141, 27.736097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159643, 34.341797, 27.161760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326365, 34.625816, 27.388779>,  <30.426397, 34.796227, 27.524990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326365, 34.625816, 27.388779>,  <30.159643, 34.341797, 27.161760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326365, 34.625816, 27.388779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474982, 0.362221, -0.801990,
		-0.775028, 0.603846, -0.186285,
		0.416802, 0.710046, 0.567547,
		30.451405, 34.838829, 27.559042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955589, 33.626820, 27.103666>,  <30.159643, 34.341797, 27.161760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955589, 33.626820, 27.103666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642590, 33.733398, 26.878559>,  <29.454790, 33.797344, 26.743496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642590, 33.733398, 26.878559>,  <29.955589, 33.626820, 27.103666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642590, 33.733398, 26.878559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543785, -0.732698, 0.409208,
		-0.303307, 0.626228, 0.718223,
		-0.782498, 0.266443, -0.562766,
		29.407841, 33.813332, 26.709730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431808, 33.673332, 27.565500>,  <29.955589, 33.626820, 27.103666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431808, 33.673332, 27.565500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259050, 33.632866, 27.207008>,  <29.155396, 33.608585, 26.991913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259050, 33.632866, 27.207008>,  <29.431808, 33.673332, 27.565500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259050, 33.632866, 27.207008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618315, -0.690218, 0.375880,
		-0.656621, 0.716495, 0.235550,
		-0.431897, -0.101167, -0.896231,
		29.129480, 33.602516, 26.938139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763998, 33.445427, 27.698774>,  <29.431808, 33.673332, 27.565500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763998, 33.445427, 27.698774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801601, 33.339256, 27.314960>,  <28.824163, 33.275555, 27.084671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801601, 33.339256, 27.314960>,  <28.763998, 33.445427, 27.698774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801601, 33.339256, 27.314960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535535, -0.825967, 0.176010,
		-0.839264, 0.497319, -0.219795,
		0.094010, -0.265426, -0.959537,
		28.829805, 33.259628, 27.027100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100725, 33.413185, 27.459000>,  <28.763998, 33.445427, 27.698774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100725, 33.413185, 27.459000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306246, 33.193512, 27.195362>,  <28.429558, 33.061707, 27.037180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306246, 33.193512, 27.195362>,  <28.100725, 33.413185, 27.459000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306246, 33.193512, 27.195362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577498, -0.789535, 0.207679,
		-0.634433, 0.273921, -0.722816,
		0.513801, -0.549182, -0.659095,
		28.460386, 33.028759, 26.997633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620895, 33.037842, 26.933062>,  <28.100725, 33.413185, 27.459000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620895, 33.037842, 26.933062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965517, 32.840641, 26.981525>,  <28.172289, 32.722321, 27.010603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965517, 32.840641, 26.981525>,  <27.620895, 33.037842, 26.933062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965517, 32.840641, 26.981525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506863, -0.848761, 0.150648,
		0.028567, -0.191203, -0.981135,
		0.861553, -0.492997, 0.121160,
		28.223984, 32.692741, 27.017874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755419, 32.446205, 26.440025>,  <27.620895, 33.037842, 26.933062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755419, 32.446205, 26.440025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016523, 32.349117, 26.727077>,  <28.173185, 32.290863, 26.899309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016523, 32.349117, 26.727077>,  <27.755419, 32.446205, 26.440025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016523, 32.349117, 26.727077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474228, -0.869643, 0.137222,
		0.590774, -0.429892, -0.682773,
		0.652759, -0.242723, 0.717629,
		28.212351, 32.276299, 26.942366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852125, 31.647659, 26.422371>,  <27.755419, 32.446205, 26.440025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852125, 31.647659, 26.422371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022791, 31.741417, 26.771774>,  <28.125191, 31.797672, 26.981417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022791, 31.741417, 26.771774>,  <27.852125, 31.647659, 26.422371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022791, 31.741417, 26.771774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281556, -0.883412, 0.374579,
		0.859468, -0.405761, -0.310924,
		0.426663, 0.234396, 0.873509,
		28.150789, 31.811735, 27.033827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421425, 31.114412, 26.743759>,  <27.852125, 31.647659, 26.422371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421425, 31.114412, 26.743759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244280, 31.338531, 27.023743>,  <28.137993, 31.473003, 27.191732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244280, 31.338531, 27.023743>,  <28.421425, 31.114412, 26.743759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244280, 31.338531, 27.023743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324667, -0.827923, 0.457312,
		0.835742, -0.024726, 0.548566,
		-0.442863, 0.560296, 0.699958,
		28.111422, 31.506620, 27.233730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445988, 30.635149, 27.176670>,  <28.421425, 31.114412, 26.743759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445988, 30.635149, 27.176670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214827, 30.909767, 27.353161>,  <28.076130, 31.074539, 27.459055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.214827, 30.909767, 27.353161>,  <28.445988, 30.635149, 27.176670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214827, 30.909767, 27.353161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279280, -0.674377, 0.683534,
		0.766831, 0.271791, 0.581464,
		-0.577904, 0.686546, 0.441227,
		28.041456, 31.115730, 27.485529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544891, 30.607021, 27.888020>,  <28.445988, 30.635149, 27.176670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544891, 30.607021, 27.888020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200329, 30.809822, 27.875801>,  <27.993591, 30.931501, 27.868471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200329, 30.809822, 27.875801>,  <28.544891, 30.607021, 27.888020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200329, 30.809822, 27.875801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313552, -0.483494, 0.817263,
		0.399585, 0.713571, 0.575455,
		-0.861404, 0.507001, -0.030545,
		27.941908, 30.961922, 27.866638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383265, 30.841690, 28.542242>,  <28.544891, 30.607021, 27.888020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383265, 30.841690, 28.542242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042582, 30.805290, 28.335819>,  <27.838171, 30.783449, 28.211966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042582, 30.805290, 28.335819>,  <28.383265, 30.841690, 28.542242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042582, 30.805290, 28.335819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365507, -0.602522, 0.709487,
		-0.375498, 0.792897, 0.479912,
		-0.851708, -0.091000, -0.516055,
		27.787069, 30.777990, 28.181004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912144, 30.754574, 29.082111>,  <28.383265, 30.841690, 28.542242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912144, 30.754574, 29.082111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703398, 30.659161, 28.754513>,  <27.578150, 30.601912, 28.557953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703398, 30.659161, 28.754513>,  <27.912144, 30.754574, 29.082111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703398, 30.659161, 28.754513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581466, -0.603017, 0.546139,
		-0.624143, 0.761231, 0.175993,
		-0.521864, -0.238535, -0.818999,
		27.546839, 30.587601, 28.508814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087130, 30.946661, 29.236803>,  <27.912144, 30.754574, 29.082111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087130, 30.946661, 29.236803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108416, 30.693935, 28.927486>,  <27.121187, 30.542299, 28.741898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108416, 30.693935, 28.927486>,  <27.087130, 30.946661, 29.236803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108416, 30.693935, 28.927486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675565, -0.593054, 0.438063,
		-0.735377, 0.499095, -0.458393,
		0.053217, -0.631815, -0.773290,
		27.124380, 30.504391, 28.695499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355547, 30.671288, 29.211164>,  <27.087130, 30.946661, 29.236803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355547, 30.671288, 29.211164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618505, 30.438835, 29.019283>,  <26.776281, 30.299364, 28.904156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618505, 30.438835, 29.019283>,  <26.355547, 30.671288, 29.211164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618505, 30.438835, 29.019283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502657, -0.812454, 0.295389,
		-0.561395, 0.046937, -0.826216,
		0.657398, -0.581133, -0.479701,
		26.815725, 30.264496, 28.875372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.901407, 30.070297, 28.950880>,  <26.355547, 30.671288, 29.211164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.901407, 30.070297, 28.950880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280993, 29.944153, 28.949154>,  <26.508743, 29.868465, 28.948118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280993, 29.944153, 28.949154>,  <25.901407, 30.070297, 28.950880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280993, 29.944153, 28.949154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303813, -0.917712, 0.255934,
		-0.084673, -0.241560, -0.966685,
		0.948962, -0.315362, -0.004317,
		26.565681, 29.849545, 28.947859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885895, 29.336863, 28.692823>,  <25.901407, 30.070297, 28.950880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885895, 29.336863, 28.692823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234062, 29.392899, 28.881607>,  <26.442963, 29.426519, 28.994877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234062, 29.392899, 28.881607>,  <25.885895, 29.336863, 28.692823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234062, 29.392899, 28.881607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036725, -0.937513, 0.346007,
		0.490941, -0.318503, -0.810884,
		0.870419, 0.140089, 0.471960,
		26.495188, 29.434925, 29.023195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209841, 28.781414, 28.511875>,  <25.885895, 29.336863, 28.692823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209841, 28.781414, 28.511875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387827, 28.922302, 28.841225>,  <26.494619, 29.006834, 29.038836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387827, 28.922302, 28.841225>,  <26.209841, 28.781414, 28.511875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387827, 28.922302, 28.841225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061239, -0.929225, 0.364405,
		0.893451, -0.111726, -0.435044,
		0.444967, 0.352219, 0.823375,
		26.521317, 29.027967, 29.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727512, 28.284359, 28.631365>,  <26.209841, 28.781414, 28.511875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727512, 28.284359, 28.631365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728514, 28.493401, 28.972393>,  <26.729115, 28.618826, 29.177010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728514, 28.493401, 28.972393>,  <26.727512, 28.284359, 28.631365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728514, 28.493401, 28.972393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149317, -0.843212, 0.516429,
		0.988786, 0.126010, -0.080145,
		0.002505, 0.522605, 0.852571,
		26.729265, 28.650183, 29.228165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287170, 28.052946, 29.016489>,  <26.727512, 28.284359, 28.631365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287170, 28.052946, 29.016489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045876, 28.215706, 29.290871>,  <26.901098, 28.313362, 29.455500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045876, 28.215706, 29.290871>,  <27.287170, 28.052946, 29.016489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045876, 28.215706, 29.290871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203171, -0.753295, 0.625515,
		0.771249, 0.516701, 0.371747,
		-0.603239, 0.406899, 0.685956,
		26.864904, 28.337776, 29.496658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738121, 28.137766, 29.634302>,  <27.287170, 28.052946, 29.016489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738121, 28.137766, 29.634302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356247, 28.134418, 29.753304>,  <27.127123, 28.132410, 29.824703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356247, 28.134418, 29.753304>,  <27.738121, 28.137766, 29.634302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356247, 28.134418, 29.753304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221791, -0.686561, 0.692418,
		0.198459, 0.727024, 0.657305,
		-0.954684, -0.008368, 0.297502,
		27.069841, 28.131908, 29.842554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767323, 28.248211, 30.363087>,  <27.738121, 28.137766, 29.634302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767323, 28.248211, 30.363087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422585, 28.076450, 30.255131>,  <27.215742, 27.973394, 30.190357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422585, 28.076450, 30.255131>,  <27.767323, 28.248211, 30.363087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422585, 28.076450, 30.255131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185871, -0.762539, 0.619666,
		-0.471887, 0.483890, 0.737002,
		-0.861843, -0.429400, -0.269891,
		27.164032, 27.947630, 30.174164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305399, 28.088898, 30.983877>,  <27.767323, 28.248211, 30.363087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305399, 28.088898, 30.983877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248821, 27.847282, 30.670155>,  <27.214874, 27.702314, 30.481922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248821, 27.847282, 30.670155>,  <27.305399, 28.088898, 30.983877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248821, 27.847282, 30.670155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219312, -0.791703, 0.570183,
		-0.965347, -0.091358, 0.244455,
		-0.141445, -0.604037, -0.784304,
		27.206388, 27.666071, 30.434864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874945, 27.527550, 31.302303>,  <27.305399, 28.088898, 30.983877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874945, 27.527550, 31.302303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029520, 27.410557, 30.952419>,  <27.122265, 27.340361, 30.742489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029520, 27.410557, 30.952419>,  <26.874945, 27.527550, 31.302303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029520, 27.410557, 30.952419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327925, -0.842846, 0.426703,
		-0.862049, -0.451734, -0.229798,
		0.386441, -0.292483, -0.874710,
		27.145452, 27.322811, 30.690006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588047, 26.917267, 31.247473>,  <26.874945, 27.527550, 31.302303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588047, 26.917267, 31.247473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916719, 26.926792, 31.019691>,  <27.113922, 26.932507, 30.883022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916719, 26.926792, 31.019691>,  <26.588047, 26.917267, 31.247473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916719, 26.926792, 31.019691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207751, -0.942900, 0.260344,
		-0.530737, -0.332223, -0.779709,
		0.821680, 0.023811, -0.569451,
		27.163223, 26.933935, 30.848856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596399, 26.305002, 30.779972>,  <26.588047, 26.917267, 31.247473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596399, 26.305002, 30.779972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981527, 26.412895, 30.773991>,  <27.212605, 26.477631, 30.770401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981527, 26.412895, 30.773991>,  <26.596399, 26.305002, 30.779972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981527, 26.412895, 30.773991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265125, -0.932846, 0.243941,
		0.051850, -0.238835, -0.969675,
		0.962819, 0.269733, -0.014953,
		27.270372, 26.493814, 30.769505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862387, 25.718464, 30.495996>,  <26.596399, 26.305002, 30.779972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862387, 25.718464, 30.495996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167582, 25.908760, 30.671051>,  <27.350698, 26.022938, 30.776083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167582, 25.908760, 30.671051>,  <26.862387, 25.718464, 30.495996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167582, 25.908760, 30.671051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480515, -0.870273, 0.108303,
		0.432387, 0.127658, -0.892605,
		0.762985, 0.475739, 0.437637,
		27.396477, 26.051481, 30.802341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510054, 25.465990, 30.199938>,  <26.862387, 25.718464, 30.495996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510054, 25.465990, 30.199938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622469, 25.632153, 30.545990>,  <27.689919, 25.731850, 30.753622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622469, 25.632153, 30.545990>,  <27.510054, 25.465990, 30.199938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622469, 25.632153, 30.545990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543922, -0.811644, 0.213033,
		0.790675, 0.410694, -0.454052,
		0.281037, 0.415408, 0.865132,
		27.706779, 25.756775, 30.805531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287907, 25.419794, 30.287066>,  <27.510054, 25.465990, 30.199938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287907, 25.419794, 30.287066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096802, 25.437717, 30.638004>,  <27.982140, 25.448471, 30.848568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096802, 25.437717, 30.638004>,  <28.287907, 25.419794, 30.287066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096802, 25.437717, 30.638004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381460, -0.889051, 0.253134,
		0.791348, 0.455610, 0.407662,
		-0.477762, 0.044810, 0.877346,
		27.953472, 25.451160, 30.901209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785078, 25.071711, 30.704485>,  <28.287907, 25.419794, 30.287066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785078, 25.071711, 30.704485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439159, 25.081707, 30.905087>,  <28.231609, 25.087706, 31.025448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439159, 25.081707, 30.905087>,  <28.785078, 25.071711, 30.704485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439159, 25.081707, 30.905087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179050, -0.917758, 0.354489,
		0.469118, 0.396354, 0.789197,
		-0.864794, 0.024992, 0.501504,
		28.179722, 25.089205, 31.055538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016726, 24.900631, 31.347063>,  <28.785078, 25.071711, 30.704485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016726, 24.900631, 31.347063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623352, 24.828308, 31.341824>,  <28.387329, 24.784914, 31.338680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623352, 24.828308, 31.341824>,  <29.016726, 24.900631, 31.347063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623352, 24.828308, 31.341824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159033, -0.895178, 0.416371,
		-0.087009, 0.407389, 0.909101,
		-0.983432, -0.180805, -0.013100,
		28.328323, 24.774067, 31.337894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906288, 24.528347, 32.005718>,  <29.016726, 24.900631, 31.347063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906288, 24.528347, 32.005718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573170, 24.435093, 31.804882>,  <28.373299, 24.379141, 31.684380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573170, 24.435093, 31.804882>,  <28.906288, 24.528347, 32.005718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573170, 24.435093, 31.804882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001184, -0.907742, 0.419528,
		-0.553576, 0.348788, 0.756241,
		-0.832798, -0.233136, -0.502091,
		28.323330, 24.365152, 31.654255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412354, 24.188299, 32.558731>,  <28.906288, 24.528347, 32.005718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412354, 24.188299, 32.558731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330311, 24.081955, 32.181957>,  <28.281084, 24.018148, 31.955893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.330311, 24.081955, 32.181957>,  <28.412354, 24.188299, 32.558731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330311, 24.081955, 32.181957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047143, -0.958600, 0.280828,
		-0.977603, 0.102006, 0.184083,
		-0.205108, -0.265860, -0.941939,
		28.268778, 24.002197, 31.899376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967112, 23.746826, 32.679882>,  <28.412354, 24.188299, 32.558731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967112, 23.746826, 32.679882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144814, 23.689095, 32.326202>,  <28.251434, 23.654455, 32.113995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144814, 23.689095, 32.326202>,  <27.967112, 23.746826, 32.679882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144814, 23.689095, 32.326202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096409, -0.973505, 0.207349,
		-0.890698, -0.177361, -0.418571,
		0.444256, -0.144331, -0.884197,
		28.278090, 23.645796, 32.060944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617695, 23.176485, 32.494934>,  <27.967112, 23.746826, 32.679882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617695, 23.176485, 32.494934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919706, 23.178215, 32.232662>,  <28.100912, 23.179253, 32.075298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919706, 23.178215, 32.232662>,  <27.617695, 23.176485, 32.494934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919706, 23.178215, 32.232662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124321, -0.982784, 0.136676,
		-0.643801, -0.184709, -0.742565,
		0.755026, 0.004325, -0.655680,
		28.146214, 23.179512, 32.035957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545530, 22.574387, 32.027813>,  <27.617695, 23.176485, 32.494934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545530, 22.574387, 32.027813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931044, 22.674873, 31.992016>,  <28.162352, 22.735167, 31.970539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931044, 22.674873, 31.992016>,  <27.545530, 22.574387, 32.027813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931044, 22.674873, 31.992016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258979, -0.961747, 0.089293,
		-0.063633, -0.109235, -0.991977,
		0.963785, 0.251219, -0.089488,
		28.220179, 22.750238, 31.965170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700212, 22.178734, 31.479416>,  <27.545530, 22.574387, 32.027813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700212, 22.178734, 31.479416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006268, 22.270912, 31.719902>,  <28.189901, 22.326220, 31.864193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.006268, 22.270912, 31.719902>,  <27.700212, 22.178734, 31.479416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006268, 22.270912, 31.719902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262623, -0.964250, 0.035368,
		0.587872, 0.130832, -0.798304,
		0.765138, 0.230445, 0.601215,
		28.235809, 22.340046, 31.900267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146574, 21.617531, 31.410353>,  <27.700212, 22.178734, 31.479416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146574, 21.617531, 31.410353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325630, 21.804317, 31.715393>,  <28.433064, 21.916389, 31.898417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325630, 21.804317, 31.715393>,  <28.146574, 21.617531, 31.410353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325630, 21.804317, 31.715393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368522, -0.873365, 0.318472,
		0.814744, 0.138473, -0.563043,
		0.447642, 0.466967, 0.762600,
		28.459923, 21.944408, 31.944174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857038, 21.466722, 31.440445>,  <28.146574, 21.617531, 31.410353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857038, 21.466722, 31.440445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792690, 21.585392, 31.816978>,  <28.754082, 21.656593, 32.042900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792690, 21.585392, 31.816978>,  <28.857038, 21.466722, 31.440445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792690, 21.585392, 31.816978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531301, -0.777742, 0.335911,
		0.831769, 0.554169, -0.032509,
		-0.160868, 0.296673, 0.941332,
		28.744431, 21.674395, 32.099377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541727, 21.218914, 31.105997>,  <28.857038, 21.466722, 31.440445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541727, 21.218914, 31.105997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498478, 20.896019, 30.873901>,  <29.472528, 20.702282, 30.734644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498478, 20.896019, 30.873901>,  <29.541727, 21.218914, 31.105997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498478, 20.896019, 30.873901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142946, 0.590219, -0.794486,
		0.983807, -0.002957, -0.179206,
		-0.108120, -0.807237, -0.580239,
		29.466042, 20.653849, 30.699829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017052, 21.299774, 30.580698>,  <29.541727, 21.218914, 31.105997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017052, 21.299774, 30.580698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710989, 21.071335, 30.461784>,  <29.527351, 20.934271, 30.390436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710989, 21.071335, 30.461784>,  <30.017052, 21.299774, 30.580698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710989, 21.071335, 30.461784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147156, 0.604634, -0.782791,
		0.626802, -0.555211, -0.546681,
		-0.765157, -0.571102, -0.297283,
		29.481441, 20.900005, 30.372601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933760, 21.435760, 29.783796>,  <30.017052, 21.299774, 30.580698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933760, 21.435760, 29.783796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591545, 21.270535, 29.908657>,  <29.386217, 21.171398, 29.983574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591545, 21.270535, 29.908657>,  <29.933760, 21.435760, 29.783796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591545, 21.270535, 29.908657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493913, 0.470324, -0.731331,
		0.155274, -0.779855, -0.606396,
		-0.855535, -0.413064, 0.312152,
		29.334885, 21.146616, 30.002302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615963, 21.217047, 29.119534>,  <29.933760, 21.435760, 29.783796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615963, 21.217047, 29.119534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316967, 21.230190, 29.384918>,  <29.137569, 21.238077, 29.544149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316967, 21.230190, 29.384918>,  <29.615963, 21.217047, 29.119534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316967, 21.230190, 29.384918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508777, 0.613835, -0.603616,
		-0.427089, -0.788750, -0.442117,
		-0.747489, 0.032858, 0.663461,
		29.092720, 21.240047, 29.583956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988209, 21.167459, 28.779583>,  <29.615963, 21.217047, 29.119534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988209, 21.167459, 28.779583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886950, 21.368469, 29.110252>,  <28.826195, 21.489075, 29.308653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886950, 21.368469, 29.110252>,  <28.988209, 21.167459, 28.779583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886950, 21.368469, 29.110252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562604, 0.618681, -0.548372,
		-0.787015, -0.603908, 0.126104,
		-0.253148, 0.502523, 0.826672,
		28.811005, 21.519226, 29.358253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321993, 21.316093, 28.634777>,  <28.988209, 21.167459, 28.779583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321993, 21.316093, 28.634777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448442, 21.565929, 28.920422>,  <28.524313, 21.715830, 29.091808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448442, 21.565929, 28.920422>,  <28.321993, 21.316093, 28.634777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448442, 21.565929, 28.920422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554079, 0.732549, -0.395434,
		-0.770105, -0.270668, 0.577648,
		0.316124, 0.624589, 0.714111,
		28.543280, 21.753305, 29.134655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.661465, 21.659790, 28.873844>,  <28.321993, 21.316093, 28.634777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.661465, 21.659790, 28.873844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959089, 21.891129, 29.007645>,  <28.137663, 22.029932, 29.087925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959089, 21.891129, 29.007645>,  <27.661465, 21.659790, 28.873844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959089, 21.891129, 29.007645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450611, 0.804057, -0.387869,
		-0.493279, 0.137869, 0.858876,
		0.744060, 0.578347, 0.334499,
		28.182308, 22.064632, 29.107994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337023, 22.250883, 29.151890>,  <27.661465, 21.659790, 28.873844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337023, 22.250883, 29.151890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710033, 22.361664, 29.059204>,  <27.933840, 22.428133, 29.003593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710033, 22.361664, 29.059204>,  <27.337023, 22.250883, 29.151890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710033, 22.361664, 29.059204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336930, 0.898162, -0.282459,
		0.129887, 0.341471, 0.930874,
		0.932528, 0.276952, -0.231712,
		27.989792, 22.444750, 28.989691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382610, 22.960360, 29.389219>,  <27.337023, 22.250883, 29.151890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382610, 22.960360, 29.389219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695824, 22.918137, 29.144035>,  <27.883751, 22.892803, 28.996925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695824, 22.918137, 29.144035>,  <27.382610, 22.960360, 29.389219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695824, 22.918137, 29.144035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124185, 0.939119, -0.320366,
		0.609458, 0.326977, 0.722252,
		0.783032, -0.105557, -0.612959,
		27.930733, 22.886469, 28.960148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799017, 23.576971, 29.451628>,  <27.382610, 22.960360, 29.389219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799017, 23.576971, 29.451628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931248, 23.424236, 29.106392>,  <28.010586, 23.332596, 28.899250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931248, 23.424236, 29.106392>,  <27.799017, 23.576971, 29.451628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931248, 23.424236, 29.106392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068112, 0.902465, -0.425344,
		0.941318, 0.199396, 0.272327,
		0.330578, -0.381835, -0.863088,
		28.030420, 23.309687, 28.847466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421179, 24.002377, 29.290096>,  <27.799017, 23.576971, 29.451628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421179, 24.002377, 29.290096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274460, 23.836117, 28.957184>,  <28.186428, 23.736361, 28.757437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274460, 23.836117, 28.957184>,  <28.421179, 24.002377, 29.290096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274460, 23.836117, 28.957184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188077, 0.909297, -0.371222,
		0.911109, 0.020391, -0.411661,
		-0.366753, -0.415648, -0.832304,
		28.164421, 23.711422, 28.707499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797613, 24.345104, 28.806732>,  <28.421179, 24.002377, 29.290096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797613, 24.345104, 28.806732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468279, 24.210789, 28.623707>,  <28.270678, 24.130199, 28.513891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468279, 24.210789, 28.623707>,  <28.797613, 24.345104, 28.806732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468279, 24.210789, 28.623707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000357, 0.805898, -0.592055,
		0.567556, -0.487623, -0.663404,
		-0.823335, -0.335787, -0.457566,
		28.221279, 24.110052, 28.486437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866285, 24.400917, 28.088022>,  <28.797613, 24.345104, 28.806732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866285, 24.400917, 28.088022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470282, 24.393063, 28.143871>,  <28.232679, 24.388350, 28.177382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470282, 24.393063, 28.143871>,  <28.866285, 24.400917, 28.088022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470282, 24.393063, 28.143871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098496, 0.804882, -0.585203,
		-0.100888, -0.593110, -0.798776,
		-0.990010, -0.019636, 0.139622,
		28.173279, 24.387173, 28.185759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576328, 24.415607, 27.455420>,  <28.866285, 24.400917, 28.088022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576328, 24.415607, 27.455420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299883, 24.525932, 27.722641>,  <28.134016, 24.592127, 27.882973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299883, 24.525932, 27.722641>,  <28.576328, 24.415607, 27.455420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299883, 24.525932, 27.722641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237855, 0.786038, -0.570587,
		-0.682488, -0.553239, -0.477636,
		-0.691111, 0.275811, 0.668052,
		28.092550, 24.608675, 27.923058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354446, 24.945929, 27.095112>,  <28.576328, 24.415607, 27.455420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354446, 24.945929, 27.095112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140490, 24.965393, 27.432518>,  <28.012115, 24.977072, 27.634962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140490, 24.965393, 27.432518>,  <28.354446, 24.945929, 27.095112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140490, 24.965393, 27.432518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423718, 0.848278, -0.317628,
		-0.730994, -0.527310, -0.433119,
		-0.534894, 0.048663, 0.843516,
		27.980021, 24.979992, 27.685574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680086, 24.997648, 26.896637>,  <28.354446, 24.945929, 27.095112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680086, 24.997648, 26.896637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714397, 25.189011, 27.246212>,  <27.734985, 25.303829, 27.455957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714397, 25.189011, 27.246212>,  <27.680086, 24.997648, 26.896637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714397, 25.189011, 27.246212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393084, 0.822265, -0.411539,
		-0.915493, -0.308230, 0.258588,
		0.085779, 0.478408, 0.873938,
		27.740131, 25.332533, 27.508394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135094, 25.435656, 26.905575>,  <27.680086, 24.997648, 26.896637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135094, 25.435656, 26.905575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365255, 25.576946, 27.200638>,  <27.503353, 25.661720, 27.377676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365255, 25.576946, 27.200638>,  <27.135094, 25.435656, 26.905575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365255, 25.576946, 27.200638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226727, 0.935470, -0.271092,
		-0.785814, -0.011259, 0.618360,
		0.575405, 0.353227, 0.737658,
		27.537876, 25.682915, 27.421936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738325, 25.949955, 27.360546>,  <27.135094, 25.435656, 26.905575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738325, 25.949955, 27.360546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133150, 26.008057, 27.387703>,  <27.370045, 26.042917, 27.403997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133150, 26.008057, 27.387703>,  <26.738325, 25.949955, 27.360546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133150, 26.008057, 27.387703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129834, 0.972547, -0.193121,
		-0.094079, 0.181808, 0.978823,
		0.987062, 0.145254, 0.067892,
		27.429268, 26.051632, 27.408070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762079, 26.591589, 27.728729>,  <26.738325, 25.949955, 27.360546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762079, 26.591589, 27.728729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102137, 26.532413, 27.526592>,  <27.306171, 26.496908, 27.405310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102137, 26.532413, 27.526592>,  <26.762079, 26.591589, 27.728729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102137, 26.532413, 27.526592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052934, 0.978870, -0.197512,
		0.523883, 0.141164, 0.840011,
		0.850144, -0.147939, -0.505341,
		27.357180, 26.488031, 27.374990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223351, 27.064827, 28.008030>,  <26.762079, 26.591589, 27.728729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223351, 27.064827, 28.008030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367491, 26.989113, 27.642666>,  <27.453976, 26.943684, 27.423447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367491, 26.989113, 27.642666>,  <27.223351, 27.064827, 28.008030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367491, 26.989113, 27.642666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026308, 0.980868, -0.192886,
		0.932446, 0.045476, 0.358436,
		0.360350, -0.189286, -0.913411,
		27.475595, 26.932327, 27.368643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768015, 27.470444, 27.973227>,  <27.223351, 27.064827, 28.008030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768015, 27.470444, 27.973227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670860, 27.372524, 27.597763>,  <27.612568, 27.313772, 27.372484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670860, 27.372524, 27.597763>,  <27.768015, 27.470444, 27.973227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670860, 27.372524, 27.597763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054021, 0.962719, -0.265053,
		0.968548, -0.115086, -0.220611,
		-0.242890, -0.244799, -0.938658,
		27.597994, 27.299084, 27.316166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024395, 28.091507, 27.510773>,  <27.768015, 27.470444, 27.973227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024395, 28.091507, 27.510773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775356, 27.904404, 27.259830>,  <27.625933, 27.792141, 27.109264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775356, 27.904404, 27.259830>,  <28.024395, 28.091507, 27.510773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775356, 27.904404, 27.259830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288874, 0.882446, -0.371270,
		0.727273, -0.049924, -0.684530,
		-0.622596, -0.467757, -0.627357,
		27.588577, 27.764076, 27.071623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135906, 28.391857, 26.877111>,  <28.024395, 28.091507, 27.510773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135906, 28.391857, 26.877111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773289, 28.223919, 26.859634>,  <27.555719, 28.123156, 26.849148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773289, 28.223919, 26.859634>,  <28.135906, 28.391857, 26.877111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773289, 28.223919, 26.859634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349144, 0.803974, -0.481378,
		0.237232, -0.421135, -0.875423,
		-0.906543, -0.419847, -0.043692,
		27.501326, 28.097965, 26.846527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044956, 28.477167, 26.150888>,  <28.135906, 28.391857, 26.877111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044956, 28.477167, 26.150888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696028, 28.419991, 26.337917>,  <27.486671, 28.385685, 26.450134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696028, 28.419991, 26.337917>,  <28.044956, 28.477167, 26.150888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696028, 28.419991, 26.337917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360805, 0.833574, -0.418299,
		-0.329964, -0.533593, -0.778718,
		-0.872321, -0.142942, 0.467573,
		27.434332, 28.377108, 26.478189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592276, 28.546568, 25.645081>,  <28.044956, 28.477167, 26.150888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592276, 28.546568, 25.645081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389999, 28.610546, 25.984184>,  <27.268633, 28.648933, 26.187647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389999, 28.610546, 25.984184>,  <27.592276, 28.546568, 25.645081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389999, 28.610546, 25.984184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404415, 0.824058, -0.396708,
		-0.762053, -0.543458, -0.352036,
		-0.505692, 0.159944, 0.847758,
		27.238291, 28.658529, 26.238512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905090, 28.787167, 25.362816>,  <27.592276, 28.546568, 25.645081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905090, 28.787167, 25.362816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907465, 28.911900, 25.742863>,  <26.908890, 28.986738, 25.970892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907465, 28.911900, 25.742863>,  <26.905090, 28.787167, 25.362816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907465, 28.911900, 25.742863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267253, 0.916069, -0.298986,
		-0.963608, -0.252147, 0.088776,
		0.005937, 0.311831, 0.950119,
		26.909246, 29.005449, 26.027899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247395, 29.049042, 25.607290>,  <26.905090, 28.787167, 25.362816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247395, 29.049042, 25.607290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490789, 29.221725, 25.873634>,  <26.636827, 29.325335, 26.033442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490789, 29.221725, 25.873634>,  <26.247395, 29.049042, 25.607290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490789, 29.221725, 25.873634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483603, 0.866998, -0.120179,
		-0.629181, -0.248884, 0.736334,
		0.608489, 0.431708, 0.665860,
		26.673336, 29.351238, 26.073393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818171, 29.360275, 26.069759>,  <26.247395, 29.049042, 25.607290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818171, 29.360275, 26.069759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179468, 29.528343, 26.104649>,  <26.396246, 29.629185, 26.125582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179468, 29.528343, 26.104649>,  <25.818171, 29.360275, 26.069759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179468, 29.528343, 26.104649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389157, 0.887672, -0.246161,
		-0.180856, 0.188400, 0.965296,
		0.903243, 0.420172, 0.087223,
		26.450441, 29.654394, 26.130816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648458, 30.036367, 26.317635>,  <25.818171, 29.360275, 26.069759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648458, 30.036367, 26.317635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021540, 30.084198, 26.181538>,  <26.245388, 30.112896, 26.099880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021540, 30.084198, 26.181538>,  <25.648458, 30.036367, 26.317635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021540, 30.084198, 26.181538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222376, 0.933425, -0.281545,
		0.283923, 0.338260, 0.897200,
		0.932704, 0.119579, -0.340242,
		26.301352, 30.120071, 26.079466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997881, 30.685827, 26.590975>,  <25.648458, 30.036367, 26.317635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997881, 30.685827, 26.590975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180387, 30.579380, 26.251328>,  <26.289892, 30.515512, 26.047539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180387, 30.579380, 26.251328>,  <25.997881, 30.685827, 26.590975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180387, 30.579380, 26.251328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192012, 0.902309, -0.385966,
		0.868879, 0.339145, 0.360597,
		0.456269, -0.266119, -0.849117,
		26.317268, 30.499544, 25.996592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505259, 31.201611, 26.477295>,  <25.997881, 30.685827, 26.590975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505259, 31.201611, 26.477295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452997, 31.040131, 26.115089>,  <26.421640, 30.943243, 25.897766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452997, 31.040131, 26.115089>,  <26.505259, 31.201611, 26.477295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452997, 31.040131, 26.115089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294211, 0.887989, -0.353434,
		0.946768, 0.220234, -0.234793,
		-0.130655, -0.403699, -0.905514,
		26.413801, 30.919022, 25.843435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733677, 31.701658, 25.913736>,  <26.505259, 31.201611, 26.477295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733677, 31.701658, 25.913736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502573, 31.437447, 25.721947>,  <26.363911, 31.278919, 25.606873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502573, 31.437447, 25.721947>,  <26.733677, 31.701658, 25.913736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502573, 31.437447, 25.721947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316337, 0.722739, -0.614475,
		0.752415, -0.203341, -0.626517,
		-0.577756, -0.660530, -0.479476,
		26.329247, 31.239288, 25.578104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835672, 31.965048, 25.219660>,  <26.733677, 31.701658, 25.913736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835672, 31.965048, 25.219660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520243, 31.719204, 25.211578>,  <26.330984, 31.571697, 25.206730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520243, 31.719204, 25.211578>,  <26.835672, 31.965048, 25.219660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520243, 31.719204, 25.211578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452047, 0.601649, -0.658538,
		0.416899, -0.510172, -0.752276,
		-0.788574, -0.614608, -0.020205,
		26.283670, 31.534821, 25.205517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685804, 31.707203, 24.480627>,  <26.835672, 31.965048, 25.219660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685804, 31.707203, 24.480627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335711, 31.641220, 24.662506>,  <26.125654, 31.601631, 24.771633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335711, 31.641220, 24.662506>,  <26.685804, 31.707203, 24.480627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335711, 31.641220, 24.662506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483695, 0.296735, -0.823400,
		0.000899, -0.940605, -0.339502,
		-0.875236, -0.164955, 0.454699,
		26.073139, 31.591734, 24.798916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354729, 31.297468, 24.079014>,  <26.685804, 31.707203, 24.480627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354729, 31.297468, 24.079014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067841, 31.455429, 24.308674>,  <25.895708, 31.550205, 24.446470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.067841, 31.455429, 24.308674>,  <26.354729, 31.297468, 24.079014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067841, 31.455429, 24.308674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492377, 0.295852, -0.818557,
		-0.493116, -0.869783, -0.017748,
		-0.717218, 0.394905, 0.574151,
		25.852674, 31.573900, 24.480919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795904, 31.137110, 23.747581>,  <26.354729, 31.297468, 24.079014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795904, 31.137110, 23.747581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658604, 31.417171, 23.998009>,  <25.576223, 31.585209, 24.148264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658604, 31.417171, 23.998009>,  <25.795904, 31.137110, 23.747581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658604, 31.417171, 23.998009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692582, 0.261569, -0.672244,
		-0.634435, -0.664352, 0.395131,
		-0.343253, 0.700156, 0.626067,
		25.555628, 31.627218, 24.185829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058556, 31.211061, 23.561323>,  <25.795904, 31.137110, 23.747581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058556, 31.211061, 23.561323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126234, 31.541969, 23.775612>,  <25.166842, 31.740515, 23.904184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126234, 31.541969, 23.775612>,  <25.058556, 31.211061, 23.561323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126234, 31.541969, 23.775612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532244, 0.534178, -0.656788,
		-0.829511, -0.174008, 0.530691,
		0.169197, 0.827270, 0.535721,
		25.176992, 31.790150, 23.936329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350571, 31.640079, 23.558031>,  <25.058556, 31.211061, 23.561323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350571, 31.640079, 23.558031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647619, 31.896805, 23.634544>,  <24.825848, 32.050842, 23.680452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.647619, 31.896805, 23.634544>,  <24.350571, 31.640079, 23.558031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.647619, 31.896805, 23.634544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432693, 0.677812, -0.594430,
		-0.511168, 0.358669, 0.781066,
		0.742620, 0.641815, 0.191282,
		24.870405, 32.089348, 23.691929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.029337, 32.300159, 23.676853>,  <24.350571, 31.640079, 23.558031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.029337, 32.300159, 23.676853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398668, 32.392529, 23.554123>,  <24.620266, 32.447952, 23.480486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398668, 32.392529, 23.554123>,  <24.029337, 32.300159, 23.676853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.398668, 32.392529, 23.554123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381935, 0.635274, -0.671232,
		0.039914, 0.736953, 0.674764,
		0.923327, 0.230925, -0.306824,
		24.675667, 32.461807, 23.462076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032084, 33.052799, 23.826490>,  <24.029337, 32.300159, 23.676853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032084, 33.052799, 23.826490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313147, 32.937439, 23.566307>,  <24.481785, 32.868221, 23.410196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313147, 32.937439, 23.566307>,  <24.032084, 33.052799, 23.826490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313147, 32.937439, 23.566307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518027, 0.419338, -0.745522,
		0.487771, 0.860802, 0.145251,
		0.702657, -0.288400, -0.650460,
		24.523943, 32.850918, 23.371168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.307577, 33.616852, 23.290661>,  <24.032084, 33.052799, 23.826490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.307577, 33.616852, 23.290661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340889, 33.246689, 23.142776>,  <24.360876, 33.024590, 23.054047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.340889, 33.246689, 23.142776>,  <24.307577, 33.616852, 23.290661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340889, 33.246689, 23.142776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576278, 0.257950, -0.775478,
		0.812999, 0.277637, -0.511810,
		0.083280, -0.925408, -0.369709,
		24.365873, 32.969067, 23.031864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.064184, 34.162968, 22.841694>,  <24.307577, 33.616852, 23.290661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.064184, 34.162968, 22.841694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.938919, 34.436134, 22.577709>,  <23.863760, 34.600037, 22.419319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.938919, 34.436134, 22.577709>,  <24.064184, 34.162968, 22.841694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.938919, 34.436134, 22.577709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470845, 0.491850, 0.732386,
		0.824763, 0.540096, 0.167519,
		-0.313164, 0.682920, -0.659961,
		23.844971, 34.641010, 22.379721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.025040, 34.881386, 23.157358>,  <24.064184, 34.162968, 22.841694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.025040, 34.881386, 23.157358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.727362, 34.854698, 22.891510>,  <23.548756, 34.838684, 22.732000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.727362, 34.854698, 22.891510>,  <24.025040, 34.881386, 23.157358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.727362, 34.854698, 22.891510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615731, 0.454239, 0.643849,
		0.258937, 0.888377, -0.379127,
		-0.744196, -0.066724, -0.664621,
		23.504103, 34.834682, 22.692123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.812513, 35.550781, 23.000811>,  <24.025040, 34.881386, 23.157358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.812513, 35.550781, 23.000811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.537895, 35.260101, 22.991322>,  <23.373125, 35.085693, 22.985628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.537895, 35.260101, 22.991322>,  <23.812513, 35.550781, 23.000811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.537895, 35.260101, 22.991322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414330, 0.364209, 0.834076,
		-0.597483, 0.582460, -0.551139,
		-0.686546, -0.726699, -0.023722,
		23.331932, 35.042091, 22.984205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.190886, 35.800297, 23.255260>,  <23.812513, 35.550781, 23.000811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.190886, 35.800297, 23.255260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.120256, 35.406666, 23.263367>,  <23.077879, 35.170486, 23.268230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.120256, 35.406666, 23.263367>,  <23.190886, 35.800297, 23.255260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.120256, 35.406666, 23.263367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505607, 0.108345, 0.855934,
		-0.844502, 0.140889, -0.516688,
		-0.176572, -0.984079, 0.020263,
		23.067286, 35.111443, 23.269445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.558121, 35.658180, 23.149866>,  <23.190886, 35.800297, 23.255260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.558121, 35.658180, 23.149866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.700979, 35.364674, 23.381046>,  <22.786694, 35.188568, 23.519754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.700979, 35.364674, 23.381046>,  <22.558121, 35.658180, 23.149866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.700979, 35.364674, 23.381046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655615, 0.243791, 0.714657,
		-0.665294, -0.634149, -0.394002,
		0.357145, -0.733771, 0.577951,
		22.808123, 35.144543, 23.554432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588123, 35.495911, 22.375401>,  <22.558121, 35.658180, 23.149866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588123, 35.495911, 22.375401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.731119, 35.155334, 22.528893>,  <22.816917, 34.950989, 22.620987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.731119, 35.155334, 22.528893>,  <22.588123, 35.495911, 22.375401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.731119, 35.155334, 22.528893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833902, -0.106023, 0.541633,
		-0.420485, -0.513621, -0.747921,
		0.357492, -0.851441, 0.383729,
		22.838367, 34.899902, 22.644011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.831604, 35.333237, 22.328728>,  <22.588123, 35.495911, 22.375401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.831604, 35.333237, 22.328728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530165, 35.574169, 22.434013>,  <21.349300, 35.718727, 22.497185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530165, 35.574169, 22.434013>,  <21.831604, 35.333237, 22.328728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530165, 35.574169, 22.434013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146614, 0.236322, -0.960550,
		-0.640774, -0.762462, -0.089782,
		-0.753600, 0.602332, 0.263216,
		21.304085, 35.754868, 22.512978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308968, 35.098457, 21.886229>,  <21.831604, 35.333237, 22.328728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308968, 35.098457, 21.886229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279974, 35.476982, 22.012238>,  <21.262577, 35.704098, 22.087843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279974, 35.476982, 22.012238>,  <21.308968, 35.098457, 21.886229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.279974, 35.476982, 22.012238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001840, 0.315978, -0.948765,
		-0.997368, -0.068192, -0.024645,
		-0.072485, 0.946313, 0.315021,
		21.258228, 35.760876, 22.106745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.899433, 35.382530, 21.354395>,  <21.308968, 35.098457, 21.886229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.899433, 35.382530, 21.354395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016869, 35.716167, 21.541195>,  <21.087330, 35.916351, 21.653275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016869, 35.716167, 21.541195>,  <20.899433, 35.382530, 21.354395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016869, 35.716167, 21.541195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019524, 0.483196, -0.875294,
		-0.955732, 0.266096, 0.125577,
		0.293591, 0.834095, 0.467001,
		21.104946, 35.966396, 21.681295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409134, 35.967770, 21.153263>,  <20.899433, 35.382530, 21.354395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409134, 35.967770, 21.153263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772709, 36.100044, 21.254837>,  <20.990854, 36.179409, 21.315781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.772709, 36.100044, 21.254837>,  <20.409134, 35.967770, 21.153263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772709, 36.100044, 21.254837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099520, 0.419373, -0.902343,
		-0.404883, 0.845444, 0.348273,
		0.908937, 0.330683, 0.253936,
		21.045389, 36.199249, 21.331018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349030, 36.662769, 21.016014>,  <20.409134, 35.967770, 21.153263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349030, 36.662769, 21.016014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.747240, 36.626122, 21.025219>,  <20.986166, 36.604134, 21.030743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.747240, 36.626122, 21.025219>,  <20.349030, 36.662769, 21.016014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.747240, 36.626122, 21.025219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058837, 0.410802, -0.909824,
		0.073900, 0.907110, 0.414355,
		0.995529, -0.091615, 0.023013,
		21.045898, 36.598637, 21.032124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.658323, 37.371120, 20.989559>,  <20.349030, 36.662769, 21.016014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.658323, 37.371120, 20.989559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.927023, 37.109127, 20.851139>,  <21.088242, 36.951931, 20.768087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.927023, 37.109127, 20.851139>,  <20.658323, 37.371120, 20.989559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.927023, 37.109127, 20.851139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022179, 0.484715, -0.874391,
		0.740448, 0.579695, 0.340133,
		0.671748, -0.654985, -0.346049,
		21.128548, 36.912632, 20.747324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062744, 37.769665, 20.585135>,  <20.658323, 37.371120, 20.989559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062744, 37.769665, 20.585135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149738, 37.392227, 20.485264>,  <21.201935, 37.165764, 20.425341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149738, 37.392227, 20.485264>,  <21.062744, 37.769665, 20.585135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.149738, 37.392227, 20.485264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103236, 0.276603, -0.955423,
		0.970589, 0.182014, 0.157569,
		0.217484, -0.943590, -0.249678,
		21.214983, 37.109150, 20.410360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.640978, 37.753029, 20.237030>,  <21.062744, 37.769665, 20.585135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.640978, 37.753029, 20.237030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507427, 37.399204, 20.106747>,  <21.427298, 37.186909, 20.028576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507427, 37.399204, 20.106747>,  <21.640978, 37.753029, 20.237030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.507427, 37.399204, 20.106747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196688, 0.272554, -0.941822,
		0.921868, -0.378515, 0.082983,
		-0.333876, -0.884557, -0.325708,
		21.407265, 37.133839, 20.009035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.103050, 37.523895, 19.728443>,  <21.640978, 37.753029, 20.237030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.103050, 37.523895, 19.728443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.761402, 37.326714, 19.662136>,  <21.556414, 37.208405, 19.622351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.761402, 37.326714, 19.662136>,  <22.103050, 37.523895, 19.728443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761402, 37.326714, 19.662136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134249, 0.098962, -0.985994,
		0.502453, -0.864410, -0.018346,
		-0.854118, -0.492953, -0.165770,
		21.505167, 37.178829, 19.612406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.196781, 37.110558, 19.202408>,  <22.103050, 37.523895, 19.728443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.196781, 37.110558, 19.202408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796879, 37.119240, 19.204056>,  <21.556938, 37.124451, 19.205044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796879, 37.119240, 19.204056>,  <22.196781, 37.110558, 19.202408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.796879, 37.119240, 19.204056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002614, 0.068845, -0.997624,
		-0.021942, -0.997391, -0.068771,
		-0.999756, 0.021710, 0.004118,
		21.496952, 37.125751, 19.205292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925352, 36.462170, 18.792461>,  <22.196781, 37.110558, 19.202408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925352, 36.462170, 18.792461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.656866, 36.758652, 18.788841>,  <21.495773, 36.936543, 18.786669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.656866, 36.758652, 18.788841>,  <21.925352, 36.462170, 18.792461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.656866, 36.758652, 18.788841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008278, -0.004716, -0.999955,
		-0.741215, -0.671261, -0.002970,
		-0.671217, 0.741206, -0.009052,
		21.455502, 36.981014, 18.786125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.507668, 36.268349, 18.292286>,  <21.925352, 36.462170, 18.792461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.507668, 36.268349, 18.292286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.452709, 36.658508, 18.361252>,  <21.419735, 36.892605, 18.402632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.452709, 36.658508, 18.361252>,  <21.507668, 36.268349, 18.292286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.452709, 36.658508, 18.361252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003952, 0.173523, -0.984822,
		-0.990508, -0.135991, -0.019986,
		-0.137395, 0.975395, 0.172414,
		21.411491, 36.951126, 18.412975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.083185, 36.422390, 17.759790>,  <21.507668, 36.268349, 18.292286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.083185, 36.422390, 17.759790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218290, 36.781395, 17.873199>,  <21.299353, 36.996799, 17.941246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218290, 36.781395, 17.873199>,  <21.083185, 36.422390, 17.759790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218290, 36.781395, 17.873199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066977, 0.277545, -0.958375,
		-0.938845, 0.342693, 0.033632,
		0.337763, 0.897514, 0.283524,
		21.319618, 37.050648, 17.958256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586700, 36.937836, 17.578630>,  <21.083185, 36.422390, 17.759790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586700, 36.937836, 17.578630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947512, 37.110001, 17.591835>,  <21.163998, 37.213299, 17.599758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.947512, 37.110001, 17.591835>,  <20.586700, 36.937836, 17.578630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.947512, 37.110001, 17.591835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041007, 0.161557, -0.986011,
		-0.429726, 0.888056, 0.163379,
		0.902028, 0.430414, 0.033009,
		21.218121, 37.239124, 17.601738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489702, 37.410896, 17.103054>,  <20.586700, 36.937836, 17.578630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489702, 37.410896, 17.103054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883921, 37.366917, 17.154606>,  <21.120451, 37.340530, 17.185537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883921, 37.366917, 17.154606>,  <20.489702, 37.410896, 17.103054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883921, 37.366917, 17.154606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142206, 0.123509, -0.982101,
		0.092062, 0.986234, 0.137359,
		0.985547, -0.109947, 0.128878,
		21.179585, 37.333931, 17.193270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.748030, 37.917149, 16.689972>,  <20.489702, 37.410896, 17.103054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.748030, 37.917149, 16.689972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.048929, 37.660374, 16.749348>,  <21.229469, 37.506310, 16.784973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.048929, 37.660374, 16.749348>,  <20.748030, 37.917149, 16.689972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048929, 37.660374, 16.749348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217369, 0.029115, -0.975655,
		0.621991, 0.766202, 0.161439,
		0.752249, -0.641940, 0.148439,
		21.274605, 37.467793, 16.793879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095093, 38.073669, 16.133894>,  <20.748030, 37.917149, 16.689972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095093, 38.073669, 16.133894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262175, 37.732025, 16.257835>,  <21.362423, 37.527039, 16.332201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262175, 37.732025, 16.257835>,  <21.095093, 38.073669, 16.133894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262175, 37.732025, 16.257835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267174, -0.210489, -0.940379,
		0.868413, 0.475586, 0.140275,
		0.417705, -0.854115, 0.309856,
		21.387486, 37.475792, 16.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.775560, 37.896660, 15.716211>,  <21.095093, 38.073669, 16.133894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.775560, 37.896660, 15.716211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.638866, 37.554375, 15.871631>,  <21.556850, 37.349003, 15.964882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.638866, 37.554375, 15.871631>,  <21.775560, 37.896660, 15.716211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.638866, 37.554375, 15.871631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074868, -0.436913, -0.896383,
		0.936810, -0.277235, 0.213374,
		-0.341734, -0.855715, 0.388549,
		21.536346, 37.297661, 15.988195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.230129, 37.430557, 15.451786>,  <21.775560, 37.896660, 15.716211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.230129, 37.430557, 15.451786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906469, 37.217125, 15.550231>,  <21.712273, 37.089066, 15.609298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906469, 37.217125, 15.550231>,  <22.230129, 37.430557, 15.451786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906469, 37.217125, 15.550231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063479, -0.495765, -0.866133,
		0.584165, -0.685208, 0.435019,
		-0.809149, -0.533579, 0.246112,
		21.663725, 37.057053, 15.624064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.404985, 36.804920, 15.349760>,  <22.230129, 37.430557, 15.451786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.404985, 36.804920, 15.349760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006317, 36.826225, 15.325057>,  <21.767117, 36.839008, 15.310235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006317, 36.826225, 15.325057>,  <22.404985, 36.804920, 15.349760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006317, 36.826225, 15.325057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030011, -0.464591, -0.885017,
		-0.075830, -0.883922, 0.461445,
		-0.996669, 0.053262, -0.061758,
		21.707317, 36.842205, 15.306530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.312136, 36.174942, 15.087050>,  <22.404985, 36.804920, 15.349760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.312136, 36.174942, 15.087050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977680, 36.385944, 15.026912>,  <21.777006, 36.512547, 14.990829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977680, 36.385944, 15.026912>,  <22.312136, 36.174942, 15.087050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977680, 36.385944, 15.026912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115964, -0.437902, -0.891512,
		-0.536117, -0.727994, 0.427320,
		-0.836140, 0.527509, -0.150346,
		21.726837, 36.544197, 14.981808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840977, 35.752941, 14.889299>,  <22.312136, 36.174942, 15.087050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840977, 35.752941, 14.889299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765974, 36.120300, 14.749940>,  <21.720972, 36.340717, 14.666325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.765974, 36.120300, 14.749940>,  <21.840977, 35.752941, 14.889299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765974, 36.120300, 14.749940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052901, -0.344733, -0.937209,
		-0.980838, -0.194163, 0.016056,
		-0.187506, 0.918401, -0.348398,
		21.709723, 36.395821, 14.645420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.280270, 36.187729, 14.926797>,  <21.840977, 35.752941, 14.889299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.280270, 36.187729, 14.926797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969515, 36.065582, 14.706544>,  <20.783062, 35.992294, 14.574392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.969515, 36.065582, 14.706544>,  <21.280270, 36.187729, 14.926797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969515, 36.065582, 14.706544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519102, 0.805562, 0.285662,
		0.356339, 0.507762, -0.784347,
		-0.776889, -0.305363, -0.550633,
		20.736448, 35.973972, 14.541354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975956, 36.644325, 14.462519>,  <21.280270, 36.187729, 14.926797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975956, 36.644325, 14.462519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655361, 36.412605, 14.521895>,  <20.463005, 36.273575, 14.557521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655361, 36.412605, 14.521895>,  <20.975956, 36.644325, 14.462519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655361, 36.412605, 14.521895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569411, 0.815115, 0.106576,
		-0.182736, 0.000895, -0.983162,
		-0.801485, -0.579298, 0.148441,
		20.414915, 36.238815, 14.566428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395699, 36.761410, 13.971420>,  <20.975956, 36.644325, 14.462519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395699, 36.761410, 13.971420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.259451, 36.648621, 14.330190>,  <20.177702, 36.580948, 14.545451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.259451, 36.648621, 14.330190>,  <20.395699, 36.761410, 13.971420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259451, 36.648621, 14.330190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439620, 0.891026, 0.113165,
		-0.831092, -0.355760, -0.427459,
		-0.340617, -0.281970, 0.896924,
		20.157267, 36.564030, 14.599267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625973, 36.845444, 14.042021>,  <20.395699, 36.761410, 13.971420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625973, 36.845444, 14.042021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800735, 36.863396, 14.401376>,  <19.905592, 36.874168, 14.616989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.800735, 36.863396, 14.401376>,  <19.625973, 36.845444, 14.042021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.800735, 36.863396, 14.401376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345218, 0.930638, 0.121396,
		-0.830625, -0.363178, 0.422094,
		0.436905, 0.044880, 0.898387,
		19.931807, 36.876862, 14.670892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184422, 36.879444, 14.580203>,  <19.625973, 36.845444, 14.042021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184422, 36.879444, 14.580203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504419, 37.060905, 14.737283>,  <19.696417, 37.169781, 14.831531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504419, 37.060905, 14.737283>,  <19.184422, 36.879444, 14.580203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504419, 37.060905, 14.737283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514969, 0.855010, 0.061357,
		-0.307927, -0.251313, 0.917618,
		0.799993, 0.453652, 0.392699,
		19.744417, 37.197002, 14.855092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900572, 37.359577, 15.115838>,  <19.184422, 36.879444, 14.580203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900572, 37.359577, 15.115838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.254782, 37.460693, 14.959916>,  <19.467308, 37.521362, 14.866364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.254782, 37.460693, 14.959916>,  <18.900572, 37.359577, 15.115838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254782, 37.460693, 14.959916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376133, 0.882573, -0.282116,
		0.272715, 0.396438, 0.876620,
		0.885523, 0.252788, -0.389804,
		19.520439, 37.536530, 14.842975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973049, 38.028721, 15.379594>,  <18.900572, 37.359577, 15.115838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.973049, 38.028721, 15.379594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200218, 37.951923, 15.059443>,  <19.336519, 37.905846, 14.867353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200218, 37.951923, 15.059443>,  <18.973049, 38.028721, 15.379594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200218, 37.951923, 15.059443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129106, 0.939598, -0.316996,
		0.812892, 0.283363, 0.508833,
		0.567924, -0.191991, -0.800376,
		19.370596, 37.894325, 14.819330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768747, 38.777058, 15.588917>,  <18.973049, 38.028721, 15.379594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768747, 38.777058, 15.588917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372530, 38.732273, 15.557199>,  <18.134800, 38.705402, 15.538168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.372530, 38.732273, 15.557199>,  <18.768747, 38.777058, 15.588917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.372530, 38.732273, 15.557199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081599, 0.016131, 0.996535,
		-0.110295, 0.993581, -0.025115,
		-0.990543, -0.111963, -0.079296,
		18.075367, 38.698685, 15.533410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.417383, 39.373161, 15.973917>,  <18.768747, 38.777058, 15.588917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.417383, 39.373161, 15.973917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286005, 38.999100, 15.920848>,  <18.207178, 38.774662, 15.889007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.286005, 38.999100, 15.920848>,  <18.417383, 39.373161, 15.973917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.286005, 38.999100, 15.920848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073999, -0.165511, 0.983428,
		-0.941619, 0.313186, 0.123562,
		-0.328447, -0.935158, -0.132673,
		18.187471, 38.718552, 15.881046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754316, 39.127995, 16.317181>,  <18.417383, 39.373161, 15.973917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754316, 39.127995, 16.317181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010153, 38.822544, 16.281860>,  <18.163654, 38.639275, 16.260668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.010153, 38.822544, 16.281860>,  <17.754316, 39.127995, 16.317181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.010153, 38.822544, 16.281860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044057, -0.151096, 0.987537,
		-0.767450, -0.627731, -0.130283,
		0.639593, -0.763626, -0.088303,
		18.202030, 38.593456, 16.255369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426899, 38.574451, 16.587408>,  <17.754316, 39.127995, 16.317181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.426899, 38.574451, 16.587408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.815193, 38.478615, 16.593914>,  <18.048170, 38.421112, 16.597818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.815193, 38.478615, 16.593914>,  <17.426899, 38.574451, 16.587408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.815193, 38.478615, 16.593914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069783, -0.216619, 0.973759,
		-0.229802, -0.946394, -0.227000,
		0.970733, -0.239612, 0.016262,
		18.106415, 38.406734, 16.598793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524464, 38.047958, 17.015711>,  <17.426899, 38.574451, 16.587408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524464, 38.047958, 17.015711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904903, 38.171471, 17.018929>,  <18.133167, 38.245579, 17.020859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.904903, 38.171471, 17.018929>,  <17.524464, 38.047958, 17.015711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904903, 38.171471, 17.018929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020577, 0.037353, 0.999090,
		0.308201, -0.950399, 0.041880,
		0.951099, 0.308782, 0.008045,
		18.190233, 38.264107, 17.021341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850563, 37.661053, 17.516171>,  <17.524464, 38.047958, 17.015711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850563, 37.661053, 17.516171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087624, 37.980984, 17.478130>,  <18.229860, 38.172943, 17.455305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.087624, 37.980984, 17.478130>,  <17.850563, 37.661053, 17.516171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.087624, 37.980984, 17.478130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144549, 0.010541, 0.989441,
		0.792383, -0.600139, -0.109367,
		0.592650, 0.799826, -0.095102,
		18.265419, 38.220932, 17.449600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400045, 37.538551, 17.919249>,  <17.850563, 37.661053, 17.516171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400045, 37.538551, 17.919249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402325, 37.936314, 17.877075>,  <18.403692, 38.174973, 17.851772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402325, 37.936314, 17.877075>,  <18.400045, 37.538551, 17.919249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402325, 37.936314, 17.877075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260046, 0.100333, 0.960370,
		0.965580, -0.032888, -0.258020,
		0.005697, 0.994410, -0.105432,
		18.404034, 38.234638, 17.845446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021435, 37.776321, 18.064236>,  <18.400045, 37.538551, 17.919249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021435, 37.776321, 18.064236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802526, 38.109463, 18.097351>,  <18.671183, 38.309349, 18.117220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802526, 38.109463, 18.097351>,  <19.021435, 37.776321, 18.064236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802526, 38.109463, 18.097351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457599, 0.214928, 0.862791,
		0.700784, 0.510063, -0.498736,
		-0.547270, 0.832852, 0.082786,
		18.638346, 38.359318, 18.122187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.446167, 38.293724, 18.287760>,  <19.021435, 37.776321, 18.064236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.446167, 38.293724, 18.287760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076868, 38.404930, 18.393833>,  <18.855289, 38.471653, 18.457478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076868, 38.404930, 18.393833>,  <19.446167, 38.293724, 18.287760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076868, 38.404930, 18.393833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311151, 0.136129, 0.940561,
		0.225388, 0.950883, -0.212185,
		-0.923247, 0.278013, 0.265186,
		18.799894, 38.488335, 18.473389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622093, 38.833549, 18.690989>,  <19.446167, 38.293724, 18.287760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622093, 38.833549, 18.690989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.236660, 38.785454, 18.786526>,  <19.005400, 38.756596, 18.843849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.236660, 38.785454, 18.786526>,  <19.622093, 38.833549, 18.690989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.236660, 38.785454, 18.786526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228640, 0.092708, 0.969087,
		-0.138668, 0.988406, -0.061839,
		-0.963584, -0.120242, 0.238845,
		18.947584, 38.749382, 18.858179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433676, 39.452820, 18.885996>,  <19.622093, 38.833549, 18.690989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433676, 39.452820, 18.885996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.233604, 39.155861, 19.064285>,  <19.113562, 38.977688, 19.171259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.233604, 39.155861, 19.064285>,  <19.433676, 39.452820, 18.885996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.233604, 39.155861, 19.064285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159154, 0.427155, 0.890061,
		-0.851171, 0.516129, -0.095498,
		-0.500178, -0.742395, 0.445726,
		19.083551, 38.933144, 19.198004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.070496, 39.772163, 19.568666>,  <19.433676, 39.452820, 18.885996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.070496, 39.772163, 19.568666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.045843, 39.375351, 19.612621>,  <19.031052, 39.137264, 19.638994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.045843, 39.375351, 19.612621>,  <19.070496, 39.772163, 19.568666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.045843, 39.375351, 19.612621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013318, 0.109268, 0.993923,
		-0.998010, 0.062719, 0.006478,
		-0.061630, -0.992032, 0.109886,
		19.027353, 39.077740, 19.645588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.697832, 39.766602, 20.223593>,  <19.070496, 39.772163, 19.568666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.697832, 39.766602, 20.223593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846102, 39.399437, 20.166962>,  <18.935062, 39.179138, 20.132982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846102, 39.399437, 20.166962>,  <18.697832, 39.766602, 20.223593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846102, 39.399437, 20.166962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119010, -0.104238, 0.987406,
		-0.921107, -0.382853, 0.070603,
		0.370672, -0.917910, -0.141578,
		18.957304, 39.124065, 20.124489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447208, 39.397015, 20.706280>,  <18.697832, 39.766602, 20.223593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447208, 39.397015, 20.706280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.760696, 39.162968, 20.622925>,  <18.948790, 39.022541, 20.572912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.760696, 39.162968, 20.622925>,  <18.447208, 39.397015, 20.706280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.760696, 39.162968, 20.622925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070927, -0.249001, 0.965902,
		-0.617054, -0.771776, -0.153646,
		0.783718, -0.585116, -0.208387,
		18.995811, 38.987434, 20.560410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268288, 38.775185, 21.053646>,  <18.447208, 39.397015, 20.706280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268288, 38.775185, 21.053646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.657705, 38.762142, 20.963184>,  <18.891356, 38.754318, 20.908907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.657705, 38.762142, 20.963184>,  <18.268288, 38.775185, 21.053646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.657705, 38.762142, 20.963184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176013, -0.524114, 0.833261,
		-0.145697, -0.851024, -0.504510,
		0.973546, -0.032603, -0.226153,
		18.949770, 38.752361, 20.895338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508644, 38.120945, 20.969971>,  <18.268288, 38.775185, 21.053646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508644, 38.120945, 20.969971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823257, 38.337395, 21.089001>,  <19.012026, 38.467262, 21.160419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823257, 38.337395, 21.089001>,  <18.508644, 38.120945, 20.969971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823257, 38.337395, 21.089001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112303, -0.599165, 0.792710,
		0.607248, -0.590076, -0.532034,
		0.786536, 0.541121, 0.297575,
		19.059217, 38.499729, 21.178272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.937407, 37.657303, 21.285614>,  <18.508644, 38.120945, 20.969971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.937407, 37.657303, 21.285614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118319, 37.997551, 21.392864>,  <19.226866, 38.201698, 21.457214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118319, 37.997551, 21.392864>,  <18.937407, 37.657303, 21.285614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118319, 37.997551, 21.392864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479320, -0.485349, 0.731224,
		0.752128, -0.202198, -0.627231,
		0.452278, 0.850619, 0.268128,
		19.254002, 38.252735, 21.473303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387772, 37.406601, 21.774927>,  <18.937407, 37.657303, 21.285614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387772, 37.406601, 21.774927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504597, 37.789047, 21.784233>,  <19.574692, 38.018517, 21.789816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.504597, 37.789047, 21.784233>,  <19.387772, 37.406601, 21.774927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504597, 37.789047, 21.784233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347829, -0.128847, 0.928662,
		0.890907, -0.263135, -0.370196,
		0.292062, 0.956116, 0.023265,
		19.592215, 38.075882, 21.791212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.132271, 37.458099, 21.814880>,  <19.387772, 37.406601, 21.774927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.132271, 37.458099, 21.814880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.924860, 37.736225, 22.013947>,  <19.800413, 37.903099, 22.133387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.924860, 37.736225, 22.013947>,  <20.132271, 37.458099, 21.814880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.924860, 37.736225, 22.013947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459567, -0.264187, 0.847941,
		0.721060, 0.668391, -0.182554,
		-0.518527, 0.695312, 0.497665,
		19.769302, 37.944820, 22.163246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.725687, 37.725307, 22.341789>,  <20.132271, 37.458099, 21.814880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.725687, 37.725307, 22.341789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.364071, 37.832912, 22.474663>,  <20.147100, 37.897476, 22.554386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.364071, 37.832912, 22.474663>,  <20.725687, 37.725307, 22.341789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.364071, 37.832912, 22.474663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239909, -0.323859, 0.915182,
		0.353773, 0.907055, 0.228244,
		-0.904040, 0.269009, 0.332184,
		20.092859, 37.913616, 22.574318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849340, 38.168808, 22.895273>,  <20.725687, 37.725307, 22.341789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.849340, 38.168808, 22.895273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483709, 38.019691, 22.959141>,  <20.264332, 37.930222, 22.997461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.483709, 38.019691, 22.959141>,  <20.849340, 38.168808, 22.895273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.483709, 38.019691, 22.959141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286481, -0.314888, 0.904861,
		-0.287043, 0.872854, 0.394629,
		-0.914076, -0.372788, 0.159670,
		20.209486, 37.907856, 23.007042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.699232, 38.410244, 23.565447>,  <20.849340, 38.168808, 22.895273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.699232, 38.410244, 23.565447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.457300, 38.104706, 23.475365>,  <20.312141, 37.921383, 23.421314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.457300, 38.104706, 23.475365>,  <20.699232, 38.410244, 23.565447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.457300, 38.104706, 23.475365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162283, -0.395085, 0.904197,
		-0.779644, 0.510337, 0.362919,
		-0.604829, -0.763848, -0.225207,
		20.275852, 37.875553, 23.407803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.144642, 38.408764, 24.040655>,  <20.699232, 38.410244, 23.565447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.144642, 38.408764, 24.040655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.200001, 38.040684, 23.894192>,  <20.233217, 37.819836, 23.806314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.200001, 38.040684, 23.894192>,  <20.144642, 38.408764, 24.040655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.200001, 38.040684, 23.894192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242582, -0.326958, 0.913375,
		-0.960208, -0.215234, 0.177974,
		0.138399, -0.920203, -0.366159,
		20.241520, 37.764622, 23.784344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711971, 38.058399, 24.360622>,  <20.144642, 38.408764, 24.040655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711971, 38.058399, 24.360622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002586, 37.807335, 24.248775>,  <20.176956, 37.656696, 24.181667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.002586, 37.807335, 24.248775>,  <19.711971, 38.058399, 24.360622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.002586, 37.807335, 24.248775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094368, -0.311939, 0.945404,
		-0.680614, -0.713259, -0.167406,
		0.726539, -0.627658, -0.279619,
		20.220549, 37.619038, 24.164890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.021864, 38.023659, 24.425968>,  <19.711971, 38.058399, 24.360622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.021864, 38.023659, 24.425968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071623, 38.402351, 24.307156>,  <19.101479, 38.629566, 24.235868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.071623, 38.402351, 24.307156>,  <19.021864, 38.023659, 24.425968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071623, 38.402351, 24.307156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799181, 0.081823, 0.595496,
		0.588077, -0.311462, -0.746429,
		0.124399, 0.946729, -0.297033,
		19.108942, 38.686371, 24.218046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585646, 37.432076, 24.675137>,  <19.021864, 38.023659, 24.425968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585646, 37.432076, 24.675137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345173, 37.709332, 24.516068>,  <18.200890, 37.875683, 24.420626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.345173, 37.709332, 24.516068>,  <18.585646, 37.432076, 24.675137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.345173, 37.709332, 24.516068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082277, -0.548686, -0.831970,
		-0.794865, -0.467446, 0.386889,
		-0.601182, 0.693136, -0.397671,
		18.164818, 37.917271, 24.396767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924145, 37.183872, 24.423855>,  <18.585646, 37.432076, 24.675137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924145, 37.183872, 24.423855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034344, 37.496365, 24.199791>,  <18.100464, 37.683861, 24.065353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034344, 37.496365, 24.199791>,  <17.924145, 37.183872, 24.423855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034344, 37.496365, 24.199791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023156, -0.577145, -0.816313,
		-0.961022, 0.237865, -0.140913,
		0.275499, 0.781232, -0.560158,
		18.116993, 37.730736, 24.031744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447479, 37.269341, 23.854256>,  <17.924145, 37.183872, 24.423855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447479, 37.269341, 23.854256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809988, 37.409737, 23.760044>,  <18.027494, 37.493973, 23.703518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.809988, 37.409737, 23.760044>,  <17.447479, 37.269341, 23.854256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809988, 37.409737, 23.760044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030983, -0.610877, -0.791119,
		-0.421554, 0.709673, -0.564497,
		0.906274, 0.350989, -0.235530,
		18.081871, 37.515034, 23.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.774284, 25.658287, 26.258453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.038225, 25.931057, 26.384674>,  <31.196589, 26.094719, 26.460407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.038225, 25.931057, 26.384674>,  <30.774284, 25.658287, 26.258453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038225, 25.931057, 26.384674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149756, 0.530880, -0.834110,
		-0.736322, 0.503132, 0.452424,
		0.659850, 0.681927, 0.315552,
		31.236179, 26.135635, 26.479340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586092, 26.355770, 26.126945>,  <30.774284, 25.658287, 26.258453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586092, 26.355770, 26.126945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.977909, 26.423874, 26.169861>,  <31.212999, 26.464737, 26.195610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.977909, 26.423874, 26.169861>,  <30.586092, 26.355770, 26.126945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977909, 26.423874, 26.169861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049889, 0.721929, -0.690166,
		-0.194964, 0.670693, 0.715653,
		0.979541, 0.170261, 0.107290,
		31.271770, 26.474953, 26.202047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683825, 27.015873, 26.353470>,  <30.586092, 26.355770, 26.126945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683825, 27.015873, 26.353470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.030573, 26.926476, 26.175217>,  <31.238623, 26.872837, 26.068266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.030573, 26.926476, 26.175217>,  <30.683825, 27.015873, 26.353470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030573, 26.926476, 26.175217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013841, 0.882750, -0.469639,
		0.498341, 0.413284, 0.762136,
		0.866870, -0.223492, -0.445631,
		31.290634, 26.859428, 26.041527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994034, 27.578558, 26.399101>,  <30.683825, 27.015873, 26.353470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994034, 27.578558, 26.399101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.210590, 27.401947, 26.112900>,  <31.340525, 27.295980, 25.941179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.210590, 27.401947, 26.112900>,  <30.994034, 27.578558, 26.399101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210590, 27.401947, 26.112900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021722, 0.843383, -0.536873,
		0.840489, 0.306201, 0.447011,
		0.541393, -0.441526, -0.715506,
		31.373009, 27.269489, 25.898249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462561, 28.116503, 26.157715>,  <30.994034, 27.578558, 26.399101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462561, 28.116503, 26.157715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.497303, 27.840477, 25.870308>,  <31.518148, 27.674862, 25.697865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.497303, 27.840477, 25.870308>,  <31.462561, 28.116503, 26.157715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497303, 27.840477, 25.870308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136590, 0.706183, -0.694729,
		0.986813, 0.158482, -0.032921,
		0.086854, -0.690064, -0.718518,
		31.523359, 27.633457, 25.654753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903149, 28.419790, 25.782238>,  <31.462561, 28.116503, 26.157715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903149, 28.419790, 25.782238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736702, 28.138538, 25.551601>,  <31.636833, 27.969788, 25.413219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736702, 28.138538, 25.551601>,  <31.903149, 28.419790, 25.782238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736702, 28.138538, 25.551601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239566, 0.696466, -0.676420,
		0.877185, -0.143339, -0.458258,
		-0.416119, -0.703128, -0.576590,
		31.611866, 27.927599, 25.378624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163456, 28.468805, 25.130493>,  <31.903149, 28.419790, 25.782238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163456, 28.468805, 25.130493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.816900, 28.274685, 25.083412>,  <31.608967, 28.158213, 25.055164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.816900, 28.274685, 25.083412>,  <32.163456, 28.468805, 25.130493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816900, 28.274685, 25.083412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334855, 0.739451, -0.584024,
		0.370463, -0.466579, -0.803157,
		-0.866389, -0.485300, -0.117703,
		31.556984, 28.129095, 25.048101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922316, 28.553505, 24.447380>,  <32.163456, 28.468805, 25.130493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922316, 28.553505, 24.447380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.576815, 28.448395, 24.619373>,  <31.369514, 28.385328, 24.722569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.576815, 28.448395, 24.619373>,  <31.922316, 28.553505, 24.447380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576815, 28.448395, 24.619373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502544, 0.512200, -0.696492,
		-0.037218, -0.817680, -0.574468,
		-0.863750, -0.262773, 0.429983,
		31.317690, 28.369562, 24.748367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447380, 28.598806, 23.778637>,  <31.922316, 28.553505, 24.447380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447380, 28.598806, 23.778637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.211983, 28.573326, 24.101032>,  <31.070745, 28.558039, 24.294470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.211983, 28.573326, 24.101032>,  <31.447380, 28.598806, 23.778637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211983, 28.573326, 24.101032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624241, 0.669332, -0.402888,
		-0.513811, -0.740228, -0.433660,
		-0.588491, -0.063700, 0.805990,
		31.035435, 28.554216, 24.342829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749144, 28.628691, 23.535919>,  <31.447380, 28.598806, 23.778637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749144, 28.628691, 23.535919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723562, 28.734348, 23.920864>,  <30.708214, 28.797743, 24.151831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.723562, 28.734348, 23.920864>,  <30.749144, 28.628691, 23.535919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723562, 28.734348, 23.920864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677233, 0.696804, -0.236261,
		-0.732984, -0.666852, 0.134324,
		-0.063953, 0.264144, 0.962361,
		30.704376, 28.813591, 24.209572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024677, 28.680002, 23.773821>,  <30.749144, 28.628691, 23.535919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024677, 28.680002, 23.773821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.177853, 28.880283, 24.084343>,  <30.269758, 29.000452, 24.270657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.177853, 28.880283, 24.084343>,  <30.024677, 28.680002, 23.773821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177853, 28.880283, 24.084343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682971, 0.719312, -0.127046,
		-0.622020, -0.481545, 0.617419,
		0.382938, 0.500704, 0.776308,
		30.292734, 29.030495, 24.317236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447964, 28.859922, 24.102348>,  <30.024677, 28.680002, 23.773821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447964, 28.859922, 24.102348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738165, 29.107574, 24.222561>,  <29.912287, 29.256166, 24.294689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.738165, 29.107574, 24.222561>,  <29.447964, 28.859922, 24.102348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738165, 29.107574, 24.222561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605507, 0.781796, -0.148854,
		-0.327115, -0.073980, 0.942084,
		0.725505, 0.619130, 0.300533,
		29.955816, 29.293314, 24.312721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200294, 29.347546, 24.572887>,  <29.447964, 28.859922, 24.102348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200294, 29.347546, 24.572887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.524038, 29.523174, 24.416859>,  <29.718285, 29.628551, 24.323242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.524038, 29.523174, 24.416859>,  <29.200294, 29.347546, 24.572887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524038, 29.523174, 24.416859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542990, 0.812522, -0.212060,
		0.223832, 0.383437, 0.896033,
		0.809358, 0.439072, -0.390071,
		29.766846, 29.654896, 24.299837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234173, 30.100021, 24.921665>,  <29.200294, 29.347546, 24.572887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234173, 30.100021, 24.921665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.453688, 30.118164, 24.587772>,  <29.585398, 30.129049, 24.387438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.453688, 30.118164, 24.587772>,  <29.234173, 30.100021, 24.921665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453688, 30.118164, 24.587772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531124, 0.790008, -0.306257,
		0.645552, 0.611416, 0.457638,
		0.548788, 0.045357, -0.834730,
		29.618324, 30.131771, 24.337353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256781, 30.827997, 24.731447>,  <29.234173, 30.100021, 24.921665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256781, 30.827997, 24.731447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.395990, 30.663734, 24.394344>,  <29.479515, 30.565176, 24.192083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.395990, 30.663734, 24.394344>,  <29.256781, 30.827997, 24.731447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395990, 30.663734, 24.394344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514538, 0.667785, -0.537879,
		0.783665, 0.620825, 0.021106,
		0.348023, -0.410657, -0.842758,
		29.500397, 30.540537, 24.141518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579285, 31.296537, 24.355549>,  <29.256781, 30.827997, 24.731447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579285, 31.296537, 24.355549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.500946, 31.020481, 24.076881>,  <29.453943, 30.854847, 23.909681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.500946, 31.020481, 24.076881>,  <29.579285, 31.296537, 24.355549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500946, 31.020481, 24.076881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299184, 0.718607, -0.627768,
		0.933881, 0.085488, -0.347215,
		-0.195845, -0.690142, -0.696670,
		29.442192, 30.813438, 23.867880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929039, 31.512770, 23.626040>,  <29.579285, 31.296537, 24.355549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929039, 31.512770, 23.626040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.628265, 31.259167, 23.553787>,  <29.447802, 31.107004, 23.510435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.628265, 31.259167, 23.553787>,  <29.929039, 31.512770, 23.626040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628265, 31.259167, 23.553787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332560, 0.601386, -0.726456,
		0.569205, -0.486179, -0.663050,
		-0.751937, -0.634007, -0.180628,
		29.402685, 31.068964, 23.499598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916603, 31.324314, 22.913826>,  <29.929039, 31.512770, 23.626040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916603, 31.324314, 22.913826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.540852, 31.233063, 23.016220>,  <29.315401, 31.178312, 23.077656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.540852, 31.233063, 23.016220>,  <29.916603, 31.324314, 22.913826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540852, 31.233063, 23.016220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321310, 0.325020, -0.889450,
		0.119709, -0.917780, -0.378617,
		-0.939378, -0.228128, 0.255983,
		29.259039, 31.164625, 23.093016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547220, 31.095320, 22.243031>,  <29.916603, 31.324314, 22.913826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547220, 31.095320, 22.243031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.247057, 31.177574, 22.494301>,  <29.066959, 31.226927, 22.645063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.247057, 31.177574, 22.494301>,  <29.547220, 31.095320, 22.243031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247057, 31.177574, 22.494301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580165, 0.250447, -0.775039,
		-0.316699, -0.946039, -0.068635,
		-0.750407, 0.205635, 0.628175,
		29.021935, 31.239264, 22.682753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854847, 30.758474, 21.940533>,  <29.547220, 31.095320, 22.243031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854847, 30.758474, 21.940533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.704716, 31.061523, 22.154125>,  <28.614637, 31.243353, 22.282280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.704716, 31.061523, 22.154125>,  <28.854847, 30.758474, 21.940533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704716, 31.061523, 22.154125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518889, 0.305619, -0.798343,
		-0.768037, -0.576718, 0.278415,
		-0.375330, 0.757623, 0.533980,
		28.592117, 31.288811, 22.314320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287607, 30.982290, 21.652781>,  <28.854847, 30.758474, 21.940533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287607, 30.982290, 21.652781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.286034, 31.281349, 21.918415>,  <28.285089, 31.460785, 22.077795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.286034, 31.281349, 21.918415>,  <28.287607, 30.982290, 21.652781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286034, 31.281349, 21.918415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588606, 0.535131, -0.605951,
		-0.808410, -0.393269, 0.437964,
		-0.003934, 0.747645, 0.664086,
		28.284853, 31.505642, 22.117641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611588, 31.199047, 21.750443>,  <28.287607, 30.982290, 21.652781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611588, 31.199047, 21.750443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.860260, 31.493694, 21.856956>,  <28.009462, 31.670483, 21.920864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.860260, 31.493694, 21.856956>,  <27.611588, 31.199047, 21.750443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860260, 31.493694, 21.856956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547497, 0.651782, -0.524811,
		-0.560145, 0.180475, 0.808496,
		0.621679, 0.736619, 0.266283,
		28.046764, 31.714680, 21.936842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143934, 31.808422, 21.885330>,  <27.611588, 31.199047, 21.750443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143934, 31.808422, 21.885330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508307, 31.937935, 21.783062>,  <27.726931, 32.015644, 21.721701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508307, 31.937935, 21.783062>,  <27.143934, 31.808422, 21.885330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508307, 31.937935, 21.783062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412486, 0.703291, -0.578996,
		-0.007659, 0.632886, 0.774207,
		0.910932, 0.323784, -0.255671,
		27.781586, 32.035069, 21.706360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143499, 31.410572, 22.593395>,  <27.143934, 31.808422, 21.885330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143499, 31.410572, 22.593395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827641, 31.253723, 22.404633>,  <26.638124, 31.159613, 22.291376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.827641, 31.253723, 22.404633>,  <27.143499, 31.410572, 22.593395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827641, 31.253723, 22.404633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186821, -0.886269, 0.423823,
		-0.584426, 0.246509, 0.773097,
		-0.789648, -0.392124, -0.471905,
		26.590746, 31.136086, 22.263062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603298, 31.166090, 23.118067>,  <27.143499, 31.410572, 22.593395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603298, 31.166090, 23.118067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.577705, 30.987289, 22.761169>,  <26.562349, 30.880009, 22.547031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.577705, 30.987289, 22.761169>,  <26.603298, 31.166090, 23.118067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577705, 30.987289, 22.761169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148464, -0.888389, 0.434424,
		-0.986846, -0.104669, 0.123206,
		-0.063984, -0.447001, -0.892242,
		26.558510, 30.853189, 22.493496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011961, 30.724802, 23.142429>,  <26.603298, 31.166090, 23.118067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011961, 30.724802, 23.142429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.279629, 30.615234, 22.866116>,  <26.440229, 30.549494, 22.700327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.279629, 30.615234, 22.866116>,  <26.011961, 30.724802, 23.142429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279629, 30.615234, 22.866116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074221, -0.900298, 0.428899,
		-0.739395, -0.338276, -0.582120,
		0.669168, -0.273920, -0.690783,
		26.480379, 30.533058, 22.658880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660328, 30.144114, 22.779995>,  <26.011961, 30.724802, 23.142429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660328, 30.144114, 22.779995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.054592, 30.125210, 22.715195>,  <26.291151, 30.113867, 22.676315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.054592, 30.125210, 22.715195>,  <25.660328, 30.144114, 22.779995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054592, 30.125210, 22.715195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001351, -0.957742, 0.287626,
		-0.168747, -0.283720, -0.943943,
		0.985659, -0.047260, -0.161999,
		26.350290, 30.111032, 22.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824055, 29.503012, 22.455412>,  <25.660328, 30.144114, 22.779995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824055, 29.503012, 22.455412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174213, 29.608154, 22.617687>,  <26.384310, 29.671240, 22.715054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.174213, 29.608154, 22.617687>,  <25.824055, 29.503012, 22.455412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174213, 29.608154, 22.617687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214547, -0.963317, 0.161213,
		0.433184, -0.054086, -0.899681,
		0.875398, 0.262858, 0.405689,
		26.436832, 29.687012, 22.739393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333242, 29.074234, 22.186108>,  <25.824055, 29.503012, 22.455412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333242, 29.074234, 22.186108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.557447, 29.195202, 22.494488>,  <26.691971, 29.267782, 22.679516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.557447, 29.195202, 22.494488>,  <26.333242, 29.074234, 22.186108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557447, 29.195202, 22.494488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238283, -0.950464, 0.199598,
		0.793124, 0.071827, -0.604810,
		0.560514, 0.302422, 0.770951,
		26.725601, 29.285929, 22.725773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040129, 28.742987, 22.119846>,  <26.333242, 29.074234, 22.186108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040129, 28.742987, 22.119846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.966597, 28.843380, 22.499996>,  <26.922478, 28.903616, 22.728086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.966597, 28.843380, 22.499996>,  <27.040129, 28.742987, 22.119846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966597, 28.843380, 22.499996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338033, -0.891741, 0.300884,
		0.923006, 0.376570, 0.079088,
		-0.183830, 0.250983, 0.950376,
		26.911448, 28.918674, 22.785109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.686005, 28.693014, 22.252407>,  <27.040129, 28.742987, 22.119846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.686005, 28.693014, 22.252407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.489386, 28.682018, 22.600574>,  <27.371414, 28.675421, 22.809475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.489386, 28.682018, 22.600574>,  <27.686005, 28.693014, 22.252407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489386, 28.682018, 22.600574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401579, -0.894044, 0.198543,
		0.772734, 0.447134, 0.450503,
		-0.491545, -0.027492, 0.870418,
		27.341923, 28.673771, 22.861700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260546, 28.467159, 22.778534>,  <27.686005, 28.693014, 22.252407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260546, 28.467159, 22.778534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.918684, 28.408031, 22.977619>,  <27.713568, 28.372555, 23.097071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.918684, 28.408031, 22.977619>,  <28.260546, 28.467159, 22.778534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918684, 28.408031, 22.977619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425167, -0.749450, 0.507502,
		0.297992, 0.645349, 0.703368,
		-0.854654, -0.147818, 0.497711,
		27.662289, 28.363686, 23.126932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431108, 28.296774, 23.416901>,  <28.260546, 28.467159, 22.778534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431108, 28.296774, 23.416901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.062763, 28.142345, 23.395149>,  <27.841755, 28.049688, 23.382097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.062763, 28.142345, 23.395149>,  <28.431108, 28.296774, 23.416901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062763, 28.142345, 23.395149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296189, -0.783436, 0.546352,
		-0.253534, 0.487009, 0.835788,
		-0.920865, -0.386070, -0.054381,
		27.786503, 28.026524, 23.378836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411898, 27.956825, 24.104254>,  <28.431108, 28.296774, 23.416901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411898, 27.956825, 24.104254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.120440, 27.805244, 23.876053>,  <27.945564, 27.714296, 23.739132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.120440, 27.805244, 23.876053>,  <28.411898, 27.956825, 24.104254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120440, 27.805244, 23.876053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124581, -0.892420, 0.433667,
		-0.673464, 0.244916, 0.697468,
		-0.728646, -0.378950, -0.570501,
		27.901846, 27.691559, 23.704903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829170, 27.664200, 24.457472>,  <28.411898, 27.956825, 24.104254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829170, 27.664200, 24.457472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.870945, 27.464279, 24.113544>,  <27.896009, 27.344326, 23.907188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.870945, 27.464279, 24.113544>,  <27.829170, 27.664200, 24.457472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870945, 27.464279, 24.113544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318919, -0.802060, 0.504966,
		-0.942011, -0.326949, 0.075634,
		0.104435, -0.499804, -0.859819,
		27.902275, 27.314339, 23.855598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588749, 26.979073, 24.647333>,  <27.829170, 27.664200, 24.457472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588749, 26.979073, 24.647333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.773808, 26.908733, 24.299763>,  <27.884844, 26.866529, 24.091221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.773808, 26.908733, 24.299763>,  <27.588749, 26.979073, 24.647333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773808, 26.908733, 24.299763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242375, -0.917701, 0.314768,
		-0.852767, -0.356233, -0.381952,
		0.462648, -0.175848, -0.868927,
		27.912601, 26.855978, 24.039085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458458, 26.306438, 24.469242>,  <27.588749, 26.979073, 24.647333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458458, 26.306438, 24.469242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.789110, 26.390926, 24.260601>,  <27.987501, 26.441618, 24.135416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.789110, 26.390926, 24.260601>,  <27.458458, 26.306438, 24.469242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789110, 26.390926, 24.260601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467756, -0.773210, 0.428194,
		-0.312865, -0.597940, -0.737959,
		0.826632, 0.211218, -0.521601,
		28.037100, 26.454292, 24.104120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697128, 25.689514, 24.159819>,  <27.458458, 26.306438, 24.469242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697128, 25.689514, 24.159819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.025251, 25.918282, 24.160652>,  <28.222126, 26.055542, 24.161152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.025251, 25.918282, 24.160652>,  <27.697128, 25.689514, 24.159819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025251, 25.918282, 24.160652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513392, -0.737960, 0.438000,
		0.252039, -0.358224, -0.898973,
		0.820308, 0.571919, 0.002085,
		28.271343, 26.089857, 24.161278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227320, 25.376978, 23.822830>,  <27.697128, 25.689514, 24.159819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227320, 25.376978, 23.822830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.385092, 25.629620, 24.089813>,  <28.479755, 25.781204, 24.250004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.385092, 25.629620, 24.089813>,  <28.227320, 25.376978, 23.822830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385092, 25.629620, 24.089813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574591, -0.736356, 0.357247,
		0.717126, 0.242607, -0.653354,
		0.394430, 0.631602, 0.667460,
		28.503422, 25.819099, 24.290051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918388, 25.357662, 23.816448>,  <28.227320, 25.376978, 23.822830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918388, 25.357662, 23.816448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.901917, 25.526054, 24.178902>,  <28.892033, 25.627090, 24.396374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.901917, 25.526054, 24.178902>,  <28.918388, 25.357662, 23.816448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901917, 25.526054, 24.178902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649216, -0.678094, 0.344540,
		0.759488, 0.602466, -0.245383,
		-0.041181, 0.420980, 0.906135,
		28.889563, 25.652348, 24.450743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.568840, 25.259377, 24.090984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353682, 25.326950, 24.421349>,  <29.224586, 25.367495, 24.619566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353682, 25.326950, 24.421349>,  <29.568840, 25.259377, 24.090984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353682, 25.326950, 24.421349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497292, -0.727509, 0.472685,
		0.680710, 0.664974, 0.307315,
		-0.537898, 0.168936, 0.825909,
		29.192312, 25.377630, 24.669121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075853, 25.282063, 24.689772>,  <29.568840, 25.259377, 24.090984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075853, 25.282063, 24.689772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733265, 25.235188, 24.890858>,  <29.527712, 25.207064, 25.011509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.733265, 25.235188, 24.890858>,  <30.075853, 25.282063, 24.689772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733265, 25.235188, 24.890858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485420, -0.514077, 0.707172,
		0.175564, 0.849701, 0.497177,
		-0.856472, -0.117185, 0.502715,
		29.476324, 25.200031, 25.041672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277096, 25.454428, 25.432566>,  <30.075853, 25.282063, 24.689772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277096, 25.454428, 25.432566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948929, 25.226349, 25.449490>,  <29.752029, 25.089500, 25.459644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948929, 25.226349, 25.449490>,  <30.277096, 25.454428, 25.432566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948929, 25.226349, 25.449490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390032, -0.504005, 0.770619,
		-0.418081, 0.648731, 0.635890,
		-0.820416, -0.570199, 0.042311,
		29.702805, 25.055288, 25.462183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028894, 25.436045, 26.123018>,  <30.277096, 25.454428, 25.432566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028894, 25.436045, 26.123018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851639, 25.109737, 25.974346>,  <29.745285, 24.913952, 25.885143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.851639, 25.109737, 25.974346>,  <30.028894, 25.436045, 26.123018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851639, 25.109737, 25.974346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443828, -0.559883, 0.699677,
		-0.778873, 0.145091, 0.610168,
		-0.443139, -0.815769, -0.371683,
		29.718697, 24.865007, 25.862841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720034, 25.013281, 26.761587>,  <30.028894, 25.436045, 26.123018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720034, 25.013281, 26.761587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.736488, 24.767918, 26.446110>,  <29.746361, 24.620699, 26.256824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.736488, 24.767918, 26.446110>,  <29.720034, 25.013281, 26.761587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736488, 24.767918, 26.446110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522259, -0.659741, 0.540358,
		-0.851794, -0.434131, 0.293219,
		0.041137, -0.613410, -0.788693,
		29.748829, 24.583895, 26.209501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661983, 24.462381, 27.177044>,  <29.720034, 25.013281, 26.761587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661983, 24.462381, 27.177044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777617, 24.346840, 26.811970>,  <29.846996, 24.277515, 26.592926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777617, 24.346840, 26.811970>,  <29.661983, 24.462381, 27.177044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777617, 24.346840, 26.811970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381792, -0.839499, 0.386621,
		-0.877876, -0.460221, -0.132402,
		0.289082, -0.288856, -0.912685,
		29.864342, 24.260183, 26.538164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417889, 23.769026, 27.076225>,  <29.661983, 24.462381, 27.177044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417889, 23.769026, 27.076225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722593, 23.819839, 26.822113>,  <29.905416, 23.850327, 26.669645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.722593, 23.819839, 26.822113>,  <29.417889, 23.769026, 27.076225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722593, 23.819839, 26.822113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446282, -0.813718, 0.372419,
		-0.469631, -0.567208, -0.676551,
		0.761761, 0.127033, -0.635282,
		29.951122, 23.857950, 26.631529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478460, 23.095381, 26.797026>,  <29.417889, 23.769026, 27.076225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478460, 23.095381, 26.797026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814915, 23.301838, 26.732414>,  <30.016787, 23.425713, 26.693647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.814915, 23.301838, 26.732414>,  <29.478460, 23.095381, 26.797026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814915, 23.301838, 26.732414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540721, -0.796731, 0.269889,
		0.010607, -0.314355, -0.949246,
		0.841135, 0.516141, -0.161527,
		30.067255, 23.456680, 26.683956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850786, 22.748133, 26.318554>,  <29.478460, 23.095381, 26.797026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850786, 22.748133, 26.318554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116310, 22.982025, 26.505077>,  <30.275625, 23.122360, 26.616991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116310, 22.982025, 26.505077>,  <29.850786, 22.748133, 26.318554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116310, 22.982025, 26.505077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576466, -0.797252, 0.179097,
		0.476491, 0.149925, -0.866302,
		0.663810, 0.584732, 0.466311,
		30.315453, 23.157444, 26.644970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549379, 22.631344, 25.971128>,  <29.850786, 22.748133, 26.318554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549379, 22.631344, 25.971128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604347, 22.741528, 26.351704>,  <30.637327, 22.807638, 26.580050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604347, 22.741528, 26.351704>,  <30.549379, 22.631344, 25.971128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604347, 22.741528, 26.351704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417592, -0.887127, 0.196528,
		0.898183, 0.370307, -0.236937,
		0.137417, 0.275461, 0.951440,
		30.645573, 22.824165, 26.637136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102867, 22.159676, 26.261759>,  <30.549379, 22.631344, 25.971128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102867, 22.159676, 26.261759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961308, 22.315510, 26.601871>,  <30.876371, 22.409010, 26.805939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961308, 22.315510, 26.601871>,  <31.102867, 22.159676, 26.261759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961308, 22.315510, 26.601871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191303, -0.859743, 0.473545,
		0.915511, 0.330247, 0.229731,
		-0.353897, 0.389587, 0.850282,
		30.855139, 22.432386, 26.856956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606604, 21.903852, 26.742727>,  <31.102867, 22.159676, 26.261759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606604, 21.903852, 26.742727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.305441, 22.037868, 26.969311>,  <31.124743, 22.118279, 27.105261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.305441, 22.037868, 26.969311>,  <31.606604, 21.903852, 26.742727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305441, 22.037868, 26.969311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245245, -0.655892, 0.713906,
		0.610724, 0.676427, 0.411659,
		-0.752908, 0.335042, 0.566459,
		31.079569, 22.138382, 27.139248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901628, 21.986887, 27.432056>,  <31.606604, 21.903852, 26.742727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901628, 21.986887, 27.432056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.504572, 21.958988, 27.471645>,  <31.266338, 21.942249, 27.495399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.504572, 21.958988, 27.471645>,  <31.901628, 21.986887, 27.432056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504572, 21.958988, 27.471645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120649, -0.638593, 0.760028,
		0.010194, 0.766378, 0.642310,
		-0.992643, -0.069746, 0.098972,
		31.206779, 21.938065, 27.501337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736458, 22.070971, 28.208200>,  <31.901628, 21.986887, 27.432056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736458, 22.070971, 28.208200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448349, 21.861904, 28.025761>,  <31.275484, 21.736464, 27.916298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448349, 21.861904, 28.025761>,  <31.736458, 22.070971, 28.208200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448349, 21.861904, 28.025761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002876, -0.659741, 0.751488,
		-0.693685, 0.539965, 0.476697,
		-0.720273, -0.522667, -0.456099,
		31.232267, 21.705105, 27.888931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344921, 21.868753, 28.729124>,  <31.736458, 22.070971, 28.208200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344921, 21.868753, 28.729124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218807, 21.630886, 28.433296>,  <31.143139, 21.488165, 28.255800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.218807, 21.630886, 28.433296>,  <31.344921, 21.868753, 28.729124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218807, 21.630886, 28.433296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017962, -0.782917, 0.621867,
		-0.948827, 0.182781, 0.257523,
		-0.315285, -0.594670, -0.739569,
		31.124222, 21.452484, 28.211426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914957, 21.431915, 29.013298>,  <31.344921, 21.868753, 28.729124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914957, 21.431915, 29.013298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997154, 21.216949, 28.686138>,  <31.046473, 21.087971, 28.489843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997154, 21.216949, 28.686138>,  <30.914957, 21.431915, 29.013298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997154, 21.216949, 28.686138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352655, -0.738926, 0.574128,
		-0.912911, -0.406416, 0.037678,
		0.205493, -0.537415, -0.817899,
		31.058802, 21.055725, 28.440769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604101, 20.776896, 29.125694>,  <30.914957, 21.431915, 29.013298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604101, 20.776896, 29.125694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.883503, 20.730022, 28.843315>,  <31.051144, 20.701899, 28.673887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.883503, 20.730022, 28.843315>,  <30.604101, 20.776896, 29.125694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883503, 20.730022, 28.843315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379944, -0.775240, 0.504625,
		-0.606411, -0.620702, -0.496986,
		0.698505, -0.117183, -0.705945,
		31.093054, 20.694868, 28.631531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494297, 20.175350, 28.903677>,  <30.604101, 20.776896, 29.125694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494297, 20.175350, 28.903677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867308, 20.256916, 28.784473>,  <31.091114, 20.305857, 28.712952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867308, 20.256916, 28.784473>,  <30.494297, 20.175350, 28.903677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867308, 20.256916, 28.784473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324889, -0.834003, 0.445967,
		-0.157599, -0.512697, -0.843982,
		0.932529, 0.203916, -0.298008,
		31.147066, 20.318090, 28.695070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764355, 19.584686, 28.645845>,  <30.494297, 20.175350, 28.903677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764355, 19.584686, 28.645845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086365, 19.800480, 28.744553>,  <31.279570, 19.929956, 28.803778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.086365, 19.800480, 28.744553>,  <30.764355, 19.584686, 28.645845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086365, 19.800480, 28.744553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405594, -0.804069, 0.434703,
		0.432934, -0.249859, -0.866106,
		0.805023, 0.539485, 0.246768,
		31.327871, 19.962326, 28.818583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365637, 19.099117, 28.548010>,  <30.764355, 19.584686, 28.645845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365637, 19.099117, 28.548010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496162, 19.407295, 28.767075>,  <31.574478, 19.592201, 28.898514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.496162, 19.407295, 28.767075>,  <31.365637, 19.099117, 28.548010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496162, 19.407295, 28.767075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434396, -0.636800, 0.637013,
		0.839535, 0.030036, -0.542475,
		0.326314, 0.770444, 0.547663,
		31.594057, 19.638428, 28.931374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976170, 18.901657, 28.801155>,  <31.365637, 19.099117, 28.548010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976170, 18.901657, 28.801155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895655, 19.205044, 29.049095>,  <31.847345, 19.387075, 29.197859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.895655, 19.205044, 29.049095>,  <31.976170, 18.901657, 28.801155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895655, 19.205044, 29.049095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335083, -0.541306, 0.771172,
		0.920436, 0.362929, -0.145190,
		-0.201289, 0.758465, 0.619849,
		31.835268, 19.432583, 29.235050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545715, 18.957630, 29.313700>,  <31.976170, 18.901657, 28.801155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545715, 18.957630, 29.313700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252800, 19.166443, 29.488625>,  <32.077053, 19.291731, 29.593580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252800, 19.166443, 29.488625>,  <32.545715, 18.957630, 29.313700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252800, 19.166443, 29.488625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211276, -0.436321, 0.874635,
		0.647396, 0.732875, 0.209219,
		-0.732285, 0.522032, 0.437311,
		32.033115, 19.323053, 29.619818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862465, 19.316351, 29.986887>,  <32.545715, 18.957630, 29.313700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862465, 19.316351, 29.986887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.468033, 19.250343, 29.978680>,  <32.231373, 19.210739, 29.973755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.468033, 19.250343, 29.978680>,  <32.862465, 19.316351, 29.986887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468033, 19.250343, 29.978680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072770, -0.539163, 0.839051,
		-0.149521, 0.825876, 0.543665,
		-0.986077, -0.165019, -0.020517,
		32.172211, 19.200838, 29.972525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598988, 19.417879, 30.194021>,  <32.862465, 19.316351, 29.986887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598988, 19.417879, 30.194021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503502, 19.352573, 29.811115>,  <33.446209, 19.313389, 29.581371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.503502, 19.352573, 29.811115>,  <33.598988, 19.417879, 30.194021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503502, 19.352573, 29.811115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705620, -0.648090, 0.286496,
		-0.667169, 0.743858, 0.039505,
		-0.238715, -0.163266, -0.957267,
		33.431889, 19.303595, 29.523935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274551, 19.739193, 30.435507>,  <33.598988, 19.417879, 30.194021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274551, 19.739193, 30.435507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313568, 20.041771, 30.694202>,  <34.336979, 20.223318, 30.849421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.313568, 20.041771, 30.694202>,  <34.274551, 19.739193, 30.435507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313568, 20.041771, 30.694202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730769, 0.495588, -0.469435,
		-0.675620, -0.426826, 0.601130,
		0.097546, 0.756447, 0.646740,
		34.342831, 20.268705, 30.888224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511589, 19.848343, 30.809481>,  <34.274551, 19.739193, 30.435507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511589, 19.848343, 30.809481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.746986, 20.171471, 30.822788>,  <33.888226, 20.365347, 30.830772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.746986, 20.171471, 30.822788>,  <33.511589, 19.848343, 30.809481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746986, 20.171471, 30.822788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743307, 0.556769, -0.370815,
		-0.318075, 0.193492, 0.928111,
		0.588493, 0.807818, 0.033271,
		33.923534, 20.413816, 30.832769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034180, 20.331303, 31.055269>,  <33.511589, 19.848343, 30.809481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034180, 20.331303, 31.055269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326981, 20.574627, 30.932545>,  <33.502663, 20.720621, 30.858910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326981, 20.574627, 30.932545>,  <33.034180, 20.331303, 31.055269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326981, 20.574627, 30.932545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681141, 0.663219, -0.310139,
		0.014824, 0.436005, 0.899822,
		0.732002, 0.608308, -0.306812,
		33.546581, 20.757120, 30.840502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939610, 20.958284, 31.376087>,  <33.034180, 20.331303, 31.055269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939610, 20.958284, 31.376087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170925, 21.062653, 31.066895>,  <33.309715, 21.125273, 30.881378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170925, 21.062653, 31.066895>,  <32.939610, 20.958284, 31.376087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170925, 21.062653, 31.066895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595995, 0.782120, -0.181876,
		0.557111, 0.565871, 0.607797,
		0.578288, 0.260919, -0.772984,
		33.344410, 21.140928, 30.834999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178616, 21.725950, 31.351093>,  <32.939610, 20.958284, 31.376087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178616, 21.725950, 31.351093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201141, 21.590195, 30.975510>,  <33.214657, 21.508741, 30.750160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.201141, 21.590195, 30.975510>,  <33.178616, 21.725950, 31.351093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201141, 21.590195, 30.975510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434532, 0.838377, -0.329097,
		0.898894, 0.426541, -0.100262,
		0.056316, -0.339391, -0.938958,
		33.218037, 21.488377, 30.693823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577038, 22.189077, 30.959261>,  <33.178616, 21.725950, 31.351093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577038, 22.189077, 30.959261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396431, 21.981613, 30.668850>,  <33.288067, 21.857134, 30.494602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.396431, 21.981613, 30.668850>,  <33.577038, 22.189077, 30.959261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396431, 21.981613, 30.668850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201726, 0.851967, -0.483175,
		0.869158, -0.071703, -0.489308,
		-0.451520, -0.518662, -0.726030,
		33.260975, 21.826015, 30.451040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820129, 22.518126, 30.361204>,  <33.577038, 22.189077, 30.959261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820129, 22.518126, 30.361204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485630, 22.316925, 30.273857>,  <33.284931, 22.196205, 30.221449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485630, 22.316925, 30.273857>,  <33.820129, 22.518126, 30.361204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485630, 22.316925, 30.273857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313413, 0.765193, -0.562362,
		0.449961, -0.401834, -0.797537,
		-0.836246, -0.502999, -0.218367,
		33.234756, 22.166025, 30.208347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826225, 22.694958, 29.673815>,  <33.820129, 22.518126, 30.361204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826225, 22.694958, 29.673815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457485, 22.568996, 29.764168>,  <33.236240, 22.493420, 29.818380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.457485, 22.568996, 29.764168>,  <33.826225, 22.694958, 29.673815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457485, 22.568996, 29.764168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384337, 0.668129, -0.637094,
		0.049703, -0.674123, -0.736945,
		-0.921854, -0.314901, 0.225883,
		33.180927, 22.474525, 29.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437622, 22.670881, 28.996546>,  <33.826225, 22.694958, 29.673815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437622, 22.670881, 28.996546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.178146, 22.698025, 29.299755>,  <33.022461, 22.714310, 29.481680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.178146, 22.698025, 29.299755>,  <33.437622, 22.670881, 28.996546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178146, 22.698025, 29.299755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513601, 0.695980, -0.501823,
		-0.561622, -0.714848, -0.416621,
		-0.648687, 0.067858, 0.758024,
		32.983540, 22.718382, 29.527163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751026, 22.583233, 28.697617>,  <33.437622, 22.670881, 28.996546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751026, 22.583233, 28.697617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708809, 22.781467, 29.042465>,  <32.683479, 22.900408, 29.249374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708809, 22.781467, 29.042465>,  <32.751026, 22.583233, 28.697617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708809, 22.781467, 29.042465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687138, 0.590343, -0.423480,
		-0.718819, -0.637094, 0.278228,
		-0.105547, 0.495587, 0.862121,
		32.677143, 22.930143, 29.301102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052113, 22.664419, 28.773462>,  <32.751026, 22.583233, 28.697617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052113, 22.664419, 28.773462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.214264, 22.946136, 29.006577>,  <32.311554, 23.115168, 29.146444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.214264, 22.946136, 29.006577>,  <32.052113, 22.664419, 28.773462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214264, 22.946136, 29.006577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493998, 0.705191, -0.508598,
		-0.769176, -0.081717, 0.633791,
		0.405382, 0.704293, 0.582784,
		32.335880, 23.157425, 29.181412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534388, 23.067480, 28.877470>,  <32.052113, 22.664419, 28.773462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534388, 23.067480, 28.877470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878492, 23.265266, 28.927193>,  <32.084953, 23.383938, 28.957027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.878492, 23.265266, 28.927193>,  <31.534388, 23.067480, 28.877470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878492, 23.265266, 28.927193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306027, 0.695776, -0.649802,
		-0.407796, 0.520958, 0.749870,
		0.860261, 0.494467, 0.124308,
		32.136570, 23.413607, 28.964485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373384, 23.657152, 28.730902>,  <31.534388, 23.067480, 28.877470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373384, 23.657152, 28.730902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765913, 23.734058, 28.728168>,  <32.001431, 23.780203, 28.726528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765913, 23.734058, 28.728168>,  <31.373384, 23.657152, 28.730902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765913, 23.734058, 28.728168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170963, 0.855207, -0.489279,
		-0.088229, 0.481306, 0.872101,
		0.981319, 0.192266, -0.006831,
		32.060310, 23.791739, 28.726120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376200, 24.327124, 29.021851>,  <31.373384, 23.657152, 28.730902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376200, 24.327124, 29.021851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717514, 24.280869, 28.818466>,  <31.922302, 24.253117, 28.696436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717514, 24.280869, 28.818466>,  <31.376200, 24.327124, 29.021851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717514, 24.280869, 28.818466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208017, 0.818664, -0.535274,
		0.478154, 0.562510, 0.674501,
		0.853286, -0.115636, -0.508460,
		31.973499, 24.246178, 28.665928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786709, 24.960047, 28.996288>,  <31.376200, 24.327124, 29.021851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786709, 24.960047, 28.996288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906935, 24.755810, 28.674057>,  <31.979071, 24.633268, 28.480719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.906935, 24.755810, 28.674057>,  <31.786709, 24.960047, 28.996288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906935, 24.755810, 28.674057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277173, 0.761420, -0.586017,
		0.912598, 0.399421, 0.087334,
		0.300565, -0.510591, -0.805579,
		31.997105, 24.602633, 28.432383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294514, 25.410944, 28.637333>,  <31.786709, 24.960047, 28.996288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294514, 25.410944, 28.637333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197887, 25.149452, 28.350479>,  <32.139912, 24.992558, 28.178366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197887, 25.149452, 28.350479>,  <32.294514, 25.410944, 28.637333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197887, 25.149452, 28.350479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162686, 0.755846, -0.634216,
		0.956650, -0.036538, -0.288940,
		-0.241567, -0.653729, -0.717136,
		32.125416, 24.953333, 28.135338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820534, 25.456896, 28.019701>,  <32.294514, 25.410944, 28.637333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820534, 25.456896, 28.019701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476971, 25.311817, 27.875072>,  <32.270832, 25.224770, 27.788296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476971, 25.311817, 27.875072>,  <32.820534, 25.456896, 28.019701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476971, 25.311817, 27.875072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043607, 0.651647, -0.757268,
		0.510273, -0.666190, -0.543887,
		-0.858907, -0.362695, -0.361568,
		32.219299, 25.203009, 27.766602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929817, 25.320204, 27.359095>,  <32.820534, 25.456896, 28.019701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929817, 25.320204, 27.359095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531963, 25.359081, 27.373268>,  <32.293251, 25.382408, 27.381773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531963, 25.359081, 27.373268>,  <32.929817, 25.320204, 27.359095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531963, 25.359081, 27.373268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029214, 0.592455, -0.805073,
		-0.099243, -0.799718, -0.592116,
		-0.994634, 0.097196, 0.035434,
		32.233574, 25.388241, 27.383898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742008, 25.234722, 26.691904>,  <32.929817, 25.320204, 27.359095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742008, 25.234722, 26.691904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397198, 25.372612, 26.840534>,  <32.190311, 25.455347, 26.929712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.397198, 25.372612, 26.840534>,  <32.742008, 25.234722, 26.691904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397198, 25.372612, 26.840534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225086, 0.396481, -0.890022,
		-0.454136, -0.850862, -0.264186,
		-0.862031, 0.344726, 0.371574,
		32.138588, 25.476030, 26.952005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160576, 25.085106, 26.202311>,  <32.742008, 25.234722, 26.691904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160576, 25.085106, 26.202311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047592, 25.412376, 26.402634>,  <31.979801, 25.608738, 26.522827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.047592, 25.412376, 26.402634>,  <32.160576, 25.085106, 26.202311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047592, 25.412376, 26.402634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284147, 0.427277, -0.858309,
		-0.916230, -0.384741, 0.111793,
		-0.282460, 0.818174, 0.500807,
		31.962854, 25.657829, 26.552876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.604719, 37.142551, 14.855577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.938637, 36.929760, 14.912322>,  <21.138987, 36.802086, 14.946368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.938637, 36.929760, 14.912322>,  <20.604719, 37.142551, 14.855577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938637, 36.929760, 14.912322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026993, 0.217808, 0.975618,
		-0.549902, -0.818268, 0.167465,
		0.834793, -0.531974, 0.141861,
		21.189075, 36.770168, 14.954881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460279, 36.632763, 15.370299>,  <20.604719, 37.142551, 14.855577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460279, 36.632763, 15.370299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.856514, 36.686520, 15.359893>,  <21.094255, 36.718773, 15.353649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.856514, 36.686520, 15.359893>,  <20.460279, 36.632763, 15.370299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.856514, 36.686520, 15.359893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007472, 0.136683, 0.990587,
		0.136683, -0.981456, 0.134392,
		-0.990587, -0.134392, 0.026015,
		21.153690, 36.726837, 15.352088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656351, 36.283798, 15.959652>,  <20.460279, 36.632763, 15.370299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656351, 36.283798, 15.959652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968229, 36.513294, 15.859330>,  <21.155355, 36.650990, 15.799137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968229, 36.513294, 15.859330>,  <20.656351, 36.283798, 15.959652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968229, 36.513294, 15.859330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188460, 0.166947, 0.967787,
		0.597125, -0.801845, 0.022042,
		0.779696, 0.573736, -0.250804,
		21.202139, 36.685413, 15.784089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252052, 36.056103, 16.401636>,  <20.656351, 36.283798, 15.959652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252052, 36.056103, 16.401636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.338169, 36.432594, 16.297531>,  <21.389839, 36.658489, 16.235069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.338169, 36.432594, 16.297531>,  <21.252052, 36.056103, 16.401636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.338169, 36.432594, 16.297531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196790, 0.219228, 0.955622,
		0.956516, -0.256955, -0.138027,
		0.215292, 0.941230, -0.260262,
		21.402756, 36.714962, 16.219452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.937809, 36.270714, 16.756351>,  <21.252052, 36.056103, 16.401636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.937809, 36.270714, 16.756351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.764189, 36.616730, 16.655704>,  <21.660017, 36.824337, 16.595316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.764189, 36.616730, 16.655704>,  <21.937809, 36.270714, 16.756351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.764189, 36.616730, 16.655704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224318, 0.374277, 0.899777,
		0.872515, 0.334105, -0.356498,
		-0.434049, 0.865038, -0.251617,
		21.633974, 36.876240, 16.580219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.396683, 36.804146, 17.052233>,  <21.937809, 36.270714, 16.756351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.396683, 36.804146, 17.052233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037773, 36.966454, 16.982666>,  <21.822428, 37.063839, 16.940926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037773, 36.966454, 16.982666>,  <22.396683, 36.804146, 17.052233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.037773, 36.966454, 16.982666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032907, 0.454329, 0.890226,
		0.440244, 0.793054, -0.421011,
		-0.897275, 0.405771, -0.173919,
		21.768591, 37.088184, 16.930490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.502872, 37.419571, 17.379835>,  <22.396683, 36.804146, 17.052233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.502872, 37.419571, 17.379835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.106627, 37.413502, 17.325504>,  <21.868879, 37.409859, 17.292906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.106627, 37.413502, 17.325504>,  <22.502872, 37.419571, 17.379835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106627, 37.413502, 17.325504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136016, 0.206827, 0.968877,
		0.013392, 0.978260, -0.206950,
		-0.990616, -0.015173, -0.135829,
		21.809443, 37.408951, 17.284756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.246529, 37.926651, 17.808168>,  <22.502872, 37.419571, 17.379835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.246529, 37.926651, 17.808168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.925915, 37.697433, 17.739857>,  <21.733547, 37.559902, 17.698870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.925915, 37.697433, 17.739857>,  <22.246529, 37.926651, 17.808168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925915, 37.697433, 17.739857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359331, 0.233324, 0.903571,
		-0.477937, 0.785610, -0.392929,
		-0.801534, -0.573042, -0.170780,
		21.685455, 37.525520, 17.688623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739397, 38.195217, 18.241877>,  <22.246529, 37.926651, 17.808168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739397, 38.195217, 18.241877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.620743, 37.823803, 18.152596>,  <21.549549, 37.600952, 18.099028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.620743, 37.823803, 18.152596>,  <21.739397, 38.195217, 18.241877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.620743, 37.823803, 18.152596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406282, -0.088814, 0.909421,
		-0.864258, 0.360452, -0.350904,
		-0.296637, -0.928540, -0.223203,
		21.531752, 37.545242, 18.085634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.992296, 38.169357, 18.443279>,  <21.739397, 38.195217, 18.241877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.992296, 38.169357, 18.443279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157707, 37.805325, 18.432343>,  <21.256954, 37.586906, 18.425781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157707, 37.805325, 18.432343>,  <20.992296, 38.169357, 18.443279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157707, 37.805325, 18.432343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310660, -0.169260, 0.935329,
		-0.855853, -0.378291, -0.352720,
		0.413529, -0.910080, -0.027342,
		21.281765, 37.532299, 18.424139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484068, 37.810738, 18.812160>,  <20.992296, 38.169357, 18.443279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484068, 37.810738, 18.812160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783560, 37.545746, 18.821327>,  <20.963255, 37.386753, 18.826826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.783560, 37.545746, 18.821327>,  <20.484068, 37.810738, 18.812160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.783560, 37.545746, 18.821327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311745, -0.321404, 0.894156,
		-0.584994, -0.676625, -0.447169,
		0.748731, -0.662478, 0.022915,
		21.008179, 37.347004, 18.828201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206013, 37.161629, 19.148026>,  <20.484068, 37.810738, 18.812160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206013, 37.161629, 19.148026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604923, 37.133186, 19.155834>,  <20.844271, 37.116119, 19.160519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.604923, 37.133186, 19.155834>,  <20.206013, 37.161629, 19.148026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.604923, 37.133186, 19.155834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047046, -0.409762, 0.910978,
		-0.056776, -0.909417, -0.411992,
		0.997278, -0.071105, 0.019520,
		20.904106, 37.111855, 19.161690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.365517, 36.597519, 19.465393>,  <20.206013, 37.161629, 19.148026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.365517, 36.597519, 19.465393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.714182, 36.787834, 19.512432>,  <20.923382, 36.902023, 19.540655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.714182, 36.787834, 19.512432>,  <20.365517, 36.597519, 19.465393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714182, 36.787834, 19.512432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067792, -0.354682, 0.932526,
		0.485393, -0.804878, -0.341418,
		0.871664, 0.475787, 0.117596,
		20.975681, 36.930569, 19.547710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847902, 36.017380, 19.655931>,  <20.365517, 36.597519, 19.465393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847902, 36.017380, 19.655931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034492, 36.359615, 19.745701>,  <21.146446, 36.564957, 19.799562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034492, 36.359615, 19.745701>,  <20.847902, 36.017380, 19.655931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034492, 36.359615, 19.745701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147241, -0.325288, 0.934082,
		0.872194, -0.402680, -0.277716,
		0.466473, 0.855592, 0.224423,
		21.174435, 36.616291, 19.813028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465467, 35.861649, 20.039198>,  <20.847902, 36.017380, 19.655931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.465467, 35.861649, 20.039198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.392359, 36.243000, 20.135254>,  <21.348494, 36.471809, 20.192888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.392359, 36.243000, 20.135254>,  <21.465467, 35.861649, 20.039198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392359, 36.243000, 20.135254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216943, -0.199124, 0.955660,
		0.958921, 0.226765, -0.170434,
		-0.182773, 0.953377, 0.240140,
		21.337526, 36.529015, 20.207296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.028467, 36.047581, 20.417892>,  <21.465467, 35.861649, 20.039198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.028467, 36.047581, 20.417892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.761276, 36.324974, 20.525890>,  <21.600962, 36.491409, 20.590689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.761276, 36.324974, 20.525890>,  <22.028467, 36.047581, 20.417892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.761276, 36.324974, 20.525890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202220, -0.180008, 0.962655,
		0.716182, 0.697628, -0.019994,
		-0.667975, 0.693479, 0.269993,
		21.560884, 36.533016, 20.606888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295662, 36.334160, 21.031544>,  <22.028467, 36.047581, 20.417892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295662, 36.334160, 21.031544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.904072, 36.414661, 21.044834>,  <21.669117, 36.462963, 21.052809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.904072, 36.414661, 21.044834>,  <22.295662, 36.334160, 21.031544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904072, 36.414661, 21.044834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026894, -0.288821, 0.957005,
		0.202197, 0.935991, 0.288161,
		-0.978976, 0.201253, 0.033226,
		21.610378, 36.475037, 21.054802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143785, 36.816628, 21.644342>,  <22.295662, 36.334160, 21.031544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143785, 36.816628, 21.644342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.804659, 36.634800, 21.535107>,  <21.601183, 36.525703, 21.469566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.804659, 36.634800, 21.535107>,  <22.143785, 36.816628, 21.644342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.804659, 36.634800, 21.535107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199727, -0.203334, 0.958522,
		-0.491242, 0.867192, 0.081601,
		-0.847815, -0.454568, -0.273088,
		21.550314, 36.498428, 21.453180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.616087, 37.098534, 22.081718>,  <22.143785, 36.816628, 21.644342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.616087, 37.098534, 22.081718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.488047, 36.735817, 21.971985>,  <21.411222, 36.518185, 21.906145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.488047, 36.735817, 21.971985>,  <21.616087, 37.098534, 22.081718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488047, 36.735817, 21.971985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243470, -0.201105, 0.948830,
		-0.915564, 0.370513, -0.156404,
		-0.320100, -0.906795, -0.274334,
		21.392017, 36.463779, 21.889685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013105, 37.012486, 22.473026>,  <21.616087, 37.098534, 22.081718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013105, 37.012486, 22.473026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155790, 36.652752, 22.371868>,  <21.241402, 36.436913, 22.311172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155790, 36.652752, 22.371868>,  <21.013105, 37.012486, 22.473026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155790, 36.652752, 22.371868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097754, -0.305151, 0.947274,
		-0.929087, -0.313181, -0.196764,
		0.356711, -0.899333, -0.252897,
		21.262804, 36.382954, 22.296000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.568388, 36.545132, 22.694681>,  <21.013105, 37.012486, 22.473026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.568388, 36.545132, 22.694681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925344, 36.366219, 22.670769>,  <21.139519, 36.258869, 22.656422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925344, 36.366219, 22.670769>,  <20.568388, 36.545132, 22.694681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925344, 36.366219, 22.670769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102894, -0.330670, 0.938121,
		-0.439375, -0.831020, -0.341110,
		0.892391, -0.447285, -0.059781,
		21.193062, 36.232033, 22.652834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219568, 36.527660, 23.311594>,  <20.568388, 36.545132, 22.694681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219568, 36.527660, 23.311594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.234673, 36.905293, 23.442612>,  <20.243734, 37.131870, 23.521221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.234673, 36.905293, 23.442612>,  <20.219568, 36.527660, 23.311594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.234673, 36.905293, 23.442612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352844, 0.319259, -0.879531,
		-0.934920, -0.082360, 0.345169,
		0.037760, 0.944082, 0.327542,
		20.246000, 37.188519, 23.540874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514610, 36.862110, 23.265039>,  <20.219568, 36.527660, 23.311594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514610, 36.862110, 23.265039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.749283, 37.184059, 23.300781>,  <19.890087, 37.377228, 23.322227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.749283, 37.184059, 23.300781>,  <19.514610, 36.862110, 23.265039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.749283, 37.184059, 23.300781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486285, 0.438378, -0.755878,
		-0.647556, 0.400008, 0.648586,
		0.586683, 0.804871, 0.089356,
		19.925287, 37.425522, 23.327589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975821, 37.357792, 23.158754>,  <19.514610, 36.862110, 23.265039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975821, 37.357792, 23.158754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.334553, 37.529743, 23.116989>,  <19.549791, 37.632915, 23.091930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.334553, 37.529743, 23.116989>,  <18.975821, 37.357792, 23.158754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334553, 37.529743, 23.116989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359228, 0.569939, -0.739003,
		-0.258171, 0.700268, 0.665562,
		0.896829, 0.429877, -0.104414,
		19.603601, 37.658707, 23.085665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.827475, 38.105953, 22.956989>,  <18.975821, 37.357792, 23.158754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.827475, 38.105953, 22.956989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.205126, 38.050644, 22.837322>,  <19.431717, 38.017460, 22.765522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.205126, 38.050644, 22.837322>,  <18.827475, 38.105953, 22.956989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.205126, 38.050644, 22.837322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203195, 0.470483, -0.858695,
		0.259486, 0.871508, 0.416101,
		0.944129, -0.138270, -0.299170,
		19.488365, 38.009163, 22.747572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941349, 38.741257, 22.759216>,  <18.827475, 38.105953, 22.956989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941349, 38.741257, 22.759216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.212450, 38.497334, 22.594879>,  <19.375111, 38.350979, 22.496277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.212450, 38.497334, 22.594879>,  <18.941349, 38.741257, 22.759216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212450, 38.497334, 22.594879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042232, 0.590110, -0.806218,
		0.734078, 0.529063, 0.425700,
		0.677750, -0.609805, -0.410843,
		19.415775, 38.314392, 22.471626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541466, 39.146336, 22.476713>,  <18.941349, 38.741257, 22.759216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541466, 39.146336, 22.476713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.524305, 38.820290, 22.245628>,  <19.514009, 38.624664, 22.106977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.524305, 38.820290, 22.245628>,  <19.541466, 39.146336, 22.476713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.524305, 38.820290, 22.245628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065882, 0.579296, -0.812451,
		0.996905, 0.003207, -0.078553,
		-0.042900, -0.815111, -0.577714,
		19.511435, 38.575756, 22.072313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.857897, 39.340508, 21.907473>,  <19.541466, 39.146336, 22.476713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.857897, 39.340508, 21.907473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.684443, 39.008911, 21.766205>,  <19.580370, 38.809952, 21.681444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.684443, 39.008911, 21.766205>,  <19.857897, 39.340508, 21.907473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.684443, 39.008911, 21.766205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112764, 0.438781, -0.891491,
		0.894004, -0.346758, -0.283753,
		-0.433637, -0.828993, -0.353170,
		19.554352, 38.760212, 21.660254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105457, 39.269718, 21.206373>,  <19.857897, 39.340508, 21.907473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.105457, 39.269718, 21.206373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.787828, 39.026604, 21.203579>,  <19.597252, 38.880737, 21.201902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.787828, 39.026604, 21.203579>,  <20.105457, 39.269718, 21.206373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787828, 39.026604, 21.203579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231337, 0.312832, -0.921206,
		0.562079, -0.729888, -0.389014,
		-0.794073, -0.607783, -0.006986,
		19.549606, 38.844269, 21.201483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264977, 38.839340, 20.710739>,  <20.105457, 39.269718, 21.206373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264977, 38.839340, 20.710739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.872038, 38.779621, 20.755825>,  <19.636274, 38.743790, 20.782877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.872038, 38.779621, 20.755825>,  <20.264977, 38.839340, 20.710739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.872038, 38.779621, 20.755825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122506, 0.058051, -0.990769,
		0.141377, -0.987087, -0.075317,
		-0.982347, -0.149298, 0.112717,
		19.577333, 38.734833, 20.789640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.039715, 38.320469, 20.292669>,  <20.264977, 38.839340, 20.710739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.039715, 38.320469, 20.292669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.707058, 38.533848, 20.354378>,  <19.507463, 38.661877, 20.391403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.707058, 38.533848, 20.354378>,  <20.039715, 38.320469, 20.292669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.707058, 38.533848, 20.354378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220098, -0.061587, -0.973532,
		-0.509831, -0.843586, 0.168630,
		-0.831643, 0.533451, 0.154272,
		19.457565, 38.693882, 20.400660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489834, 37.882725, 20.028360>,  <20.039715, 38.320469, 20.292669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489834, 37.882725, 20.028360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.335678, 38.251156, 20.050602>,  <19.243185, 38.472214, 20.063948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.335678, 38.251156, 20.050602>,  <19.489834, 37.882725, 20.028360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335678, 38.251156, 20.050602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471453, -0.144744, -0.869932,
		-0.793225, -0.361479, 0.490027,
		-0.385391, 0.921077, 0.055606,
		19.220060, 38.527477, 20.067284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789402, 37.792122, 19.886297>,  <19.489834, 37.882725, 20.028360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789402, 37.792122, 19.886297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.857994, 38.180485, 19.819435>,  <18.899149, 38.413502, 19.779318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.857994, 38.180485, 19.819435>,  <18.789402, 37.792122, 19.886297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857994, 38.180485, 19.819435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364180, -0.095184, -0.926452,
		-0.915406, 0.219743, 0.337261,
		0.171480, 0.970903, -0.167158,
		18.909437, 38.471756, 19.769287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.192188, 38.063339, 19.645361>,  <18.789402, 37.792122, 19.886297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.192188, 38.063339, 19.645361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.469389, 38.322208, 19.518288>,  <18.635710, 38.477528, 19.442043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.469389, 38.322208, 19.518288>,  <18.192188, 38.063339, 19.645361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469389, 38.322208, 19.518288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424081, 0.009585, -0.905573,
		-0.583013, 0.762287, 0.281094,
		0.693001, 0.647168, -0.317683,
		18.677290, 38.516357, 19.422983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.697842, 38.359699, 19.172770>,  <18.192188, 38.063339, 19.645361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.697842, 38.359699, 19.172770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071098, 38.480450, 19.094677>,  <18.295052, 38.552902, 19.047821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071098, 38.480450, 19.094677>,  <17.697842, 38.359699, 19.172770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071098, 38.480450, 19.094677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238820, 0.114601, -0.964278,
		-0.268722, 0.946433, 0.179034,
		0.933142, 0.301880, -0.195232,
		18.351040, 38.571014, 19.036108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620707, 38.934231, 18.706755>,  <17.697842, 38.359699, 19.172770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620707, 38.934231, 18.706755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.000801, 38.823483, 18.649632>,  <18.228857, 38.757034, 18.615358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.000801, 38.823483, 18.649632>,  <17.620707, 38.934231, 18.706755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.000801, 38.823483, 18.649632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122070, 0.090830, -0.988356,
		0.286616, 0.956605, 0.052512,
		0.950237, -0.276869, -0.142806,
		18.285872, 38.740421, 18.606789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.752327, 39.319618, 18.118296>,  <17.620707, 38.934231, 18.706755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.752327, 39.319618, 18.118296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.031216, 39.033955, 18.143158>,  <18.198549, 38.862556, 18.158075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.031216, 39.033955, 18.143158>,  <17.752327, 39.319618, 18.118296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.031216, 39.033955, 18.143158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071131, -0.017357, -0.997316,
		0.713318, 0.699771, 0.038697,
		0.697221, -0.714156, 0.062157,
		18.240381, 38.819706, 18.161804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317520, 39.516586, 17.631481>,  <17.752327, 39.319618, 18.118296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.317520, 39.516586, 17.631481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.344767, 39.122952, 17.697117>,  <18.361115, 38.886768, 17.736498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.344767, 39.122952, 17.697117>,  <18.317520, 39.516586, 17.631481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344767, 39.122952, 17.697117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109964, -0.156064, -0.981607,
		0.991599, 0.084906, 0.097584,
		0.068115, -0.984091, 0.164089,
		18.365202, 38.827724, 17.746344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.943785, 39.329433, 17.349724>,  <18.317520, 39.516586, 17.631481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.943785, 39.329433, 17.349724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.753630, 38.978306, 17.373188>,  <18.639538, 38.767628, 17.387266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.753630, 38.978306, 17.373188>,  <18.943785, 39.329433, 17.349724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753630, 38.978306, 17.373188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086701, -0.113095, -0.989794,
		0.875495, -0.465448, 0.129871,
		-0.475386, -0.877820, 0.058659,
		18.611013, 38.714958, 17.390785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.329254, 38.872440, 17.042355>,  <18.943785, 39.329433, 17.349724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.329254, 38.872440, 17.042355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.981165, 38.675476, 17.036118>,  <18.772310, 38.557297, 17.032375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.981165, 38.675476, 17.036118>,  <19.329254, 38.872440, 17.042355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981165, 38.675476, 17.036118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126238, -0.192281, -0.973186,
		0.476209, -0.848858, 0.229488,
		-0.870224, -0.492410, -0.015592,
		18.720098, 38.527752, 17.031441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.463121, 38.254429, 16.675268>,  <19.329254, 38.872440, 17.042355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.463121, 38.254429, 16.675268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.068367, 38.304768, 16.634838>,  <18.831514, 38.334969, 16.610580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.068367, 38.304768, 16.634838>,  <19.463121, 38.254429, 16.675268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068367, 38.304768, 16.634838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065821, -0.258021, -0.963895,
		-0.147379, -0.957909, 0.246355,
		-0.986888, 0.125842, -0.101077,
		18.772301, 38.342522, 16.604515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.237804, 37.816204, 16.133017>,  <19.463121, 38.254429, 16.675268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.237804, 37.816204, 16.133017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.927183, 38.066437, 16.162994>,  <18.740810, 38.216576, 16.180981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.927183, 38.066437, 16.162994>,  <19.237804, 37.816204, 16.133017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927183, 38.066437, 16.162994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149482, -0.067376, -0.986466,
		-0.612063, -0.777246, 0.145834,
		-0.776552, 0.625580, 0.074946,
		18.694218, 38.254112, 16.185478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.038340, 26.973789, 22.923069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296026, 27.171909, 23.156193>,  <27.450638, 27.290781, 23.296066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296026, 27.171909, 23.156193>,  <27.038340, 26.973789, 22.923069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296026, 27.171909, 23.156193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537450, 0.835306, -0.115809,
		-0.544183, -0.238624, 0.804315,
		0.644215, 0.495300, 0.582808,
		27.489290, 27.320499, 23.331036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635775, 27.554287, 23.121647>,  <27.038340, 26.973789, 22.923069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635775, 27.554287, 23.121647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990637, 27.701111, 23.233521>,  <27.203554, 27.789206, 23.300644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990637, 27.701111, 23.233521>,  <26.635775, 27.554287, 23.121647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990637, 27.701111, 23.233521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360744, 0.929587, -0.075714,
		-0.287782, -0.033724, 0.957102,
		0.887156, 0.367058, 0.279684,
		27.256784, 27.811228, 23.317425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564989, 27.987305, 23.709299>,  <26.635775, 27.554287, 23.121647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564989, 27.987305, 23.709299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887863, 28.116199, 23.511467>,  <27.081589, 28.193537, 23.392767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887863, 28.116199, 23.511467>,  <26.564989, 27.987305, 23.709299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887863, 28.116199, 23.511467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302939, 0.945240, 0.121446,
		0.506632, 0.051798, 0.860605,
		0.807187, 0.322239, -0.494581,
		27.130020, 28.212872, 23.363092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614424, 28.670771, 24.000902>,  <26.564989, 27.987305, 23.709299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614424, 28.670771, 24.000902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817623, 28.654854, 23.656727>,  <26.939543, 28.645304, 23.450222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817623, 28.654854, 23.656727>,  <26.614424, 28.670771, 24.000902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817623, 28.654854, 23.656727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162543, 0.976557, -0.141124,
		0.845883, 0.211550, 0.489621,
		0.507998, -0.039790, -0.860439,
		26.970022, 28.642918, 23.398596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064486, 29.188795, 24.025717>,  <26.614424, 28.670771, 24.000902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064486, 29.188795, 24.025717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015610, 29.102673, 23.638168>,  <26.986284, 29.050999, 23.405640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015610, 29.102673, 23.638168>,  <27.064486, 29.188795, 24.025717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015610, 29.102673, 23.638168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219330, 0.957910, -0.185208,
		0.967969, 0.189873, -0.164267,
		-0.122187, -0.215304, -0.968873,
		26.978954, 29.038082, 23.347507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372618, 29.861288, 23.653734>,  <27.064486, 29.188795, 24.025717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372618, 29.861288, 23.653734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185469, 29.676655, 23.352261>,  <27.073179, 29.565874, 23.171377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185469, 29.676655, 23.352261>,  <27.372618, 29.861288, 23.653734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185469, 29.676655, 23.352261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029113, 0.860364, -0.508848,
		0.883317, -0.216133, -0.415977,
		-0.467870, -0.461585, -0.753682,
		27.045107, 29.538179, 23.126156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676321, 30.035812, 23.005564>,  <27.372618, 29.861288, 23.653734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676321, 30.035812, 23.005564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304060, 29.923252, 22.912010>,  <27.080704, 29.855717, 22.855879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304060, 29.923252, 22.912010>,  <27.676321, 30.035812, 23.005564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304060, 29.923252, 22.912010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055652, 0.740608, -0.669629,
		0.361651, -0.610175, -0.704908,
		-0.930651, -0.281401, -0.233884,
		27.024864, 29.838831, 22.841845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647528, 29.966911, 22.293871>,  <27.676321, 30.035812, 23.005564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647528, 29.966911, 22.293871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270092, 30.025288, 22.412762>,  <27.043631, 30.060314, 22.484097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270092, 30.025288, 22.412762>,  <27.647528, 29.966911, 22.293871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270092, 30.025288, 22.412762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123193, 0.678469, -0.724226,
		-0.307353, -0.719987, -0.622216,
		-0.943588, 0.145940, 0.297227,
		26.987015, 30.069069, 22.501930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246439, 30.069950, 21.690138>,  <27.647528, 29.966911, 22.293871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246439, 30.069950, 21.690138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016897, 30.208153, 21.987141>,  <26.879171, 30.291075, 22.165342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016897, 30.208153, 21.987141>,  <27.246439, 30.069950, 21.690138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016897, 30.208153, 21.987141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362118, 0.706151, -0.608458,
		-0.734548, -0.618041, -0.280113,
		-0.573855, 0.345508, 0.742506,
		26.844740, 30.311806, 22.209892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486942, 30.160076, 21.421963>,  <27.246439, 30.069950, 21.690138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486942, 30.160076, 21.421963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506998, 30.389107, 21.749290>,  <26.519032, 30.526525, 21.945686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506998, 30.389107, 21.749290>,  <26.486942, 30.160076, 21.421963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506998, 30.389107, 21.749290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425167, 0.753634, -0.501267,
		-0.903725, -0.322789, 0.281226,
		0.050138, 0.572576, 0.818317,
		26.522039, 30.560879, 21.994785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915949, 30.417585, 21.478508>,  <26.486942, 30.160076, 21.421963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915949, 30.417585, 21.478508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148983, 30.660480, 21.694603>,  <26.288803, 30.806217, 21.824259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148983, 30.660480, 21.694603>,  <25.915949, 30.417585, 21.478508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148983, 30.660480, 21.694603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285965, 0.775329, -0.563106,
		-0.760801, 0.173569, 0.625345,
		0.582586, 0.607239, 0.540236,
		26.323759, 30.842651, 21.856674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588692, 31.115715, 21.557480>,  <25.915949, 30.417585, 21.478508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588692, 31.115715, 21.557480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970266, 31.195415, 21.647190>,  <26.199211, 31.243237, 21.701017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970266, 31.195415, 21.647190>,  <25.588692, 31.115715, 21.557480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970266, 31.195415, 21.647190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078142, 0.886808, -0.455483,
		-0.289646, 0.416977, 0.861531,
		0.953939, 0.199251, 0.224277,
		26.256449, 31.255190, 21.714474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719393, 31.682789, 21.923203>,  <25.588692, 31.115715, 21.557480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719393, 31.682789, 21.923203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096985, 31.675259, 21.791416>,  <26.323540, 31.670740, 21.712345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.096985, 31.675259, 21.791416>,  <25.719393, 31.682789, 21.923203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096985, 31.675259, 21.791416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081885, 0.953785, -0.289117,
		0.319682, 0.299899, 0.898813,
		0.943980, -0.018826, -0.329465,
		26.380178, 31.669611, 21.692577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093246, 32.357357, 22.121243>,  <25.719393, 31.682789, 21.923203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093246, 32.357357, 22.121243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206533, 32.188087, 21.776985>,  <26.274506, 32.086525, 21.570431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206533, 32.188087, 21.776985>,  <26.093246, 32.357357, 22.121243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206533, 32.188087, 21.776985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143276, 0.868648, -0.474260,
		0.948293, 0.257629, 0.185385,
		0.283218, -0.423176, -0.860645,
		26.291498, 32.061134, 21.518791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501408, 32.468281, 22.587400>,  <26.093246, 32.357357, 22.121243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501408, 32.468281, 22.587400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216133, 32.623592, 22.820847>,  <25.044970, 32.716778, 22.960915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216133, 32.623592, 22.820847>,  <25.501408, 32.468281, 22.587400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216133, 32.623592, 22.820847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459298, -0.370111, 0.807504,
		0.529540, 0.843953, 0.085621,
		-0.713185, 0.388280, 0.583615,
		25.002178, 32.740078, 22.995932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870201, 32.828094, 23.183016>,  <25.501408, 32.468281, 22.587400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870201, 32.828094, 23.183016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504662, 32.694729, 23.275723>,  <25.285337, 32.614712, 23.331347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504662, 32.694729, 23.275723>,  <25.870201, 32.828094, 23.183016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504662, 32.694729, 23.275723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374383, -0.470856, 0.798832,
		-0.157212, 0.816781, 0.555115,
		-0.913850, -0.333412, 0.231765,
		25.230507, 32.594704, 23.345253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752937, 33.023445, 23.861540>,  <25.870201, 32.828094, 23.183016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752937, 33.023445, 23.861540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512079, 32.711536, 23.792988>,  <25.367565, 32.524391, 23.751858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.512079, 32.711536, 23.792988>,  <25.752937, 33.023445, 23.861540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512079, 32.711536, 23.792988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271446, -0.401822, 0.874561,
		-0.750824, 0.480093, 0.453623,
		-0.602146, -0.779776, -0.171378,
		25.331436, 32.477604, 23.741575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469742, 32.880142, 24.492426>,  <25.752937, 33.023445, 23.861540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469742, 32.880142, 24.492426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383202, 32.527924, 24.323746>,  <25.331278, 32.316593, 24.222538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383202, 32.527924, 24.323746>,  <25.469742, 32.880142, 24.492426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383202, 32.527924, 24.323746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286278, -0.470159, 0.834863,
		-0.933401, 0.059899, 0.353800,
		-0.216350, -0.880547, -0.421699,
		25.318296, 32.263760, 24.197237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990372, 32.558426, 24.878815>,  <25.469742, 32.880142, 24.492426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990372, 32.558426, 24.878815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185801, 32.279148, 24.669502>,  <25.303057, 32.111580, 24.543915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185801, 32.279148, 24.669502>,  <24.990372, 32.558426, 24.878815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185801, 32.279148, 24.669502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188462, -0.501132, 0.844600,
		-0.851927, -0.511266, -0.113256,
		0.488571, -0.698194, -0.523282,
		25.332373, 32.069691, 24.512518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.938063, 31.964952, 25.338427>,  <24.990372, 32.558426, 24.878815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.938063, 31.964952, 25.338427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226452, 31.865601, 25.079659>,  <25.399487, 31.805990, 24.924398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226452, 31.865601, 25.079659>,  <24.938063, 31.964952, 25.338427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.226452, 31.865601, 25.079659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516652, -0.429477, 0.740689,
		-0.461812, -0.868248, -0.181313,
		0.720972, -0.248383, -0.646920,
		25.442743, 31.791086, 24.885582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016119, 31.306067, 25.404165>,  <24.938063, 31.964952, 25.338427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016119, 31.306067, 25.404165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351971, 31.415146, 25.216267>,  <25.553482, 31.480593, 25.103527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351971, 31.415146, 25.216267>,  <25.016119, 31.306067, 25.404165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351971, 31.415146, 25.216267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532467, -0.584023, 0.612696,
		-0.107264, -0.764561, -0.635563,
		0.839627, 0.272696, -0.469748,
		25.603859, 31.496954, 25.075342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243645, 30.744452, 25.220467>,  <25.016119, 31.306067, 25.404165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243645, 30.744452, 25.220467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548880, 31.002571, 25.234848>,  <25.732019, 31.157442, 25.243477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548880, 31.002571, 25.234848>,  <25.243645, 30.744452, 25.220467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548880, 31.002571, 25.234848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560041, -0.687984, 0.461553,
		0.322575, -0.332068, -0.886384,
		0.763085, 0.645297, 0.035955,
		25.777805, 31.196159, 25.245634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738657, 30.457497, 24.788527>,  <25.243645, 30.744452, 25.220467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738657, 30.457497, 24.788527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900976, 30.698650, 25.063293>,  <25.998367, 30.843344, 25.228153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900976, 30.698650, 25.063293>,  <25.738657, 30.457497, 24.788527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900976, 30.698650, 25.063293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572572, -0.753511, 0.323082,
		0.712381, 0.262203, -0.650970,
		0.405800, 0.602886, 0.686917,
		26.022717, 30.879517, 25.269369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309048, 30.131094, 24.781410>,  <25.738657, 30.457497, 24.788527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309048, 30.131094, 24.781410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346842, 30.372833, 25.097851>,  <26.369518, 30.517876, 25.287714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346842, 30.372833, 25.097851>,  <26.309048, 30.131094, 24.781410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346842, 30.372833, 25.097851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498263, -0.716668, 0.487976,
		0.861862, 0.348070, -0.368837,
		0.094484, 0.604346, 0.791100,
		26.375187, 30.554136, 25.335180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029839, 30.094595, 25.034388>,  <26.309048, 30.131094, 24.781410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029839, 30.094595, 25.034388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841564, 30.248516, 25.351974>,  <26.728600, 30.340868, 25.542526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841564, 30.248516, 25.351974>,  <27.029839, 30.094595, 25.034388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841564, 30.248516, 25.351974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471603, -0.650815, 0.595004,
		0.745685, 0.654497, 0.124855,
		-0.470686, 0.384803, 0.793966,
		26.700359, 30.363956, 25.590164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512449, 30.300203, 25.688559>,  <27.029839, 30.094595, 25.034388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512449, 30.300203, 25.688559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145214, 30.234520, 25.832863>,  <26.924873, 30.195110, 25.919445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145214, 30.234520, 25.832863>,  <27.512449, 30.300203, 25.688559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145214, 30.234520, 25.832863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376429, -0.646282, 0.663792,
		0.124152, 0.745221, 0.655158,
		-0.918089, -0.164209, 0.360760,
		26.869787, 30.185257, 25.941092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622269, 30.192160, 26.369976>,  <27.512449, 30.300203, 25.688559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622269, 30.192160, 26.369976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266068, 30.025005, 26.298004>,  <27.052347, 29.924713, 26.254822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266068, 30.025005, 26.298004>,  <27.622269, 30.192160, 26.369976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266068, 30.025005, 26.298004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230888, -0.755828, 0.612710,
		-0.392040, 0.504077, 0.769552,
		-0.890503, -0.417887, -0.179930,
		26.998917, 29.899639, 26.244024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532089, 29.783009, 26.957663>,  <27.622269, 30.192160, 26.369976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532089, 29.783009, 26.957663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265760, 29.653805, 26.688637>,  <27.105963, 29.576283, 26.527222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265760, 29.653805, 26.688637>,  <27.532089, 29.783009, 26.957663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265760, 29.653805, 26.688637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041807, -0.883862, 0.465875,
		-0.744936, 0.338309, 0.574993,
		-0.665824, -0.323008, -0.672565,
		27.066013, 29.556902, 26.486868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963791, 30.202314, 27.409126>,  <27.532089, 29.783009, 26.957663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963791, 30.202314, 27.409126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140087, 30.304581, 27.753307>,  <27.245865, 30.365940, 27.959816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140087, 30.304581, 27.753307>,  <26.963791, 30.202314, 27.409126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140087, 30.304581, 27.753307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435717, 0.777141, -0.454095,
		-0.784792, 0.575053, 0.231120,
		0.440741, 0.255668, 0.860454,
		27.272310, 30.381281, 28.011444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702576, 30.852758, 27.579508>,  <26.963791, 30.202314, 27.409126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702576, 30.852758, 27.579508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045586, 30.811340, 27.781075>,  <27.251390, 30.786489, 27.902016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045586, 30.811340, 27.781075>,  <26.702576, 30.852758, 27.579508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045586, 30.811340, 27.781075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326143, 0.866954, -0.376857,
		-0.397852, 0.487512, 0.777204,
		0.857523, -0.103546, 0.503918,
		27.302843, 30.780277, 27.932249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851376, 31.550762, 27.629923>,  <26.702576, 30.852758, 27.579508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851376, 31.550762, 27.629923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190678, 31.364632, 27.731064>,  <27.394258, 31.252953, 27.791748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190678, 31.364632, 27.731064>,  <26.851376, 31.550762, 27.629923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190678, 31.364632, 27.731064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529559, 0.750367, -0.395621,
		-0.005639, 0.469488, 0.882921,
		0.848254, -0.465328, 0.252853,
		27.445154, 31.225033, 27.806919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263746, 32.015221, 27.952700>,  <26.851376, 31.550762, 27.629923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263746, 32.015221, 27.952700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521454, 31.729591, 27.843147>,  <27.676079, 31.558212, 27.777416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521454, 31.729591, 27.843147>,  <27.263746, 32.015221, 27.952700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521454, 31.729591, 27.843147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545620, 0.680092, -0.489667,
		0.535923, 0.166043, 0.827778,
		0.644271, -0.714076, -0.273880,
		27.714735, 31.515369, 27.760983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890974, 32.155537, 28.301716>,  <27.263746, 32.015221, 27.952700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890974, 32.155537, 28.301716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948107, 31.935200, 27.972797>,  <27.982386, 31.802998, 27.775446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948107, 31.935200, 27.972797>,  <27.890974, 32.155537, 28.301716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948107, 31.935200, 27.972797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673024, 0.663222, -0.327377,
		0.725698, -0.506665, 0.465460,
		0.142833, -0.550843, -0.822296,
		27.990957, 31.769947, 27.726109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721161, 32.059418, 28.217836>,  <27.890974, 32.155537, 28.301716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721161, 32.059418, 28.217836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561310, 31.994507, 27.856956>,  <28.465399, 31.955561, 27.640429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561310, 31.994507, 27.856956>,  <28.721161, 32.059418, 28.217836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561310, 31.994507, 27.856956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652367, 0.641077, -0.404273,
		0.643991, -0.750121, -0.150311,
		-0.399615, -0.162290, -0.902202,
		28.441422, 31.945824, 27.586296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260231, 31.982090, 27.657421>,  <28.721161, 32.059418, 28.217836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260231, 31.982090, 27.657421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919020, 32.080650, 27.473408>,  <28.714293, 32.139786, 27.362999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919020, 32.080650, 27.473408>,  <29.260231, 31.982090, 27.657421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919020, 32.080650, 27.473408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485554, 0.697812, -0.526589,
		0.191266, -0.672566, -0.714893,
		-0.853027, 0.246401, -0.460035,
		28.663113, 32.154572, 27.335398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388840, 32.056999, 27.012758>,  <29.260231, 31.982090, 27.657421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388840, 32.056999, 27.012758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037834, 32.247753, 27.032967>,  <28.827230, 32.362206, 27.045092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037834, 32.247753, 27.032967>,  <29.388840, 32.056999, 27.012758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037834, 32.247753, 27.032967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349426, 0.707995, -0.613714,
		-0.328439, -0.520888, -0.787910,
		-0.877513, 0.476884, 0.050521,
		28.774580, 32.390820, 27.048122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331640, 32.362453, 26.352818>,  <29.388840, 32.056999, 27.012758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331640, 32.362453, 26.352818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045044, 32.561882, 26.547985>,  <28.873087, 32.681538, 26.665087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045044, 32.561882, 26.547985>,  <29.331640, 32.362453, 26.352818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045044, 32.561882, 26.547985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230949, 0.829518, -0.508490,
		-0.658258, -0.251644, -0.709487,
		-0.716491, 0.498573, 0.487921,
		28.830097, 32.711452, 26.694361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106476, 32.839760, 25.854736>,  <29.331640, 32.362453, 26.352818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106476, 32.839760, 25.854736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980112, 32.977100, 26.208530>,  <28.904295, 33.059505, 26.420807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980112, 32.977100, 26.208530>,  <29.106476, 32.839760, 25.854736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980112, 32.977100, 26.208530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124514, 0.939163, -0.320107,
		-0.940584, 0.009006, -0.339442,
		-0.315908, 0.343353, 0.884483,
		28.885340, 33.080105, 26.473875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611319, 33.338654, 25.777834>,  <29.106476, 32.839760, 25.854736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611319, 33.338654, 25.777834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776255, 33.427048, 26.131363>,  <28.875216, 33.480083, 26.343481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776255, 33.427048, 26.131363>,  <28.611319, 33.338654, 25.777834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776255, 33.427048, 26.131363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287288, 0.889097, -0.356332,
		-0.864547, 0.400842, 0.303124,
		0.412340, 0.220982, 0.883823,
		28.899956, 33.493343, 26.396509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368629, 33.983177, 25.957127>,  <28.611319, 33.338654, 25.777834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368629, 33.983177, 25.957127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694166, 33.958366, 26.188232>,  <28.889488, 33.943481, 26.326897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694166, 33.958366, 26.188232>,  <28.368629, 33.983177, 25.957127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694166, 33.958366, 26.188232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278733, 0.914102, -0.294493,
		-0.509869, 0.400713, 0.761224,
		0.813843, -0.062025, 0.577765,
		28.938320, 33.939758, 26.361561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.967102, 27.445610, 29.912565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.330286, 27.586788, 30.002934>,  <26.548197, 27.671495, 30.057154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.330286, 27.586788, 30.002934>,  <25.967102, 27.445610, 29.912565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330286, 27.586788, 30.002934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264164, 0.900567, -0.345250,
		-0.325310, 0.253793, 0.910913,
		0.907960, 0.352943, 0.225921,
		26.602674, 27.692671, 30.070709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812616, 28.086828, 30.157333>,  <25.967102, 27.445610, 29.912565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812616, 28.086828, 30.157333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.200951, 28.084373, 30.061462>,  <26.433950, 28.082901, 30.003941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.200951, 28.084373, 30.061462>,  <25.812616, 28.086828, 30.157333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200951, 28.084373, 30.061462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074823, 0.941990, -0.327194,
		0.227781, 0.335584, 0.914057,
		0.970834, -0.006136, -0.239677,
		26.492201, 28.082533, 29.989559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.145639, 28.693060, 30.480087>,  <25.812616, 28.086828, 30.157333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.145639, 28.693060, 30.480087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.370888, 28.607262, 30.160866>,  <26.506037, 28.555782, 29.969334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.370888, 28.607262, 30.160866>,  <26.145639, 28.693060, 30.480087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370888, 28.607262, 30.160866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044906, 0.972242, -0.229628,
		0.825154, 0.093471, 0.557121,
		0.563120, -0.214496, -0.798052,
		26.539824, 28.542913, 29.921450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615452, 29.234507, 30.408388>,  <26.145639, 28.693060, 30.480087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615452, 29.234507, 30.408388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.652798, 29.060158, 30.050327>,  <26.675205, 28.955547, 29.835491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.652798, 29.060158, 30.050327>,  <26.615452, 29.234507, 30.408388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652798, 29.060158, 30.050327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066117, 0.899809, -0.431246,
		0.993434, -0.018922, 0.112827,
		0.093363, -0.435874, -0.895152,
		26.680807, 28.929396, 29.781782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218575, 29.438936, 30.113850>,  <26.615452, 29.234507, 30.408388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218575, 29.438936, 30.113850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.010048, 29.318825, 29.794334>,  <26.884932, 29.246758, 29.602625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.010048, 29.318825, 29.794334>,  <27.218575, 29.438936, 30.113850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010048, 29.318825, 29.794334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182852, 0.875001, -0.448262,
		0.833543, -0.379747, -0.401247,
		-0.521317, -0.300276, -0.798788,
		26.853653, 29.228743, 29.554697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562544, 29.736588, 29.667467>,  <27.218575, 29.438936, 30.113850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562544, 29.736588, 29.667467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.256603, 29.606991, 29.444744>,  <27.073040, 29.529232, 29.311111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.256603, 29.606991, 29.444744>,  <27.562544, 29.736588, 29.667467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256603, 29.606991, 29.444744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190308, 0.712115, -0.675778,
		0.615457, -0.622833, -0.483002,
		-0.764850, -0.323993, -0.556806,
		27.027147, 29.509792, 29.277702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834707, 29.580414, 29.081940>,  <27.562544, 29.736588, 29.667467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834707, 29.580414, 29.081940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.451040, 29.671322, 29.014595>,  <27.220840, 29.725866, 28.974188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.451040, 29.671322, 29.014595>,  <27.834707, 29.580414, 29.081940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451040, 29.671322, 29.014595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273631, 0.595012, -0.755703,
		-0.071570, -0.770915, -0.632904,
		-0.959168, 0.227268, -0.168361,
		27.163290, 29.739502, 28.964087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716379, 29.410805, 28.347006>,  <27.834707, 29.580414, 29.081940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716379, 29.410805, 28.347006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.462021, 29.675503, 28.505867>,  <27.309406, 29.834322, 28.601183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.462021, 29.675503, 28.505867>,  <27.716379, 29.410805, 28.347006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462021, 29.675503, 28.505867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087692, 0.573215, -0.814699,
		-0.766777, -0.483236, -0.422535,
		-0.635896, 0.661745, 0.397152,
		27.271252, 29.874027, 28.625013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460258, 29.708471, 27.719702>,  <27.716379, 29.410805, 28.347006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460258, 29.708471, 27.719702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.349846, 29.935894, 28.029682>,  <27.283598, 30.072348, 28.215672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.349846, 29.935894, 28.029682>,  <27.460258, 29.708471, 27.719702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349846, 29.935894, 28.029682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053838, 0.814158, -0.578142,
		-0.959639, -0.117865, -0.255344,
		-0.276033, 0.568555, 0.774952,
		27.267036, 30.106461, 28.262167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991520, 29.406086, 27.266321>,  <27.460258, 29.708471, 27.719702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991520, 29.406086, 27.266321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.936901, 29.276253, 26.891941>,  <26.904129, 29.198353, 26.667313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.936901, 29.276253, 26.891941>,  <26.991520, 29.406086, 27.266321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.936901, 29.276253, 26.891941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025433, -0.945636, 0.324231,
		-0.990307, 0.020469, 0.137379,
		-0.136547, -0.324582, -0.935950,
		26.895937, 29.178879, 26.611156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498114, 28.844925, 27.244457>,  <26.991520, 29.406086, 27.266321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498114, 28.844925, 27.244457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.724545, 28.782192, 26.920738>,  <26.860403, 28.744553, 26.726507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.724545, 28.782192, 26.920738>,  <26.498114, 28.844925, 27.244457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724545, 28.782192, 26.920738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073399, -0.968248, 0.238975,
		-0.821077, -0.194680, -0.536593,
		0.566079, -0.156831, -0.809295,
		26.894367, 28.735144, 26.677950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262415, 28.164389, 26.997631>,  <26.498114, 28.844925, 27.244457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262415, 28.164389, 26.997631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.620190, 28.223759, 26.828892>,  <26.834854, 28.259380, 26.727648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.620190, 28.223759, 26.828892>,  <26.262415, 28.164389, 26.997631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620190, 28.223759, 26.828892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211756, -0.971427, 0.107189,
		-0.393885, -0.185202, -0.900308,
		0.894435, 0.148426, -0.421848,
		26.888519, 28.268286, 26.702337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338087, 27.512730, 26.594904>,  <26.262415, 28.164389, 26.997631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338087, 27.512730, 26.594904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.693970, 27.682480, 26.662224>,  <26.907499, 27.784330, 26.702616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.693970, 27.682480, 26.662224>,  <26.338087, 27.512730, 26.594904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693970, 27.682480, 26.662224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380583, -0.893067, 0.239973,
		0.252143, -0.149453, -0.956079,
		0.889708, 0.424376, 0.168301,
		26.960882, 27.809792, 26.712713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810246, 27.124901, 26.280388>,  <26.338087, 27.512730, 26.594904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810246, 27.124901, 26.280388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.051718, 27.319725, 26.532845>,  <27.196602, 27.436621, 26.684319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.051718, 27.319725, 26.532845>,  <26.810246, 27.124901, 26.280388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051718, 27.319725, 26.532845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492343, -0.850433, 0.185371,
		0.627030, 0.198833, -0.753192,
		0.603682, 0.487062, 0.631141,
		27.232822, 27.465843, 26.722187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420460, 26.830256, 26.074986>,  <26.810246, 27.124901, 26.280388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420460, 26.830256, 26.074986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.471710, 26.988098, 26.438934>,  <27.502460, 27.082804, 26.657305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.471710, 26.988098, 26.438934>,  <27.420460, 26.830256, 26.074986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471710, 26.988098, 26.438934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456256, -0.838038, 0.299203,
		0.880576, 0.376799, -0.287418,
		0.128128, 0.394607, 0.909873,
		27.510149, 27.106480, 26.711897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100233, 26.659060, 26.249237>,  <27.420460, 26.830256, 26.074986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100233, 26.659060, 26.249237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.903107, 26.742229, 26.587208>,  <27.784830, 26.792131, 26.789989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.903107, 26.742229, 26.587208>,  <28.100233, 26.659060, 26.249237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903107, 26.742229, 26.587208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312797, -0.863786, 0.395008,
		0.811967, 0.458956, 0.360650,
		-0.492816, 0.207924, 0.844926,
		27.755262, 26.804607, 26.840685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576309, 26.502010, 26.870214>,  <28.100233, 26.659060, 26.249237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576309, 26.502010, 26.870214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.208471, 26.483555, 27.026272>,  <27.987768, 26.472481, 27.119907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.208471, 26.483555, 27.026272>,  <28.576309, 26.502010, 26.870214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208471, 26.483555, 27.026272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241068, -0.850411, 0.467641,
		0.310206, 0.524092, 0.793158,
		-0.919597, -0.046140, 0.390144,
		27.932592, 26.469713, 27.143314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679697, 26.210503, 27.515076>,  <28.576309, 26.502010, 26.870214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679697, 26.210503, 27.515076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.281727, 26.193897, 27.478424>,  <28.042944, 26.183935, 27.456434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.281727, 26.193897, 27.478424>,  <28.679697, 26.210503, 27.515076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281727, 26.193897, 27.478424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021806, -0.800218, 0.599312,
		-0.098201, 0.598270, 0.795254,
		-0.994928, -0.041511, -0.091628,
		27.983248, 26.181444, 27.450935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357683, 26.269918, 28.234821>,  <28.679697, 26.210503, 27.515076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357683, 26.269918, 28.234821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.132059, 26.077137, 27.966625>,  <27.996685, 25.961468, 27.805708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.132059, 26.077137, 27.966625>,  <28.357683, 26.269918, 28.234821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132059, 26.077137, 27.966625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087660, -0.772452, 0.628994,
		-0.821068, 0.413565, 0.393461,
		-0.564060, -0.481955, -0.670489,
		27.962841, 25.932550, 27.765478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980549, 25.899431, 28.642406>,  <28.357683, 26.269918, 28.234821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980549, 25.899431, 28.642406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.902075, 25.730583, 28.288383>,  <27.854990, 25.629274, 28.075970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.902075, 25.730583, 28.288383>,  <27.980549, 25.899431, 28.642406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902075, 25.730583, 28.288383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013869, -0.901313, 0.432945,
		-0.980468, 0.097214, 0.170972,
		-0.196188, -0.422118, -0.885058,
		27.843218, 25.603949, 28.022865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365036, 25.401150, 28.750507>,  <27.980549, 25.899431, 28.642406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365036, 25.401150, 28.750507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.565199, 25.268070, 28.430782>,  <27.685297, 25.188223, 28.238947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.565199, 25.268070, 28.430782>,  <27.365036, 25.401150, 28.750507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565199, 25.268070, 28.430782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115193, -0.940596, 0.319389,
		-0.858092, -0.067750, -0.509007,
		0.500409, -0.332699, -0.799314,
		27.715322, 25.168261, 28.190989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039532, 24.803953, 28.699261>,  <27.365036, 25.401150, 28.750507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039532, 24.803953, 28.699261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.366751, 24.768925, 28.471882>,  <27.563082, 24.747908, 28.335455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.366751, 24.768925, 28.471882>,  <27.039532, 24.803953, 28.699261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366751, 24.768925, 28.471882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103660, -0.949709, 0.295479,
		-0.565735, -0.300641, -0.767828,
		0.818045, -0.087570, -0.568448,
		27.612164, 24.742653, 28.301348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909939, 24.255428, 28.232378>,  <27.039532, 24.803953, 28.699261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909939, 24.255428, 28.232378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.303186, 24.309544, 28.281651>,  <27.539135, 24.342012, 28.311214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.303186, 24.309544, 28.281651>,  <26.909939, 24.255428, 28.232378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303186, 24.309544, 28.281651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100953, -0.962582, 0.251486,
		0.152593, -0.234805, -0.959991,
		0.983119, 0.135289, 0.123179,
		27.598122, 24.350130, 28.318604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.173698, 26.569889, 30.465776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827116, 26.401855, 30.357861>,  <31.619167, 26.301035, 30.293112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827116, 26.401855, 30.357861>,  <32.173698, 26.569889, 30.465776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827116, 26.401855, 30.357861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014775, 0.561721, -0.827195,
		0.499035, -0.712742, -0.492912,
		-0.866456, -0.420082, -0.269788,
		31.567179, 26.275831, 30.276924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274376, 26.441149, 29.804440>,  <32.173698, 26.569889, 30.465776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274376, 26.441149, 29.804440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.876902, 26.419121, 29.843525>,  <31.638416, 26.405905, 29.866976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.876902, 26.419121, 29.843525>,  <32.274376, 26.441149, 29.804440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876902, 26.419121, 29.843525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112141, 0.470833, -0.875066,
		0.002181, -0.880502, -0.474037,
		-0.993690, -0.055068, 0.097714,
		31.578794, 26.402601, 29.872839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990997, 26.181349, 29.123861>,  <32.274376, 26.441149, 29.804440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990997, 26.181349, 29.123861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682194, 26.356407, 29.308239>,  <31.496912, 26.461443, 29.418865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.682194, 26.356407, 29.308239>,  <31.990997, 26.181349, 29.123861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682194, 26.356407, 29.308239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283415, 0.412094, -0.865942,
		-0.568929, -0.799152, -0.194103,
		-0.772007, 0.437648, 0.460944,
		31.450592, 26.487701, 29.446522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390112, 26.125343, 28.692188>,  <31.990997, 26.181349, 29.123861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390112, 26.125343, 28.692188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312979, 26.425579, 28.944992>,  <31.266699, 26.605721, 29.096674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.312979, 26.425579, 28.944992>,  <31.390112, 26.125343, 28.692188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312979, 26.425579, 28.944992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465299, 0.497126, -0.732367,
		-0.863894, -0.435296, 0.253386,
		-0.192831, 0.750588, 0.632007,
		31.255129, 26.650755, 29.134594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755407, 26.322821, 28.419697>,  <31.390112, 26.125343, 28.692188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755407, 26.322821, 28.419697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910479, 26.615551, 28.643890>,  <31.003521, 26.791189, 28.778406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.910479, 26.615551, 28.643890>,  <30.755407, 26.322821, 28.419697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910479, 26.615551, 28.643890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441083, 0.681179, -0.584329,
		-0.809415, -0.020688, 0.586873,
		0.387677, 0.731824, 0.560482,
		31.026781, 26.835098, 28.812035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230591, 26.866562, 28.308050>,  <30.755407, 26.322821, 28.419697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230591, 26.866562, 28.308050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.532957, 27.048168, 28.496716>,  <30.714376, 27.157131, 28.609915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.532957, 27.048168, 28.496716>,  <30.230591, 26.866562, 28.308050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532957, 27.048168, 28.496716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236932, 0.861343, -0.449391,
		-0.610293, 0.227949, 0.758671,
		0.755914, 0.454014, 0.471663,
		30.759731, 27.184372, 28.638214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002033, 27.507198, 28.602551>,  <30.230591, 26.866562, 28.308050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002033, 27.507198, 28.602551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396082, 27.544724, 28.544952>,  <30.632511, 27.567238, 28.510393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.396082, 27.544724, 28.544952>,  <30.002033, 27.507198, 28.602551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396082, 27.544724, 28.544952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149112, 0.883141, -0.444777,
		0.085441, 0.459631, 0.883990,
		0.985122, 0.093812, -0.143993,
		30.691618, 27.572866, 28.501755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237474, 28.232195, 28.787483>,  <30.002033, 27.507198, 28.602551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237474, 28.232195, 28.787483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.547428, 28.081390, 28.584538>,  <30.733400, 27.990908, 28.462770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.547428, 28.081390, 28.584538>,  <30.237474, 28.232195, 28.787483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547428, 28.081390, 28.584538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062695, 0.844540, -0.531810,
		0.628987, 0.380282, 0.678057,
		0.774883, -0.377012, -0.507364,
		30.779894, 27.968287, 28.432329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600981, 28.731606, 28.810083>,  <30.237474, 28.232195, 28.787483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600981, 28.731606, 28.810083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.741253, 28.504539, 28.512150>,  <30.825417, 28.368299, 28.333389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.741253, 28.504539, 28.512150>,  <30.600981, 28.731606, 28.810083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741253, 28.504539, 28.512150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109474, 0.765043, -0.634607,
		0.930074, 0.304085, 0.206142,
		0.350681, -0.567664, -0.744836,
		30.846457, 28.334240, 28.288700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048264, 29.144474, 28.535213>,  <30.600981, 28.731606, 28.810083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048264, 29.144474, 28.535213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981434, 28.863041, 28.258938>,  <30.941336, 28.694181, 28.093172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.981434, 28.863041, 28.258938>,  <31.048264, 29.144474, 28.535213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981434, 28.863041, 28.258938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039712, 0.704772, -0.708322,
		0.985144, -0.090913, -0.145690,
		-0.167074, -0.703585, -0.690691,
		30.931313, 28.651966, 28.051731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580637, 29.202377, 28.034452>,  <31.048264, 29.144474, 28.535213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580637, 29.202377, 28.034452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.265881, 29.030396, 27.857391>,  <31.077026, 28.927206, 27.751154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.265881, 29.030396, 27.857391>,  <31.580637, 29.202377, 28.034452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265881, 29.030396, 27.857391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031096, 0.688780, -0.724303,
		0.616311, -0.583711, -0.528623,
		-0.786889, -0.429958, -0.442654,
		31.029814, 28.901409, 27.724596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677113, 29.190485, 27.323446>,  <31.580637, 29.202377, 28.034452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677113, 29.190485, 27.323446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.279112, 29.168770, 27.356968>,  <31.040312, 29.155741, 27.377081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.279112, 29.168770, 27.356968>,  <31.677113, 29.190485, 27.323446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279112, 29.168770, 27.356968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099545, 0.604760, -0.790162,
		-0.007785, -0.794555, -0.607142,
		-0.995003, -0.054287, 0.083802,
		30.980612, 29.152483, 27.382109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560287, 29.252388, 26.592215>,  <31.677113, 29.190485, 27.323446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560287, 29.252388, 26.592215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.218992, 29.314915, 26.791233>,  <31.014215, 29.352430, 26.910645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.218992, 29.314915, 26.791233>,  <31.560287, 29.252388, 26.592215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218992, 29.314915, 26.791233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223093, 0.752931, -0.619132,
		-0.471396, -0.639266, -0.607557,
		-0.853239, 0.156315, 0.497544,
		30.963020, 29.361809, 26.940496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999184, 29.286074, 26.101564>,  <31.560287, 29.252388, 26.592215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999184, 29.286074, 26.101564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881306, 29.496078, 26.420944>,  <30.810579, 29.622082, 26.612572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881306, 29.496078, 26.420944>,  <30.999184, 29.286074, 26.101564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881306, 29.496078, 26.420944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022575, 0.839145, -0.543439,
		-0.955325, -0.142124, -0.259143,
		-0.294694, 0.525011, 0.798448,
		30.792898, 29.653582, 26.660479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734306, 29.177401, 25.427147>,  <30.999184, 29.286074, 26.101564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734306, 29.177401, 25.427147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.711571, 29.056087, 25.046665>,  <30.697929, 28.983299, 24.818377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.711571, 29.056087, 25.046665>,  <30.734306, 29.177401, 25.427147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711571, 29.056087, 25.046665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401972, -0.879062, 0.256260,
		-0.913886, -0.367791, 0.171878,
		-0.056841, -0.303283, -0.951204,
		30.694519, 28.965103, 24.761305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216076, 28.701788, 25.458261>,  <30.734306, 29.177401, 25.427147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216076, 28.701788, 25.458261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.458838, 28.652592, 25.144180>,  <30.604494, 28.623074, 24.955732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.458838, 28.652592, 25.144180>,  <30.216076, 28.701788, 25.458261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458838, 28.652592, 25.144180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198736, -0.933084, 0.299763,
		-0.769527, -0.337975, -0.541850,
		0.606904, -0.122990, -0.785202,
		30.640909, 28.615694, 24.908619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202496, 27.973978, 25.227419>,  <30.216076, 28.701788, 25.458261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202496, 27.973978, 25.227419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552597, 28.094666, 25.076210>,  <30.762657, 28.167078, 24.985485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.552597, 28.094666, 25.076210>,  <30.202496, 27.973978, 25.227419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552597, 28.094666, 25.076210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411195, -0.875700, 0.253117,
		-0.254663, -0.376981, -0.890523,
		0.875252, 0.301719, -0.378021,
		30.815172, 28.185181, 24.962803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453712, 27.415493, 24.878479>,  <30.202496, 27.973978, 25.227419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453712, 27.415493, 24.878479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779306, 27.640121, 24.937897>,  <30.974663, 27.774899, 24.973547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779306, 27.640121, 24.937897>,  <30.453712, 27.415493, 24.878479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779306, 27.640121, 24.937897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529444, -0.822443, 0.208030,
		0.238993, -0.090687, -0.966778,
		0.813985, 0.561572, 0.148544,
		31.023502, 27.808594, 24.982460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956743, 27.070677, 24.669538>,  <30.453712, 27.415493, 24.878479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956743, 27.070677, 24.669538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.142597, 27.327087, 24.913898>,  <31.254110, 27.480934, 25.060514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.142597, 27.327087, 24.913898>,  <30.956743, 27.070677, 24.669538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142597, 27.327087, 24.913898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526698, -0.754648, 0.391275,
		0.711832, 0.139959, -0.688264,
		0.464635, 0.641029, 0.610899,
		31.281988, 27.519396, 25.097168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717474, 26.899078, 24.583696>,  <30.956743, 27.070677, 24.669538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717474, 26.899078, 24.583696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.635513, 27.086460, 24.927456>,  <31.586336, 27.198889, 25.133711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.635513, 27.086460, 24.927456>,  <31.717474, 26.899078, 24.583696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635513, 27.086460, 24.927456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430745, -0.745273, 0.508946,
		0.878905, 0.474466, -0.049076,
		-0.204903, 0.468454, 0.859398,
		31.574043, 27.226995, 25.185276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121727, 26.619440, 25.084923>,  <31.717474, 26.899078, 24.583696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121727, 26.619440, 25.084923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900885, 26.835148, 25.339283>,  <31.768379, 26.964573, 25.491899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900885, 26.835148, 25.339283>,  <32.121727, 26.619440, 25.084923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900885, 26.835148, 25.339283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193919, -0.658712, 0.726976,
		0.810911, 0.524680, 0.259104,
		-0.552105, 0.539267, 0.635902,
		31.735252, 26.996927, 25.530054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484619, 26.557402, 25.647738>,  <32.121727, 26.619440, 25.084923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484619, 26.557402, 25.647738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.113628, 26.661446, 25.755161>,  <31.891033, 26.723871, 25.819614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.113628, 26.661446, 25.755161>,  <32.484619, 26.557402, 25.647738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113628, 26.661446, 25.755161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091442, -0.538681, 0.837533,
		0.362517, 0.801353, 0.475831,
		-0.927480, 0.260109, 0.268558,
		31.835384, 26.739479, 25.835730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568359, 26.864401, 26.294008>,  <32.484619, 26.557402, 25.647738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568359, 26.864401, 26.294008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198704, 26.719959, 26.244087>,  <31.976912, 26.633295, 26.214134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.198704, 26.719959, 26.244087>,  <32.568359, 26.864401, 26.294008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198704, 26.719959, 26.244087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124603, -0.593656, 0.795014,
		-0.361171, 0.719151, 0.593614,
		-0.924137, -0.361102, -0.124802,
		31.921463, 26.611629, 26.206646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221851, 26.855734, 26.968367>,  <32.568359, 26.864401, 26.294008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221851, 26.855734, 26.968367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.017319, 26.608803, 26.729218>,  <31.894600, 26.460644, 26.585728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.017319, 26.608803, 26.729218>,  <32.221851, 26.855734, 26.968367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017319, 26.608803, 26.729218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162119, -0.613916, 0.772545,
		-0.843955, 0.491951, 0.213833,
		-0.511329, -0.617327, -0.597871,
		31.863920, 26.423605, 26.549856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510242, 26.688696, 27.282530>,  <32.221851, 26.855734, 26.968367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510242, 26.688696, 27.282530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654539, 26.392193, 27.056114>,  <31.741117, 26.214291, 26.920265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.654539, 26.392193, 27.056114>,  <31.510242, 26.688696, 27.282530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654539, 26.392193, 27.056114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096623, -0.633341, 0.767818,
		-0.927647, -0.222293, -0.300096,
		0.360744, -0.741260, -0.566038,
		31.762762, 26.169815, 26.886303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126770, 25.996513, 27.514101>,  <31.510242, 26.688696, 27.282530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126770, 25.996513, 27.514101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418539, 25.818134, 27.306614>,  <31.593601, 25.711107, 27.182121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418539, 25.818134, 27.306614>,  <31.126770, 25.996513, 27.514101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418539, 25.818134, 27.306614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048181, -0.722919, 0.689251,
		-0.682359, -0.527752, -0.505831,
		0.729428, -0.445945, -0.518718,
		31.637367, 25.684351, 27.150997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947142, 25.285997, 27.332655>,  <31.126770, 25.996513, 27.514101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947142, 25.285997, 27.332655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346806, 25.302341, 27.333660>,  <31.586605, 25.312147, 27.334263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.346806, 25.302341, 27.333660>,  <30.947142, 25.285997, 27.332655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346806, 25.302341, 27.333660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030718, -0.788928, 0.613718,
		0.027059, -0.613126, -0.789522,
		0.999162, 0.040859, 0.002513,
		31.646555, 25.314600, 27.334414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187098, 24.661955, 27.216494>,  <30.947142, 25.285997, 27.332655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187098, 24.661955, 27.216494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.488947, 24.840961, 27.408440>,  <31.670057, 24.948364, 27.523607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.488947, 24.840961, 27.408440>,  <31.187098, 24.661955, 27.216494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488947, 24.840961, 27.408440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188219, -0.848229, 0.495056,
		0.628582, -0.283261, -0.724325,
		0.754624, 0.447515, 0.479867,
		31.715334, 24.975216, 27.552401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224747, 24.033712, 26.722771>,  <31.187098, 24.661955, 27.216494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224747, 24.033712, 26.722771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859562, 23.872189, 26.699329>,  <30.640451, 23.775274, 26.685265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859562, 23.872189, 26.699329>,  <31.224747, 24.033712, 26.722771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859562, 23.872189, 26.699329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282517, 0.729185, -0.623277,
		0.294416, -0.552474, -0.779803,
		-0.912964, -0.403810, -0.058601,
		30.585672, 23.751045, 26.681749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055344, 23.916737, 25.962778>,  <31.224747, 24.033712, 26.722771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055344, 23.916737, 25.962778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.708546, 23.909264, 26.161964>,  <30.500467, 23.904779, 26.281475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.708546, 23.909264, 26.161964>,  <31.055344, 23.916737, 25.962778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708546, 23.909264, 26.161964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435180, 0.515219, -0.738355,
		-0.242766, -0.856855, -0.454823,
		-0.866997, -0.018683, 0.497963,
		30.448446, 23.903660, 26.311354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529224, 23.863060, 25.444641>,  <31.055344, 23.916737, 25.962778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529224, 23.863060, 25.444641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.314318, 23.990517, 25.757004>,  <30.185373, 24.066990, 25.944422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.314318, 23.990517, 25.757004>,  <30.529224, 23.863060, 25.444641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314318, 23.990517, 25.757004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651086, 0.431860, -0.624166,
		-0.536127, -0.843780, -0.024561,
		-0.537266, 0.318641, 0.780905,
		30.153137, 24.086109, 25.991276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886461, 23.655176, 25.320677>,  <30.529224, 23.863060, 25.444641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886461, 23.655176, 25.320677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.828362, 23.943180, 25.592113>,  <29.793503, 24.115982, 25.754976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.828362, 23.943180, 25.592113>,  <29.886461, 23.655176, 25.320677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828362, 23.943180, 25.592113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651762, 0.446391, -0.613141,
		-0.744385, -0.531339, 0.404438,
		-0.145248, 0.720010, 0.678593,
		29.784786, 24.159184, 25.795691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092665, 23.883112, 25.352596>,  <29.886461, 23.655176, 25.320677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092665, 23.883112, 25.352596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301573, 24.187614, 25.506332>,  <29.426918, 24.370316, 25.598574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.301573, 24.187614, 25.506332>,  <29.092665, 23.883112, 25.352596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301573, 24.187614, 25.506332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577029, 0.647315, -0.498016,
		-0.627909, 0.038324, 0.777343,
		0.522272, 0.761259, 0.384341,
		29.458254, 24.415993, 25.621635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563396, 24.390240, 25.465139>,  <29.092665, 23.883112, 25.352596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563396, 24.390240, 25.465139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.913294, 24.584045, 25.461761>,  <29.123232, 24.700329, 25.459736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.913294, 24.584045, 25.461761>,  <28.563396, 24.390240, 25.465139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913294, 24.584045, 25.461761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442809, 0.792121, -0.420077,
		-0.196846, 0.371197, 0.907449,
		0.874741, 0.484516, -0.008444,
		29.175716, 24.729401, 25.459229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357368, 25.050514, 25.665085>,  <28.563396, 24.390240, 25.465139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357368, 25.050514, 25.665085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.713438, 25.105274, 25.491257>,  <28.927080, 25.138130, 25.386959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.713438, 25.105274, 25.491257>,  <28.357368, 25.050514, 25.665085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713438, 25.105274, 25.491257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333266, 0.846027, -0.416139,
		0.310690, 0.515263, 0.798734,
		0.890172, 0.136900, -0.434571,
		28.980490, 25.146345, 25.360886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565319, 25.661131, 25.779400>,  <28.357368, 25.050514, 25.665085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565319, 25.661131, 25.779400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.764566, 25.588821, 25.440178>,  <28.884115, 25.545435, 25.236645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.764566, 25.588821, 25.440178>,  <28.565319, 25.661131, 25.779400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764566, 25.588821, 25.440178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366278, 0.842620, -0.394755,
		0.785950, 0.507259, 0.353512,
		0.498120, -0.180774, -0.848055,
		28.914001, 25.534590, 25.185760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873026, 26.261133, 25.574907>,  <28.565319, 25.661131, 25.779400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873026, 26.261133, 25.574907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.847256, 26.060631, 25.229748>,  <28.831793, 25.940329, 25.022652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.847256, 26.060631, 25.229748>,  <28.873026, 26.261133, 25.574907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847256, 26.060631, 25.229748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310125, 0.831935, -0.460116,
		0.948510, 0.237962, -0.209050,
		-0.064426, -0.501256, -0.862897,
		28.827929, 25.910254, 24.970879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073885, 26.697701, 24.997362>,  <28.873026, 26.261133, 25.574907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073885, 26.697701, 24.997362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.867287, 26.409706, 24.811954>,  <28.743328, 26.236910, 24.700710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.867287, 26.409706, 24.811954>,  <29.073885, 26.697701, 24.997362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867287, 26.409706, 24.811954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435007, 0.686878, -0.582209,
		0.737567, -0.099071, -0.667967,
		-0.516492, -0.719988, -0.463522,
		28.712339, 26.193710, 24.672897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278837, 26.837299, 24.318930>,  <29.073885, 26.697701, 24.997362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278837, 26.837299, 24.318930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.948662, 26.613075, 24.292316>,  <28.750557, 26.478540, 24.276348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.948662, 26.613075, 24.292316>,  <29.278837, 26.837299, 24.318930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948662, 26.613075, 24.292316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385236, 0.645540, -0.659447,
		0.412609, -0.518701, -0.748801,
		-0.825437, -0.560559, -0.066533,
		28.701031, 26.444908, 24.272356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121927, 26.866125, 23.530888>,  <29.278837, 26.837299, 24.318930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121927, 26.866125, 23.530888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.782978, 26.726082, 23.690578>,  <28.579609, 26.642056, 23.786392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.782978, 26.726082, 23.690578>,  <29.121927, 26.866125, 23.530888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782978, 26.726082, 23.690578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527238, 0.644061, -0.554260,
		-0.063076, -0.680153, -0.730351,
		-0.847373, -0.350108, 0.399227,
		28.528767, 26.621050, 23.810347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654106, 26.736809, 22.938499>,  <29.121927, 26.866125, 23.530888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654106, 26.736809, 22.938499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.430782, 26.788345, 23.266327>,  <28.296787, 26.819267, 23.463022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.430782, 26.788345, 23.266327>,  <28.654106, 26.736809, 22.938499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430782, 26.788345, 23.266327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629972, 0.576962, -0.519856,
		-0.539838, -0.806545, -0.240957,
		-0.558310, 0.128842, 0.819566,
		28.263288, 26.826998, 23.512197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009661, 26.763844, 22.735725>,  <28.654106, 26.736809, 22.938499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009661, 26.763844, 22.735725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.952917, 26.921795, 23.098812>,  <27.918871, 27.016565, 23.316664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.952917, 26.921795, 23.098812>,  <28.009661, 26.763844, 22.735725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952917, 26.921795, 23.098812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595860, 0.698184, -0.396850,
		-0.790460, -0.597168, 0.136249,
		-0.141859, 0.394880, 0.907715,
		27.910360, 27.040258, 23.371126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.160091, 28.517031, 29.934404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.492352, 28.334023, 30.061337>,  <37.691708, 28.224216, 30.137495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.492352, 28.334023, 30.061337>,  <37.160091, 28.517031, 29.934404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492352, 28.334023, 30.061337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546330, 0.559721, -0.623085,
		0.107460, 0.690930, 0.714890,
		0.830648, -0.457523, 0.317328,
		37.741547, 28.196766, 30.156534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696468, 29.040508, 30.039206>,  <37.160091, 28.517031, 29.934404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696468, 29.040508, 30.039206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.911388, 28.707329, 29.986286>,  <38.040340, 28.507421, 29.954535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.911388, 28.707329, 29.986286>,  <37.696468, 29.040508, 30.039206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911388, 28.707329, 29.986286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613388, 0.493598, -0.616536,
		0.578846, 0.250115, 0.776131,
		0.537302, -0.832949, -0.132300,
		38.072578, 28.457443, 29.946596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364670, 29.281006, 30.191683>,  <37.696468, 29.040508, 30.039206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364670, 29.281006, 30.191683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.401325, 28.938885, 29.987698>,  <38.423317, 28.733612, 29.865307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.401325, 28.938885, 29.987698>,  <38.364670, 29.281006, 30.191683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401325, 28.938885, 29.987698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793769, 0.371964, -0.481222,
		0.601277, -0.360694, 0.712998,
		0.091636, -0.855303, -0.509961,
		38.428818, 28.682293, 29.834709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058868, 29.212643, 30.105507>,  <38.364670, 29.281006, 30.191683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058868, 29.212643, 30.105507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883305, 28.977325, 29.833839>,  <38.777966, 28.836136, 29.670839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883305, 28.977325, 29.833839>,  <39.058868, 29.212643, 30.105507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883305, 28.977325, 29.833839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567448, 0.404583, -0.717158,
		0.696678, -0.700161, 0.156250,
		-0.438910, -0.588292, -0.679169,
		38.751633, 28.800838, 29.630089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584591, 28.959085, 29.758413>,  <39.058868, 29.212643, 30.105507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584591, 28.959085, 29.758413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270428, 28.911182, 29.515503>,  <39.081928, 28.882441, 29.369757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270428, 28.911182, 29.515503>,  <39.584591, 28.959085, 29.758413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270428, 28.911182, 29.515503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549397, 0.317043, -0.773076,
		0.285113, -0.940820, -0.183216,
		-0.785413, -0.119756, -0.607277,
		39.034805, 28.875256, 29.333321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839073, 28.631742, 29.150732>,  <39.584591, 28.959085, 29.758413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839073, 28.631742, 29.150732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.488686, 28.774250, 29.020657>,  <39.278454, 28.859755, 28.942612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.488686, 28.774250, 29.020657>,  <39.839073, 28.631742, 29.150732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488686, 28.774250, 29.020657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444958, 0.336504, -0.829926,
		-0.186251, -0.871686, -0.453293,
		-0.875970, 0.356271, -0.325190,
		39.225895, 28.881132, 28.923100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843586, 28.532480, 28.433043>,  <39.839073, 28.631742, 29.150732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843586, 28.532480, 28.433043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564949, 28.814919, 28.483929>,  <39.397766, 28.984383, 28.514460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.564949, 28.814919, 28.483929>,  <39.843586, 28.532480, 28.433043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564949, 28.814919, 28.483929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229227, 0.387052, -0.893110,
		-0.679861, -0.592974, -0.431475,
		-0.696594, 0.706097, 0.127216,
		39.355972, 29.026747, 28.522093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389030, 28.559916, 27.798370>,  <39.843586, 28.532480, 28.433043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389030, 28.559916, 27.798370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360313, 28.913010, 27.984112>,  <39.343082, 29.124866, 28.095556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.360313, 28.913010, 27.984112>,  <39.389030, 28.559916, 27.798370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360313, 28.913010, 27.984112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055309, 0.461313, -0.885512,
		-0.995885, -0.089256, 0.015704,
		-0.071793, 0.882736, 0.464351,
		39.338776, 29.177830, 28.123417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030586, 28.921993, 27.311600>,  <39.389030, 28.559916, 27.798370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030586, 28.921993, 27.311600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.150322, 29.209541, 27.562557>,  <39.222164, 29.382071, 27.713133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.150322, 29.209541, 27.562557>,  <39.030586, 28.921993, 27.311600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150322, 29.209541, 27.562557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089987, 0.633345, -0.768620,
		-0.949895, 0.286533, 0.124894,
		0.299336, 0.718869, 0.627395,
		39.240124, 29.425201, 27.750776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587132, 29.599592, 27.256763>,  <39.030586, 28.921993, 27.311600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587132, 29.599592, 27.256763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936863, 29.711735, 27.415230>,  <39.146702, 29.779020, 27.510309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936863, 29.711735, 27.415230>,  <38.587132, 29.599592, 27.256763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936863, 29.711735, 27.415230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059135, 0.748660, -0.660312,
		-0.481716, 0.600757, 0.637997,
		0.874330, 0.280355, 0.396167,
		39.199162, 29.795841, 27.534081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519909, 30.299623, 27.391912>,  <38.587132, 29.599592, 27.256763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519909, 30.299623, 27.391912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917816, 30.258808, 27.389637>,  <39.156559, 30.234320, 27.388271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.917816, 30.258808, 27.389637>,  <38.519909, 30.299623, 27.391912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917816, 30.258808, 27.389637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069245, 0.713897, -0.696819,
		0.075162, 0.692777, 0.717225,
		0.994764, -0.102038, -0.005687,
		39.216244, 30.228197, 27.387932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787834, 30.852667, 27.486275>,  <38.519909, 30.299623, 27.391912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787834, 30.852667, 27.486275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.106922, 30.680496, 27.317337>,  <39.298374, 30.577194, 27.215975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.106922, 30.680496, 27.317337>,  <38.787834, 30.852667, 27.486275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106922, 30.680496, 27.317337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141314, 0.814301, -0.562978,
		0.586236, 0.389416, 0.710410,
		0.797721, -0.430429, -0.422343,
		39.346237, 30.551367, 27.190634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358730, 31.280832, 27.384659>,  <38.787834, 30.852667, 27.486275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358730, 31.280832, 27.384659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473637, 31.006798, 27.116886>,  <39.542580, 30.842377, 26.956223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.473637, 31.006798, 27.116886>,  <39.358730, 31.280832, 27.384659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473637, 31.006798, 27.116886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024362, 0.703887, -0.709894,
		0.957542, 0.187617, 0.218890,
		0.287262, -0.685086, -0.669431,
		39.559814, 30.801271, 26.916058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642014, 31.641460, 26.944063>,  <39.358730, 31.280832, 27.384659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642014, 31.641460, 26.944063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644928, 31.310791, 26.719009>,  <39.646675, 31.112389, 26.583977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.644928, 31.310791, 26.719009>,  <39.642014, 31.641460, 26.944063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644928, 31.310791, 26.719009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064943, 0.561071, -0.825216,
		0.997862, 0.042551, -0.049599,
		0.007285, -0.826673, -0.562635,
		39.647114, 31.062790, 26.550219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194408, 31.664841, 26.446409>,  <39.642014, 31.641460, 26.944063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194408, 31.664841, 26.446409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.944553, 31.401978, 26.277664>,  <39.794640, 31.244259, 26.176416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.944553, 31.401978, 26.277664>,  <40.194408, 31.664841, 26.446409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944553, 31.401978, 26.277664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159668, 0.421330, -0.892741,
		0.764419, -0.624997, -0.158251,
		-0.624636, -0.657160, -0.421865,
		39.757164, 31.204830, 26.151104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489067, 31.479952, 25.810808>,  <40.194408, 31.664841, 26.446409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489067, 31.479952, 25.810808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098362, 31.403511, 25.772003>,  <39.863937, 31.357647, 25.748720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.098362, 31.403511, 25.772003>,  <40.489067, 31.479952, 25.810808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098362, 31.403511, 25.772003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003146, 0.465399, -0.885095,
		0.214294, -0.864224, -0.455187,
		-0.976764, -0.191103, -0.097014,
		39.805332, 31.346180, 25.742899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405243, 31.218851, 25.119864>,  <40.489067, 31.479952, 25.810808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405243, 31.218851, 25.119864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.055408, 31.367046, 25.244980>,  <39.845509, 31.455963, 25.320049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.055408, 31.367046, 25.244980>,  <40.405243, 31.218851, 25.119864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055408, 31.367046, 25.244980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041442, 0.585621, -0.809525,
		-0.483095, -0.720962, -0.496823,
		-0.874586, 0.370488, 0.312789,
		39.793034, 31.478193, 25.338816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984837, 31.142454, 24.457514>,  <40.405243, 31.218851, 25.119864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984837, 31.142454, 24.457514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.790169, 31.386791, 24.707321>,  <39.673367, 31.533394, 24.857206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.790169, 31.386791, 24.707321>,  <39.984837, 31.142454, 24.457514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790169, 31.386791, 24.707321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056006, 0.691604, -0.720102,
		-0.871789, -0.385429, -0.302372,
		-0.486670, 0.610842, 0.624519,
		39.644169, 31.570044, 24.894676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369946, 31.303955, 24.017614>,  <39.984837, 31.142454, 24.457514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369946, 31.303955, 24.017614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412941, 31.579411, 24.304451>,  <39.438740, 31.744684, 24.476553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412941, 31.579411, 24.304451>,  <39.369946, 31.303955, 24.017614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412941, 31.579411, 24.304451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203367, 0.721250, -0.662148,
		-0.973184, -0.074657, 0.217576,
		0.107493, 0.688640, 0.717092,
		39.445190, 31.786003, 24.519579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666344, 31.686522, 24.065479>,  <39.369946, 31.303955, 24.017614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666344, 31.686522, 24.065479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.976219, 31.906109, 24.191013>,  <39.162144, 32.037861, 24.266335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.976219, 31.906109, 24.191013>,  <38.666344, 31.686522, 24.065479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976219, 31.906109, 24.191013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269995, 0.735951, -0.620869,
		-0.571803, 0.396247, 0.718352,
		0.774689, 0.548967, 0.313835,
		39.208626, 32.070797, 24.285164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363224, 32.255840, 24.230036>,  <38.666344, 31.686522, 24.065479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363224, 32.255840, 24.230036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.740856, 32.385754, 24.207317>,  <38.967434, 32.463703, 24.193686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.740856, 32.385754, 24.207317>,  <38.363224, 32.255840, 24.230036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740856, 32.385754, 24.207317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311233, 0.820971, -0.478687,
		-0.108843, 0.469596, 0.876147,
		0.944080, 0.324787, -0.056797,
		39.024078, 32.483189, 24.190279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904205, 32.325760, 23.773775>,  <38.363224, 32.255840, 24.230036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904205, 32.325760, 23.773775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.511494, 32.381657, 23.722260>,  <37.275867, 32.415195, 23.691351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.511494, 32.381657, 23.722260>,  <37.904205, 32.325760, 23.773775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511494, 32.381657, 23.722260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184134, -0.531898, 0.826546,
		0.047004, 0.835198, 0.547937,
		-0.981777, 0.139744, -0.128787,
		37.216961, 32.423580, 23.683624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663197, 32.504444, 24.423531>,  <37.904205, 32.325760, 23.773775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663197, 32.504444, 24.423531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334763, 32.382095, 24.230755>,  <37.137703, 32.308685, 24.115089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334763, 32.382095, 24.230755>,  <37.663197, 32.504444, 24.423531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334763, 32.382095, 24.230755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288872, -0.505538, 0.813009,
		-0.492317, 0.806766, 0.326730,
		-0.821082, -0.305875, -0.481938,
		37.088436, 32.290333, 24.086174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103230, 32.631657, 24.875135>,  <37.663197, 32.504444, 24.423531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103230, 32.631657, 24.875135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.978798, 32.359852, 24.609356>,  <36.904140, 32.196770, 24.449888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.978798, 32.359852, 24.609356>,  <37.103230, 32.631657, 24.875135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978798, 32.359852, 24.609356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419355, -0.529255, 0.737585,
		-0.852862, 0.508085, -0.120319,
		-0.311076, -0.679514, -0.664449,
		36.885475, 32.155998, 24.410021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453514, 32.565712, 24.976656>,  <37.103230, 32.631657, 24.875135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453514, 32.565712, 24.976656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543678, 32.227974, 24.782227>,  <36.597778, 32.025330, 24.665569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543678, 32.227974, 24.782227>,  <36.453514, 32.565712, 24.976656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543678, 32.227974, 24.782227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432793, -0.533766, 0.726488,
		-0.872857, 0.046608, -0.485745,
		0.225414, -0.844347, -0.486073,
		36.611301, 31.974670, 24.636404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919922, 32.024372, 25.234163>,  <36.453514, 32.565712, 24.976656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919922, 32.024372, 25.234163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.183666, 31.783447, 25.054180>,  <36.341911, 31.638891, 24.946190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.183666, 31.783447, 25.054180>,  <35.919922, 32.024372, 25.234163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183666, 31.783447, 25.054180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125424, -0.678221, 0.724075,
		-0.741292, -0.420991, -0.522736,
		0.659360, -0.602315, -0.449958,
		36.381474, 31.602753, 24.919193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569813, 31.405117, 25.150206>,  <35.919922, 32.024372, 25.234163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569813, 31.405117, 25.150206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964607, 31.341080, 25.144218>,  <36.201485, 31.302656, 25.140627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964607, 31.341080, 25.144218>,  <35.569813, 31.405117, 25.150206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964607, 31.341080, 25.144218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103637, -0.704555, 0.702041,
		-0.122938, -0.691355, -0.711980,
		0.986988, -0.160095, -0.014966,
		36.260704, 31.293051, 25.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674171, 30.672886, 25.195827>,  <35.569813, 31.405117, 25.150206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674171, 30.672886, 25.195827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050659, 30.782719, 25.274536>,  <36.276550, 30.848618, 25.321762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050659, 30.782719, 25.274536>,  <35.674171, 30.672886, 25.195827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050659, 30.782719, 25.274536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044031, -0.677250, 0.734434,
		0.334925, -0.682597, -0.649528,
		0.941215, 0.274580, 0.196773,
		36.333023, 30.865093, 25.333569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101727, 30.036089, 25.251715>,  <35.674171, 30.672886, 25.195827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101727, 30.036089, 25.251715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.274895, 30.343788, 25.439686>,  <36.378796, 30.528408, 25.552469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.274895, 30.343788, 25.439686>,  <36.101727, 30.036089, 25.251715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274895, 30.343788, 25.439686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044429, -0.538890, 0.841204,
		0.900335, -0.343299, -0.267476,
		0.432925, 0.769248, 0.469929,
		36.404774, 30.574562, 25.580664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740917, 29.722040, 25.449923>,  <36.101727, 30.036089, 25.251715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740917, 29.722040, 25.449923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641426, 30.030087, 25.684887>,  <36.581730, 30.214914, 25.825865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.641426, 30.030087, 25.684887>,  <36.740917, 29.722040, 25.449923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641426, 30.030087, 25.684887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066091, -0.591563, 0.803545,
		0.966315, 0.238688, 0.096241,
		-0.248730, 0.770118, 0.587412,
		36.566807, 30.261122, 25.861111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135487, 29.542736, 25.871181>,  <36.740917, 29.722040, 25.449923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135487, 29.542736, 25.871181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913918, 29.800022, 26.082630>,  <36.780975, 29.954393, 26.209499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913918, 29.800022, 26.082630>,  <37.135487, 29.542736, 25.871181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913918, 29.800022, 26.082630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195481, -0.516699, 0.833552,
		0.809291, 0.565062, 0.160477,
		-0.553927, 0.643216, 0.528619,
		36.747738, 29.992987, 26.241217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460335, 29.781776, 26.525204>,  <37.135487, 29.542736, 25.871181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460335, 29.781776, 26.525204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.074924, 29.853653, 26.604523>,  <36.843678, 29.896780, 26.652115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.074924, 29.853653, 26.604523>,  <37.460335, 29.781776, 26.525204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074924, 29.853653, 26.604523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070204, -0.545324, 0.835280,
		0.258231, 0.818738, 0.512820,
		-0.963529, 0.179693, 0.198298,
		36.785866, 29.907560, 26.664013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385582, 29.461775, 27.172918>,  <37.460335, 29.781776, 26.525204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385582, 29.461775, 27.172918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.009399, 29.573475, 27.095398>,  <36.783688, 29.640495, 27.048885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.009399, 29.573475, 27.095398>,  <37.385582, 29.461775, 27.172918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009399, 29.573475, 27.095398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318622, -0.525635, 0.788789,
		0.118399, 0.803572, 0.583313,
		-0.940458, 0.279249, -0.193801,
		36.727261, 29.657249, 27.037258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132286, 29.919956, 27.713909>,  <37.385582, 29.461775, 27.172918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132286, 29.919956, 27.713909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854469, 29.715210, 27.511677>,  <36.687778, 29.592363, 27.390337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.854469, 29.715210, 27.511677>,  <37.132286, 29.919956, 27.713909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854469, 29.715210, 27.511677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222429, -0.515531, 0.827498,
		-0.684209, 0.687185, 0.244203,
		-0.694539, -0.511864, -0.505580,
		36.646107, 29.561651, 27.360003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462902, 29.988892, 28.170441>,  <37.132286, 29.919956, 27.713909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462902, 29.988892, 28.170441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.419540, 29.682594, 27.916862>,  <36.393524, 29.498816, 27.764715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.419540, 29.682594, 27.916862>,  <36.462902, 29.988892, 28.170441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419540, 29.682594, 27.916862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343401, -0.569604, 0.746745,
		-0.932912, 0.298651, -0.201207,
		-0.108407, -0.765741, -0.633947,
		36.387020, 29.452871, 27.726679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843216, 29.803883, 28.290569>,  <36.462902, 29.988892, 28.170441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843216, 29.803883, 28.290569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012814, 29.477703, 28.132950>,  <36.114571, 29.281996, 28.038378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.012814, 29.477703, 28.132950>,  <35.843216, 29.803883, 28.290569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012814, 29.477703, 28.132950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355146, -0.549945, 0.755931,
		-0.833128, -0.180563, -0.522775,
		0.423991, -0.815449, -0.394049,
		36.140011, 29.233068, 28.014736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467388, 29.351894, 28.557901>,  <35.843216, 29.803883, 28.290569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467388, 29.351894, 28.557901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.746094, 29.108551, 28.405891>,  <35.913319, 28.962545, 28.314686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.746094, 29.108551, 28.405891>,  <35.467388, 29.351894, 28.557901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746094, 29.108551, 28.405891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216936, -0.683709, 0.696764,
		-0.683709, -0.403040, -0.608359,
		-0.696764, 0.608359, 0.380025,
		35.955124, 28.926043, 28.291883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116257, 28.702425, 28.570271>,  <35.467388, 29.351894, 28.557901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116257, 28.702425, 28.570271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509350, 28.632473, 28.546082>,  <35.745205, 28.590502, 28.531569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509350, 28.632473, 28.546082>,  <35.116257, 28.702425, 28.570271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509350, 28.632473, 28.546082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055899, -0.592112, 0.803915,
		-0.176396, -0.786651, -0.591662,
		0.982731, -0.174881, -0.060473,
		35.804169, 28.580009, 28.527939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159370, 28.070553, 28.388361>,  <35.116257, 28.702425, 28.570271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159370, 28.070553, 28.388361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.501431, 28.173851, 28.568150>,  <35.706669, 28.235830, 28.676022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.501431, 28.173851, 28.568150>,  <35.159370, 28.070553, 28.388361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501431, 28.173851, 28.568150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071535, -0.799987, 0.595737,
		0.513416, -0.541599, -0.665638,
		0.855153, 0.258244, 0.449470,
		35.757977, 28.251324, 28.702991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508648, 27.424229, 28.477423>,  <35.159370, 28.070553, 28.388361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508648, 27.424229, 28.477423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664539, 27.702820, 28.718430>,  <35.758076, 27.869974, 28.863033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.664539, 27.702820, 28.718430>,  <35.508648, 27.424229, 28.477423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664539, 27.702820, 28.718430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000716, -0.654019, 0.756478,
		0.920928, -0.295256, -0.254394,
		0.389733, 0.696479, 0.602515,
		35.781460, 27.911764, 28.899183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941727, 27.034817, 28.899727>,  <35.508648, 27.424229, 28.477423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941727, 27.034817, 28.899727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.884945, 27.364483, 29.119034>,  <35.850876, 27.562283, 29.250618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.884945, 27.364483, 29.119034>,  <35.941727, 27.034817, 28.899727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884945, 27.364483, 29.119034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140992, -0.565067, 0.812909,
		0.979780, 0.038098, 0.196417,
		-0.141959, 0.824165, 0.548269,
		35.842358, 27.611732, 29.283514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364567, 26.930735, 29.507038>,  <35.941727, 27.034817, 28.899727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364567, 26.930735, 29.507038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081924, 27.197632, 29.601265>,  <35.912338, 27.357771, 29.657801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081924, 27.197632, 29.601265>,  <36.364567, 26.930735, 29.507038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081924, 27.197632, 29.601265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203389, -0.510378, 0.835552,
		0.677745, 0.542495, 0.496347,
		-0.706607, 0.667243, 0.235569,
		35.869942, 27.397804, 29.671936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.174057, 23.624557, 27.799696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.485556, 23.768463, 28.005268>,  <27.672455, 23.854807, 28.128611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.485556, 23.768463, 28.005268>,  <27.174057, 23.624557, 27.799696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485556, 23.768463, 28.005268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320336, -0.932412, 0.167312,
		0.539385, 0.034336, -0.841359,
		0.778748, 0.359763, 0.513928,
		27.719179, 23.876392, 28.159447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699488, 23.301643, 27.633041>,  <27.174057, 23.624557, 27.799696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699488, 23.301643, 27.633041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.873222, 23.443321, 27.964317>,  <27.977463, 23.528328, 28.163082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.873222, 23.443321, 27.964317>,  <27.699488, 23.301643, 27.633041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873222, 23.443321, 27.964317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220191, -0.933299, 0.283671,
		0.873422, 0.059151, -0.483357,
		0.434337, 0.354196, 0.828188,
		28.003523, 23.549580, 28.212774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293783, 22.814129, 27.705393>,  <27.699488, 23.301643, 27.633041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293783, 22.814129, 27.705393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.231173, 22.967808, 28.069347>,  <28.193607, 23.060015, 28.287720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.231173, 22.967808, 28.069347>,  <28.293783, 22.814129, 27.705393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231173, 22.967808, 28.069347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202031, -0.889307, 0.410265,
		0.966790, 0.248041, 0.061578,
		-0.156524, 0.384200, 0.909885,
		28.184216, 23.083067, 28.342314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841347, 22.627447, 28.084257>,  <28.293783, 22.814129, 27.705393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841347, 22.627447, 28.084257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559277, 22.713394, 28.354534>,  <28.390036, 22.764963, 28.516701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559277, 22.713394, 28.354534>,  <28.841347, 22.627447, 28.084257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559277, 22.713394, 28.354534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427006, -0.632081, 0.646637,
		0.566035, 0.744516, 0.353978,
		-0.705174, 0.214868, 0.675693,
		28.347725, 22.777855, 28.557241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131878, 22.959398, 28.805040>,  <28.841347, 22.627447, 28.084257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131878, 22.959398, 28.805040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762640, 22.819473, 28.868954>,  <28.541098, 22.735518, 28.907301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762640, 22.819473, 28.868954>,  <29.131878, 22.959398, 28.805040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762640, 22.819473, 28.868954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350599, -0.594715, 0.723460,
		-0.158051, 0.723840, 0.671621,
		-0.923093, -0.349813, 0.159782,
		28.485712, 22.714529, 28.916889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050898, 22.897558, 29.585669>,  <29.131878, 22.959398, 28.805040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050898, 22.897558, 29.585669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.798010, 22.630562, 29.428310>,  <28.646278, 22.470364, 29.333897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.798010, 22.630562, 29.428310>,  <29.050898, 22.897558, 29.585669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798010, 22.630562, 29.428310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362937, -0.703727, 0.610774,
		-0.684527, 0.243366, 0.687165,
		-0.632218, -0.667489, -0.393394,
		28.608345, 22.430315, 29.310293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820305, 22.458797, 30.144787>,  <29.050898, 22.897558, 29.585669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820305, 22.458797, 30.144787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729061, 22.248283, 29.817131>,  <28.674314, 22.121975, 29.620537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729061, 22.248283, 29.817131>,  <28.820305, 22.458797, 30.144787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729061, 22.248283, 29.817131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077720, -0.848479, 0.523491,
		-0.970528, 0.055750, 0.234450,
		-0.228111, -0.526284, -0.819140,
		28.660627, 22.090399, 29.571388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227818, 22.036423, 30.344028>,  <28.820305, 22.458797, 30.144787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227818, 22.036423, 30.344028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.423491, 21.879395, 30.032494>,  <28.540894, 21.785177, 29.845572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.423491, 21.879395, 30.032494>,  <28.227818, 22.036423, 30.344028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423491, 21.879395, 30.032494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118828, -0.854652, 0.505421,
		-0.864055, -0.339786, -0.371422,
		0.489171, -0.392576, -0.778842,
		28.570244, 21.761623, 29.798841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051815, 21.357174, 30.384222>,  <28.227818, 22.036423, 30.344028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051815, 21.357174, 30.384222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.386963, 21.349178, 30.166019>,  <28.588051, 21.344381, 30.035097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.386963, 21.349178, 30.166019>,  <28.051815, 21.357174, 30.384222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386963, 21.349178, 30.166019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265904, -0.857808, 0.439842,
		-0.476732, -0.513582, -0.713415,
		0.837868, -0.019987, -0.545508,
		28.638323, 21.343182, 30.002367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224829, 20.650219, 30.431150>,  <28.051815, 21.357174, 30.384222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224829, 20.650219, 30.431150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562870, 20.784920, 30.265068>,  <28.765696, 20.865740, 30.165419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.562870, 20.784920, 30.265068>,  <28.224829, 20.650219, 30.431150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562870, 20.784920, 30.265068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522395, -0.685204, 0.507542,
		-0.113583, -0.645827, -0.754987,
		0.845105, 0.336754, -0.415204,
		28.816402, 20.885946, 30.140507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512228, 20.162304, 29.948341>,  <28.224829, 20.650219, 30.431150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512228, 20.162304, 29.948341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.807364, 20.391068, 30.091736>,  <28.984446, 20.528326, 30.177773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.807364, 20.391068, 30.091736>,  <28.512228, 20.162304, 29.948341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807364, 20.391068, 30.091736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259850, -0.730853, 0.631135,
		0.622955, -0.372523, -0.687862,
		0.737839, 0.571910, 0.358488,
		29.028715, 20.562641, 30.199282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113726, 19.647152, 29.969696>,  <28.512228, 20.162304, 29.948341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113726, 19.647152, 29.969696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237896, 19.956375, 30.190971>,  <29.312399, 20.141909, 30.323736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.237896, 19.956375, 30.190971>,  <29.113726, 19.647152, 29.969696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237896, 19.956375, 30.190971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601230, -0.610427, 0.515657,
		0.736313, 0.172520, -0.654278,
		0.310428, 0.773056, 0.553189,
		29.331024, 20.188292, 30.356928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849382, 19.613310, 29.986200>,  <29.113726, 19.647152, 29.969696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849382, 19.613310, 29.986200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.703419, 19.804508, 30.305790>,  <29.615841, 19.919228, 30.497543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.703419, 19.804508, 30.305790>,  <29.849382, 19.613310, 29.986200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703419, 19.804508, 30.305790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635620, -0.499152, 0.588926,
		0.680314, 0.722750, -0.121677,
		-0.364911, 0.477995, 0.798975,
		29.593945, 19.947906, 30.545483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584183, 19.413904, 30.092430>,  <29.849382, 19.613310, 29.986200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584183, 19.413904, 30.092430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.515675, 19.199352, 29.761864>,  <30.474569, 19.070621, 29.563524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.515675, 19.199352, 29.761864>,  <30.584183, 19.413904, 30.092430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515675, 19.199352, 29.761864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054657, -0.842691, 0.535617,
		-0.983707, 0.046566, 0.173644,
		-0.171270, -0.536381, -0.826415,
		30.464294, 19.038439, 29.513939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101427, 19.897408, 30.289452>,  <30.584183, 19.413904, 30.092430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101427, 19.897408, 30.289452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393475, 19.730648, 30.072887>,  <31.568703, 19.630592, 29.942949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.393475, 19.730648, 30.072887>,  <31.101427, 19.897408, 30.289452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393475, 19.730648, 30.072887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228820, 0.597412, -0.768596,
		0.643871, 0.685051, 0.340786,
		0.730117, -0.416898, -0.541410,
		31.612511, 19.605579, 29.910465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442003, 20.398970, 30.014095>,  <31.101427, 19.897408, 30.289452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442003, 20.398970, 30.014095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557970, 20.090488, 29.787399>,  <31.627550, 19.905399, 29.651382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557970, 20.090488, 29.787399>,  <31.442003, 20.398970, 30.014095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557970, 20.090488, 29.787399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027178, 0.585298, -0.810363,
		0.956666, 0.250342, 0.148728,
		0.289918, -0.771204, -0.566739,
		31.644945, 19.859127, 29.617378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015621, 20.581980, 29.677879>,  <31.442003, 20.398970, 30.014095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015621, 20.581980, 29.677879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860224, 20.298973, 29.441746>,  <31.766987, 20.129169, 29.300066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860224, 20.298973, 29.441746>,  <32.015621, 20.581980, 29.677879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860224, 20.298973, 29.441746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143635, 0.586327, -0.797239,
		0.910189, -0.394512, -0.126158,
		-0.388490, -0.707518, -0.590334,
		31.743677, 20.086718, 29.264645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340515, 20.651865, 29.031380>,  <32.015621, 20.581980, 29.677879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340515, 20.651865, 29.031380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019291, 20.428288, 28.948753>,  <31.826555, 20.294142, 28.899178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019291, 20.428288, 28.948753>,  <32.340515, 20.651865, 29.031380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019291, 20.428288, 28.948753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151397, 0.526653, -0.836490,
		0.576340, -0.640482, -0.507558,
		-0.803064, -0.558945, -0.206564,
		31.778372, 20.260605, 28.886784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314964, 20.681019, 28.318460>,  <32.340515, 20.651865, 29.031380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314964, 20.681019, 28.318460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952971, 20.565918, 28.443813>,  <31.735775, 20.496857, 28.519026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952971, 20.565918, 28.443813>,  <32.314964, 20.681019, 28.318460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952971, 20.565918, 28.443813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419720, 0.483297, -0.768283,
		0.069619, -0.826814, -0.558150,
		-0.904980, -0.287754, 0.313384,
		31.681477, 20.479591, 28.537828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933401, 20.421501, 27.729641>,  <32.314964, 20.681019, 28.318460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933401, 20.421501, 27.729641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668135, 20.533493, 28.007294>,  <31.508974, 20.600689, 28.173885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.668135, 20.533493, 28.007294>,  <31.933401, 20.421501, 27.729641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668135, 20.533493, 28.007294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526016, 0.485413, -0.698342,
		-0.532464, -0.828242, -0.174635,
		-0.663166, 0.279981, 0.694133,
		31.469185, 20.617487, 28.215534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342619, 20.258419, 27.425707>,  <31.933401, 20.421501, 27.729641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342619, 20.258419, 27.425707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262428, 20.507820, 27.727978>,  <31.214314, 20.657461, 27.909340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.262428, 20.507820, 27.727978>,  <31.342619, 20.258419, 27.425707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262428, 20.507820, 27.727978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384062, 0.659580, -0.646104,
		-0.901279, -0.419758, 0.107232,
		-0.200479, 0.623504, 0.755680,
		31.202284, 20.694872, 27.954681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709185, 20.666819, 27.228220>,  <31.342619, 20.258419, 27.425707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709185, 20.666819, 27.228220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.862219, 20.895142, 27.518822>,  <30.954039, 21.032135, 27.693184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.862219, 20.895142, 27.518822>,  <30.709185, 20.666819, 27.228220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862219, 20.895142, 27.518822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340513, 0.818089, -0.463444,
		-0.858883, -0.070079, 0.507354,
		0.382583, 0.570805, 0.726506,
		30.976994, 21.066383, 27.736774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242767, 21.145618, 27.325731>,  <30.709185, 20.666819, 27.228220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242767, 21.145618, 27.325731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.546093, 21.326813, 27.513248>,  <30.728088, 21.435530, 27.625759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.546093, 21.326813, 27.513248>,  <30.242767, 21.145618, 27.325731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546093, 21.326813, 27.513248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250426, 0.866372, -0.432072,
		-0.601871, 0.210248, 0.770420,
		0.758312, 0.452985, 0.468793,
		30.773586, 21.462708, 27.653887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962854, 21.706867, 27.493202>,  <30.242767, 21.145618, 27.325731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962854, 21.706867, 27.493202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356161, 21.774818, 27.519524>,  <30.592144, 21.815590, 27.535316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.356161, 21.774818, 27.519524>,  <29.962854, 21.706867, 27.493202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356161, 21.774818, 27.519524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141157, 0.938775, -0.314287,
		-0.115167, 0.299739, 0.947044,
		0.983266, 0.169878, 0.065805,
		30.651140, 21.825781, 27.539265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953703, 22.284172, 27.819382>,  <29.962854, 21.706867, 27.493202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953703, 22.284172, 27.819382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307510, 22.265587, 27.633709>,  <30.519794, 22.254436, 27.522305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307510, 22.265587, 27.633709>,  <29.953703, 22.284172, 27.819382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307510, 22.265587, 27.633709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109782, 0.946352, -0.303919,
		0.453401, 0.319781, 0.831967,
		0.884520, -0.046462, -0.464183,
		30.572866, 22.251648, 27.494453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291693, 22.911224, 27.918600>,  <29.953703, 22.284172, 27.819382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291693, 22.911224, 27.918600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.464712, 22.767391, 27.587879>,  <30.568523, 22.681091, 27.389446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.464712, 22.767391, 27.587879>,  <30.291693, 22.911224, 27.918600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464712, 22.767391, 27.587879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044093, 0.924368, -0.378945,
		0.900532, 0.127456, 0.415689,
		0.432548, -0.359581, -0.826803,
		30.594477, 22.659517, 27.339838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890675, 23.332745, 27.856611>,  <30.291693, 22.911224, 27.918600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890675, 23.332745, 27.856611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798296, 23.180676, 27.498363>,  <30.742868, 23.089434, 27.283415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.798296, 23.180676, 27.498363>,  <30.890675, 23.332745, 27.856611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798296, 23.180676, 27.498363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002425, 0.920274, -0.391266,
		0.972963, -0.092534, -0.211613,
		-0.230948, -0.380174, -0.895617,
		30.729012, 23.066624, 27.229679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131725, 23.840355, 27.398718>,  <30.890675, 23.332745, 27.856611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131725, 23.840355, 27.398718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871084, 23.634857, 27.175476>,  <30.714699, 23.511559, 27.041531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871084, 23.634857, 27.175476>,  <31.131725, 23.840355, 27.398718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871084, 23.634857, 27.175476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182147, 0.820184, -0.542329,
		0.736366, -0.251727, -0.628012,
		-0.651603, -0.513743, -0.558104,
		30.675604, 23.480734, 27.008045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848694, 24.073561, 27.252184>,  <31.131725, 23.840355, 27.398718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848694, 24.073561, 27.252184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920187, 24.350353, 27.531960>,  <31.963083, 24.516428, 27.699825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920187, 24.350353, 27.531960>,  <31.848694, 24.073561, 27.252184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920187, 24.350353, 27.531960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550078, -0.659685, 0.512084,
		0.815763, 0.293221, -0.498551,
		0.178732, 0.691981, 0.699441,
		31.973806, 24.557947, 27.741793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520477, 24.108812, 27.347717>,  <31.848694, 24.073561, 27.252184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520477, 24.108812, 27.347717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343330, 24.226055, 27.686646>,  <32.237041, 24.296402, 27.890003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.343330, 24.226055, 27.686646>,  <32.520477, 24.108812, 27.347717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343330, 24.226055, 27.686646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532648, -0.674191, 0.511617,
		0.721216, 0.677904, 0.142454,
		-0.442869, 0.293109, 0.847322,
		32.210468, 24.313988, 27.940842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031811, 24.039553, 27.903505>,  <32.520477, 24.108812, 27.347717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031811, 24.039553, 27.903505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704868, 24.083401, 28.129749>,  <32.508705, 24.109709, 28.265495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704868, 24.083401, 28.129749>,  <33.031811, 24.039553, 27.903505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704868, 24.083401, 28.129749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442696, -0.508795, 0.738341,
		0.368717, 0.853880, 0.367337,
		-0.817354, 0.109620, 0.565611,
		32.459663, 24.116287, 28.299433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303265, 24.041939, 28.545065>,  <33.031811, 24.039553, 27.903505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303265, 24.041939, 28.545065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916866, 23.963936, 28.612984>,  <32.685028, 23.917133, 28.653736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916866, 23.963936, 28.612984>,  <33.303265, 24.041939, 28.545065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916866, 23.963936, 28.612984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249783, -0.533987, 0.807754,
		-0.066849, 0.822697, 0.564536,
		-0.965992, -0.195009, 0.169799,
		32.627068, 23.905434, 28.663923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152958, 24.157843, 29.288286>,  <33.303265, 24.041939, 28.545065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152958, 24.157843, 29.288286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843075, 23.929848, 29.178787>,  <32.657143, 23.793051, 29.113087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843075, 23.929848, 29.178787>,  <33.152958, 24.157843, 29.288286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843075, 23.929848, 29.178787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261094, -0.682657, 0.682502,
		-0.575895, 0.457267, 0.677682,
		-0.774710, -0.569988, -0.273749,
		32.610661, 23.758852, 29.096663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792622, 24.098787, 29.937681>,  <33.152958, 24.157843, 29.288286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792622, 24.098787, 29.937681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664875, 23.802200, 29.701637>,  <32.588226, 23.624249, 29.560011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664875, 23.802200, 29.701637>,  <32.792622, 24.098787, 29.937681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664875, 23.802200, 29.701637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331841, -0.670797, 0.663259,
		-0.887629, 0.016003, 0.460282,
		-0.319370, -0.741468, -0.590109,
		32.569065, 23.579760, 29.524605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386284, 23.657618, 30.337757>,  <32.792622, 24.098787, 29.937681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386284, 23.657618, 30.337757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498222, 23.441189, 30.020538>,  <32.565388, 23.311333, 29.830206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498222, 23.441189, 30.020538>,  <32.386284, 23.657618, 30.337757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498222, 23.441189, 30.020538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233550, -0.762871, 0.602895,
		-0.931203, -0.353936, -0.087122,
		0.279849, -0.541070, -0.793049,
		32.582176, 23.278868, 29.782623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742632, 23.311056, 30.753769>,  <32.386284, 23.657618, 30.337757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742632, 23.311056, 30.753769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733234, 23.484985, 31.113853>,  <31.727596, 23.589342, 31.329905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733234, 23.484985, 31.113853>,  <31.742632, 23.311056, 30.753769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733234, 23.484985, 31.113853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314082, 0.851656, -0.419566,
		-0.949105, -0.292598, 0.116559,
		-0.023496, 0.434821, 0.900210,
		31.726185, 23.615431, 31.383917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017975, 23.623512, 30.836613>,  <31.742632, 23.311056, 30.753769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017975, 23.623512, 30.836613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.288588, 23.814266, 31.061069>,  <31.450956, 23.928719, 31.195744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.288588, 23.814266, 31.061069>,  <31.017975, 23.623512, 30.836613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288588, 23.814266, 31.061069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193650, 0.850387, -0.489226,
		-0.710494, 0.222313, 0.667664,
		0.676534, 0.476885, 0.561144,
		31.491549, 23.957333, 31.229412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656130, 24.169819, 31.183462>,  <31.017975, 23.623512, 30.836613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656130, 24.169819, 31.183462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036472, 24.292274, 31.202003>,  <31.264679, 24.365747, 31.213127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036472, 24.292274, 31.202003>,  <30.656130, 24.169819, 31.183462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036472, 24.292274, 31.202003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280609, 0.915305, -0.288921,
		-0.130876, 0.261716, 0.956230,
		0.950858, 0.306140, 0.046351,
		31.321730, 24.384117, 31.215908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588999, 24.966274, 31.334299>,  <30.656130, 24.169819, 31.183462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588999, 24.966274, 31.334299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975565, 24.923565, 31.240799>,  <31.207504, 24.897940, 31.184698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975565, 24.923565, 31.240799>,  <30.588999, 24.966274, 31.334299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975565, 24.923565, 31.240799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047883, 0.968485, -0.244426,
		0.252483, 0.225025, 0.941072,
		0.966416, -0.106775, -0.233751,
		31.265490, 24.891533, 31.170673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892147, 25.587130, 31.555014>,  <30.588999, 24.966274, 31.334299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892147, 25.587130, 31.555014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151505, 25.439182, 31.288845>,  <31.307119, 25.350414, 31.129145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.151505, 25.439182, 31.288845>,  <30.892147, 25.587130, 31.555014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151505, 25.439182, 31.288845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016872, 0.880819, -0.473152,
		0.761118, 0.295562, 0.577358,
		0.648394, -0.369866, -0.665420,
		31.346024, 25.328222, 31.089218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364079, 26.110233, 31.506804>,  <30.892147, 25.587130, 31.555014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364079, 26.110233, 31.506804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.378315, 25.885307, 31.176342>,  <31.386858, 25.750351, 30.978065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.378315, 25.885307, 31.176342>,  <31.364079, 26.110233, 31.506804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378315, 25.885307, 31.176342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033167, 0.825560, -0.563339,
		0.998816, 0.047452, 0.010734,
		0.035593, -0.562316, -0.826156,
		31.388992, 25.716612, 30.928495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721992, 26.541204, 31.067831>,  <31.364079, 26.110233, 31.506804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721992, 26.541204, 31.067831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553595, 26.270618, 30.826118>,  <31.452557, 26.108267, 30.681091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553595, 26.270618, 30.826118>,  <31.721992, 26.541204, 31.067831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553595, 26.270618, 30.826118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068513, 0.688007, -0.722463,
		0.904472, -0.262752, -0.335994,
		-0.420994, -0.676467, -0.604282,
		31.427296, 26.067678, 30.644835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.292261, 22.094131, 33.221050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.435402, 21.942627, 32.879646>,  <28.521286, 21.851725, 32.674805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.435402, 21.942627, 32.879646>,  <28.292261, 22.094131, 33.221050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435402, 21.942627, 32.879646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147029, 0.879785, -0.452062,
		0.922131, 0.287262, 0.259143,
		0.357850, -0.378759, -0.853513,
		28.542757, 21.828999, 32.623592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822588, 22.523619, 33.028561>,  <28.292261, 22.094131, 33.221050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822588, 22.523619, 33.028561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.692177, 22.341152, 32.697353>,  <28.613930, 22.231672, 32.498627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.692177, 22.341152, 32.697353>,  <28.822588, 22.523619, 33.028561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692177, 22.341152, 32.697353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064769, 0.884600, -0.461832,
		0.943139, -0.096941, -0.317949,
		-0.326028, -0.456165, -0.828022,
		28.594368, 22.204302, 32.448948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284351, 22.684006, 32.532070>,  <28.822588, 22.523619, 33.028561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284351, 22.684006, 32.532070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.954283, 22.578335, 32.332348>,  <28.756241, 22.514933, 32.212517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.954283, 22.578335, 32.332348>,  <29.284351, 22.684006, 32.532070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954283, 22.578335, 32.332348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033778, 0.905397, -0.423221,
		0.563872, -0.332364, -0.756031,
		-0.825171, -0.264180, -0.499301,
		28.706732, 22.499081, 32.182556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466322, 22.974792, 31.844173>,  <29.284351, 22.684006, 32.532070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466322, 22.974792, 31.844173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.071270, 22.917881, 31.870525>,  <28.834238, 22.883734, 31.886337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.071270, 22.917881, 31.870525>,  <29.466322, 22.974792, 31.844173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071270, 22.917881, 31.870525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156648, 0.913360, -0.375813,
		-0.006702, -0.381485, -0.924351,
		-0.987632, -0.142279, 0.065880,
		28.774981, 22.875196, 31.890289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177189, 23.270346, 31.197582>,  <29.466322, 22.974792, 31.844173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177189, 23.270346, 31.197582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.873987, 23.257954, 31.458187>,  <28.692066, 23.250519, 31.614550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.873987, 23.257954, 31.458187>,  <29.177189, 23.270346, 31.197582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873987, 23.257954, 31.458187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263498, 0.928279, -0.262427,
		-0.596655, -0.370593, -0.711803,
		-0.758005, -0.030981, 0.651513,
		28.646585, 23.248659, 31.653641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552063, 23.376654, 30.790073>,  <29.177189, 23.270346, 31.197582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552063, 23.376654, 30.790073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.432968, 23.453205, 31.164181>,  <28.361511, 23.499136, 31.388645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.432968, 23.453205, 31.164181>,  <28.552063, 23.376654, 30.790073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432968, 23.453205, 31.164181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479653, 0.817071, -0.319888,
		-0.825400, -0.543847, -0.151476,
		-0.297737, 0.191379, 0.935268,
		28.343647, 23.510618, 31.444761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968267, 23.731085, 30.629086>,  <28.552063, 23.376654, 30.790073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968267, 23.731085, 30.629086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.063290, 23.810478, 31.009438>,  <28.120302, 23.858114, 31.237648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.063290, 23.810478, 31.009438>,  <27.968267, 23.731085, 30.629086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063290, 23.810478, 31.009438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358968, 0.927545, -0.103934,
		-0.902612, -0.316645, 0.291594,
		0.237556, 0.198485, 0.950879,
		28.134556, 23.870024, 31.294701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300678, 24.001066, 30.924086>,  <27.968267, 23.731085, 30.629086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300678, 24.001066, 30.924086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.608294, 24.139172, 31.139259>,  <27.792862, 24.222034, 31.268364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.608294, 24.139172, 31.139259>,  <27.300678, 24.001066, 30.924086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608294, 24.139172, 31.139259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379018, 0.923972, -0.051190,
		-0.514709, -0.164519, 0.841433,
		0.769039, 0.345266, 0.537932,
		27.839005, 24.242752, 31.300638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074863, 24.489754, 31.278694>,  <27.300678, 24.001066, 30.924086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074863, 24.489754, 31.278694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.464432, 24.579594, 31.291531>,  <27.698174, 24.633497, 31.299232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.464432, 24.579594, 31.291531>,  <27.074863, 24.489754, 31.278694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464432, 24.579594, 31.291531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226319, 0.971699, 0.067682,
		-0.015980, -0.073179, 0.997191,
		0.973922, 0.224601, 0.032090,
		27.756609, 24.646975, 31.301157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126701, 25.056850, 31.827173>,  <27.074863, 24.489754, 31.278694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126701, 25.056850, 31.827173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.438099, 25.079517, 31.577137>,  <27.624937, 25.093119, 31.427114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.438099, 25.079517, 31.577137>,  <27.126701, 25.056850, 31.827173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438099, 25.079517, 31.577137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067014, 0.997728, 0.006992,
		0.624066, 0.036447, 0.780522,
		0.778493, 0.056669, -0.625090,
		27.671646, 25.096518, 31.389610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462839, 25.632265, 32.068008>,  <27.126701, 25.056850, 31.827173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462839, 25.632265, 32.068008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.631001, 25.577957, 31.709160>,  <27.731897, 25.545372, 31.493851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.631001, 25.577957, 31.709160>,  <27.462839, 25.632265, 32.068008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631001, 25.577957, 31.709160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021987, 0.986927, -0.159664,
		0.907071, 0.086848, 0.411922,
		0.420404, -0.135770, -0.897122,
		27.757122, 25.537226, 31.440023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936241, 26.231319, 31.974024>,  <27.462839, 25.632265, 32.068008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936241, 26.231319, 31.974024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876932, 26.080257, 31.608425>,  <27.841347, 25.989620, 31.389065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876932, 26.080257, 31.608425>,  <27.936241, 26.231319, 31.974024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876932, 26.080257, 31.608425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000334, 0.924195, -0.381921,
		0.988946, -0.056934, -0.136908,
		-0.148274, -0.377653, -0.913998,
		27.832451, 25.966961, 31.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609177, 26.247787, 31.968405>,  <27.936241, 26.231319, 31.974024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609177, 26.247787, 31.968405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.747515, 26.461479, 32.276947>,  <28.830517, 26.589695, 32.462074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.747515, 26.461479, 32.276947>,  <28.609177, 26.247787, 31.968405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747515, 26.461479, 32.276947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446608, -0.816713, 0.365405,
		0.825187, 0.218121, -0.521046,
		0.345843, 0.534231, 0.771356,
		28.851267, 26.621748, 32.508354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316208, 26.105524, 32.026134>,  <28.609177, 26.247787, 31.968405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316208, 26.105524, 32.026134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.196489, 26.239822, 32.383389>,  <29.124659, 26.320402, 32.597740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.196489, 26.239822, 32.383389>,  <29.316208, 26.105524, 32.026134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196489, 26.239822, 32.383389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411281, -0.799230, 0.438268,
		0.860970, 0.498503, 0.101120,
		-0.299296, 0.335747, 0.893138,
		29.106701, 26.340546, 32.651329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914846, 26.000618, 32.362358>,  <29.316208, 26.105524, 32.026134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914846, 26.000618, 32.362358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.653984, 26.025734, 32.664551>,  <29.497467, 26.040804, 32.845867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.653984, 26.025734, 32.664551>,  <29.914846, 26.000618, 32.362358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653984, 26.025734, 32.664551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378565, -0.836437, 0.396310,
		0.656795, 0.544454, 0.521718,
		-0.652157, 0.062790, 0.755479,
		29.458338, 26.044571, 32.891193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319326, 25.927334, 32.991150>,  <29.914846, 26.000618, 32.362358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319326, 25.927334, 32.991150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.943550, 25.851925, 33.105633>,  <29.718084, 25.806681, 33.174324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.943550, 25.851925, 33.105633>,  <30.319326, 25.927334, 32.991150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943550, 25.851925, 33.105633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286440, -0.890422, 0.353694,
		0.188166, 0.414256, 0.890498,
		-0.939439, -0.188521, 0.286207,
		29.661718, 25.795368, 33.191494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424868, 25.861219, 33.704056>,  <30.319326, 25.927334, 32.991150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424868, 25.861219, 33.704056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074036, 25.696026, 33.605934>,  <29.863537, 25.596910, 33.547062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.074036, 25.696026, 33.605934>,  <30.424868, 25.861219, 33.704056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074036, 25.696026, 33.605934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259034, -0.836722, 0.482492,
		-0.404510, 0.359643, 0.840850,
		-0.877082, -0.412982, -0.245303,
		29.810911, 25.572132, 33.532345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991341, 25.750990, 34.255470>,  <30.424868, 25.861219, 33.704056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991341, 25.750990, 34.255470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905773, 25.480495, 33.973495>,  <29.854433, 25.318199, 33.804310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.905773, 25.480495, 33.973495>,  <29.991341, 25.750990, 34.255470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905773, 25.480495, 33.973495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014907, -0.723822, 0.689826,
		-0.976737, 0.137059, 0.164920,
		-0.213920, -0.676237, -0.704940,
		29.841597, 25.277624, 33.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424023, 25.305889, 34.561829>,  <29.991341, 25.750990, 34.255470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424023, 25.305889, 34.561829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.532661, 25.094624, 34.240013>,  <29.597845, 24.967865, 34.046925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.532661, 25.094624, 34.240013>,  <29.424023, 25.305889, 34.561829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532661, 25.094624, 34.240013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054996, -0.826075, 0.560870,
		-0.960838, -0.196578, -0.195314,
		0.271598, -0.528164, -0.804536,
		29.614141, 24.936174, 33.998653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964437, 24.684616, 34.649857>,  <29.424023, 25.305889, 34.561829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964437, 24.684616, 34.649857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.268599, 24.591045, 34.407513>,  <29.451096, 24.534903, 34.262108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.268599, 24.591045, 34.407513>,  <28.964437, 24.684616, 34.649857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268599, 24.591045, 34.407513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101723, -0.878467, 0.466850,
		-0.641435, -0.416624, -0.644194,
		0.760404, -0.233925, -0.605859,
		29.496719, 24.520868, 34.225754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940138, 23.893614, 34.626148>,  <28.964437, 24.684616, 34.649857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940138, 23.893614, 34.626148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.307333, 23.938271, 34.473919>,  <29.527651, 23.965065, 34.382580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.307333, 23.938271, 34.473919>,  <28.940138, 23.893614, 34.626148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307333, 23.938271, 34.473919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175673, -0.974757, 0.137794,
		-0.355581, -0.193349, -0.914428,
		0.917987, 0.111643, -0.380571,
		29.582729, 23.971764, 34.359749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075951, 23.233177, 34.200233>,  <28.940138, 23.893614, 34.626148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075951, 23.233177, 34.200233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.430672, 23.394501, 34.290493>,  <29.643505, 23.491295, 34.344650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.430672, 23.394501, 34.290493>,  <29.075951, 23.233177, 34.200233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430672, 23.394501, 34.290493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324200, -0.890874, 0.318179,
		0.329349, -0.209007, -0.920785,
		0.886805, 0.403311, 0.225649,
		29.696712, 23.515493, 34.358189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500103, 22.718609, 33.963482>,  <29.075951, 23.233177, 34.200233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500103, 22.718609, 33.963482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.732250, 22.930908, 34.210537>,  <29.871538, 23.058287, 34.358772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.732250, 22.930908, 34.210537>,  <29.500103, 22.718609, 33.963482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732250, 22.930908, 34.210537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395586, -0.846687, 0.355855,
		0.711817, 0.037802, -0.701347,
		0.580370, 0.530747, 0.617640,
		29.906361, 23.090132, 34.395828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144081, 22.641743, 33.890347>,  <29.500103, 22.718609, 33.963482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144081, 22.641743, 33.890347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.128418, 22.724552, 34.281368>,  <30.119020, 22.774239, 34.515980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.128418, 22.724552, 34.281368>,  <30.144081, 22.641743, 33.890347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128418, 22.724552, 34.281368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370494, -0.905563, 0.206618,
		0.928009, 0.370267, -0.041243,
		-0.039156, 0.207024, 0.977552,
		30.116671, 22.786659, 34.574635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813747, 22.388071, 34.149021>,  <30.144081, 22.641743, 33.890347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813747, 22.388071, 34.149021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551214, 22.401402, 34.450516>,  <30.393694, 22.409399, 34.631413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.551214, 22.401402, 34.450516>,  <30.813747, 22.388071, 34.149021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551214, 22.401402, 34.450516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147200, -0.974169, 0.171250,
		0.739973, 0.223347, 0.634473,
		-0.656332, 0.033326, 0.753736,
		30.354315, 22.411400, 34.676636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101391, 21.874874, 34.440701>,  <30.813747, 22.388071, 34.149021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101391, 21.874874, 34.440701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754082, 21.914864, 34.635067>,  <30.545696, 21.938856, 34.751686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754082, 21.914864, 34.635067>,  <31.101391, 21.874874, 34.440701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754082, 21.914864, 34.635067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070678, -0.944564, 0.320629,
		0.491030, 0.312736, 0.813072,
		-0.868271, 0.099972, 0.485913,
		30.493601, 21.944855, 34.780842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354183, 21.790714, 33.727364>,  <31.101391, 21.874874, 34.440701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354183, 21.790714, 33.727364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.690954, 21.679523, 33.542374>,  <31.893017, 21.612808, 33.431381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.690954, 21.679523, 33.542374>,  <31.354183, 21.790714, 33.727364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690954, 21.679523, 33.542374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037296, 0.885019, -0.464058,
		0.538297, 0.373456, 0.755491,
		0.841930, -0.277978, -0.462474,
		31.943533, 21.596130, 33.403633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819469, 22.360861, 33.813099>,  <31.354183, 21.790714, 33.727364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819469, 22.360861, 33.813099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921926, 22.160889, 33.482170>,  <31.983400, 22.040905, 33.283611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.921926, 22.160889, 33.482170>,  <31.819469, 22.360861, 33.813099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921926, 22.160889, 33.482170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038026, 0.860423, -0.508159,
		0.965891, 0.098701, 0.239400,
		0.256141, -0.499930, -0.827322,
		31.998770, 22.010910, 33.233974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259445, 22.855259, 33.540802>,  <31.819469, 22.360861, 33.813099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259445, 22.855259, 33.540802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.148888, 22.610214, 33.244610>,  <32.082554, 22.463188, 33.066895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.148888, 22.610214, 33.244610>,  <32.259445, 22.855259, 33.540802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148888, 22.610214, 33.244610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028100, 0.765018, -0.643395,
		0.960635, -0.198636, -0.194229,
		-0.276390, -0.612610, -0.740485,
		32.065971, 22.426432, 33.022465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641743, 23.177996, 32.998917>,  <32.259445, 22.855259, 33.540802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641743, 23.177996, 32.998917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360416, 22.955833, 32.821434>,  <32.191620, 22.822536, 32.714943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.360416, 22.955833, 32.821434>,  <32.641743, 23.177996, 32.998917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360416, 22.955833, 32.821434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116097, 0.705526, -0.699110,
		0.701326, -0.440188, -0.560692,
		-0.703323, -0.555399, -0.443700,
		32.149422, 22.789211, 32.688324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831486, 23.143826, 32.372658>,  <32.641743, 23.177996, 32.998917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831486, 23.143826, 32.372658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.438610, 23.071198, 32.353333>,  <32.202885, 23.027620, 32.341740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.438610, 23.071198, 32.353333>,  <32.831486, 23.143826, 32.372658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438610, 23.071198, 32.353333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076740, 0.622374, -0.778949,
		0.171501, -0.761369, -0.625224,
		-0.982190, -0.181570, -0.048310,
		32.143951, 23.016726, 32.338840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656643, 22.991785, 31.688923>,  <32.831486, 23.143826, 32.372658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656643, 22.991785, 31.688923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.307640, 23.093029, 31.856098>,  <32.098240, 23.153776, 31.956404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.307640, 23.093029, 31.856098>,  <32.656643, 22.991785, 31.688923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307640, 23.093029, 31.856098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217726, 0.564342, -0.796312,
		-0.437414, -0.785782, -0.437283,
		-0.872504, 0.253110, 0.417936,
		32.045887, 23.168962, 31.981480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270332, 23.028324, 31.182594>,  <32.656643, 22.991785, 31.688923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270332, 23.028324, 31.182594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.044338, 23.210400, 31.457867>,  <31.908741, 23.319645, 31.623030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.044338, 23.210400, 31.457867>,  <32.270332, 23.028324, 31.182594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044338, 23.210400, 31.457867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287393, 0.673262, -0.681266,
		-0.773430, -0.582686, -0.249567,
		-0.564988, 0.455187, 0.688181,
		31.874842, 23.346956, 31.664320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090256, 22.681042, 30.460480>,  <32.270332, 23.028324, 31.182594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090256, 22.681042, 30.460480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353367, 22.686947, 30.159252>,  <32.511234, 22.690491, 29.978516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353367, 22.686947, 30.159252>,  <32.090256, 22.681042, 30.460480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353367, 22.686947, 30.159252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383191, -0.867313, 0.317698,
		-0.648457, -0.497543, -0.576154,
		0.657775, 0.014763, -0.753070,
		32.550697, 22.691376, 29.933331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963224, 22.076820, 30.072163>,  <32.090256, 22.681042, 30.460480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963224, 22.076820, 30.072163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337933, 22.181114, 29.978798>,  <32.562756, 22.243690, 29.922779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.337933, 22.181114, 29.978798>,  <31.963224, 22.076820, 30.072163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337933, 22.181114, 29.978798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315218, -0.918379, 0.239203,
		-0.151994, -0.297654, -0.942497,
		0.936769, 0.260734, -0.233414,
		32.618961, 22.259335, 29.908773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184513, 21.528774, 29.721357>,  <31.963224, 22.076820, 30.072163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184513, 21.528774, 29.721357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.505772, 21.718491, 29.865585>,  <32.698524, 21.832321, 29.952122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.505772, 21.718491, 29.865585>,  <32.184513, 21.528774, 29.721357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505772, 21.718491, 29.865585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375761, -0.872895, 0.311219,
		0.462348, -0.114466, -0.879279,
		0.803143, 0.474290, 0.360569,
		32.746716, 21.860777, 29.973757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714710, 21.120924, 29.468330>,  <32.184513, 21.528774, 29.721357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714710, 21.120924, 29.468330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.859146, 21.336601, 29.772667>,  <32.945808, 21.466007, 29.955269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.859146, 21.336601, 29.772667>,  <32.714710, 21.120924, 29.468330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859146, 21.336601, 29.772667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576477, -0.770386, 0.272360,
		0.732997, 0.340262, -0.589014,
		0.361094, 0.539192, 0.760844,
		32.967476, 21.498360, 30.000919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434826, 21.003717, 29.513824>,  <32.714710, 21.120924, 29.468330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434826, 21.003717, 29.513824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.370441, 21.161057, 29.875900>,  <33.331810, 21.255459, 30.093145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.370441, 21.161057, 29.875900>,  <33.434826, 21.003717, 29.513824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370441, 21.161057, 29.875900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677033, -0.623333, 0.391256,
		0.718135, 0.675821, -0.165977,
		-0.160960, 0.393346, 0.905191,
		33.322155, 21.279060, 30.147457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078224, 21.319189, 29.770842>,  <33.434826, 21.003717, 29.513824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078224, 21.319189, 29.770842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849403, 21.263367, 30.094147>,  <33.712112, 21.229874, 30.288130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.849403, 21.263367, 30.094147>,  <34.078224, 21.319189, 29.770842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849403, 21.263367, 30.094147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660802, -0.662182, 0.353350,
		0.485904, 0.736233, 0.471017,
		-0.572047, -0.139554, 0.808261,
		33.677788, 21.221500, 30.336626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515968, 21.463806, 30.346525>,  <34.078224, 21.319189, 29.770842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515968, 21.463806, 30.346525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220043, 21.235271, 30.488655>,  <34.042488, 21.098150, 30.573933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220043, 21.235271, 30.488655>,  <34.515968, 21.463806, 30.346525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220043, 21.235271, 30.488655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632278, -0.409830, 0.657468,
		-0.230012, 0.711066, 0.664439,
		-0.739810, -0.571335, 0.355326,
		33.998100, 21.063871, 30.595253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534187, 21.570604, 31.071245>,  <34.515968, 21.463806, 30.346525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534187, 21.570604, 31.071245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359577, 21.221573, 30.983559>,  <34.254810, 21.012154, 30.930946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359577, 21.221573, 30.983559>,  <34.534187, 21.570604, 31.071245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359577, 21.221573, 30.983559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701003, -0.482601, 0.525064,
		-0.563953, 0.075531, 0.822346,
		-0.436523, -0.872578, -0.219217,
		34.228619, 20.959799, 30.917793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457783, 21.242487, 31.684622>,  <34.534187, 21.570604, 31.071245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457783, 21.242487, 31.684622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.448471, 20.970558, 31.391418>,  <34.442886, 20.807402, 31.215496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.448471, 20.970558, 31.391418>,  <34.457783, 21.242487, 31.684622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448471, 20.970558, 31.391418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747599, -0.498629, 0.438708,
		-0.663742, -0.537786, 0.519839,
		-0.023275, -0.679820, -0.733010,
		34.441490, 20.766613, 31.171516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.716824, 32.774517, 22.253666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508759, 32.444145, 22.166698>,  <28.383921, 32.245922, 22.114517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508759, 32.444145, 22.166698>,  <28.716824, 32.774517, 22.253666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508759, 32.444145, 22.166698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271965, -0.401497, 0.874549,
		-0.809609, 0.395777, 0.433468,
		-0.520162, -0.825930, -0.217418,
		28.352711, 32.196365, 22.101473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483509, 32.489639, 22.896355>,  <28.716824, 32.774517, 22.253666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483509, 32.489639, 22.896355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400278, 32.182781, 22.653641>,  <28.350340, 31.998665, 22.508013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400278, 32.182781, 22.653641>,  <28.483509, 32.489639, 22.896355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400278, 32.182781, 22.653641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045385, -0.627266, 0.777482,
		-0.977059, 0.134237, 0.165336,
		-0.208077, -0.767149, -0.606783,
		28.337854, 31.952637, 22.471605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974684, 32.051186, 23.253935>,  <28.483509, 32.489639, 22.896355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974684, 32.051186, 23.253935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202429, 31.859272, 22.986912>,  <28.339075, 31.744123, 22.826698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202429, 31.859272, 22.986912>,  <27.974684, 32.051186, 23.253935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202429, 31.859272, 22.986912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297787, -0.636513, 0.711459,
		-0.766256, -0.603868, -0.219533,
		0.569363, -0.479786, -0.667556,
		28.373238, 31.715336, 22.786646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019535, 31.460220, 23.506592>,  <27.974684, 32.051186, 23.253935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019535, 31.460220, 23.506592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309586, 31.396599, 23.238594>,  <28.483616, 31.358427, 23.077795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309586, 31.396599, 23.238594>,  <28.019535, 31.460220, 23.506592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309586, 31.396599, 23.238594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355113, -0.747236, 0.561724,
		-0.589986, -0.645245, -0.485361,
		0.725129, -0.159051, -0.669993,
		28.527124, 31.348883, 23.037596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163887, 30.703920, 23.528307>,  <28.019535, 31.460220, 23.506592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163887, 30.703920, 23.528307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500982, 30.859028, 23.378948>,  <28.703239, 30.952093, 23.289333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500982, 30.859028, 23.378948>,  <28.163887, 30.703920, 23.528307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500982, 30.859028, 23.378948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527566, -0.732886, 0.429594,
		-0.107073, -0.559027, -0.822207,
		0.842739, 0.387770, -0.373396,
		28.753803, 30.975359, 23.266930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509521, 30.184195, 23.123922>,  <28.163887, 30.703920, 23.528307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509521, 30.184195, 23.123922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773594, 30.458920, 23.245544>,  <28.932037, 30.623755, 23.318518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773594, 30.458920, 23.245544>,  <28.509521, 30.184195, 23.123922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773594, 30.458920, 23.245544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568020, -0.721385, 0.396179,
		0.491441, -0.088841, -0.866368,
		0.660181, 0.686813, 0.304054,
		28.971649, 30.664963, 23.336761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146629, 29.922089, 22.943266>,  <28.509521, 30.184195, 23.123922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146629, 29.922089, 22.943266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218910, 30.189861, 23.231491>,  <29.262280, 30.350525, 23.404427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218910, 30.189861, 23.231491>,  <29.146629, 29.922089, 22.943266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218910, 30.189861, 23.231491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587449, -0.661048, 0.466819,
		0.788829, 0.338939, -0.512708,
		0.180702, 0.669430, 0.720562,
		29.273121, 30.390690, 23.447660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812698, 29.852110, 23.056492>,  <29.146629, 29.922089, 22.943266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812698, 29.852110, 23.056492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716450, 30.055546, 23.387173>,  <29.658701, 30.177608, 23.585581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716450, 30.055546, 23.387173>,  <29.812698, 29.852110, 23.056492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716450, 30.055546, 23.387173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720232, -0.477407, 0.503338,
		0.650666, 0.716531, -0.251429,
		-0.240624, 0.508592, 0.826701,
		29.644262, 30.208124, 23.635183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415306, 30.121601, 23.345991>,  <29.812698, 29.852110, 23.056492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415306, 30.121601, 23.345991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174133, 30.133774, 23.664875>,  <30.029428, 30.141077, 23.856205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174133, 30.133774, 23.664875>,  <30.415306, 30.121601, 23.345991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174133, 30.133774, 23.664875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656698, -0.548487, 0.517600,
		0.453010, 0.835605, 0.310718,
		-0.602934, 0.030430, 0.797210,
		29.993254, 30.142902, 23.904037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755690, 30.391342, 24.036556>,  <30.415306, 30.121601, 23.345991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755690, 30.391342, 24.036556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455566, 30.139439, 24.116993>,  <30.275492, 29.988297, 24.165255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455566, 30.139439, 24.116993>,  <30.755690, 30.391342, 24.036556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455566, 30.139439, 24.116993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643196, -0.625122, 0.442179,
		-0.152759, 0.461112, 0.874094,
		-0.750309, -0.629760, 0.201092,
		30.230474, 29.950510, 24.177320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062450, 30.079887, 24.487886>,  <30.755690, 30.391342, 24.036556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062450, 30.079887, 24.487886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736620, 29.850552, 24.452682>,  <30.541122, 29.712950, 24.431561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736620, 29.850552, 24.452682>,  <31.062450, 30.079887, 24.487886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736620, 29.850552, 24.452682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469355, -0.740642, 0.480786,
		-0.340837, 0.350329, 0.872410,
		-0.814577, -0.573340, -0.088010,
		30.492247, 29.678549, 24.426279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994732, 29.748732, 25.094872>,  <31.062450, 30.079887, 24.487886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994732, 29.748732, 25.094872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763000, 29.528252, 24.854687>,  <30.623960, 29.395964, 24.710575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763000, 29.528252, 24.854687>,  <30.994732, 29.748732, 25.094872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763000, 29.528252, 24.854687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442700, -0.831333, 0.336009,
		-0.684393, -0.071165, 0.725632,
		-0.579330, -0.551200, -0.600463,
		30.589201, 29.362892, 24.674547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665344, 29.950209, 25.805862>,  <30.994732, 29.748732, 25.094872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665344, 29.950209, 25.805862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675947, 30.045589, 26.194180>,  <30.682310, 30.102818, 26.427170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675947, 30.045589, 26.194180>,  <30.665344, 29.950209, 25.805862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675947, 30.045589, 26.194180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223320, 0.945177, -0.238260,
		-0.974385, 0.223113, -0.028196,
		0.026509, 0.238454, 0.970792,
		30.683899, 30.117125, 26.485416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324202, 30.641603, 25.883091>,  <30.665344, 29.950209, 25.805862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324202, 30.641603, 25.883091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569794, 30.598740, 26.195896>,  <30.717148, 30.573021, 26.383579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569794, 30.598740, 26.195896>,  <30.324202, 30.641603, 25.883091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569794, 30.598740, 26.195896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260959, 0.962587, -0.072982,
		-0.744936, 0.248883, 0.618973,
		0.613979, -0.107160, 0.782014,
		30.753988, 30.566591, 26.430500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217991, 31.213598, 26.342224>,  <30.324202, 30.641603, 25.883091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217991, 31.213598, 26.342224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588116, 31.081970, 26.417603>,  <30.810190, 31.002993, 26.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588116, 31.081970, 26.417603>,  <30.217991, 31.213598, 26.342224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588116, 31.081970, 26.417603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348818, 0.933545, -0.082579,
		-0.148747, 0.142143, 0.978606,
		0.925311, -0.329072, 0.188444,
		30.865709, 30.983248, 26.474136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576145, 31.684591, 26.857084>,  <30.217991, 31.213598, 26.342224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576145, 31.684591, 26.857084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903084, 31.508793, 26.708065>,  <31.099247, 31.403315, 26.618654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903084, 31.508793, 26.708065>,  <30.576145, 31.684591, 26.857084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903084, 31.508793, 26.708065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495234, 0.866365, 0.064456,
		0.294434, -0.237181, 0.925772,
		0.817345, -0.439496, -0.372547,
		31.148287, 31.376944, 26.596300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116558, 31.984596, 27.185158>,  <30.576145, 31.684591, 26.857084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116558, 31.984596, 27.185158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298594, 31.821537, 26.868496>,  <31.407816, 31.723701, 26.678499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298594, 31.821537, 26.868496>,  <31.116558, 31.984596, 27.185158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298594, 31.821537, 26.868496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570261, 0.816240, -0.092488,
		0.683883, -0.409359, 0.603929,
		0.455090, -0.407648, -0.791654,
		31.435122, 31.699242, 26.631001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717844, 32.120468, 27.292913>,  <31.116558, 31.984596, 27.185158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717844, 32.120468, 27.292913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703730, 32.039875, 26.901371>,  <31.695261, 31.991518, 26.666445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703730, 32.039875, 26.901371>,  <31.717844, 32.120468, 27.292913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703730, 32.039875, 26.901371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621808, 0.762360, -0.179339,
		0.782375, -0.614988, 0.098384,
		-0.035287, -0.201486, -0.978855,
		31.693144, 31.979429, 26.607714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440510, 32.126781, 27.023773>,  <31.717844, 32.120468, 27.292913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440510, 32.126781, 27.023773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225964, 32.225060, 26.700802>,  <32.097237, 32.284027, 26.507019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225964, 32.225060, 26.700802>,  <32.440510, 32.126781, 27.023773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225964, 32.225060, 26.700802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532599, 0.840676, -0.097989,
		0.654712, -0.482595, -0.581769,
		-0.536368, 0.245695, -0.807430,
		32.065052, 32.298767, 26.458572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908035, 32.305840, 26.590170>,  <32.440510, 32.126781, 27.023773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908035, 32.305840, 26.590170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578022, 32.451565, 26.417381>,  <32.380016, 32.539001, 26.313707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578022, 32.451565, 26.417381>,  <32.908035, 32.305840, 26.590170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578022, 32.451565, 26.417381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487797, 0.845055, -0.218945,
		0.285274, -0.391351, -0.874908,
		-0.825029, 0.364318, -0.431972,
		32.330513, 32.560860, 26.287790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220036, 32.606796, 26.038689>,  <32.908035, 32.305840, 26.590170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220036, 32.606796, 26.038689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864162, 32.781147, 26.093060>,  <32.650639, 32.885757, 26.125681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864162, 32.781147, 26.093060>,  <33.220036, 32.606796, 26.038689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864162, 32.781147, 26.093060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408300, 0.892766, -0.190421,
		-0.204351, -0.113915, -0.972247,
		-0.889681, 0.435881, 0.135926,
		32.597260, 32.911911, 26.133837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246265, 33.193146, 25.606867>,  <33.220036, 32.606796, 26.038689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246265, 33.193146, 25.606867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945595, 33.268120, 25.859798>,  <32.765190, 33.313107, 26.011559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945595, 33.268120, 25.859798>,  <33.246265, 33.193146, 25.606867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945595, 33.268120, 25.859798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225514, 0.974021, -0.020644,
		-0.619773, 0.127082, -0.774423,
		-0.751681, 0.187438, 0.632331,
		32.720089, 33.324352, 26.049498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213802, 33.830189, 25.449888>,  <33.246265, 33.193146, 25.606867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213802, 33.830189, 25.449888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997299, 33.820759, 25.786098>,  <32.867397, 33.815102, 25.987823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997299, 33.820759, 25.786098>,  <33.213802, 33.830189, 25.449888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997299, 33.820759, 25.786098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179661, 0.973280, 0.142995,
		-0.821438, 0.228407, -0.522561,
		-0.541260, -0.023578, 0.840525,
		32.834923, 33.813686, 26.038256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730740, 34.432358, 25.492241>,  <33.213802, 33.830189, 25.449888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730740, 34.432358, 25.492241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754791, 34.335903, 25.879692>,  <32.769222, 34.278030, 26.112162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754791, 34.335903, 25.879692>,  <32.730740, 34.432358, 25.492241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754791, 34.335903, 25.879692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203788, 0.952909, 0.224576,
		-0.977167, 0.183891, 0.106440,
		0.060130, -0.241140, 0.968626,
		32.772831, 34.263561, 26.170280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169788, 34.797844, 25.906082>,  <32.730740, 34.432358, 25.492241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169788, 34.797844, 25.906082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474323, 34.712250, 26.150894>,  <32.657043, 34.660892, 26.297781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474323, 34.712250, 26.150894>,  <32.169788, 34.797844, 25.906082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474323, 34.712250, 26.150894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191141, 0.976091, 0.103498,
		-0.619542, 0.038187, 0.784034,
		0.761337, -0.213982, 0.612028,
		32.702724, 34.648056, 26.334503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085629, 35.321518, 26.523224>,  <32.169788, 34.797844, 25.906082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085629, 35.321518, 26.523224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464214, 35.195057, 26.497135>,  <32.691364, 35.119179, 26.481482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464214, 35.195057, 26.497135>,  <32.085629, 35.321518, 26.523224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464214, 35.195057, 26.497135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321446, 0.941580, 0.100495,
		0.029640, -0.116080, 0.992798,
		0.946464, -0.316152, -0.065221,
		32.748154, 35.100212, 26.477570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529058, 35.314163, 27.065176>,  <32.085629, 35.321518, 26.523224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529058, 35.314163, 27.065176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246487, 35.578541, 27.166454>,  <31.076944, 35.737167, 27.227221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246487, 35.578541, 27.166454>,  <31.529058, 35.314163, 27.065176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246487, 35.578541, 27.166454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356288, -0.641172, 0.679675,
		0.611571, 0.389931, 0.688429,
		-0.706428, 0.660948, 0.253194,
		31.034559, 35.776825, 27.242413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596540, 35.434532, 27.840277>,  <31.529058, 35.314163, 27.065176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596540, 35.434532, 27.840277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229210, 35.482185, 27.689289>,  <31.008812, 35.510777, 27.598696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229210, 35.482185, 27.689289>,  <31.596540, 35.434532, 27.840277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229210, 35.482185, 27.689289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384931, -0.490963, 0.781527,
		-0.092219, 0.862997, 0.496721,
		-0.918327, 0.119132, -0.377470,
		30.953712, 35.517925, 27.576048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104906, 35.820824, 28.228041>,  <31.596540, 35.434532, 27.840277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104906, 35.820824, 28.228041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902945, 35.543404, 28.022495>,  <30.781767, 35.376949, 27.899168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902945, 35.543404, 28.022495>,  <31.104906, 35.820824, 28.228041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902945, 35.543404, 28.022495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403067, -0.336989, 0.850868,
		-0.763288, 0.636728, -0.109402,
		-0.504904, -0.693553, -0.513864,
		30.751472, 35.335339, 27.868336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450891, 35.874783, 28.468571>,  <31.104906, 35.820824, 28.228041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450891, 35.874783, 28.468571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471432, 35.503620, 28.320866>,  <30.483757, 35.280922, 28.232243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471432, 35.503620, 28.320866>,  <30.450891, 35.874783, 28.468571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471432, 35.503620, 28.320866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265741, -0.369117, 0.890581,
		-0.962676, 0.052396, -0.265537,
		0.051351, -0.927905, -0.369263,
		30.486837, 35.225250, 28.210087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890419, 35.602455, 28.769003>,  <30.450891, 35.874783, 28.468571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890419, 35.602455, 28.769003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107536, 35.289303, 28.647369>,  <30.237806, 35.101410, 28.574389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107536, 35.289303, 28.647369>,  <29.890419, 35.602455, 28.769003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107536, 35.289303, 28.647369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323220, -0.528897, 0.784727,
		-0.775180, -0.327659, -0.540126,
		0.542794, -0.782885, -0.304084,
		30.270374, 35.054436, 28.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437532, 35.097359, 28.862692>,  <29.890419, 35.602455, 28.769003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437532, 35.097359, 28.862692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773390, 34.887173, 28.807724>,  <29.974903, 34.761059, 28.774742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773390, 34.887173, 28.807724>,  <29.437532, 35.097359, 28.862692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773390, 34.887173, 28.807724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275845, -0.630507, 0.725513,
		-0.467880, -0.571264, -0.674348,
		0.839641, -0.525469, -0.137421,
		30.025282, 34.729530, 28.766497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204119, 34.404411, 28.730469>,  <29.437532, 35.097359, 28.862692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204119, 34.404411, 28.730469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586292, 34.367657, 28.842686>,  <29.815596, 34.345604, 28.910015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586292, 34.367657, 28.842686>,  <29.204119, 34.404411, 28.730469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586292, 34.367657, 28.842686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278000, -0.599758, 0.750337,
		0.099312, -0.794888, -0.598573,
		0.955433, -0.091885, 0.280542,
		29.872923, 34.340092, 28.926847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427074, 33.735909, 28.682486>,  <29.204119, 34.404411, 28.730469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427074, 33.735909, 28.682486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664114, 33.894325, 28.963051>,  <29.806337, 33.989376, 29.131390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.664114, 33.894325, 28.963051>,  <29.427074, 33.735909, 28.682486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664114, 33.894325, 28.963051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240492, -0.744076, 0.623309,
		0.768760, -0.538056, -0.345693,
		0.592597, 0.396039, 0.701414,
		29.841894, 34.013138, 29.173475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856167, 33.276730, 28.944679>,  <29.427074, 33.735909, 28.682486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856167, 33.276730, 28.944679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921101, 33.528633, 29.248535>,  <29.960060, 33.679775, 29.430849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921101, 33.528633, 29.248535>,  <29.856167, 33.276730, 28.944679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921101, 33.528633, 29.248535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043627, -0.764516, 0.643127,
		0.985771, -0.137541, -0.096631,
		0.162332, 0.629760, 0.759638,
		29.969801, 33.717560, 29.476427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354057, 32.972492, 29.329037>,  <29.856167, 33.276730, 28.944679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354057, 32.972492, 29.329037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164677, 33.240017, 29.558308>,  <30.051048, 33.400532, 29.695871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164677, 33.240017, 29.558308>,  <30.354057, 32.972492, 29.329037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164677, 33.240017, 29.558308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155554, -0.703993, 0.692963,
		0.866977, 0.238922, 0.437342,
		-0.473449, 0.668813, 0.573180,
		30.022642, 33.440662, 29.730261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618540, 32.861481, 30.052423>,  <30.354057, 32.972492, 29.329037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618540, 32.861481, 30.052423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266909, 33.050522, 30.077312>,  <30.055929, 33.163944, 30.092245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266909, 33.050522, 30.077312>,  <30.618540, 32.861481, 30.052423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266909, 33.050522, 30.077312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379610, -0.773025, 0.508260,
		0.288302, 0.423181, 0.858953,
		-0.879078, 0.472599, 0.062221,
		30.003185, 33.192303, 30.095980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440899, 32.690903, 30.746691>,  <30.618540, 32.861481, 30.052423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440899, 32.690903, 30.746691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097618, 32.824303, 30.590603>,  <29.891649, 32.904343, 30.496950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097618, 32.824303, 30.590603>,  <30.440899, 32.690903, 30.746691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097618, 32.824303, 30.590603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489759, -0.759621, 0.427916,
		-0.153709, 0.558350, 0.815241,
		-0.858202, 0.333497, -0.390217,
		29.840158, 32.924351, 30.473537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891459, 32.610332, 31.319433>,  <30.440899, 32.690903, 30.746691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891459, 32.610332, 31.319433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710413, 32.597073, 30.962997>,  <29.601786, 32.589119, 30.749136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710413, 32.597073, 30.962997>,  <29.891459, 32.610332, 31.319433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710413, 32.597073, 30.962997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496338, -0.820831, 0.282638,
		-0.740803, 0.570208, 0.355069,
		-0.452614, -0.033145, -0.891090,
		29.574629, 32.587128, 30.695671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257626, 32.515903, 31.431416>,  <29.891459, 32.610332, 31.319433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257626, 32.515903, 31.431416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269236, 32.375900, 31.056896>,  <29.276201, 32.291901, 30.832186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269236, 32.375900, 31.056896>,  <29.257626, 32.515903, 31.431416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269236, 32.375900, 31.056896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477030, -0.827995, 0.294732,
		-0.878408, 0.438086, -0.190998,
		0.029028, -0.350006, -0.936297,
		29.277945, 32.270897, 30.776007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702396, 32.078564, 31.386776>,  <29.257626, 32.515903, 31.431416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702396, 32.078564, 31.386776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910679, 31.962917, 31.065460>,  <29.035648, 31.893530, 30.872671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910679, 31.962917, 31.065460>,  <28.702396, 32.078564, 31.386776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910679, 31.962917, 31.065460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489362, -0.872074, -0.003345,
		-0.699562, 0.394842, -0.595577,
		0.520708, -0.289113, -0.803291,
		29.066891, 31.876183, 30.824472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181810, 31.726603, 31.074741>,  <28.702396, 32.078564, 31.386776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181810, 31.726603, 31.074741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531748, 31.603718, 30.924934>,  <28.741711, 31.529987, 30.835051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.531748, 31.603718, 30.924934>,  <28.181810, 31.726603, 31.074741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531748, 31.603718, 30.924934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347308, -0.936771, -0.042862,
		-0.337671, 0.167572, -0.926228,
		0.874846, -0.307213, -0.374520,
		28.794201, 31.511555, 30.812578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015900, 31.251223, 30.525530>,  <28.181810, 31.726603, 31.074741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015900, 31.251223, 30.525530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381054, 31.185646, 30.675068>,  <28.600147, 31.146299, 30.764791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381054, 31.185646, 30.675068>,  <28.015900, 31.251223, 30.525530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381054, 31.185646, 30.675068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230654, -0.962761, 0.141033,
		0.336802, -0.214976, -0.916706,
		0.912887, -0.163942, 0.373845,
		28.654921, 31.136463, 30.787222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961485, 30.607407, 30.512268>,  <28.015900, 31.251223, 30.525530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961485, 30.607407, 30.512268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301184, 30.686947, 30.707916>,  <28.505003, 30.734671, 30.825306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301184, 30.686947, 30.707916>,  <27.961485, 30.607407, 30.512268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301184, 30.686947, 30.707916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091412, -0.967755, 0.234722,
		0.520024, -0.154626, -0.840039,
		0.849246, 0.198851, 0.489121,
		28.555958, 30.746603, 30.854652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466526, 30.079552, 30.327528>,  <27.961485, 30.607407, 30.512268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466526, 30.079552, 30.327528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566015, 30.224720, 30.686733>,  <28.625710, 30.311821, 30.902256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566015, 30.224720, 30.686733>,  <28.466526, 30.079552, 30.327528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566015, 30.224720, 30.686733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177586, -0.894343, 0.410626,
		0.952155, -0.261607, -0.157995,
		0.248725, 0.362922, 0.898011,
		28.640633, 30.333597, 30.956137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903532, 29.617477, 30.626524>,  <28.466526, 30.079552, 30.327528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903532, 29.617477, 30.626524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789625, 29.841595, 30.937645>,  <28.721281, 29.976065, 31.124317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789625, 29.841595, 30.937645>,  <28.903532, 29.617477, 30.626524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789625, 29.841595, 30.937645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086517, -0.793065, 0.602961,
		0.954685, 0.238997, 0.177364,
		-0.284767, 0.560293, 0.777804,
		28.704195, 30.009682, 31.170986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368177, 29.417658, 31.165520>,  <28.903532, 29.617477, 30.626524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368177, 29.417658, 31.165520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064409, 29.592072, 31.358665>,  <28.882149, 29.696720, 31.474552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064409, 29.592072, 31.358665>,  <29.368177, 29.417658, 31.165520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064409, 29.592072, 31.358665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068859, -0.791881, 0.606781,
		0.646946, 0.427552, 0.631396,
		-0.759420, 0.436032, 0.482863,
		28.836584, 29.722881, 31.503525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562523, 29.661175, 31.839006>,  <29.368177, 29.417658, 31.165520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562523, 29.661175, 31.839006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168207, 29.595062, 31.851036>,  <28.931618, 29.555395, 31.858253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168207, 29.595062, 31.851036>,  <29.562523, 29.661175, 31.839006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168207, 29.595062, 31.851036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163569, -0.903481, 0.396191,
		-0.038313, 0.395479, 0.917676,
		-0.985788, -0.165283, 0.030073,
		28.872471, 29.545477, 31.860058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375948, 29.438751, 32.540249>,  <29.562523, 29.661175, 31.839006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375948, 29.438751, 32.540249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065548, 29.306381, 32.325470>,  <28.879309, 29.226959, 32.196602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065548, 29.306381, 32.325470>,  <29.375948, 29.438751, 32.540249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065548, 29.306381, 32.325470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024839, -0.866679, 0.498247,
		-0.630245, 0.373302, 0.680762,
		-0.775999, -0.330927, -0.536948,
		28.832748, 29.207104, 32.164387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033367, 28.948332, 33.013474>,  <29.375948, 29.438751, 32.540249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033367, 28.948332, 33.013474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854881, 28.869381, 32.664318>,  <28.747789, 28.822010, 32.454826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854881, 28.869381, 32.664318>,  <29.033367, 28.948332, 33.013474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854881, 28.869381, 32.664318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000927, -0.975477, 0.220101,
		-0.894925, 0.097403, 0.435456,
		-0.446216, -0.197377, -0.872888,
		28.721016, 28.810167, 32.402451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370176, 28.574888, 33.184296>,  <29.033367, 28.948332, 33.013474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370176, 28.574888, 33.184296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463011, 28.482014, 32.806465>,  <28.518711, 28.426289, 32.579765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463011, 28.482014, 32.806465>,  <28.370176, 28.574888, 33.184296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463011, 28.482014, 32.806465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092854, -0.971946, 0.216102,
		-0.968252, 0.037552, -0.247138,
		0.232089, -0.232188, -0.944576,
		28.532637, 28.412357, 32.523094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873432, 28.004141, 32.909817>,  <28.370176, 28.574888, 33.184296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873432, 28.004141, 32.909817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211462, 27.992268, 32.696289>,  <28.414280, 27.985144, 32.568172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.211462, 27.992268, 32.696289>,  <27.873432, 28.004141, 32.909817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211462, 27.992268, 32.696289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102590, -0.970901, 0.216394,
		-0.524713, -0.237634, -0.817438,
		0.845075, -0.029684, -0.533824,
		28.464985, 27.983362, 32.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726065, 27.489101, 32.505638>,  <27.873432, 28.004141, 32.909817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726065, 27.489101, 32.505638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124975, 27.518467, 32.508419>,  <28.364323, 27.536087, 32.510086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124975, 27.518467, 32.508419>,  <27.726065, 27.489101, 32.505638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124975, 27.518467, 32.508419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071526, -0.985927, 0.151104,
		0.017945, -0.150196, -0.988494,
		0.997278, 0.073414, 0.006949,
		28.424158, 27.540491, 32.510506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955326, 26.978207, 32.152367>,  <27.726065, 27.489101, 32.505638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955326, 26.978207, 32.152367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269003, 27.048622, 32.390373>,  <28.457211, 27.090872, 32.533176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269003, 27.048622, 32.390373>,  <27.955326, 26.978207, 32.152367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269003, 27.048622, 32.390373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019006, -0.951649, 0.306600,
		0.620224, -0.251742, -0.742932,
		0.784194, 0.176041, 0.595020,
		28.504261, 27.101435, 32.568878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280293, 26.754309, 31.498455>,  <27.955326, 26.978207, 32.152367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280293, 26.754309, 31.498455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014908, 26.547920, 31.281719>,  <27.855677, 26.424088, 31.151676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014908, 26.547920, 31.281719>,  <28.280293, 26.754309, 31.498455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014908, 26.547920, 31.281719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191599, 0.817199, -0.543577,
		0.723264, -0.256826, -0.641038,
		-0.663460, -0.515972, -0.541843,
		27.815870, 26.393129, 31.119167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537699, 26.733824, 30.771389>,  <28.280293, 26.754309, 31.498455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537699, 26.733824, 30.771389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140757, 26.688721, 30.791470>,  <27.902592, 26.661659, 30.803518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140757, 26.688721, 30.791470>,  <28.537699, 26.733824, 30.771389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140757, 26.688721, 30.791470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113934, 0.680398, -0.723932,
		0.047470, -0.724116, -0.688043,
		-0.992353, -0.112757, 0.050203,
		27.843050, 26.654894, 30.806530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275543, 26.939960, 30.105844>,  <28.537699, 26.733824, 30.771389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275543, 26.939960, 30.105844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938568, 26.949554, 30.321148>,  <27.736383, 26.955311, 30.450331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938568, 26.949554, 30.321148>,  <28.275543, 26.939960, 30.105844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938568, 26.949554, 30.321148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374332, 0.692477, -0.616726,
		-0.387524, -0.721041, -0.574391,
		-0.842438, 0.023983, 0.538260,
		27.685837, 26.956749, 30.482626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691336, 26.883095, 29.620365>,  <28.275543, 26.939960, 30.105844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691336, 26.883095, 29.620365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516632, 27.023556, 29.951649>,  <27.411810, 27.107832, 30.150419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516632, 27.023556, 29.951649>,  <27.691336, 26.883095, 29.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516632, 27.023556, 29.951649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459357, 0.704528, -0.540954,
		-0.773454, -0.616712, -0.146406,
		-0.436760, 0.351151, 0.828211,
		27.385605, 27.128901, 30.200111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977839, 26.873253, 29.459370>,  <27.691336, 26.883095, 29.620365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977839, 26.873253, 29.459370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063742, 27.126083, 29.757191>,  <27.115284, 27.277781, 29.935884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063742, 27.126083, 29.757191>,  <26.977839, 26.873253, 29.459370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063742, 27.126083, 29.757191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336810, 0.763506, -0.551015,
		-0.916754, -0.132437, 0.376859,
		0.214759, 0.632075, 0.744553,
		27.128170, 27.315706, 29.980556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
