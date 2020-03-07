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
	<0.846518, 4.786853, 2.992677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680710, 4.462288, 2.827858>,  <0.581225, 4.267549, 2.728966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680710, 4.462288, 2.827858>,  <0.846518, 4.786853, 2.992677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.680710, 4.462288, 2.827858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910002, -0.373693, -0.179583,
		-0.008264, -0.449405, 0.893290,
		-0.414521, -0.811412, -0.412048,
		0.556354, 4.218864, 2.704244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.011948, 4.272649, 3.395606>,  <0.846518, 4.786853, 2.992677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.011948, 4.272649, 3.395606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.946825, 4.129524, 3.027809>,  <0.907751, 4.043649, 2.807131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.946825, 4.129524, 3.027809>,  <1.011948, 4.272649, 3.395606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.946825, 4.129524, 3.027809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951491, -0.303527, -0.050358,
		-0.261071, -0.883086, 0.389872,
		-0.162807, -0.357813, -0.919491,
		0.897983, 4.022180, 2.751962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.358268, 3.702666, 3.512401>,  <1.011948, 4.272649, 3.395606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.358268, 3.702666, 3.512401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.316780, 3.794640, 3.125336>,  <1.291887, 3.849823, 2.893096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.316780, 3.794640, 3.125336>,  <1.358268, 3.702666, 3.512401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.316780, 3.794640, 3.125336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932139, -0.316888, -0.175210,
		-0.346928, -0.920170, -0.181462,
		-0.103720, 0.229933, -0.967664,
		1.285664, 3.863620, 2.835037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.579345, 3.154643, 3.124973>,  <1.358268, 3.702666, 3.512401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.579345, 3.154643, 3.124973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.605788, 3.482452, 2.897285>,  <1.621655, 3.679138, 2.760673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.605788, 3.482452, 2.897285>,  <1.579345, 3.154643, 3.124973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.605788, 3.482452, 2.897285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925133, -0.264075, -0.272752,
		-0.373844, -0.508572, -0.775626,
		0.066109, 0.819524, -0.569219,
		1.625621, 3.728309, 2.726520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.841313, 2.932635, 2.510575>,  <1.579345, 3.154643, 3.124973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.841313, 2.932635, 2.510575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.907836, 3.326958, 2.501396>,  <1.947750, 3.563551, 2.495889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.907836, 3.326958, 2.501396>,  <1.841313, 2.932635, 2.510575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.907836, 3.326958, 2.501396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932562, -0.164803, -0.321196,
		-0.320419, 0.032019, -0.946734,
		0.166309, 0.985807, -0.022947,
		1.957729, 3.622700, 2.494512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.134308, 3.127442, 1.867103>,  <1.841313, 2.932635, 2.510575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.134308, 3.127442, 1.867103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.231663, 3.409943, 2.133026>,  <2.290076, 3.579443, 2.292580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.231663, 3.409943, 2.133026>,  <2.134308, 3.127442, 1.867103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.231663, 3.409943, 2.133026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969821, -0.187445, -0.155921,
		0.014496, 0.682695, -0.730560,
		0.243387, 0.706252, 0.664809,
		2.304679, 3.621818, 2.332469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.781477, 3.285792, 1.654384>,  <2.134308, 3.127442, 1.867103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.781477, 3.285792, 1.654384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.776944, 3.473587, 2.007530>,  <2.774225, 3.586264, 2.219418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.776944, 3.473587, 2.007530>,  <2.781477, 3.285792, 1.654384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.776944, 3.473587, 2.007530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991730, -0.107603, 0.069949,
		0.127839, 0.876358, -0.464385,
		-0.011332, 0.469487, 0.882867,
		2.773545, 3.614433, 2.272390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.398991, 3.836912, 1.643323>,  <2.781477, 3.285792, 1.654384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.398991, 3.836912, 1.643323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290270, 3.765915, 2.021660>,  <3.225037, 3.723316, 2.248662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.290270, 3.765915, 2.021660>,  <3.398991, 3.836912, 1.643323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.290270, 3.765915, 2.021660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957324, -0.150215, 0.246914,
		0.098254, 0.972590, 0.210748,
		-0.271804, -0.177494, 0.945843,
		3.208729, 3.712667, 2.305413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.797164, 2.067662, 3.232270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140490, 2.221779, 3.367828>,  <4.346485, 2.314249, 3.449163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140490, 2.221779, 3.367828>,  <3.797164, 2.067662, 3.232270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.140490, 2.221779, 3.367828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255119, -0.252610, 0.933329,
		0.445212, -0.887546, -0.118523,
		0.858313, 0.385291, 0.338895,
		4.397984, 2.337366, 3.469497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.416039, 2.519790, 2.713843>,  <3.797164, 2.067662, 3.232270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.416039, 2.519790, 2.713843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.604013, 2.863235, 2.795761>,  <3.716798, 3.069303, 2.844912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.604013, 2.863235, 2.795761>,  <3.416039, 2.519790, 2.713843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.604013, 2.863235, 2.795761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867446, 0.406269, 0.287198,
		0.163389, -0.312616, 0.935722,
		0.469937, 0.858614, 0.204797,
		3.744995, 3.120820, 2.857200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.136793, 2.820439, 3.242526>,  <3.416039, 2.519790, 2.713843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.136793, 2.820439, 3.242526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306858, 3.132355, 3.058716>,  <3.408897, 3.319504, 2.948430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306858, 3.132355, 3.058716>,  <3.136793, 2.820439, 3.242526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.306858, 3.132355, 3.058716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870620, 0.491160, 0.027956,
		0.247500, 0.388187, 0.887724,
		0.425163, 0.779790, -0.459526,
		3.434407, 3.366292, 2.920858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.045987, 3.460854, 3.580270>,  <3.136793, 2.820439, 3.242526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.045987, 3.460854, 3.580270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.083406, 3.538345, 3.189636>,  <3.105858, 3.584840, 2.955256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.083406, 3.538345, 3.189636>,  <3.045987, 3.460854, 3.580270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.083406, 3.538345, 3.189636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925682, 0.378054, -0.013677,
		0.366552, 0.905287, 0.214698,
		0.093549, 0.193729, -0.976585,
		3.111471, 3.596464, 2.896661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.720362, 4.121542, 3.456624>,  <3.045987, 3.460854, 3.580270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.720362, 4.121542, 3.456624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.755260, 3.971947, 3.087296>,  <2.776200, 3.882190, 2.865698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.755260, 3.971947, 3.087296>,  <2.720362, 4.121542, 3.456624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.755260, 3.971947, 3.087296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859301, 0.440646, -0.259679,
		0.503974, 0.816067, -0.282922,
		0.087247, -0.373986, -0.923321,
		2.781435, 3.859751, 2.810299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.736419, 4.681413, 2.971420>,  <2.720362, 4.121542, 3.456624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.736419, 4.681413, 2.971420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601566, 4.342369, 2.807518>,  <2.520655, 4.138943, 2.709177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.601566, 4.342369, 2.807518>,  <2.736419, 4.681413, 2.971420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.601566, 4.342369, 2.807518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864016, 0.451423, -0.222920,
		0.373922, 0.278881, -0.884538,
		-0.337133, -0.847610, -0.409755,
		2.500427, 4.088086, 2.684591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.219227, 4.931333, 2.639464>,  <2.736419, 4.681413, 2.971420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.219227, 4.931333, 2.639464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.162319, 4.536400, 2.611366>,  <2.128175, 4.299440, 2.594508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.162319, 4.536400, 2.611366>,  <2.219227, 4.931333, 2.639464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.162319, 4.536400, 2.611366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981770, 0.149792, -0.117006,
		0.126046, 0.052316, -0.990644,
		-0.142269, -0.987332, -0.070243,
		2.119638, 4.240200, 2.590293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.713899, 4.796299, 2.085608>,  <2.219227, 4.931333, 2.639464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.713899, 4.796299, 2.085608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698357, 4.480591, 2.330734>,  <1.689031, 4.291166, 2.477810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698357, 4.480591, 2.330734>,  <1.713899, 4.796299, 2.085608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698357, 4.480591, 2.330734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997454, -0.006070, -0.071061,
		0.059806, -0.614015, -0.787025,
		-0.038856, -0.789271, 0.612815,
		1.686700, 4.243810, 2.514579>
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
